@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.content.Context
import android.view.KeyEvent as AndroidKeyEvent
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.getValue
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
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueEpisode
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.playback.AudioFormatLabels
import it.felixvision.tv.data.playback.ChannelKeyOutcome
import it.felixvision.tv.data.playback.ChannelLookupResult
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.data.playback.ChannelNumberSession
import it.felixvision.tv.data.playback.ChannelNumbering
import it.felixvision.tv.data.playback.EpisodeOrder
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.PostponeMode
import it.felixvision.tv.data.playback.PostponePlan
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchRules
import it.felixvision.tv.data.volume.PlayerVolume
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
    private val allLiveChannels: List<LiveStream> =
        (source as? PlaybackSource.Live)?.let { live ->
            live.allChannels.ifEmpty { live.channels }
        }.orEmpty()
    private val liveCategories: List<Category> =
        (source as? PlaybackSource.Live)?.categories.orEmpty()
    /** Numerazione dei tasti numerici: personale quando il player arriva da "I miei canali". */
    private val liveNumbering: ChannelNumbering =
        (source as? PlaybackSource.Live)?.numbering ?: ChannelNumbering.PROVIDER
    private var channels: List<LiveStream> =
        (source as? PlaybackSource.Live)?.channels.orEmpty()
    private var liveCategoryName: String? =
        (source as? PlaybackSource.Live)?.categoryName

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
            liveChannels = channels,
            liveCategoryName = liveCategoryName,
        ),
    )
        private set

    var exoPlayer by mutableStateOf<ExoPlayer?>(null)
        private set

    private var replayProgram: EpgProgram? = null
    private var replayBaseMillis: Long = 0L
    private var replayDurationMillis: Long = 0L

    private var started = false
    private var exited = false
    private var hostStopped = false
    private var wasPlayingBeforeStop = false
    private var lastPositionBeforeStop = 0L
    private var bannerJob: Job? = null
    private val channelNumberSession = ChannelNumberSession(numbering = liveNumbering)
    private var channelNumberJob: Job? = null
    // Volume del nostro ExoPlayer (0-15): livello caricato da DataStore all'avvio.
    private var volumeLevel: Int = PlayerVolume.DEFAULT_LEVEL
    private var volumeJob: Job? = null

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
            // Livello del volume salvato: ripristinato a ogni avvio del player.
            volumeLevel = runCatching { container.volumeStore.level() }
                .getOrDefault(PlayerVolume.DEFAULT_LEVEL)
            state = state.copy(volumeLevel = volumeLevel)
            val contentKey = progressKey()
            val saved = if (contentKey != null) {
                runCatching {
                    container.progressStore.get(session.server, session.username, contentKey)
                }.getOrNull()
            } else {
                null
            }
            if (WatchRules.canResume(saved) && saved != null) {
                if (session.autoResume) {
                    // Da "Continua a guardare" riparte subito dal punto salvato,
                    // senza la finestra "Riprendi".
                    buildPlayer(startPositionMillis = saved.positionMillis, autoPlay = true)
                } else {
                    state = state.copy(
                        resumePositionMillis = saved.positionMillis,
                        positionMillis = saved.positionMillis,
                    )
                    buildPlayer(startPositionMillis = saved.positionMillis, autoPlay = false)
                }
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
                    persistWatchState(position.coerceAtLeast(0L), duration)
                }
            }
        }
        bannerJob?.cancel()
        channelNumberJob?.cancel()
        volumeJob?.cancel()
        destroyPlayer()
        container.playbackActivity.setActive(false)
        scope.cancel()
    }

    fun requestExit() {
        if (exited) return
        exited = true
        bannerJob?.cancel()
        channelNumberJob?.cancel()
        volumeJob?.cancel()
        val exitInfo = PlayerExitInfo(
            lastLiveChannelId = currentLiveChannel()?.streamId,
            lastEpisodeId = currentEpisode()?.episode?.id,
        )
        val contentKey = progressKey()
        val position = exoPlayer?.currentPosition ?: state.positionMillis
        val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
        scope.launch {
            if (contentKey != null) {
                persistWatchState(position.coerceAtLeast(0L), duration)
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
            if (replayProgram != null) {
                state = state.copy(isReady = true, isReplay = true)
                showReplayUnavailable()
            } else {
                state = state.copy(
                    isReady = true,
                    errorMessage = PlaybackErrors.GENERIC,
                    isBuffering = false,
                )
            }
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
            .setMediaMetadata(MediaMetadata.Builder().setTitle(replayProgram?.title ?: titleForCurrent()).build())
            .build()
        // Volume del nostro player: curva percettiva sul livello salvato.
        newPlayer.volume = PlayerVolume.volumeForLevel(volumeLevel)
        newPlayer.setMediaItem(mediaItem, startPositionMillis.coerceAtLeast(0L))
        newPlayer.prepare()
        newPlayer.playWhenReady = autoPlay
        exoPlayer = newPlayer
        container.playbackActivity.setActive(true)
        state = state.copy(
            isReady = true,
            errorMessage = null,
            isBuffering = true,
            currentTitle = replayProgram?.title ?: titleForCurrent(),
            isReplay = replayProgram != null,
            durationMillis = if (replayProgram != null) replayDurationMillis else 0L,
            positionMillis = if (replayProgram != null) replayBaseMillis else 0L,
            currentChannelIndex = liveIndex,
            totalChannels = channels.size,
            liveChannels = channels,
            liveCategoryName = liveCategoryName,
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
        replayProgram?.let { program ->
            val channel = currentLiveChannel() ?: return null
            return if (replayBaseMillis <= 0L) {
                StreamUrls.buildCatchup(
                    server = session.server, username = session.username, password = session.password,
                    streamId = channel.streamId, startEpochSeconds = program.start,
                    durationSeconds = program.end - program.start, serverTimezone = session.serverTimezone,
                )
            } else {
                StreamUrls.buildShiftedCatchup(
                    server = session.server, username = session.username, password = session.password,
                    streamId = channel.streamId, startEpochSeconds = program.start,
                    durationSeconds = program.end - program.start,
                    offsetSeconds = replayBaseMillis / 1_000L, serverTimezone = session.serverTimezone,
                )
            }
        }
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
        val shownPosition = if (replayProgram != null) replayBaseMillis + position else position
        if (replayProgram != null && replayDurationMillis > 0L && shownPosition >= replayDurationMillis) {
            returnToLive()
            return
        }
        state = state.copy(
            positionMillis = shownPosition,
            durationMillis = if (replayProgram != null) replayDurationMillis else if (duration > 0L) duration else state.durationMillis,
            isPlaying = player.isPlaying,
        )
        updateNextEpisodePrompt(
            positionMillis = position,
            durationMillis = if (duration > 0L) duration else state.durationMillis,
        )
    }

    fun saveProgress(completed: Boolean = false) {
        // Il Live non ha né avanzamento né voce in "Continua a guardare".
        if (isLiveSource) return
        if (progressKey() == null) return
        val player = exoPlayer ?: return
        val duration = playerDuration().takeIf { it > 0L } ?: state.durationMillis
        val position = if (completed && duration > 0L) {
            duration
        } else {
            player.currentPosition.coerceAtLeast(0L)
        }
        if (position <= 0L && duration <= 0L) return
        container.applicationScope.launch {
            persistWatchState(position.coerceAtLeast(0L), duration)
        }
    }

    /**
     * Salva l'avanzamento e aggiorna l'archivio "Continua a guardare" con gli
     * stessi valori: un solo punto di scrittura per posizione e archivio.
     */
    private suspend fun persistWatchState(positionMillis: Long, durationMillis: Long) {
        val contentKey = progressKey() ?: return
        runCatching {
            container.progressStore.save(
                session.server,
                session.username,
                contentKey,
                positionMillis,
                durationMillis,
            )
        }
        runCatching { recordContinueWatching(positionMillis, durationMillis) }
    }

    /**
     * Aggiorna l'archivio "Continua a guardare": per i film la voce sparisce
     * oltre il 90%, per le serie punta all'episodio successivo della coda (o
     * sparisce se era l'ultimo). Il Live non entra nell'archivio.
     */
    private suspend fun recordContinueWatching(positionMillis: Long, durationMillis: Long) {
        val store = container.continueWatchingStore
        when (val currentSource = source) {
            is PlaybackSource.Live -> return
            is PlaybackSource.Movie -> {
                val movie = ContinueEntry.movie(
                    streamId = currentSource.stream.streamId,
                    title = currentSource.title.ifBlank { currentSource.stream.name },
                    poster = currentSource.stream.streamIcon,
                    categoryId = currentSource.categoryId ?: currentSource.stream.categoryId,
                    containerExtension = currentSource.stream.containerExtension,
                )
                store.recordMovie(
                    server = session.server,
                    username = session.username,
                    movie = movie,
                    positionMillis = positionMillis,
                    durationMillis = durationMillis,
                )
            }
            is PlaybackSource.Series -> {
                val current = currentEpisode() ?: return
                val playback = currentSource.playback
                val series = ContinueEntry.series(
                    seriesId = playback.seriesId,
                    title = playback.title,
                    poster = playback.cover,
                    categoryId = playback.categoryId,
                    episode = current.toContinueEpisode(),
                )
                store.recordEpisode(
                    server = session.server,
                    username = session.username,
                    series = series,
                    nextEpisode = playback.queue.getOrNull(episodeIndex + 1)?.toContinueEpisode(),
                    positionMillis = positionMillis,
                    durationMillis = durationMillis,
                )
            }
        }
    }

    private fun EpisodeOrder.toContinueEpisode(): ContinueEpisode = ContinueEpisode(
        episodeId = episode.id,
        seasonNumber = seasonNumber,
        episodeNum = episode.episodeNum,
        title = displayTitle,
        containerExtension = episode.containerExtension,
    )

    // --- Comandi Live ---

    fun onOk() {
        if (replayProgram != null) {
            togglePlayPause()
        } else if (isLiveSource) {
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
        channelNumberJob?.cancel()
        channelNumberJob = null
        channelNumberSession.dismissOverlay()
        state = state.copy(
            currentChannelIndex = liveIndex,
            totalChannels = channels.size,
            liveChannels = channels,
            liveCategoryName = liveCategoryName,
            currentTitle = currentLiveChannel()?.name.orEmpty(),
            channelListVisible = false,
            controlsVisible = false,
            channelNumberOverlay = null,
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

    /**
     * Gestisce i tasti del cambio canale numerico (0..9, NUMPAD_0..9, OK,
     * Indietro e annullamento su frecce). In film ed episodi non fa nulla.
     */
    fun onChannelNumberKey(
        keyCode: Int,
        action: Int,
        repeatCount: Int = 0,
    ): Boolean {
        if (!isLiveSource || state.hasModalOverlay) return false
        val outcome = channelNumberSession.handleKeyEvent(
            keyCode = keyCode,
            action = action,
            repeatCount = repeatCount,
            allStreams = allLiveChannels,
            categories = liveCategories,
        )
        when (outcome) {
            ChannelKeyOutcome.Ignored -> Unit
            ChannelKeyOutcome.Consumed -> {
                if (action == AndroidKeyEvent.ACTION_DOWN &&
                    repeatCount == 0 &&
                    ChannelNumberInput.digitFromKeyCode(keyCode) != null
                ) {
                    state = state.copy(channelNumberOverlay = channelNumberSession.overlay)
                    channelNumberJob?.cancel()
                    channelNumberJob = scope.launch {
                        delay(ChannelNumberInput.CONFIRM_DELAY_MILLIS)
                        val result = channelNumberSession.confirm(
                            allStreams = allLiveChannels,
                            categories = liveCategories,
                        ) ?: return@launch
                        applyChannelLookupResult(result)
                    }
                }
            }
            is ChannelKeyOutcome.Confirmed -> {
                channelNumberJob?.cancel()
                channelNumberJob = null
                applyChannelLookupResult(outcome.result)
            }
            ChannelKeyOutcome.Cancelled,
            ChannelKeyOutcome.CancelledPassThrough -> {
                channelNumberJob?.cancel()
                channelNumberJob = null
                state = state.copy(channelNumberOverlay = null)
            }
        }
        return outcome.consumed
    }

    /** Annulla l'inserimento numerico attivo (per esempio su Indietro). */
    fun cancelNumberInput(): Boolean {
        if (!channelNumberSession.cancel()) return false
        channelNumberJob?.cancel()
        channelNumberJob = null
        state = state.copy(channelNumberOverlay = null)
        return true
    }

    private fun applyChannelLookupResult(result: ChannelLookupResult) {
        when (result) {
            is ChannelLookupResult.Found -> {
                channels = result.zapping.channels
                // Con la numerazione personale la categoria resta "I miei canali".
                if (liveNumbering == ChannelNumbering.PROVIDER) {
                    liveCategoryName = result.zapping.categoryName
                }
                liveIndex = LiveZapping.clamp(result.zapping.startIndex, channels.size)
                switchLiveChannel()
            }
            is ChannelLookupResult.NotFound -> {
                val overlay = channelNumberSession.overlay
                state = state.copy(channelNumberOverlay = overlay)
                channelNumberJob?.cancel()
                channelNumberJob = scope.launch {
                    delay(ChannelNumberInput.NOT_FOUND_DURATION_MILLIS)
                    if (state.channelNumberOverlay == overlay) {
                        channelNumberSession.dismissOverlay()
                        state = state.copy(channelNumberOverlay = null)
                    }
                    channelNumberJob = null
                }
            }
        }
    }

    fun toggleEpg() {
        if (!isLiveSource) return
        if (state.epgVisible) { state = state.copy(epgVisible = false, epgExpanded = null); return }
        state = state.copy(epgVisible = true, epgLoading = true, epgUnavailable = false, epgPrograms = emptyList(), channelListVisible = false, controlsVisible = false)
        val channel = currentLiveChannel() ?: run { state = state.copy(epgLoading = false, epgUnavailable = true); return }
        scope.launch {
            val result = container.channelEpgClient.load(session.server, session.username, session.password, channel.streamId)
            if (state.epgVisible && currentLiveChannel()?.streamId == channel.streamId) state = state.copy(epgLoading = false, epgPrograms = result, epgUnavailable = result.isEmpty())
        }
    }

    fun closeEpg() { state = state.copy(epgVisible = false, epgExpanded = null) }
    fun toggleEpgDescription(start: Long) { state = state.copy(epgExpanded = if (state.epgExpanded == start) null else start) }

    fun startReplay(program: EpgProgram) {
        val channel = currentLiveChannel() ?: return
        val now = container.clock.nowMillis() / 1_000L
        val allowed = if (CatchupRules.isOnAir(program, now)) CatchupRules.channelSupportsArchive(channel)
            else CatchupRules.isProgramReplayable(program, channel, now)
        if (!allowed || !isLiveSource) return
        replayProgram = program
        replayDurationMillis = (program.end - program.start).coerceAtLeast(0L) * 1_000L
        replayBaseMillis = 0L
        state = state.copy(epgVisible = false, epgExpanded = null, isReplay = true,
            currentTitle = program.title, positionMillis = 0L, durationMillis = replayDurationMillis,
            controlsVisible = true, errorMessage = null, isBuffering = true)
        destroyPlayer()
        buildPlayer(0L, autoPlay = true)
    }

    /** Torna al canale live corrente, anche dal pannello di errore del replay. */
    fun returnToLive() {
        if (replayProgram == null) return
        replayProgram = null
        replayBaseMillis = 0L
        replayDurationMillis = 0L
        state = state.copy(isReplay = false, errorMessage = null, positionMillis = 0L,
            durationMillis = 0L, controlsVisible = false, isBuffering = true, isPlaying = false,
            currentTitle = currentLiveChannel()?.name.orEmpty())
        destroyPlayer()
        buildPlayer(0L, autoPlay = true)
    }

    fun openChannelList() {
        if (!isLiveSource) return
        bannerJob?.cancel()
        channelNumberJob?.cancel()
        channelNumberJob = null
        channelNumberSession.dismissOverlay()
        state = state.copy(
            channelListVisible = true,
            banner = null,
            controlsVisible = false,
            channelNumberOverlay = null,
        )
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
        state = state.copy(
            banner = ChannelBanner(
                // Con la numerazione personale il banner mostra il TUO numero,
                // cioè la posizione nella lista.
                number = if (liveNumbering == ChannelNumbering.PERSONAL) liveIndex + 1 else channel.num,
                name = channel.name,
                categoryName = liveCategoryName,
                logoUrl = channel.streamIcon,
            ),
        )
        bannerJob?.cancel()
        bannerJob = scope.launch {
            delay(BANNER_DURATION_MILLIS)
            state = state.copy(banner = null)
        }
    }

    // --- Volume del player ---

    /** Apre il pannello del volume senza toccare il livello. */
    fun openVolumePanel() {
        if (state.errorMessage != null) return
        state = state.copy(volumePanelVisible = true, volumeLevel = volumeLevel)
        scheduleVolumeHide()
    }

    /** Chiude subito il pannello del volume. */
    fun closeVolumePanel() {
        volumeJob?.cancel()
        volumeJob = null
        if (state.volumePanelVisible) state = state.copy(volumePanelVisible = false)
    }

    /** Sposta il livello di [delta] passi (0-15), apre il pannello e salva. */
    fun changeVolume(delta: Int) {
        val updated = PlayerVolume.step(volumeLevel, delta)
        volumeLevel = updated
        exoPlayer?.volume = PlayerVolume.volumeForLevel(updated)
        state = state.copy(volumeLevel = updated, volumePanelVisible = true)
        scheduleVolumeHide()
        scope.launch {
            runCatching { container.volumeStore.saveLevel(updated) }
        }
    }

    /** Un tasto qualsiasi con il pannello aperto rimanda la chiusura a 3 s. */
    fun keepVolumePanelAlive() {
        if (!state.volumePanelVisible) return
        scheduleVolumeHide()
    }

    private fun scheduleVolumeHide() {
        volumeJob?.cancel()
        volumeJob = scope.launch {
            delay(PlayerVolume.HIDE_DELAY_MILLIS)
            state = state.copy(volumePanelVisible = false)
            volumeJob = null
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
        if (isLiveSource && replayProgram == null) return
        val player = exoPlayer ?: return
        if (replayProgram != null) {
            val targetShown = (state.positionMillis + seconds * 1_000L).coerceIn(0L, replayDurationMillis)
            if (player.isCurrentMediaItemSeekable) {
                player.seekTo((targetShown - replayBaseMillis).coerceAtLeast(0L))
                state = state.copy(positionMillis = targetShown, controlsVisible = true)
            } else {
                val program = replayProgram ?: return
                val offset = (program.start + targetShown / 1_000L)
                val roundedStart = Math.floorDiv(offset, 60L) * 60L
                replayBaseMillis = (roundedStart - program.start).coerceAtLeast(0L) * 1_000L
                if (replayBaseMillis >= replayDurationMillis) {
                    returnToLive()
                } else {
                    state = state.copy(positionMillis = replayBaseMillis, controlsVisible = true, isBuffering = true)
                    destroyPlayer()
                    buildPlayer(0L, autoPlay = true)
                }
            }
            return
        }
        val duration = playerDuration()
        var target = player.currentPosition + seconds * 1_000L
        target = target.coerceAtLeast(0L)
        if (duration > 0L) target = target.coerceAtMost(duration)
        player.seekTo(target)
        state = state.copy(positionMillis = target, controlsVisible = true)
    }

    fun openTrackPanel(panel: TrackPanelType) {
        if (isLiveSource && replayProgram == null) return
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
        if (replayProgram != null) {
            if ((exoPlayer?.currentPosition ?: 0L) < 1_000L) showReplayUnavailable() else returnToLive()
            return
        }
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

    private fun showReplayUnavailable() {
        AppLog.warn("Player: replay non disponibile (HTTP/stream) su ${StreamUrls.redactStreamUrl(currentUrl())}")
        state = state.copy(
            errorMessage = "Registrazione non disponibile per questo programma",
            isBuffering = false,
            isPlaying = false,
            controlsVisible = false,
            banner = null,
            trackPanel = null,
        )
        destroyPlayer()
        container.playbackActivity.setActive(false)
    }

    private fun handlePlayerError(error: PlaybackException) {
        if (replayProgram != null) {
            showReplayUnavailable()
            return
        }
        AppLog.warn(
            "Player: errore codice ${error.errorCode} su " +
                StreamUrls.redactStreamUrl(currentUrl()),
        )
        saveProgress()
        nextPromptState = NextPromptState.NONE
        postponePlan = null
        channelNumberJob?.cancel()
        channelNumberJob = null
        channelNumberSession.dismissOverlay()
        state = state.copy(
            errorMessage = PlaybackErrors.messageFor(error),
            isBuffering = false,
            isPlaying = false,
            controlsVisible = false,
            banner = null,
            channelListVisible = false,
            channelNumberOverlay = null,
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
