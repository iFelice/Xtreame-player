package it.felixvision.mobile.ui.player

import android.content.Context
import android.media.AudioManager
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.MediaMetadata
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.TrackSelectionOverride
import androidx.media3.common.Tracks
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.analytics.AnalyticsListener
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import it.felixvision.mobile.AppContainer
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueEpisode
import it.felixvision.tv.data.playback.AudioFormatLabels
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.PostponePlan
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchRules
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch

sealed interface MobilePlaybackSource {
    data class Live(val channels: List<LiveStream>, val startIndex: Int, val categoryName: String?, val isPersonal: Boolean = false) : MobilePlaybackSource
    data class Movie(val stream: VodStream, val title: String = stream.name) : MobilePlaybackSource
    data class Episode(val episodeId: String, val title: String, val seriesTitle: String, val extension: String?, val seriesId: String, val categoryId: String?, val poster: String?, val queue: List<MobileEpisodeRef>) : MobilePlaybackSource
    data class Catchup(val stream: LiveStream, val title: String, val start: Long, val duration: Long, val timezone: String?, val channels: List<LiveStream> = listOf(stream), val startIndex: Int = 0) : MobilePlaybackSource
}

data class MobileEpisodeRef(val id: String, val title: String, val extension: String?, val season: String, val episodeNumber: String)

data class MobilePlayerSession(val server: String, val username: String, val password: String, val formats: List<String>, val source: MobilePlaybackSource, val autoResume: Boolean = false, val serverTimezone: String? = null)

@androidx.media3.common.util.UnstableApi
data class MobilePlayerState(
    val playing: Boolean = false, val buffering: Boolean = true, val controls: Boolean = true,
    val position: Long = 0, val duration: Long = 0, val error: String? = null,
    val resume: Long? = null, val audioTracks: List<Tracks.Group> = emptyList(),
    val subtitleTracks: List<Tracks.Group> = emptyList(), val audioLabel: String = "",
    val channelName: String = "", val isReplay: Boolean = false,
    val nextEpisodeTitle: String? = null, val nextCountdown: Int? = null,
)

/** Tablet engine: ExoPlayer ownership stays in the Activity's composition across configuration changes. */
@androidx.media3.common.util.UnstableApi
class PlayerEngine(private val context: Context, private val container: AppContainer, val session: MobilePlayerSession) {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private var started = false
    private var hostStopped = false
    private var released = false
    private var trackSelector: DefaultTrackSelector? = null
    private var currentSource: MobilePlaybackSource = session.source
    var player by mutableStateOf<ExoPlayer?>(null)
        private set
    var state by mutableStateOf(MobilePlayerState(channelName = title()))
        private set
    private val liveChannels = when (val source = session.source) {
        is MobilePlaybackSource.Live -> source.channels
        is MobilePlaybackSource.Catchup -> source.channels
        else -> emptyList()
    }
    private var liveIndex = LiveZapping.clamp(when (val source = session.source) { is MobilePlaybackSource.Live -> source.startIndex; is MobilePlaybackSource.Catchup -> source.startIndex; else -> 0 }, liveChannels.size)
    private var nextPromptDismissed = false
    private var postponePlan: PostponePlan? = null
    private val noisyReceiver = object : android.content.BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: android.content.Intent?) { pause() }
    }
    private val audioFocusListener = AudioManager.OnAudioFocusChangeListener { change -> if (change <= AudioManager.AUDIOFOCUS_LOSS_TRANSIENT) pause() }

    private val listener = object : Player.Listener {
        override fun onIsPlayingChanged(isPlaying: Boolean) { state = state.copy(playing = isPlaying); if (!isPlaying) saveProgress() }
        override fun onPlaybackStateChanged(playbackState: Int) {
            state = state.copy(buffering = playbackState == Player.STATE_BUFFERING)
            if (playbackState == Player.STATE_READY) state = state.copy(duration = player?.duration?.coerceAtLeast(0L) ?: 0L)
            if (playbackState == Player.STATE_ENDED) nextEpisode()
        }
        override fun onPlayerError(error: PlaybackException) { state = state.copy(error = "Impossibile riprodurre questo contenuto", buffering = false) }
        override fun onTracksChanged(tracks: Tracks) { refreshTracks(tracks) }
    }
    private val analytics = object : AnalyticsListener {
        override fun onAudioDecoderInitialized(eventTime: AnalyticsListener.EventTime, decoderName: String, initializedTimestampMs: Long, initializationDurationMs: Long) {
            state = state.copy(audioLabel = if (AudioFormatLabels.isFfmpegDecoder(decoderName)) "FFmpeg" else state.audioLabel)
        }
    }

    fun start() {
        if (started || released) return
        started = true
        val key = progressKey()
        scope.launch {
            val saved = key?.let { runCatching { container.progressStore.get(session.server, session.username, it) }.getOrNull() }
            val resumeAt = saved?.takeIf(WatchRules::canResume)?.positionMillis
            val auto = session.autoResume
            if (resumeAt != null && !auto) state = state.copy(resume = resumeAt, position = resumeAt)
            buildPlayer(resumeAt ?: 0L, auto || resumeAt == null)
        }
    }

    private fun buildPlayer(position: Long, autoplay: Boolean) {
        val url = buildUrl(currentSource)
        if (url.isNullOrBlank()) { state = state.copy(error = "Indirizzo dello stream non disponibile", buffering = false); return }
        AppLog.info("Mobile player: apertura ${StreamUrls.redactStreamUrl(url)}")
        player?.release()
        val renderers = DefaultRenderersFactory(context).setExtensionRendererMode(DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON)
        val selector = DefaultTrackSelector(context)
        trackSelector = selector
        val instance = ExoPlayer.Builder(context).setRenderersFactory(renderers).setTrackSelector(selector)
            .setMediaSourceFactory(PlayerNetworkConfig.mediaSourceFactory(context, url)).build()
        instance.addListener(listener)
        instance.addAnalyticsListener(analytics)
        instance.setAudioAttributes(AudioAttributes.Builder().setUsage(C.USAGE_MEDIA).setContentType(C.AUDIO_CONTENT_TYPE_MOVIE).build(), true)
        instance.setHandleAudioBecomingNoisy(true)
        instance.setMediaItem(MediaItem.Builder().setUri(url).setMediaMetadata(MediaMetadata.Builder().setTitle(title()).build()).build(), position.coerceAtLeast(0L))
        instance.prepare(); instance.playWhenReady = autoplay
        player = instance
        requestAudioFocus()
        container.playbackActivity.setActive(true)
        state = state.copy(error = null, buffering = true, channelName = title(), isReplay = currentSource is MobilePlaybackSource.Catchup)
    }

    private fun buildUrl(source: MobilePlaybackSource): String? = when (source) {
        is MobilePlaybackSource.Live -> source.channels.getOrNull(liveIndex)?.let { StreamUrls.build(session.server, session.username, session.password, StreamTarget.Live(it.streamId, session.formats)) }
        is MobilePlaybackSource.Movie -> StreamUrls.build(session.server, session.username, session.password, StreamTarget.Movie(source.stream.streamId, source.stream.containerExtension))
        is MobilePlaybackSource.Episode -> StreamUrls.build(session.server, session.username, session.password, StreamTarget.Episode(source.episodeId, source.extension))
        is MobilePlaybackSource.Catchup -> if (CatchupRules.channelSupportsArchive(source.stream)) StreamUrls.buildCatchup(session.server, session.username, session.password, source.stream.streamId, source.start, source.duration, source.timezone) else null
    }

    fun togglePlayback() { val p = player ?: return; if (p.isPlaying) p.pause() else { requestAudioFocus(); p.play() } }
    fun pause() { player?.pause(); saveProgress() }
    fun seekTo(position: Long) { player?.seekTo(position.coerceIn(0L, (state.duration.takeIf { it > 0 } ?: Long.MAX_VALUE))) }
    fun seekBy(seconds: Int) { seekTo((player?.currentPosition ?: state.position) + seconds * 1_000L) }
    fun setControls(visible: Boolean) { state = state.copy(controls = visible) }
    fun refresh() {
        player?.let {
            val position = it.currentPosition.coerceAtLeast(0)
            val duration = it.duration.coerceAtLeast(0)
            state = state.copy(position = position, duration = duration, playing = it.isPlaying)
            val episode = currentSource as? MobilePlaybackSource.Episode ?: return
            val next = episode.queue.getOrNull(episode.queue.indexOfFirst { item -> item.id == episode.episodeId } + 1) ?: return
            val plan = postponePlan
            val show = when {
                plan != null -> NextEpisodeRules.shouldShowPostponed(plan, position)
                nextPromptDismissed -> false
                else -> NextEpisodeRules.shouldPrompt(position, duration)
            }
            if (!show) {
                state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
            } else {
                val countdown = if (NextEpisodeRules.shouldStartCountdown(position, duration)) NextEpisodeRules.countdownSeconds(position, duration) else null
                state = state.copy(nextEpisodeTitle = next.title, nextCountdown = countdown)
                if (countdown == 0) nextEpisode()
            }
        }
    }
    fun postponeNextEpisode() {
        postponePlan = NextEpisodeRules.postponePlan(state.position, state.duration)
        state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
    }
    fun dismissNextEpisode() { nextPromptDismissed = true; postponePlan = null; state = state.copy(nextEpisodeTitle = null, nextCountdown = null) }
    fun retry() { state = state.copy(error = null); buildPlayer(0L, true) }
    fun resumeFromSaved() { val pos = state.resume ?: return; state = state.copy(resume = null); seekTo(pos); player?.play() }
    fun playFromStart() { state = state.copy(resume = null); seekTo(0); player?.play() }
    fun selectTrack(group: Tracks.Group, index: Int) { trackSelector?.parameters = trackSelector?.buildUponParameters()?.setOverrideForType(TrackSelectionOverride(group.mediaTrackGroup, index))?.build() ?: return }
    val currentLiveChannel: LiveStream? get() = liveChannels.getOrNull(liveIndex)
    val zappingChannels: List<LiveStream> get() = liveChannels
    suspend fun loadMovieDetails(): VodInfoResponse? {
        val movie = session.source as? MobilePlaybackSource.Movie ?: return null
        return (container.catalogClient.getVodInfo(session.server, session.username, session.password, movie.stream.streamId) as? VodInfoResult.Success)?.info
    }
    suspend fun loadCurrentSchedule(): List<EpgProgram> {
        val channel = currentLiveChannel ?: return emptyList()
        return container.channelEpgClient.load(session.server, session.username, session.password, channel.streamId)
    }
    fun canPlayCatchup(program: EpgProgram, nowSeconds: Long): Boolean = currentLiveChannel?.let { CatchupRules.isProgramReplayable(program, it, nowSeconds) } == true
    fun playCatchup(program: EpgProgram) {
        val channel = currentLiveChannel ?: return
        if (!CatchupRules.isProgramReplayable(program, channel, System.currentTimeMillis() / 1_000L)) return
        currentSource = MobilePlaybackSource.Catchup(channel, program.title, program.start, program.end - program.start, session.serverTimezone, liveChannels, liveIndex)
        state = state.copy(channelName = program.title, isReplay = true, buffering = true)
        buildPlayer(0L, true)
    }
    fun selectChannel(index: Int) {
        if (index !in liveChannels.indices) return
        liveIndex = index
        val name = liveChannels[index].name
        currentSource = MobilePlaybackSource.Live(liveChannels, liveIndex, session.source.let { (it as? MobilePlaybackSource.Live)?.categoryName })
        state = state.copy(channelName = name, isReplay = false, buffering = true)
        buildPlayer(0L, true)
    }
    fun nextChannel() = zap(1)
    fun previousChannel() = zap(-1)
    private fun zap(direction: Int) {
        if (liveChannels.isEmpty()) return
        liveIndex = if (direction > 0) LiveZapping.next(liveIndex, liveChannels.size) else LiveZapping.previous(liveIndex, liveChannels.size)
        val ch = liveChannels[liveIndex]
        currentSource = MobilePlaybackSource.Live(liveChannels, liveIndex, when (val source = session.source) { is MobilePlaybackSource.Live -> source.categoryName; is MobilePlaybackSource.Catchup -> source.stream.categoryId; else -> null })
        state = state.copy(channelName = ch.name, buffering = true, isReplay = false)
        buildPlayer(0L, true)
    }
    fun returnToLive() {
        val live = when (val source = session.source) {
            is MobilePlaybackSource.Live -> source
            is MobilePlaybackSource.Catchup -> MobilePlaybackSource.Live(source.channels, source.startIndex, source.stream.categoryId)
            else -> return
        }
        liveIndex = LiveZapping.clamp(liveIndex, liveChannels.size)
        currentSource = live.copy(startIndex = liveIndex)
        state = state.copy(isReplay = false)
        buildPlayer(0L, true)
    }
    fun selectEpisode(episodeId: String) {
        val source = currentSource as? MobilePlaybackSource.Episode ?: return
        val selected = source.queue.firstOrNull { it.id == episodeId } ?: return
        nextPromptDismissed = false; postponePlan = null
        currentSource = source.copy(episodeId = selected.id, title = selected.title, extension = selected.extension)
        buildPlayer(0L, true)
    }
    fun selectSeason(season: String) {
        val source = currentSource as? MobilePlaybackSource.Episode ?: return
        source.queue.firstOrNull { it.season == season }?.let { selectEpisode(it.id) }
    }
    fun nextEpisode() {
        val source = currentSource as? MobilePlaybackSource.Episode ?: return
        val index = source.queue.indexOfFirst { it.id == source.episodeId }
        source.queue.getOrNull(index + 1)?.let { next ->
            nextPromptDismissed = false
            postponePlan = null
            state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
            currentSource = source.copy(episodeId = next.id, title = next.title, extension = next.extension)
            buildPlayer(0L, true)
        }
    }
    fun onStop(inPip: Boolean) { if (!inPip) { hostStopped = true; pause(); state = state.copy(controls = true) } }
    fun onStart() {
        if (!hostStopped || released) return
        hostStopped = false
        val p = player ?: return
        if (currentSource is MobilePlaybackSource.Live) p.seekToDefaultPosition()
        p.pause()
        state = state.copy(playing = false, controls = true)
    }
    fun close() { if (released) return; released = true; saveProgress(); player?.release(); player = null; container.playbackActivity.setActive(false); audioManager.abandonAudioFocus(audioFocusListener); runCatching { context.unregisterReceiver(noisyReceiver) } }
    fun saveProgress() {
        val key = progressKey() ?: return
        val pos = player?.currentPosition ?: state.position
        val dur = player?.duration?.takeIf { it > 0 } ?: state.duration
        if (!WatchRules.shouldPersist(pos)) return
        val source = currentSource
        scope.launch(Dispatchers.IO) {
            runCatching { container.progressStore.save(session.server, session.username, key, pos, dur) }
            when (source) {
                is MobilePlaybackSource.Movie -> runCatching {
                    container.continueWatchingStore.recordMovie(session.server, session.username,
                        ContinueEntry.movie(source.stream.streamId, source.title, source.stream.streamIcon, source.stream.categoryId, source.stream.containerExtension), pos, dur)
                }
                is MobilePlaybackSource.Episode -> runCatching {
                    val current = source.queue.firstOrNull { it.id == source.episodeId }
                    val next = source.queue.getOrNull(source.queue.indexOfFirst { it.id == source.episodeId } + 1)
                    container.continueWatchingStore.recordEpisode(session.server, session.username,
                        ContinueEntry.series(source.seriesId, source.seriesTitle, source.poster, source.categoryId,
                            current?.let { ContinueEpisode(it.id, it.season, it.episodeNumber, it.title, it.extension) }),
                        next?.let { ContinueEpisode(it.id, it.season, it.episodeNumber, it.title, it.extension) }, pos, dur)
                }
                else -> Unit
            }
        }
    }
    private fun progressKey(): String? = when (val s = currentSource) { is MobilePlaybackSource.Movie -> ProgressKeys.movie(s.stream.streamId); is MobilePlaybackSource.Episode -> ProgressKeys.episode(s.episodeId); else -> null }
    private fun title(): String = when (val s = currentSource) { is MobilePlaybackSource.Live -> s.channels.getOrNull(s.startIndex)?.name.orEmpty(); is MobilePlaybackSource.Movie -> s.title; is MobilePlaybackSource.Episode -> "${s.seriesTitle} · ${s.title}"; is MobilePlaybackSource.Catchup -> s.title }
    private fun requestAudioFocus() {
        runCatching { context.registerReceiver(noisyReceiver, android.content.IntentFilter(AudioManager.ACTION_AUDIO_BECOMING_NOISY)) }
        @Suppress("DEPRECATION") audioManager.requestAudioFocus(audioFocusListener, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN)
    }
    private fun refreshTracks(tracks: Tracks) {
        val audio = tracks.groups.filter { it.type == C.TRACK_TYPE_AUDIO }
        val subs = tracks.groups.filter { it.type == C.TRACK_TYPE_TEXT }
        val format = audio.firstOrNull()?.getTrackFormat(0)
        state = state.copy(audioTracks = audio, subtitleTracks = subs, audioLabel = AudioFormatLabels.label(format?.sampleMimeType, format?.channelCount))
    }
}
