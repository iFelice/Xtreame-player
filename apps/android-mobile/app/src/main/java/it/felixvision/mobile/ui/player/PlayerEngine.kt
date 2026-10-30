package it.felixvision.mobile.ui.player

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
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
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueEpisode
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.playback.AudioFormatLabels
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.PostponePlan
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.progress.ProgressKeys
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.cancel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch

sealed interface MobilePlaybackSource {
    data class Live(
        val channels: List<LiveStream>,
        val startIndex: Int,
        val categoryName: String?,
        val isPersonal: Boolean = false,
    ) : MobilePlaybackSource

    data class Movie(
        val stream: VodStream,
        val title: String = stream.name,
    ) : MobilePlaybackSource

    data class Episode(
        val episodeId: String,
        val title: String,
        val seriesTitle: String,
        val extension: String?,
        val seriesId: String,
        val categoryId: String?,
        val poster: String?,
        val queue: List<MobileEpisodeRef>,
    ) : MobilePlaybackSource

    data class Catchup(
        val stream: LiveStream,
        val title: String,
        val start: Long,
        val duration: Long,
        val timezone: String?,
        val channels: List<LiveStream> = listOf(stream),
        val startIndex: Int = 0,
    ) : MobilePlaybackSource
}

data class MobileEpisodeRef(
    val id: String,
    val title: String,
    val extension: String?,
    val season: String,
    val episodeNumber: String,
)

data class MobilePlayerSession(
    val server: String,
    val username: String,
    val password: String,
    val formats: List<String>,
    val source: MobilePlaybackSource,
    val autoResume: Boolean = false,
    val serverTimezone: String? = null,
)

data class MobileTrackOption(
    val label: String,
    val group: Tracks.Group,
    val trackIndex: Int,
    val selected: Boolean,
)

@androidx.media3.common.util.UnstableApi
data class MobilePlayerState(
    val playing: Boolean = false,
    val buffering: Boolean = true,
    val controls: Boolean = true,
    val position: Long = 0L,
    val duration: Long = 0L,
    val error: String? = null,
    val resume: Long? = null,
    val audioTracks: List<MobileTrackOption> = emptyList(),
    val subtitleTracks: List<MobileTrackOption> = emptyList(),
    val audioLabel: String = "",
    val channelName: String = "",
    val playbackType: MobilePlaybackType = MobilePlaybackType.LIVE,
    val currentStreamId: String? = null,
    val nextEpisodeTitle: String? = null,
    val nextCountdown: Int? = null,
)

/** Owns the Media3 instance and exposes the source currently being played. */
@androidx.media3.common.util.UnstableApi
class PlayerEngine(
    private val context: Context,
    private val container: AppContainer,
    val session: MobilePlayerSession,
) {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private var started = false
    private var hostStopped = false
    private var released = false
    private var trackSelector: DefaultTrackSelector? = null
    private val liveAutoRestart = LiveAutoRestart()
    private var currentSource: MobilePlaybackSource = session.source
    private val liveChannels = when (val source = session.source) {
        is MobilePlaybackSource.Live -> source.channels
        is MobilePlaybackSource.Catchup -> source.channels
        else -> emptyList()
    }
    private var liveIndex = LiveZapping.clamp(
        when (val source = session.source) {
            is MobilePlaybackSource.Live -> source.startIndex
            is MobilePlaybackSource.Catchup -> source.startIndex
            else -> 0
        },
        liveChannels.size,
    )
    private var nextPromptDismissed = false
    private var postponePlan: PostponePlan? = null
    private val lifecycleController by lazy {
        PlayerLifecycleController(
            initialSource = session.source,
            player = object : PlayerLifecyclePort {
                override val positionMillis: Long
                    get() = player?.currentPosition ?: state.position

                override val durationMillis: Long
                    get() = player?.duration?.takeIf { it > 0L } ?: state.duration

                override fun open(
                    source: MobilePlaybackSource,
                    positionMillis: Long,
                    autoplay: Boolean,
                ) {
                    liveAutoRestart.reset()
                    currentSource = source
                    when (source) {
                        is MobilePlaybackSource.Live -> liveIndex = source.startIndex
                        is MobilePlaybackSource.Catchup -> liveIndex = source.startIndex
                        else -> Unit
                    }
                    syncSourceState()
                    buildPlayer(positionMillis, autoplay)
                }

                override fun seekTo(positionMillis: Long) {
                    this@PlayerEngine.seekTo(positionMillis)
                }

                override fun play() {
                    player?.play()
                }

                override fun pause() {
                    player?.pause()
                }

                override fun release() {
                    releasePlayerResources()
                }
            },
            progress = object : PlayerProgressPort {
                override suspend fun load(key: String): it.felixvision.tv.data.progress.WatchProgress? {
                    return container.progressStore.get(
                        session.server,
                        session.username,
                        key,
                    )
                }

                override suspend fun save(
                    source: MobilePlaybackSource,
                    key: String,
                    positionMillis: Long,
                    durationMillis: Long,
                ) {
                    runCatching {
                        container.progressStore.save(
                            session.server,
                            session.username,
                            key,
                            positionMillis,
                            durationMillis,
                        )
                    }
                    recordContinueWatching(source, positionMillis, durationMillis)
                }
            },
            scope = container.applicationScope,
            nowMillis = { container.clock.nowMillis() },
            keyForSource = ::progressKeyForSource,
            serverTimezone = session.serverTimezone,
        )
    }
    private val noisyReceiver = object : android.content.BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            pause()
        }
    }
    private val audioFocusListener = AudioManager.OnAudioFocusChangeListener { change ->
        if (change <= AudioManager.AUDIOFOCUS_LOSS_TRANSIENT) pause()
    }

    var player by mutableStateOf<ExoPlayer?>(null)
        private set

    var state by mutableStateOf(
        MobilePlayerState(
            channelName = title(),
            playbackType = currentSource.playbackType(),
            currentStreamId = streamIdOf(currentSource),
        ),
    )
        private set

    val playbackSource: MobilePlaybackSource
        get() = currentSource

    fun nowMillis(): Long = container.clock.nowMillis()

    val zappingChannels: List<LiveStream>
        get() = liveChannels

    private val listener = object : Player.Listener {
        override fun onIsPlayingChanged(isPlaying: Boolean) {
            state = state.copy(playing = isPlaying)
        }

        override fun onPlaybackStateChanged(playbackState: Int) {
            state = state.copy(buffering = playbackState == Player.STATE_BUFFERING)
            if (playbackState == Player.STATE_READY) {
                liveAutoRestart.reset()
                state = state.copy(duration = player?.duration?.coerceAtLeast(0L) ?: 0L)
            }
            if (playbackState == Player.STATE_ENDED) nextEpisode()
        }

        override fun onPlayerError(error: PlaybackException) {
            when (liveAutoRestart.onPlayerError(currentSource.playbackKind(), error)) {
                PlayerErrorAction.SILENT_RESTART -> {
                    state = state.copy(error = null, buffering = true)
                    scope.launch { buildPlayer(0L, autoplay = true) }
                }
                PlayerErrorAction.SHOW_ERROR -> {
                    state = state.copy(error = "Impossibile riprodurre questo contenuto", buffering = false)
                }
            }
        }

        override fun onTracksChanged(tracks: Tracks) {
            refreshTracks(tracks)
        }
    }

    private val analytics = object : AnalyticsListener {
        override fun onAudioDecoderInitialized(
            eventTime: AnalyticsListener.EventTime,
            decoderName: String,
            initializedTimestampMs: Long,
            initializationDurationMs: Long,
        ) {
            if (AudioFormatLabels.isFfmpegDecoder(decoderName)) {
                state = state.copy(audioLabel = "FFmpeg")
            }
        }
    }

    fun start() {
        if (started || released) return
        started = true
        scope.launch {
            val resume = lifecycleController.start(session.autoResume)
            if (resume != null) {
                state = state.copy(resume = resume, position = resume)
            }
        }
    }

    private fun buildPlayer(position: Long, autoplay: Boolean) {
        val url = buildUrl(currentSource)
        if (url.isNullOrBlank()) {
            state = state.copy(error = "Indirizzo dello stream non disponibile", buffering = false)
            return
        }

        AppLog.info("Mobile player: apertura ${StreamUrls.redactStreamUrl(url)}")
        player?.removeListener(listener)
        player?.release()
        val renderers = DefaultRenderersFactory(context)
            .setExtensionRendererMode(DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON)
        val selector = DefaultTrackSelector(context)
        trackSelector = selector
        val instance = ExoPlayer.Builder(context)
            .setRenderersFactory(renderers)
            .setTrackSelector(selector)
            .setMediaSourceFactory(PlayerNetworkConfig.mediaSourceFactory(context, url))
            .build()

        instance.addListener(listener)
        instance.addAnalyticsListener(analytics)
        instance.setAudioAttributes(
            AudioAttributes.Builder()
                .setUsage(C.USAGE_MEDIA)
                .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
                .build(),
            true,
        )
        instance.setHandleAudioBecomingNoisy(true)
        val item = MediaItem.Builder()
            .setUri(url)
            .setMediaMetadata(MediaMetadata.Builder().setTitle(title()).build())
            .build()
        instance.setMediaItem(item, position.coerceAtLeast(0L))
        instance.prepare()
        instance.playWhenReady = autoplay
        player = instance
        requestAudioFocus()
        container.playbackActivity.setActive(true)
        state = state.copy(
            error = null,
            buffering = true,
            channelName = title(),
            playbackType = currentSource.playbackType(),
            currentStreamId = streamIdOf(currentSource),
        )
    }

    private fun buildUrl(source: MobilePlaybackSource): String? = when (source) {
        is MobilePlaybackSource.Live -> source.channels
            .getOrNull(liveIndex)
            ?.let { channel ->
                StreamUrls.build(
                    session.server,
                    session.username,
                    session.password,
                    StreamTarget.Live(channel.streamId, session.formats),
                )
            }
        is MobilePlaybackSource.Movie -> StreamUrls.build(
            session.server,
            session.username,
            session.password,
            StreamTarget.Movie(source.stream.streamId, source.stream.containerExtension),
        )
        is MobilePlaybackSource.Episode -> StreamUrls.build(
            session.server,
            session.username,
            session.password,
            StreamTarget.Episode(source.episodeId, source.extension),
        )
        is MobilePlaybackSource.Catchup -> if (CatchupRules.channelSupportsArchive(source.stream)) {
            StreamUrls.buildCatchup(
                session.server,
                session.username,
                session.password,
                source.stream.streamId,
                source.start,
                source.duration,
                source.timezone,
            )
        } else {
            null
        }
    }

    fun togglePlayback() {
        val currentPlayer = player ?: return
        if (currentPlayer.isPlaying) {
            lifecycleController.pause()
        } else {
            requestAudioFocus()
            currentPlayer.play()
        }
    }

    fun pause() {
        lifecycleController.pause()
    }

    fun seekTo(position: Long) {
        val maxPosition = state.duration.takeIf { it > 0L } ?: Long.MAX_VALUE
        player?.seekTo(position.coerceIn(0L, maxPosition))
    }

    fun seekBy(seconds: Int) {
        seekTo((player?.currentPosition ?: state.position) + seconds * 1_000L)
    }

    fun setControls(visible: Boolean) {
        state = state.copy(controls = visible)
    }

    fun refresh() {
        val currentPlayer = player ?: return
        val position = currentPlayer.currentPosition.coerceAtLeast(0L)
        val duration = currentPlayer.duration.coerceAtLeast(0L)
        state = state.copy(
            position = position,
            duration = duration,
            playing = currentPlayer.isPlaying,
        )
        refreshNextEpisodePrompt(position, duration)
    }

    private fun refreshNextEpisodePrompt(position: Long, duration: Long) {
        val episode = currentSource as? MobilePlaybackSource.Episode ?: return
        val currentIndex = episode.queue.indexOfFirst { it.id == episode.episodeId }
        val next = episode.queue.getOrNull(currentIndex + 1) ?: return
        val plan = postponePlan
        val show = when {
            plan != null -> NextEpisodeRules.shouldShowPostponed(plan, position)
            nextPromptDismissed -> false
            else -> NextEpisodeRules.shouldPrompt(position, duration)
        }
        if (!show) {
            state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
            return
        }
        val countdown = if (NextEpisodeRules.shouldStartCountdown(position, duration)) {
            NextEpisodeRules.countdownSeconds(position, duration)
        } else {
            null
        }
        state = state.copy(nextEpisodeTitle = next.title, nextCountdown = countdown)
        if (countdown == 0) nextEpisode()
    }

    fun postponeNextEpisode() {
        postponePlan = NextEpisodeRules.postponePlan(state.position, state.duration)
        state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
    }

    fun dismissNextEpisode() {
        nextPromptDismissed = true
        postponePlan = null
        state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
    }

    fun retry() {
        liveAutoRestart.reset()
        state = state.copy(error = null)
        buildPlayer(0L, true)
    }

    fun resumeFromSaved() {
        lifecycleController.resumeFromSaved()
        state = state.copy(resume = null)
    }

    fun playFromStart() {
        lifecycleController.startFromBeginning()
        state = state.copy(resume = null)
    }

    fun selectTrack(option: MobileTrackOption) {
        val selector = trackSelector ?: return
        selector.parameters = selector.buildUponParameters()
            .setTrackTypeDisabled(option.group.type, false)
            .setOverrideForType(
                TrackSelectionOverride(option.group.mediaTrackGroup, option.trackIndex),
            )
            .build()
    }

    fun selectSubtitle(option: MobileTrackOption?) {
        val selector = trackSelector ?: return
        val parameters = selector.buildUponParameters()
        if (option == null) {
            parameters
                .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, true)
                .clearOverridesOfType(C.TRACK_TYPE_TEXT)
        } else {
            parameters
                .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, false)
                .setOverrideForType(
                    TrackSelectionOverride(option.group.mediaTrackGroup, option.trackIndex),
                )
        }
        selector.parameters = parameters.build()
    }

    val currentLiveChannel: LiveStream?
        get() = liveChannels.getOrNull(liveIndex)

    suspend fun loadMovieDetails(): VodInfoResponse? {
        val movie = currentSource as? MobilePlaybackSource.Movie ?: return null
        return (
            container.catalogClient.getVodInfo(
                session.server,
                session.username,
                session.password,
                movie.stream.streamId,
            ) as? VodInfoResult.Success
            )?.info
    }

    suspend fun loadCurrentSchedule(): List<EpgProgram> {
        val channel = currentLiveChannel ?: return emptyList()
        return container.channelEpgClient.load(
            session.server,
            session.username,
            session.password,
            channel.streamId,
        )
    }

    fun canPlayCatchup(program: EpgProgram, nowSeconds: Long): Boolean =
        currentLiveChannel?.let { CatchupRules.isProgramReplayable(program, it, nowSeconds) } == true

    fun playCatchup(program: EpgProgram) {
        val channel = currentLiveChannel ?: return
        lifecycleController.playCatchup(
            streamId = channel.streamId,
            programStartSeconds = program.start,
            programs = listOf(program),
        )
    }

    fun selectChannel(index: Int) {
        lifecycleController.selectChannel(index)
    }

    fun nextChannel() {
        lifecycleController.nextChannel()
    }

    fun previousChannel() {
        lifecycleController.previousChannel()
    }

    fun returnToLive() {
        lifecycleController.returnToLive()
    }

    fun selectEpisode(episodeId: String) {
        if (!lifecycleController.selectEpisode(episodeId)) return
        nextPromptDismissed = false
        postponePlan = null
    }

    fun nextEpisode() {
        if (!lifecycleController.nextEpisode()) return
        nextPromptDismissed = false
        postponePlan = null
        state = state.copy(nextEpisodeTitle = null, nextCountdown = null)
    }

    fun onStop(inPip: Boolean) {
        hostStopped = true
        if (inPip) return
        lifecycleController.onStop(inPictureInPicture = false)
        state = state.copy(controls = true)
    }

    fun onStart() {
        if (!hostStopped || released) return
        hostStopped = false
        val currentPlayer = player ?: return
        if (currentSource is MobilePlaybackSource.Live) {
            currentPlayer.seekToDefaultPosition()
        }
        currentPlayer.pause()
        state = state.copy(playing = false, controls = true)
    }

    fun close() {
        if (released) return
        released = true
        lifecycleController.close()
        scope.cancel()
    }

    fun saveProgress() {
        lifecycleController.saveProgress()
    }

    private fun releasePlayerResources() {
        player?.removeListener(listener)
        player?.release()
        player = null
        container.playbackActivity.setActive(false)
        audioManager.abandonAudioFocus(audioFocusListener)
        runCatching { context.unregisterReceiver(noisyReceiver) }
    }

    private suspend fun recordContinueWatching(
        source: MobilePlaybackSource,
        position: Long,
        duration: Long,
    ) {
        when (source) {
            is MobilePlaybackSource.Movie -> runCatching {
                container.continueWatchingStore.recordMovie(
                    session.server,
                    session.username,
                    ContinueEntry.movie(
                        source.stream.streamId,
                        source.title,
                        source.stream.streamIcon,
                        source.stream.categoryId,
                        source.stream.containerExtension,
                    ),
                    position,
                    duration,
                )
            }
            is MobilePlaybackSource.Episode -> runCatching {
                val currentIndex = source.queue.indexOfFirst { it.id == source.episodeId }
                val current = source.queue.getOrNull(currentIndex)
                val next = source.queue.getOrNull(currentIndex + 1)
                container.continueWatchingStore.recordEpisode(
                    session.server,
                    session.username,
                    ContinueEntry.series(
                        source.seriesId,
                        source.seriesTitle,
                        source.poster,
                        source.categoryId,
                        current?.toContinueEpisode(),
                    ),
                    next?.toContinueEpisode(),
                    position,
                    duration,
                )
            }
            else -> Unit
        }
    }

    private fun MobileEpisodeRef.toContinueEpisode(): ContinueEpisode = ContinueEpisode(
        episodeId = id,
        seasonNumber = season,
        episodeNum = episodeNumber,
        title = title,
        containerExtension = extension,
    )

    private fun syncSourceState() {
        state = state.copy(
            channelName = title(),
            playbackType = currentSource.playbackType(),
            currentStreamId = streamIdOf(currentSource),
            nextEpisodeTitle = null,
            nextCountdown = null,
            resume = null,
        )
    }

    private fun streamIdOf(source: MobilePlaybackSource): String? = when (source) {
        is MobilePlaybackSource.Live -> source.channels.getOrNull(liveIndex)?.streamId
        is MobilePlaybackSource.Catchup -> source.stream.streamId
        is MobilePlaybackSource.Movie -> source.stream.streamId
        is MobilePlaybackSource.Episode -> source.episodeId
    }

    private fun progressKeyForSource(source: MobilePlaybackSource): String? = when (source) {
        is MobilePlaybackSource.Movie -> ProgressKeys.movie(source.stream.streamId)
        is MobilePlaybackSource.Episode -> ProgressKeys.episode(source.episodeId)
        else -> null
    }

    private fun title(): String = when (val source = currentSource) {
        is MobilePlaybackSource.Live -> source.channels.getOrNull(liveIndex)?.name.orEmpty()
        is MobilePlaybackSource.Movie -> source.title
        is MobilePlaybackSource.Episode -> "${source.seriesTitle} · ${source.title}"
        is MobilePlaybackSource.Catchup -> source.title
    }

    private fun requestAudioFocus() {
        runCatching { context.registerReceiver(noisyReceiver, IntentFilter(AudioManager.ACTION_AUDIO_BECOMING_NOISY)) }
        @Suppress("DEPRECATION")
        audioManager.requestAudioFocus(
            audioFocusListener,
            AudioManager.STREAM_MUSIC,
            AudioManager.AUDIOFOCUS_GAIN,
        )
    }

    private fun refreshTracks(tracks: Tracks) {
        val audio = mutableListOf<MobileTrackOption>()
        val subtitles = mutableListOf<MobileTrackOption>()
        tracks.groups.forEach { group ->
            val options = when (group.type) {
                C.TRACK_TYPE_AUDIO -> audio
                C.TRACK_TYPE_TEXT -> subtitles
                else -> null
            } ?: return@forEach
            repeat(group.mediaTrackGroup.length) { index ->
                if (!group.isTrackSupported(index)) return@repeat
                val format = group.getTrackFormat(index)
                val fallback = if (group.type == C.TRACK_TYPE_AUDIO) "Audio" else "Sottotitoli"
                val language = format.language
                    ?.takeIf { it.isNotBlank() && it != "und" }
                    ?.uppercase()
                val formatLabel = if (group.type == C.TRACK_TYPE_AUDIO) {
                    AudioFormatLabels.label(format.sampleMimeType, format.channelCount)
                } else {
                    null
                }
                val label = listOfNotNull(
                    format.label?.takeIf { it.isNotBlank() },
                    language,
                    formatLabel?.takeIf { it.isNotBlank() },
                ).distinct().joinToString(" · ").ifBlank { "$fallback ${options.size + 1}" }
                options += MobileTrackOption(
                    label = label,
                    group = group,
                    trackIndex = index,
                    selected = group.isTrackSelected(index),
                )
            }
        }
        val selectedAudio = audio.firstOrNull { it.selected }
        state = state.copy(
            audioTracks = audio,
            subtitleTracks = subtitles,
            audioLabel = selectedAudio?.label.orEmpty(),
        )
    }
}

private fun MobilePlaybackSource.playbackKind(): PlaybackKind = when (this) {
    is MobilePlaybackSource.Live -> PlaybackKind.LIVE
    is MobilePlaybackSource.Catchup -> PlaybackKind.CATCHUP
    is MobilePlaybackSource.Movie -> PlaybackKind.MOVIE
    is MobilePlaybackSource.Episode -> PlaybackKind.EPISODE
}
