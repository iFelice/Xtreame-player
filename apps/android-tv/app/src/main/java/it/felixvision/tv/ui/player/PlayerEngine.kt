@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.content.Context
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
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
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy
import it.felixvision.tv.AppContainer
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.playback.AudioFormatLabels
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.PostponeMode
import it.felixvision.tv.data.playback.PostponePlan
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchRules
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Motore del player: possiede l'istanza di ExoPlayer e lo stato della
 * schermata. ExoPlayer viene rilasciato in onStop e alla chiusura, salvando la
 * posizione; nessun URL con credenziali viene scritto nei log.
 */
class PlayerEngine(
    private val context: Context,
    private val container: AppContainer,
    private val session: PlayerSession,
    private val onExit: (PlayerExitInfo) -> Unit,
) {

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)

    private val source: PlaybackSource = session.source
    private val isLiveSource: Boolean = source is PlaybackSource.Live
    private val channels: List<LiveStream> = (source as? PlaybackSource.Live)?.channels.orEmpty()

    private var liveIndex: Int = LiveZapping.clamp(
        (source as? PlaybackSource.Live)?.startIndex ?: 0,
        channels.size,
    )
    private var episodeIndex: Int = (source as? PlaybackSource.Series)?.playback?.startIndex ?: 0

    var state by mutableStateOf(
        PlayerUiState(
            currentTitle = titleForCurrent(),
            currentChannelIndex = liveIndex,
            totalChannels = channels.size,
        ),
    )
        private set

    var exoPlayer by mutableStateOf<ExoPlayer?>(null)
        private set

    private var started = false
    private var exited = false
    private var hostStopped = false
    private var wasPlayingBeforeStop = false
    private var lastPositionBeforeStop = 0L
    private var bannerJob: Job? = null

    /**
     * Stato del riquadro "Prossimo episodio" per l'episodio in corso:
     * `DISMISSED` significa "Annulla", quindi a fine video si torna alla scheda.
     */
    private enum class NextPromptState { NONE, SHOWN, POSTPONED, DISMISSED }

    private var nextPromptState = NextPromptState.NONE

    /** Rinvio in corso: posizione nel video in cui il riquadro deve tornare. */
    private var postponePlan: PostponePlan? = null

    private val playerListener = object : Player.Listener {

        override fun onPlaybackStateChanged(playbackState: Int) {
            when (playbackState) {
                Player.STATE_BUFFERING -> state = state.copy(isBuffering = true)
                Player.STATE_READY -> {
                    val duration = playerDuration()
                    state = state.copy(
                        isBuffering = false,
                        durationMillis = if (duration > 0L) duration else state.durationMillis,
                    )
                }
                Player.STATE_ENDED -> handlePlaybackEnded()
            }
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            state = state.copy(isPlaying = isPlaying)
            if (!isPlaying) saveProgress()
        }

        override fun onPlayerError(error: PlaybackException) {
            handlePlayerError(error)
        }

        override fun onTracksChanged(tracks: Tracks) {
            refreshTracks()
        }
    }

    /** Nome del decoder audio: "ffmpeg<versione>-<codec>" per l'estensione FFmpeg. */
    private val analyticsListener = object : AnalyticsListener {

        override fun onAudioDecoderInitialized(
            eventTime: AnalyticsListener.EventTime,
            decoderName: String,
            initializedTimestampMs: Long,
            initializationDurationMs: Long,
        ) {
            val ffmpeg = AudioFormatLabels.isFfmpegDecoder(decoderName)
            if (state.ffmpegActive != ffmpeg) state = state.copy(ffmpegActive = ffmpeg)
        }
    }

    // --- Avvio e ciclo di vita ---

    fun start() {
        if (started) return
        started = true
        scope.launch {
            val contentKey = progressKey()
            val saved = if (contentKey != null) {
                runCatching {
                    container.progressStore.get(session.server, session.username, contentKey)
                }.getOrNull()
            } else {
                null
            }
            if (WatchRules.canResume(saved) && saved != null) {
                state = state.copy(
                    resumePositionMillis = saved.positionMillis,
                    positionMillis = saved.positionMillis,
                )
                buildPlayer(startPositionMillis = saved.positionMillis, autoPlay = false)
            } else {
                buildPlayer(startPositionMillis = 0L, autoPlay = true)
            }
        }
    }

    fun onHostStop() {
        if (exited) return
        hostStopped = true
        wasPlayingBeforeStop = state.isPlaying
        lastPositionBeforeStop = exoPlayer?.currentPosition ?: state.positionMillis
        saveProgress()
        destroyPlayer()
        container.playbackActivity.setActive(false)
        state = state.copy(isPlaying = false, isBuffering = false)
    }

    fun onHostStart() {
        if (!hostStopped || exited) return
        hostStopped = false
        if (!state.isReady || state.errorMessage != null) return
        val resumeVisible = state.resumePositionMillis != null
        buildPlayer(
            startPositionMillis = lastPositionBeforeStop,
            autoPlay = wasPlayingBeforeStop && !resumeVisible,
        )
    }

    fun releaseOnDispose() {
        if (!exited) {
            exited = true
            val contentKey = progressKey()
            val position = exoPlayer?.currentPosition ?: state.positionMillis
            val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
            if (contentKey != null) {
                container.applicationScope.launch {
                    runCatching {
                        container.progressStore.save(
                            session.server,
                            session.username,
                            contentKey,
                            position.coerceAtLeast(0L),
                            duration,
                        )
                    }
                }
            }
        }
        bannerJob?.cancel()
        destroyPlayer()
        container.playbackActivity.setActive(false)
        scope.cancel()
    }

    fun requestExit() {
        if (exited) return
        exited = true
        bannerJob?.cancel()
        val exitInfo = PlayerExitInfo(
            lastLiveChannelId = currentLiveChannel()?.streamId,
            lastEpisodeId = currentEpisode()?.episode?.id,
        )
        val contentKey = progressKey()
        val position = exoPlayer?.currentPosition ?: state.positionMillis
        val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
        scope.launch {
            if (contentKey != null) {
                runCatching {
                    container.progressStore.save(
                        session.server,
                        session.username,
                        contentKey,
                        position.coerceAtLeast(0L),
                        duration,
                    )
                }
            }
            destroyPlayer()
            container.playbackActivity.setActive(false)
            onExit(exitInfo)
        }
    }

    // --- Costruzione player ---

    private fun buildPlayer(startPositionMillis: Long, autoPlay: Boolean) {
        if (exited) return
        val url = currentUrl()
        if (url == null) {
            state = state.copy(
                isReady = true,
                errorMessage = PlaybackErrors.GENERIC,
                isBuffering = false,
            )
            return
        }
        AppLog.info("Player: apertura ${StreamUrls.redactStreamUrl(url)}")

        val renderersFactory = DefaultRenderersFactory(context)
            // La decodifica di sistema resta preferita; FFmpeg è il ripiego
            // per gli audio che il dispositivo non decodifica (AC3/EAC3/DTS).
            .setExtensionRendererMode(DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON)
        val mediaSourceFactory = DefaultMediaSourceFactory(context)
            // Nessun nuovo tentativo automatico a livello di sorgente.
            .setLoadErrorHandlingPolicy(DefaultLoadErrorHandlingPolicy(0))
        val newPlayer = ExoPlayer.Builder(context)
            .setRenderersFactory(renderersFactory)
            .setMediaSourceFactory(mediaSourceFactory)
            .build()
        newPlayer.addListener(playerListener)
        newPlayer.addAnalyticsListener(analyticsListener)
        val mediaItem = MediaItem.Builder()
            .setUri(url)
            .setMediaMetadata(MediaMetadata.Builder().setTitle(titleForCurrent()).build())
            .build()
        newPlayer.setMediaItem(mediaItem, startPositionMillis.coerceAtLeast(0L))
        newPlayer.prepare()
        newPlayer.playWhenReady = autoPlay
        exoPlayer = newPlayer
        container.playbackActivity.setActive(true)
        state = state.copy(
            isReady = true,
            errorMessage = null,
            isBuffering = true,
            currentTitle = titleForCurrent(),
            currentChannelIndex = liveIndex,
            totalChannels = channels.size,
            audioFormatLabel = "",
            ffmpegActive = false,
        )
    }

    private fun destroyPlayer() {
        val player = exoPlayer ?: return
        exoPlayer = null
        player.removeListener(playerListener)
        player.removeAnalyticsListener(analyticsListener)
        player.release()
    }

    private fun currentUrl(): String? {
        val target = when (val currentSource = source) {
            is PlaybackSource.Live -> {
                val channel = currentLiveChannel() ?: return null
                StreamTarget.Live(channel.streamId, session.allowedOutputFormats)
            }
            is PlaybackSource.Movie -> StreamTarget.Movie(
                streamId = currentSource.stream.streamId,
                containerExtension = currentSource.stream.containerExtension,
            )
            is PlaybackSource.Series -> {
                val current = currentEpisode() ?: return null
                StreamTarget.Episode(
                    episodeId = current.episode.id,
                    containerExtension = current.episode.containerExtension,
                )
            }
        }
        return StreamUrls.build(
            server = session.server,
            username = session.username,
            password = session.password,
            target = target,
        )
    }

    private fun progressKey(): String? = when (val currentSource = source) {
        is PlaybackSource.Live -> null
        is PlaybackSource.Movie -> ProgressKeys.movie(currentSource.stream.streamId)
        is PlaybackSource.Series -> currentEpisode()?.let { ProgressKeys.episode(it.episode.id) }
    }

    private fun currentLiveChannel(): LiveStream? = channels.getOrNull(liveIndex)

    private fun currentEpisode() = (source as? PlaybackSource.Series)
        ?.playback
        ?.queue
        ?.getOrNull(episodeIndex)

    private fun titleForCurrent(): String = when (val currentSource = source) {
        is PlaybackSource.Live -> currentLiveChannel()?.name.orEmpty()
        is PlaybackSource.Movie -> currentSource.title
        is PlaybackSource.Series -> currentEpisode()?.displayTitle ?: currentSource.playback.title
    }

    private fun playerDuration(): Long {
        val duration = exoPlayer?.duration ?: return 0L
        return if (duration == C.TIME_UNSET || duration < 0L) 0L else duration
    }

    // --- Aggiornamento periodico e salvataggio ---

    fun refreshPosition() {
        val player = exoPlayer ?: return
        val position = player.currentPosition.coerceAtLeast(0L)
        val duration = playerDuration()
        state = state.copy(
            positionMillis = position,
            durationMillis = if (duration > 0L) duration else state.durationMillis,
            isPlaying = player.isPlaying,
        )
        updateNextEpisodePrompt(
            positionMillis = position,
            durationMillis = if (duration > 0L) duration else state.durationMillis,
        )
    }

    fun saveProgress(completed: Boolean = false) {
        if (isLiveSource) return
        val contentKey = progressKey() ?: return
        val player = exoPlayer ?: return
        val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
        val position = if (completed && duration > 0L) {
            duration
        } else {
            player.currentPosition.coerceAtLeast(0L)
        }
        if (position <= 0L && duration <= 0L) return
        container.applicationScope.launch {
            runCatching {
                container.progressStore.save(
                    session.server,
                    session.username,
                    contentKey,
                    position,
                    duration,
                )
            }
        }
    }

    // --- Comandi Live ---

    fun onOk() {
        if (isLiveSource) {
            toggleBanner()
        } else {
            togglePlayPause()
        }
    }

    fun onUp() {
        if (isLiveSource) previousChannel()
    }

    fun onDown() {
        if (isLiveSource) nextChannel()
    }

    fun nextChannel() {
        if (channels.isEmpty()) return
        liveIndex = LiveZapping.next(liveIndex, channels.size)
        switchLiveChannel()
    }

    fun previousChannel() {
        if (channels.isEmpty()) return
        liveIndex = LiveZapping.previous(liveIndex, channels.size)
        switchLiveChannel()
    }

    fun selectChannel(index: Int) {
        if (channels.isEmpty()) return
        liveIndex = LiveZapping.clamp(index, channels.size)
        switchLiveChannel()
    }

    private fun switchLiveChannel() {
        state = state.copy(
            currentChannelIndex = liveIndex,
            currentTitle = currentLiveChannel()?.name.orEmpty(),
            channelListVisible = false,
            controlsVisible = false,
            errorMessage = null,
            isBuffering = true,
            isPlaying = false,
            positionMillis = 0L,
            durationMillis = 0L,
        )
        showBanner()
        destroyPlayer()
        buildPlayer(startPositionMillis = 0L, autoPlay = true)
    }

    fun openChannelList() {
        if (!isLiveSource) return
        bannerJob?.cancel()
        state = state.copy(channelListVisible = true, banner = null, controlsVisible = false)
    }

    fun closeChannelList() {
        state = state.copy(channelListVisible = false)
    }

    fun hideBanner() {
        bannerJob?.cancel()
        state = state.copy(banner = null)
    }

    private fun toggleBanner() {
        if (state.banner != null) {
            hideBanner()
        } else {
            showBanner()
        }
    }

    private fun showBanner() {
        if (!isLiveSource) return
        val channel = currentLiveChannel() ?: return
        val liveSource = source as? PlaybackSource.Live
        state = state.copy(
            banner = ChannelBanner(
                number = channel.num,
                name = channel.name,
                categoryName = liveSource?.categoryName,
                logoUrl = channel.streamIcon,
            ),
        )
        bannerJob?.cancel()
        bannerJob = scope.launch {
            delay(BANNER_DURATION_MILLIS)
            state = state.copy(banner = null)
        }
    }

    // --- Comandi VOD ---

    fun togglePlayPause() {
        val player = exoPlayer ?: return
        if (player.isPlaying) {
            player.pause()
        } else {
            if (player.playbackState == Player.STATE_ENDED) {
                player.seekTo(0L)
            }
            player.play()
        }
        state = state.copy(controlsVisible = true)
    }

    fun showControls() {
        state = state.copy(controlsVisible = true)
    }

    fun hideControls() {
        state = state.copy(controlsVisible = false)
    }

    fun seekBySeconds(seconds: Int) {
        if (isLiveSource) return
        val player = exoPlayer ?: return
        val duration = playerDuration()
        var target = player.currentPosition + seconds * 1_000L
        target = target.coerceAtLeast(0L)
        if (duration > 0L) target = target.coerceAtMost(duration)
        player.seekTo(target)
        state = state.copy(positionMillis = target, controlsVisible = true)
    }

    fun openTrackPanel(panel: TrackPanelType) {
        if (isLiveSource) return
        state = state.copy(trackPanel = panel, controlsVisible = true)
    }

    fun closeTrackPanel() {
        state = state.copy(trackPanel = null)
    }

    fun selectAudio(option: TrackOption) {
        val player = exoPlayer ?: return
        val parameters = player.trackSelectionParameters.buildUpon()
            .setTrackTypeDisabled(C.TRACK_TYPE_AUDIO, false)
            .setOverrideForType(TrackSelectionOverride(option.group, option.trackIndex))
            .build()
        player.trackSelectionParameters = parameters
        state = state.copy(trackPanel = null, controlsVisible = true)
        refreshTracks()
    }

    fun selectSubtitle(option: TrackOption?) {
        val player = exoPlayer ?: return
        val builder = player.trackSelectionParameters.buildUpon()
        if (option == null) {
            builder
                .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, true)
                .clearOverridesOfType(C.TRACK_TYPE_TEXT)
        } else {
            builder
                .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, false)
                .setOverrideForType(TrackSelectionOverride(option.group, option.trackIndex))
        }
        player.trackSelectionParameters = builder.build()
        state = state.copy(trackPanel = null, controlsVisible = true)
        refreshTracks()
    }

    fun resumeFromSavedPosition() {
        state = state.copy(resumePositionMillis = null)
        val player = exoPlayer
        if (player == null) {
            buildPlayer(startPositionMillis = state.positionMillis, autoPlay = true)
        } else {
            player.play()
        }
    }

    fun startFromBeginning() {
        state = state.copy(resumePositionMillis = null, positionMillis = 0L, controlsVisible = false)
        val player = exoPlayer
        if (player == null) {
            buildPlayer(startPositionMillis = 0L, autoPlay = true)
        } else {
            player.seekTo(0L)
            player.play()
        }
    }

    fun playNextEpisode() {
        val seriesSource = source as? PlaybackSource.Series ?: return
        val nextIndex = episodeIndex + 1
        if (nextIndex >= seriesSource.playback.queue.size) {
            requestExit()
            return
        }
        nextPromptState = NextPromptState.NONE
        postponePlan = null
        episodeIndex = nextIndex
        state = state.copy(
            nextEpisode = null,
            errorMessage = null,
            controlsVisible = false,
            positionMillis = 0L,
            durationMillis = 0L,
            isPlaying = false,
            isBuffering = true,
            audioFormatLabel = "",
            ffmpegActive = false,
            currentTitle = seriesSource.playback.queue[nextIndex].displayTitle,
        )
        destroyPlayer()
        buildPlayer(startPositionMillis = 0L, autoPlay = true)
    }

    /**
     * "Posticipa": il riquadro sparisce e torna dopo 60 secondi di riproduzione
     * effettiva, oppure negli ultimi 15 secondi con il conto alla rovescia se
     * mancano meno di 75 secondi alla fine. Si può posticipare più volte.
     */
    fun postponeNextEpisode() {
        if (state.nextEpisode == null) return
        val position = exoPlayer?.currentPosition?.coerceAtLeast(0L) ?: state.positionMillis
        val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
        postponePlan = NextEpisodeRules.postponePlan(position, duration)
        nextPromptState = NextPromptState.POSTPONED
        state = state.copy(nextEpisode = null)
    }

    /**
     * "Annulla": niente più riquadro per questo episodio; a fine video si torna
     * alla scheda della serie.
     */
    fun cancelNextEpisode() {
        nextPromptState = NextPromptState.DISMISSED
        postponePlan = null
        state = state.copy(nextEpisode = null)
    }

    fun retry() {
        if (exited) return
        val startPosition = state.positionMillis
        nextPromptState = NextPromptState.NONE
        postponePlan = null
        state = state.copy(errorMessage = null, nextEpisode = null)
        destroyPlayer()
        buildPlayer(startPositionMillis = startPosition, autoPlay = true)
    }

    // --- Fine riproduzione ---

    private fun handlePlaybackEnded() {
        if (exited) return
        saveProgress(completed = true)
        val seriesSource = source as? PlaybackSource.Series
        if (seriesSource != null) {
            val next = seriesSource.playback.queue.getOrNull(episodeIndex + 1)
            if (next == null) {
                requestExit()
                return
            }
            // "Annulla" chiuso dall'utente: a fine video si torna alla scheda.
            if (nextPromptState == NextPromptState.DISMISSED) {
                requestExit()
                return
            }
            // Col riquadro aperto (o senza riquadro) parte il successivo.
            playNextEpisode()
            return
        }
        state = state.copy(
            isPlaying = false,
            controlsVisible = true,
            positionMillis = playerDuration().takeIf { it > 0L } ?: state.positionMillis,
        )
    }

    /**
     * Riquadro "Prossimo episodio" guidato dalla posizione: compare 3 minuti
     * prima della fine (10% finale se l'episodio è corto) e, dopo "Posticipa",
     * torna 60 secondi di riproduzione più avanti oppure — se al rinvio
     * mancavano meno di 75 secondi — negli ultimi 15 con il conto alla rovescia.
     */
    private fun updateNextEpisodePrompt(positionMillis: Long, durationMillis: Long) {
        val seriesSource = source as? PlaybackSource.Series ?: return
        if (exited || state.errorMessage != null || state.resumePositionMillis != null ||
            state.trackPanel != null
        ) {
            return
        }
        val next = seriesSource.playback.queue.getOrNull(episodeIndex + 1) ?: return

        when (nextPromptState) {
            NextPromptState.DISMISSED -> return
            NextPromptState.POSTPONED -> {
                val plan = postponePlan ?: return
                // Il confronto è sulla posizione del video: la pausa non conta e
                // un salto indietro nasconde di nuovo il riquadro.
                if (!NextEpisodeRules.shouldShowPostponed(plan, positionMillis)) {
                    if (state.nextEpisode != null) state = state.copy(nextEpisode = null)
                    return
                }
                if (plan.mode == PostponeMode.DELAYED) {
                    // Rinvio in modalità normale: riquadro con i tre pulsanti.
                    val current = state.nextEpisode
                    if (current == null || current.countdownSeconds != null || !current.canPostpone) {
                        state = state.copy(
                            nextEpisode = NextEpisodePrompt(title = next.displayTitle),
                        )
                    }
                    return
                }
                if (NextEpisodeRules.countdownFinished(positionMillis, durationMillis)) {
                    playNextEpisode()
                    return
                }
                val seconds = NextEpisodeRules.countdownSeconds(positionMillis, durationMillis)
                val current = state.nextEpisode
                if (current?.countdownSeconds != seconds) {
                    state = state.copy(
                        nextEpisode = NextEpisodePrompt(
                            title = next.displayTitle,
                            countdownSeconds = seconds,
                            canPostpone = false,
                        ),
                    )
                }
                return
            }
            NextPromptState.SHOWN -> return
            NextPromptState.NONE -> {
                if (!NextEpisodeRules.shouldPrompt(positionMillis, durationMillis)) return
                nextPromptState = NextPromptState.SHOWN
                state = state.copy(
                    nextEpisode = NextEpisodePrompt(title = next.displayTitle),
                )
            }
        }
    }

    private fun handlePlayerError(error: PlaybackException) {
        AppLog.warn(
            "Player: errore codice ${error.errorCode} su " +
                StreamUrls.redactStreamUrl(currentUrl()),
        )
        saveProgress()
        nextPromptState = NextPromptState.NONE
        postponePlan = null
        state = state.copy(
            errorMessage = PlaybackErrors.messageFor(error),
            isBuffering = false,
            isPlaying = false,
            controlsVisible = false,
            banner = null,
            channelListVisible = false,
            trackPanel = null,
            nextEpisode = null,
        )
        destroyPlayer()
        container.playbackActivity.setActive(false)
    }

    private fun refreshTracks() {
        val player = exoPlayer ?: return
        val audio = mutableListOf<TrackOption>()
        val subtitles = mutableListOf<TrackOption>()
        var audioNumber = 0
        var subtitleNumber = 0

        // Formato della traccia audio effettivamente selezionata: mime e canali.
        var selectedAudioMime: String? = null
        var selectedAudioChannels: Int? = null
        for (group in player.currentTracks.groups) {
            when (group.type) {
                C.TRACK_TYPE_AUDIO -> {
                    for (index in 0 until group.length) {
                        if (!group.isTrackSupported(index)) continue
                        if (group.isTrackSelected(index)) {
                            val format = group.getTrackFormat(index)
                            selectedAudioMime = format.sampleMimeType
                            selectedAudioChannels = format.channelCount.takeIf { it > 0 }
                        }
                        audioNumber++
                        audio.add(
                            TrackOption(
                                label = trackLabel(
                                    group.getTrackFormat(index),
                                    fallbackPrefix = "Audio",
                                    number = audioNumber,
                                ),
                                group = group.mediaTrackGroup,
                                trackIndex = index,
                                selected = group.isTrackSelected(index),
                            ),
                        )
                    }
                }
                C.TRACK_TYPE_TEXT -> {
                    for (index in 0 until group.length) {
                        if (!group.isTrackSupported(index)) continue
                        subtitleNumber++
                        subtitles.add(
                            TrackOption(
                                label = trackLabel(
                                    group.getTrackFormat(index),
                                    fallbackPrefix = "Sottotitoli",
                                    number = subtitleNumber,
                                ),
                                group = group.mediaTrackGroup,
                                trackIndex = index,
                                selected = group.isTrackSelected(index),
                            ),
                        )
                    }
                }
            }
        }
        state = state.copy(
            audioTracks = audio,
            subtitleTracks = subtitles,
            subtitlesDisabled = subtitles.none { it.selected },
            audioFormatLabel = AudioFormatLabels.label(selectedAudioMime, selectedAudioChannels),
        )
    }

    private fun trackLabel(
        format: androidx.media3.common.Format,
        fallbackPrefix: String,
        number: Int,
    ): String {
        val label = format.label?.takeIf { it.isNotBlank() }
        val language = format.language?.takeIf { it.isNotBlank() }?.uppercase()
        return label ?: language ?: "$fallbackPrefix $number"
    }

    private companion object {
        const val BANNER_DURATION_MILLIS = 4_000L
    }
}
