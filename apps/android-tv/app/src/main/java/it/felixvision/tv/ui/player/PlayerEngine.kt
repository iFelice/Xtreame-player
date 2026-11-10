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
import it.felixvision.tv.AppContainer
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.channels.MyChannelPlayback
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
import it.felixvision.tv.data.playback.LiveStallDetector
import it.felixvision.tv.data.playback.LiveStreamFormat
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.playback.VideoFormat
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

    /**
     * Canale in onda tolto da "I miei canali" mentre lo si guardava: resta in
     * onda finché non si cambia canale, anche se non è più nella lista.
     */
    private var detachedLiveChannel: LiveStream? = null

    /**
     * Posizione che il canale staccato occupava nella lista (`0..size`): da lì
     * ripartono Su/Giù, cioè dai canali che gli stavano subito sopra e sotto.
     */
    private var detachedInsertIndex: Int = 0

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
     * Formato dello schermo salvato per ogni canale Live di questo account:
     * chi manca dalla mappa parte da "Originale". Caricato una volta all'avvio,
     * tiene la scelta del canale per tutta la sessione e anche in replay.
     */
    private var channelFormats: Map<String, VideoFormat> = emptyMap()

    /**
     * Formato scelto in questa riproduzione quando la sorgente non è il Live
     * (film, serie ed episodi): non si salva e ogni riproduzione riparte da
     * "Originale".
     */
    private var sessionFormat: VideoFormat = VideoFormat.FIT

    /**
     * Stato del riquadro "Prossimo episodio" per l'episodio in corso:
     * `DISMISSED` significa "Annulla", quindi a fine video si torna alla scheda.
     */
    private enum class NextPromptState {
        NONE,
        SHOWN,
        HIDDEN_UNTIL_COUNTDOWN,
        MINIMIZED,
        DISMISSED,
    }

    private var nextPromptState = NextPromptState.NONE

    /**
     * Riavvii automatici e silenziosi della sorgente live dopo un errore di
     * rete o uno stallo, al massimo tre (vedi [PlayerNetworkConfig]).
     */
    private val liveAutoRestart = LiveAutoRestart()

    /**
     * Formato del flusso Live imposto per il canale in onda dopo un errore:
     * `null` = vale la preferenza della sessione (Impostazioni → Player).
     * Si azzera cambiando canale o con "Riprova", così il ripiego resta una
     * prova sola per canale e non un va-e-vieni tra `.ts` e `.m3u8`.
     */
    private var liveFormatOverride: LiveStreamFormat? = null

    /**
     * Ripiego di formato già usato per l'errore in corso: il secondo errore
     * dopo lo scambio va mostrato, non scambiato di nuovo.
     */
    private var liveFormatFlipUsed = false

    private var watchdogJob: Job? = null
    private var autoRestartJob: Job? = null

    /**
     * Conteggio dei riavvii: si azzera solo dopo [STABLE_READY_MILLIS] di
     * riproduzione continua, non appena lo stream torna pronto. Altrimenti un
     * canale che si strozza ogni pochi secondi riavrebbe sempre tre tentativi
     * e non arriverebbe mai all'errore, cioè al caso che l'utente deve vedere.
     */
    private var stableReadyJob: Job? = null

    /**
     * Quando è partita l'apertura del player in onda, per misurare l'avvio nel
     * log diagnostico. `null` fuori dal Live, o quando la misura non serve.
     */
    private var playbackOpenedAtMillis: Long? = null

    private val playerListener = object : Player.Listener {

        override fun onPlaybackStateChanged(playbackState: Int) {
            when (playbackState) {
                Player.STATE_BUFFERING -> {
                    cancelStableReadyReset()
                    state = state.copy(isBuffering = true)
                }
                Player.STATE_READY -> {
                    logLiveStartupIfNeeded()
                    // Nessun azzeramento immediato: conta la riproduzione continua.
                    scheduleStableReadyReset()
                    val duration = playerDuration()
                    state = state.copy(
                        isBuffering = false,
                        durationMillis = if (duration > 0L) duration else state.durationMillis,
                    )
                }
                Player.STATE_ENDED -> {
                    cancelStableReadyReset()
                    handlePlaybackEnded()
                }
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

    /**
     * Una riga per ogni avvio del Live: formato davvero in onda e tempo al
     * primo fotogramma.
     *
     * Serve a **misurare** invece di dedurre: con questa riga un canale che
     * impiega troppo si riconosce dal log, e si vede subito se è in `.ts` o in
     * HLS. Nessun dato personale: solo il formato, il tempo e il codice canale
     * oscurato.
     */
    private fun logLiveStartupIfNeeded() {
        val openedAt = playbackOpenedAtMillis ?: return
        if (!isLiveSource) return
        playbackOpenedAtMillis = null
        val elapsed = android.os.SystemClock.elapsedRealtime() - openedAt
        val inAir = currentUrl()?.substringBefore('?')?.substringAfterLast('.')?.lowercase()
        AppLog.info(
            "Player: canale pronto in $elapsed ms, formato ${inAir ?: "sconosciuto"}, " +
                StreamUrls.redactStreamUrl(currentUrl()),
        )
    }

    /**
     * Lo stream è pronto: se resta in riproduzione per [STABLE_READY_MILLIS]
     * senza tornare in caricamento, i riavvii tornano disponibili. Il timer
     * riparte a ogni nuovo READY e si ferma appena il buffer si svuota.
     */
    private fun scheduleStableReadyReset() {
        cancelStableReadyReset()
        if (!isLiveSource) return
        stableReadyJob = scope.launch {
            delay(STABLE_READY_MILLIS)
            val current = exoPlayer ?: return@launch
            if (current.playbackState == Player.STATE_READY && current.isPlaying) {
                liveAutoRestart.reset()
            }
        }
    }

    private fun cancelStableReadyReset() {
        stableReadyJob?.cancel()
        stableReadyJob = null
    }

    /**
     * Il Live in onda è un flusso progressivo (`.ts`)? Serve alla politica dei
     * retry interni e alla soglia del cane da guardia: è il caso in cui una
     * riapertura a metà costa decine di secondi di download scartato.
     */
    private fun isProgressiveLiveSource(): Boolean =
        isLiveSource && replayProgram == null &&
            PlayerNetworkConfig.isProgressiveLiveUrl(currentUrl())

    /**
     * Rigenera la sorgente del canale in onda invece di riaprire lo stesso
     * indirizzo: `currentUrl()` viene ricostruito a ogni apertura, quindi si
     * ottiene una catena di redirect e un token nuovi. Sul Live si prova anche
     * l'altro formato (`.ts` ↔ `.m3u8`) se l'account lo ammette, che è la
     * differenza sostanziale tra flusso unico e segmenti.
     */
    private fun refreshLiveSource() {
        if (!isLiveSource || replayProgram != null) return
        val inUse = liveFormatOverride ?: session.liveFormat
        val effective = if (inUse == LiveStreamFormat.AUTO) {
            // "Automatico" risolve in base ai formati dell'account.
            if (StreamUrls.liveExtension(session.allowedOutputFormats) == StreamUrls.LIVE_HLS) {
                LiveStreamFormat.HLS
            } else {
                LiveStreamFormat.TS
            }
        } else {
            inUse
        }
        val alternate = StreamUrls.alternateLiveFormat(effective, session.allowedOutputFormats)
        AppLog.warn(
            "Player: sorgente rigenerata dopo ${liveAutoRestart.restartsUsed} riavvii" +
                if (alternate != null) ", cambio formato ${effective.storageKey} → ${alternate.storageKey}" else "",
        )
        if (alternate != null) liveFormatOverride = alternate
    }

    /** Annulla un riavvio silenzioso in coda, se c'è. */
    private fun cancelLiveRestart() {
        autoRestartJob?.cancel()
        autoRestartJob = null
    }

    /**
     * Cane da guardia del Live: ExoPlayer non segnala un errore quando il
     * flusso si strozza, resta in caricamento (o "pronto" con la riproduzione
     * ferma) per sempre. Ogni [WATCHDOG_TICK_MILLIS] il [LiveStallDetector]
     * guarda da quanto dura la stessa condizione; alla soglia si passa dallo
     * stesso riavvio silenzioso degli errori di rete, quindi con lo stesso
     * limite di tentativi e la stessa schermata di errore alla fine.
     *
     * Fuori dal Live e mentre l'utente ha messo in pausa il cane è spento:
     * una pausa voluta non è uno stallo. Nel replay il tempo scorre dalla
     * sorgente, non dal flusso, e la posizione fissa è normale.
     */
    private fun startLiveWatchdog() {
        watchdogJob?.cancel()
        if (!isLiveSource) return
        watchdogJob = scope.launch {
            // Sul `.ts` la soglia di caricamento è più corta: riaprire da zero
            // costa meno che aspettare una riapertura a metà flusso.
            val detector = LiveStallDetector(progressiveLive = isProgressiveLiveSource())
            while (!exited) {
                delay(WATCHDOG_TICK_MILLIS)
                // Player assente (uscita o secondo piano): il conteggio riparte
                // da zero quando torna, non accumula il tempo in cui non c'era.
                val current = exoPlayer
                val now = android.os.SystemClock.elapsedRealtime()
                val stalled = detector.timedOut(
                    playbackState = current?.playbackState,
                    eligible = current != null && watchdogEligible(current),
                    nowMillis = now,
                )
                if (stalled) {
                    AppLog.warn(
                        "Player: canale fermo nello stato ${current?.playbackState}, " +
                            "riavvio automatico",
                    )
                    restartLiveAfterStall()
                }
            }
        }
    }

    /**
     * Il cane guardia interviene solo quando la riproduzione è davvero ferma
     * per colpa nostra. Stesso criterio del player mobile: il player dovrebbe
     * andare (`playWhenReady`) ma non avanza (`!isPlaying`) e nessuno l'ha
     * fermato di proposito (nessuna soppressione, per esempio l'audio in
     * pausa da un'app che ha il focus).
     *
     * Un flusso che va non entra mai nel conteggio: `isPlaying` vero azzera
     * l'attesa, quindi il riavvio non arriva a un canale sano.
     */
    private fun watchdogEligible(player: Player): Boolean {
        if (!isLiveSource || replayProgram != null) return false
        if (state.errorMessage != null) return false
        if (autoRestartJob?.isActive == true) return false
        return player.playWhenReady &&
            !player.isPlaying &&
            player.playbackSuppressionReason == Player.PLAYBACK_SUPPRESSION_REASON_NONE
    }

    /**
     * Intervento del cane da guardia: usa lo stesso conteggio degli errori di
     * rete. Alla fine dei tentativi arriva la schermata di errore vera, con
     * "Riprova", invece di un caricamento infinito.
     */
    private fun restartLiveAfterStall() {
        when (liveAutoRestart.onPlayerError(PlaybackKind.LIVE, networkError = true)) {
            PlayerErrorAction.SILENT_RESTART -> scheduleLiveRestart()
            PlayerErrorAction.SHOW_ERROR -> showStallError()
        }
    }

    /** Schermata di errore per uno stallo senza errore di rete. */
    private fun showStallError() {
        AppLog.warn("Player: canale live fermo dopo i riavvii automatici, errore a schermo")
        cancelLiveRestart()
        saveProgress()
        nextPromptState = NextPromptState.NONE
        channelNumberJob?.cancel()
        channelNumberJob = null
        channelNumberSession.dismissOverlay()
        state = state.copy(
            errorMessage = PlaybackErrors.GENERIC,
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

    /**
     * Riapre il canale Live dopo il tempo del tentativo corrente (2, 5, 10 s
     * secondi), così un provider momentaneamente sovraccarico non riceve tre
     * richieste di fila. Nel frattempo il caricamento resta visibile; un nuovo
     * avvio o l'uscita dal player annullano la coda.
     */
    private fun scheduleLiveRestart() {
        cancelLiveRestart()
        val waitMillis = liveAutoRestart.delayForCurrentRestart()
        AppLog.warn(
            "Player: riavvio automatico ${liveAutoRestart.restartsUsed} di " +
                "${PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS} tra $waitMillis ms",
        )
        autoRestartJob = scope.launch {
            if (waitMillis > 0L) delay(waitMillis)
            // Uscita dal player o schermata in secondo piano nel frattempo:
            // niente player nuovo finché non si torna visibili.
            if (exited || hostStopped) return@launch
            // Il flusso si è ripreso durante l'attesa: non lo si interrompe.
            val current = exoPlayer
            if (current != null && current.isPlaying) return@launch
            // Dopo qualche tentativo fallito lo stesso indirizzo non basta:
            // si rigenera la sorgente (nuovo token e, sul Live, l'altro
            // formato). È quello che fa di fatto il pannello di riferimento
            // ricostruendo l'indirizzo a ogni `prepare()`.
            if (liveAutoRestart.shouldRefreshSource()) refreshLiveSource()
            destroyPlayer()
            buildPlayer(startPositionMillis = 0L, autoPlay = true)
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
            // Formato dello schermo ricordato per ogni canale Live: basta una
            // lettura all'avvio, il resto della sessione lavora in memoria.
            channelFormats = runCatching {
                container.channelVideoFormatStore.getAll(session.server, session.username)
            }.getOrDefault(emptyMap())
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
        resetLiveRecovery()
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
        // Tempi di rete, redirect e nuovi tentativi: vedi PlayerNetworkConfig.
        val mediaSourceFactory = PlayerNetworkConfig.mediaSourceFactory(context, streamUrl = url)
        val newPlayer = ExoPlayer.Builder(context)
            .setRenderersFactory(renderersFactory)
            .setMediaSourceFactory(mediaSourceFactory)
            // Buffer fino a 50 s, avvio a 2,5 s: il flusso IPTV non si svuota
            // più a metà visione (vedi PlayerNetworkConfig.loadControl).
            .setLoadControl(PlayerNetworkConfig.loadControl())
            .build()
        newPlayer.addListener(playerListener)
        newPlayer.addAnalyticsListener(analyticsListener)
        // Live diretto: a fine stream si riparte dal bordo del live invece di
        // restare sull'ultimo fotogramma. Nel replay e nel VOD resta spento:
        // un episodio che finisce deve arrivare a handlePlaybackEnded.
        newPlayer.repeatMode =
            if (isLiveSource && replayProgram == null) Player.REPEAT_MODE_ONE else Player.REPEAT_MODE_OFF
        val mediaItem = MediaItem.Builder()
            .setUri(url)
            .setMediaMetadata(MediaMetadata.Builder().setTitle(replayProgram?.title ?: titleForCurrent()).build())
            .build()
        // Volume del nostro player: curva percettiva sul livello salvato.
        newPlayer.volume = PlayerVolume.volumeForLevel(volumeLevel)
        newPlayer.setMediaItem(mediaItem, startPositionMillis.coerceAtLeast(0L))
        playbackOpenedAtMillis = android.os.SystemClock.elapsedRealtime()
        newPlayer.prepare()
        newPlayer.playWhenReady = autoPlay
        exoPlayer = newPlayer
        // Il cane da guardia riparte con il player nuovo: ogni istanza ha il suo.
        startLiveWatchdog()
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
        // Il cane da guardia muore con il player: un'interruzione voluta non
        // deve contare come stallo.
        watchdogJob?.cancel()
        watchdogJob = null
        cancelStableReadyReset()
        val player = exoPlayer ?: return
        exoPlayer = null
        player.removeListener(playerListener)
        player.removeAnalyticsListener(analyticsListener)
        player.release()
    }

    /**
     * Il canale in onda è servito in HLS? Serve allo zapping, dove l'avvio è
     * più lento ([it.felixvision.tv.player.ZappingController.START_GRACE_MILLIS_HLS]).
     */
    fun isLiveHlsInAir(): Boolean =
        isLiveSource && replayProgram == null && currentUrl()
            ?.substringBefore('?')
            ?.endsWith(".${StreamUrls.LIVE_HLS}", ignoreCase = true) == true

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
                StreamTarget.Live(
                    streamId = channel.streamId,
                    allowedOutputFormats = session.allowedOutputFormats,
                    // Impostazioni → Player; dopo un errore vale il formato
                    // scambiato, finché il canale non cambia.
                    preferredFormat = liveFormatOverride ?: session.liveFormat,
                )
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

    private fun currentLiveChannel(): LiveStream? =
        detachedLiveChannel ?: channels.getOrNull(liveIndex)

    /**
     * Formato dello schermo in vigore adesso: nel Live è quello ricordato per
     * il canale in onda (anche in replay), altrove quello scelto in questa
     * riproduzione. [buildPlayer] lo rilegge a ogni cambio canale, così lo
     * zapping applica il formato del canale su cui si arriva.
     */
    private fun currentVideoFormat(): VideoFormat {
        if (!isLiveSource) return sessionFormat
        val streamId = currentLiveChannel()?.streamId ?: return VideoFormat.FIT
        return channelFormats[streamId] ?: VideoFormat.FIT
    }

    /** Canale in onda in questo momento, anche se tolto da "I miei canali". */
    val onAirChannel: LiveStream?
        get() = currentLiveChannel()

    /**
     * Canali su cui vale la numerazione dei tasti numerici: in "I miei canali"
     * è la lista personale corrente (può cambiare mentre si guarda), nel Live
     * è il catalogo del provider.
     */
    private fun numberingChannels(): List<LiveStream> =
        if (liveNumbering == ChannelNumbering.PERSONAL) channels else allLiveChannels

    private fun currentPlaybackKind(): PlaybackKind = when {
        replayProgram != null -> PlaybackKind.CATCHUP
        else -> when (source) {
            is PlaybackSource.Live -> PlaybackKind.LIVE
            is PlaybackSource.Movie -> PlaybackKind.MOVIE
            is PlaybackSource.Series -> PlaybackKind.EPISODE
        }
    }

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
        if (detachedLiveChannel != null) {
            // Canale tolto dalla lista: si va a quello che stava subito sotto.
            liveIndex = MyChannelPlayback.zapFromDetached(
                insertIndex = detachedInsertIndex,
                size = channels.size,
                down = true,
            )
            detachedLiveChannel = null
            detachedInsertIndex = 0
            switchLiveChannel()
            return
        }
        liveIndex = LiveZapping.next(liveIndex, channels.size)
        switchLiveChannel()
    }

    fun previousChannel() {
        if (channels.isEmpty()) return
        if (detachedLiveChannel != null) {
            // Canale tolto dalla lista: si va a quello che stava subito sopra.
            liveIndex = MyChannelPlayback.zapFromDetached(
                insertIndex = detachedInsertIndex,
                size = channels.size,
                down = false,
            )
            detachedLiveChannel = null
            detachedInsertIndex = 0
            switchLiveChannel()
            return
        }
        liveIndex = LiveZapping.previous(liveIndex, channels.size)
        switchLiveChannel()
    }

    fun selectChannel(index: Int) {
        if (channels.isEmpty()) return
        detachedLiveChannel = null
        detachedInsertIndex = 0
        liveIndex = LiveZapping.clamp(index, channels.size)
        switchLiveChannel()
    }

    /**
     * Player aperto da "I miei canali": allinea zapping e numerazione personale
     * alla lista appena cambiata, senza interrompere la riproduzione.
     *
     * Lo stesso canale resta in onda con il nuovo numero; se è stato rimosso
     * resta in onda senza numero e Su/Giù vanno ai canali che gli stavano
     * subito sopra e subito sotto nella lista nuova. Diventa di nuovo normale
     * al primo cambio canale. Nel player aperto da Live (numerazione del
     * provider) non fa nulla.
     */
    fun updatePersonalChannels(updated: List<LiveStream>) {
        if (!isLiveSource) return
        if (liveNumbering != ChannelNumbering.PERSONAL) return
        // Riferimento: il canale davvero in onda, che può essere già stato
        // tolto dalla lista (detachedLiveChannel).
        val sync = MyChannelPlayback.sync(
            onAir = currentLiveChannel(),
            positionHint = if (detachedLiveChannel != null) detachedInsertIndex else liveIndex,
            updated = updated,
        )
        channels = sync.channels
        liveIndex = LiveZapping.clamp(sync.index, channels.size)
        if (sync.number == null && sync.onAir != null) {
            // Canale tolto dalla lista: resta in onda e Su/Giù ripartono dalla
            // posizione che occupava.
            detachedLiveChannel = sync.onAir
            detachedInsertIndex = sync.insertIndex
        } else {
            // Canale in lista (anche se era stato tolto e viene riaggiunto).
            detachedLiveChannel = null
            detachedInsertIndex = 0
        }
        state = state.copy(
            currentChannelIndex = liveIndex,
            totalChannels = channels.size,
            liveChannels = channels,
            currentTitle = sync.onAir?.name ?: state.currentTitle,
        )
        // Il banner aperto mostra subito il nuovo numero.
        if (state.banner != null && !state.isReplay) showBanner()
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
        resetLiveRecovery()
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
            allStreams = numberingChannels(),
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
                            allStreams = numberingChannels(),
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
                detachedLiveChannel = null
                detachedInsertIndex = 0
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
        resetLiveRecovery()
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
                // cioè la posizione nella lista; un canale tolto dalla lista
                // resta in onda senza numero.
                number = when {
                    liveNumbering == ChannelNumbering.PERSONAL ->
                        if (detachedLiveChannel != null) null else liveIndex + 1
                    else -> channel.num
                },
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

    // --- Formato dello schermo ---

    /**
     * Apre il pannello del formato. A differenza di [openTrackPanel] funziona
     * anche sul Live senza replay: "Originale", "Zoom", "16:9" e "4:3" riguardano
     * qualunque cosa sia in onda.
     */
    fun openFormatPanel() {
        if (state.errorMessage != null) return
        // Un pannello per volta: il volume si chiude e il suo conteggio si ferma.
        closeVolumePanel()
        state = state.copy(formatPanelVisible = true)
    }

    /** Chiude subito il pannello del formato, senza cambiare nulla. */
    fun closeFormatPanel() {
        state = state.copy(formatPanelVisible = false)
    }

    /**
     * Applica e salva il formato scelto mantenendo aperto il pannello.
     *
     * Nel Live la scelta è ricordata per il canale in onda (anche in replay:
     * il canale è lo stesso) e finisce in DataStore; scegliendo "Originale" la
     * voce si cancella. In film e serie vale per questa riproduzione soltanto.
     */
    fun selectVideoFormat(format: VideoFormat) {
        state = state.copy(videoFormat = format)
        val streamId = if (isLiveSource) currentLiveChannel()?.streamId else null
        if (streamId != null) {
            channelFormats = if (format == VideoFormat.FIT) {
                channelFormats - streamId
            } else {
                channelFormats + (streamId to format)
            }
            scope.launch {
                runCatching {
                    container.channelVideoFormatStore.save(
                        server = session.server,
                        username = session.username,
                        streamId = streamId,
                        format = format,
                    )
                }
            }
        } else {
            sessionFormat = format
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

    /** Nasconde il riquadro fino al conto, oppure lo riduce durante il conto. */
    fun postponeNextEpisode() {
        val prompt = state.nextEpisode ?: return
        if (prompt.countdownSeconds == null) {
            nextPromptState = NextPromptState.HIDDEN_UNTIL_COUNTDOWN
            state = state.copy(nextEpisode = null)
        } else {
            nextPromptState = NextPromptState.MINIMIZED
            state = state.copy(nextEpisode = prompt.copy(minimized = true))
        }
    }

    /** Indietro riduce il riquadro durante il conto e lo nasconde prima. */
    fun minimizeNextEpisode() = postponeNextEpisode()

    /** Annulla il riquadro per questo episodio: a fine video si torna alla scheda. */
    fun cancelNextEpisode() {
        nextPromptState = NextPromptState.DISMISSED
        state = state.copy(nextEpisode = null)
    }

    fun retry() {
        if (exited) return
        val startPosition = state.positionMillis
        nextPromptState = NextPromptState.NONE
        state = state.copy(errorMessage = null, nextEpisode = null)
        resetLiveRecovery()
        destroyPlayer()
        buildPlayer(startPositionMillis = startPosition, autoPlay = true)
    }

    /**
     * Un nuovo inizio (cambio canale, "Riprova", ritorno alla diretta): i tre
     * riavvii tornano disponibili e il formato del flusso riparte dalla
     * preferenza dell'utente, non da quello imposto da un errore precedente.
     */
    private fun resetLiveRecovery() {
        liveAutoRestart.reset()
        liveFormatOverride = null
        liveFormatFlipUsed = false
        cancelLiveRestart()
    }

    // --- Fine riproduzione ---

    private fun handlePlaybackEnded() {
        if (exited) return
        if (replayProgram != null) {
            if ((exoPlayer?.currentPosition ?: 0L) < 1_000L) showReplayUnavailable() else returnToLive()
            return
        }
        // Canale Live chiuso dal provider: si rientra nella diretta invece di
        // restare sull'ultimo fotogramma. `REPEAT_MODE_ONE` copre i flussi che
        // Media3 sa riavvolgere da solo; questo copre gli altri (per esempio
        // alcuni HLS live). Il Live non si segna come "visto" e il conteggio
        // dei riavvii evita il ciclo infinito: esauriti i tentativi arriva
        // l'errore con "Riprova".
        if (isLiveSource) {
            restartLiveAfterStall()
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
     * Mostra il riquadro a tre minuti dalla fine (o al 10% finale per gli
     * episodi brevi) e avvia il conto negli ultimi due minuti. Ogni soglia è
     * confrontata con la posizione del video, quindi la pausa ferma il conto.
     */
    private fun updateNextEpisodePrompt(positionMillis: Long, durationMillis: Long) {
        val seriesSource = source as? PlaybackSource.Series ?: return
        if (exited || state.errorMessage != null || state.resumePositionMillis != null ||
            state.trackPanel != null
        ) {
            return
        }
        val next = seriesSource.playback.queue.getOrNull(episodeIndex + 1) ?: return
        if (nextPromptState == NextPromptState.DISMISSED) return

        val promptAt = NextEpisodeRules.promptAtMillis(durationMillis) ?: return
        val countdownAt = NextEpisodeRules.countdownStartMillis(durationMillis) ?: return

        if (positionMillis < promptAt) {
            nextPromptState = NextPromptState.NONE
            if (state.nextEpisode != null) state = state.copy(nextEpisode = null)
            return
        }

        if (positionMillis < countdownAt) {
            when (nextPromptState) {
                NextPromptState.NONE -> {
                    nextPromptState = NextPromptState.SHOWN
                    state = state.copy(nextEpisode = NextEpisodePrompt(title = next.displayTitle))
                }
                NextPromptState.SHOWN -> {
                    val current = state.nextEpisode
                    if (current == null || current.countdownSeconds != null || current.minimized) {
                        state = state.copy(nextEpisode = NextEpisodePrompt(title = next.displayTitle))
                    }
                }
                NextPromptState.HIDDEN_UNTIL_COUNTDOWN,
                NextPromptState.MINIMIZED -> {
                    if (state.nextEpisode != null) state = state.copy(nextEpisode = null)
                }
                NextPromptState.DISMISSED -> Unit
            }
            return
        }

        if (NextEpisodeRules.countdownFinished(positionMillis, durationMillis)) {
            playNextEpisode()
            return
        }

        val seconds = NextEpisodeRules.countdownSeconds(positionMillis, durationMillis)
        when (nextPromptState) {
            NextPromptState.NONE,
            NextPromptState.HIDDEN_UNTIL_COUNTDOWN -> nextPromptState = NextPromptState.SHOWN
            NextPromptState.SHOWN,
            NextPromptState.MINIMIZED -> Unit
            NextPromptState.DISMISSED -> return
        }
        val minimized = nextPromptState == NextPromptState.MINIMIZED
        val current = state.nextEpisode
        if (current == null || current.countdownSeconds != seconds || current.minimized != minimized) {
            state = state.copy(
                nextEpisode = NextEpisodePrompt(
                    title = next.displayTitle,
                    countdownSeconds = seconds,
                    minimized = minimized,
                ),
            )
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
        // Live: prima di riprovare lo stesso indirizzo si prova l'altro formato
        // (`.ts` ↔ `.m3u8`), come fa il pannello di riferimento. Un canale che
        // non parte in MPEG-TS spesso parte in HLS e viceversa; il tentativo è
        // uno solo per errore e non consuma i riavvii automatici.
        if (swapLiveFormatOnError(error)) return
        // Canale live ancora senza rete dopo i nuovi tentativi: riavvio
        // silenzioso dello stesso canale, con attese crescenti, prima di
        // mostrare l'errore.
        if (liveAutoRestart.onPlayerError(currentPlaybackKind(), error) == PlayerErrorAction.SILENT_RESTART) {
            val sessionLimit = PlayerNetworkErrors.isSessionLimit(error)
            val used = if (sessionLimit) {
                liveAutoRestart.sessionRestartsUsed
            } else {
                liveAutoRestart.restartsUsed
            }
            val total = if (sessionLimit) {
                PlayerNetworkConfig.MAX_SESSION_RESTARTS
            } else {
                PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS
            }
            AppLog.warn(
                "Player: " +
                    (if (sessionLimit) "risposta di sessione" else "errore di rete") +
                    " codice ${error.errorCode}, riavvio automatico $used di $total su " +
                    StreamUrls.redactStreamUrl(currentUrl()),
            )
            scheduleLiveRestart()
            return
        }
        AppLog.warn(
            "Player: errore codice ${error.errorCode} su " +
                StreamUrls.redactStreamUrl(currentUrl()),
        )
        // Nessun riavvio in coda: l'errore a schermo resta finché non si tocca
        // "Riprova".
        cancelLiveRestart()
        saveProgress()
        nextPromptState = NextPromptState.NONE
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

    /**
     * Ripiego di formato dopo un errore del Live: se il canale in onda è in
     * `.ts` e l'account ammette anche `.m3u8` (o viceversa), si riapre lo
     * stesso canale nell'altro formato, una volta sola per errore. Così un
     * canale che il provider non riesce a servire in MPEG-TS parte comunque,
     * senza che l'utente veda niente; se anche l'altro formato fallisce,
     * l'errore vero arriva subito dopo.
     *
     * [liveFormatFlipUsed] impedisce il va-e-vieni: uno scambio per errore,
     * poi valgono i riavvii silenziosi normali.
     *
     * Non scatta su un 404/403 (lì l'altro formato non cambierebbe niente) né
     * sui 5xx (il server è guasto, non è il formato), ma **sì** sulle risposte
     * di sessione ([PlayerNetworkConfig.SESSION_HTTP_CODES]): un HLS apre più
     * richieste in parallelo e su un pannello che conta le connessioni è
     * proprio l'HLS a farsi rifiutare con 456, quindi passare al flusso unico
     * è la cura giusta, non una connessione in più.
     */
    private fun swapLiveFormatOnError(error: PlaybackException?): Boolean {
        if (!isLiveSource || replayProgram != null || liveFormatFlipUsed) return false
        val sessionLimit = PlayerNetworkErrors.isSessionLimit(error)
        if (!sessionLimit && PlaybackErrors.isHttpResponseError(error)) return false
        val current = liveFormatOverride ?: session.liveFormat
        // Con "Automatico" conta il formato davvero in uso, non la preferenza.
        val inUse = if (current == LiveStreamFormat.AUTO) {
            val url = currentUrl() ?: return false
            when {
                url.endsWith(".${StreamUrls.LIVE_HLS}") -> LiveStreamFormat.HLS
                url.endsWith(".${StreamUrls.LIVE_TS}") -> LiveStreamFormat.TS
                else -> return false
            }
        } else {
            current
        }
        val alternate = StreamUrls.alternateLiveFormat(inUse, session.allowedOutputFormats) ?: return false
        cancelLiveRestart()
        liveFormatFlipUsed = true
        liveFormatOverride = alternate
        AppLog.warn(
            "Player: canale live non parte in ${inUse.storageKey}, secondo tentativo in " +
                "${alternate.storageKey} su ${StreamUrls.redactStreamUrl(currentUrl())}",
        )
        // Il formato nuovo può cambiare la sorgente: il player va ricostruito.
        destroyPlayer()
        buildPlayer(startPositionMillis = 0L, autoPlay = true)
        return true
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

        /** Riproduzione continua oltre la quale il conteggio dei riavvii riparte. */
        const val STABLE_READY_MILLIS = 30_000L

        /** Passo del cane da guardia: ogni stallo è visto entro mezzo secondo. */
        const val WATCHDOG_TICK_MILLIS = 500L
    }
}
