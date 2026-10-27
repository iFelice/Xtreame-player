@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.os.SystemClock
import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.media3.ui.PlayerView
import androidx.tv.material3.Text
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.data.playback.SeekAcceleration
import it.felixvision.tv.data.playback.SeekAccumulator
import it.felixvision.tv.data.playback.SeekFeedback
import it.felixvision.tv.ui.catalog.MyChannelDialog
import it.felixvision.tv.ui.components.ChannelNumberIndicator
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberChannelSchedulePrograms
import it.felixvision.tv.ui.components.rememberMinuteNow
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Schermata player a tutto schermo, in una finestra Dialog sopra la scheda di
 * origine. PlayerView usa una SurfaceView (tipo predefinito) e non mostra i
 * propri controlli: l'interfaccia è disegnata in Compose con [FvpColors] e
 * [UiScale].
 *
 * Ciclo di vita: ExoPlayer viene rilasciato in onStop e alla chiusura, sempre
 * salvando la posizione. Lo schermo resta acceso per tutta la riproduzione.
 */
@Composable
fun PlayerScreen(
    container: AppContainer,
    session: PlayerSession,
    scale: UiScale,
    onExit: (PlayerExitInfo) -> Unit,
) {
    val context = LocalContext.current.applicationContext
    val latestOnExit by rememberUpdatedState(onExit)
    val engine = remember(session.id) {
        PlayerEngine(
            context = context,
            container = container,
            session = session,
            onExit = { info -> latestOnExit(info) },
        )
    }
    val state = engine.state
    val rootFocus = remember { FocusRequester() }
    val audioFocus = remember { FocusRequester() }
    var rootFocused by remember { mutableStateOf(false) }
    var keyTick by remember { mutableStateOf(0) }
    var seekDirection by remember { mutableStateOf(0) }
    var seekStartedAt by remember { mutableStateOf(0L) }
    var lastSeekAt by remember { mutableStateOf(0L) }
    var seekFeedback by remember { mutableStateOf<SeekFeedback?>(null) }
    val playerScope = rememberCoroutineScope()

    // "I miei canali" dal player Live: pressione lunga sul canale in onda.
    val myChannelsRevision by container.myChannelsStore.revision.collectAsState()
    val myChannels by produceState<List<MyChannel>>(
        initialValue = emptyList(),
        myChannelsRevision,
        session.server,
        session.username,
    ) {
        value = container.myChannelsStore.getChannels(session.server, session.username)
    }
    var myChannelEdit by remember(session.id) { mutableStateOf<MyChannel?>(null) }

    fun confirmMyChannelPosition(channel: MyChannel, position: Int) {
        playerScope.launch {
            val current = container.myChannelsStore.getChannels(session.server, session.username)
            if (MyChannels.contains(current, channel.streamId)) {
                container.myChannelsStore.moveTo(session.server, session.username, channel.streamId, position)
            } else {
                container.myChannelsStore.insertAt(session.server, session.username, channel, position)
            }
            myChannelEdit = null
        }
    }

    fun moveMyChannel(channel: MyChannel, up: Boolean) {
        playerScope.launch {
            if (up) {
                container.myChannelsStore.moveUp(session.server, session.username, channel.streamId)
            } else {
                container.myChannelsStore.moveDown(session.server, session.username, channel.streamId)
            }
        }
    }

    fun removeMyChannel(channel: MyChannel) {
        playerScope.launch {
            container.myChannelsStore.remove(session.server, session.username, channel.streamId)
            myChannelEdit = null
        }
    }

    val currentLiveChannel = state.liveChannels.getOrNull(state.currentChannelIndex)
    val bannerSchedulePrograms = rememberChannelSchedulePrograms(
        streamIds = listOfNotNull(currentLiveChannel?.streamId),
        loader = container.channelScheduleLoader,
        server = session.server,
        username = session.username,
        password = session.password,
    )
    val bannerScheduleNow = rememberMinuteNow(container.clock)

    LaunchedEffect(engine) { engine.start() }

    LaunchedEffect(engine) {
        while (true) {
            delay(500L)
            engine.refreshPosition()
        }
    }

    LaunchedEffect(engine) {
        while (true) {
            delay(10_000L)
            engine.saveProgress()
        }
    }

    val lifecycleOwner = LocalLifecycleOwner.current
    DisposableEffect(lifecycleOwner, engine) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_START -> engine.onHostStart()
                Lifecycle.Event.ON_STOP -> engine.onHostStop()
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            engine.releaseOnDispose()
        }
    }

    // La barra si nasconde dopo 5 secondi senza tasti.
    LaunchedEffect(state.controlsVisible, state.hasModalOverlay, keyTick) {
        if (!state.controlsVisible || state.hasModalOverlay) return@LaunchedEffect
        delay(5_000L)
        if (state.controlsVisible) {
            if (!rootFocused) rootFocus.requestFocus()
            engine.hideControls()
        }
    }

    fun handleSeek(direction: Int) {
        // I salti riguardano film ed episodi: nel Live Sinistra/Destra non toccano nulla.
        if (session.source is PlaybackSource.Live && !state.isReplay) return
        val now = SystemClock.elapsedRealtime()
        if (seekDirection != direction || now - lastSeekAt > 700L) {
            seekDirection = direction
            seekStartedAt = now
        }
        lastSeekAt = now
        val step = if (state.isReplay) { if (now - seekStartedAt >= 600L) 300 else 60 } else SeekAcceleration.secondsForHold(now - seekStartedAt)
        engine.seekBySeconds(direction * step)
        // Etichetta sul lato del tasto: le pressioni ravvicinate si sommano.
        seekFeedback = SeekAccumulator.next(seekFeedback, direction, step, now)
    }

    // L'etichetta dei salti sparisce 1,5 s dopo l'ultima pressione.
    LaunchedEffect(seekFeedback) {
        val shown = seekFeedback ?: return@LaunchedEffect
        delay(SeekAccumulator.WINDOW_MILLIS)
        if (seekFeedback?.updatedAtMillis == shown.updatedAtMillis) {
            seekFeedback = null
        }
    }

    fun handleBack() {
        if (engine.cancelNumberInput()) {
            rootFocus.requestFocus()
            return
        }
        if (state.isReplay) {
            engine.returnToLive()
            rootFocus.requestFocus()
            return
        }
        if (state.epgVisible) {
            if (state.epgExpanded != null) {
                engine.toggleEpgDescription(state.epgExpanded!!)
            } else {
                engine.closeEpg()
                rootFocus.requestFocus()
            }
            return
        }
        if (state.volumePanelVisible) {
            // Indietro chiude il pannello del volume e lascia il player com'è.
            engine.closeVolumePanel()
            rootFocus.requestFocus()
            return
        }
        when {
            state.trackPanel != null -> {
                engine.closeTrackPanel()
                rootFocus.requestFocus()
            }
            state.channelListVisible -> {
                engine.closeChannelList()
                rootFocus.requestFocus()
            }
            state.resumePositionMillis != null -> {
                engine.startFromBeginning()
                rootFocus.requestFocus()
            }
            state.nextEpisode != null -> engine.cancelNextEpisode()
            state.errorMessage != null -> if (state.isReplay) engine.returnToLive() else engine.requestExit()
            state.controlsVisible -> {
                engine.hideControls()
                rootFocus.requestFocus()
            }
            state.banner != null -> engine.hideBanner()
            else -> engine.requestExit()
        }
    }

    Dialog(
        onDismissRequest = { handleBack() },
        properties = DialogProperties(
            usePlatformDefaultWidth = false,
            decorFitsSystemWindows = false,
        ),
    ) {
        BackHandler { handleBack() }
        val dialogView = LocalView.current
        DisposableEffect(dialogView) {
            dialogView.keepScreenOn = true
            onDispose { dialogView.keepScreenOn = false }
        }
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black)
                .fvpLongPress {
                    if (session.source is PlaybackSource.Live && !state.isReplay) {
                        state.liveChannels.getOrNull(state.currentChannelIndex)?.let { channel ->
                            myChannelEdit = MyChannel(
                                streamId = channel.streamId,
                                name = channel.name,
                                logo = channel.streamIcon,
                            )
                        }
                    }
                }
                .onPreviewKeyEvent { event ->
                    val native = event.nativeKeyEvent
                    if (session.source is PlaybackSource.Live && !state.isReplay && !state.hasModalOverlay) {
                        if (engine.onChannelNumberKey(
                                keyCode = native.keyCode,
                                action = native.action,
                                repeatCount = native.repeatCount,
                            )
                        ) {
                            if (event.type == KeyEventType.KeyDown) {
                                keyTick++
                                if (state.volumePanelVisible) engine.keepVolumePanelAlive()
                            }
                            return@onPreviewKeyEvent true
                        }
                    }
                    if (event.type == KeyEventType.KeyDown && session.source is PlaybackSource.Live && !state.isReplay) {
                        when (native.keyCode) {
                            AndroidKeyEvent.KEYCODE_GUIDE, AndroidKeyEvent.KEYCODE_INFO, AndroidKeyEvent.KEYCODE_TV_DATA_SERVICE -> { engine.toggleEpg(); return@onPreviewKeyEvent true }
                        }
                        if (state.epgVisible) {
                            when (event.key) {
                                Key.DirectionUp, Key.DirectionDown -> return@onPreviewKeyEvent false
                                Key.DirectionCenter, Key.Enter -> return@onPreviewKeyEvent false
                                else -> Unit
                            }
                        }
                    }
                    when (event.type) {
                        KeyEventType.KeyDown -> {
                            keyTick++
                            // Qualsiasi tasto rimanda la chiusura del pannello volume.
                            if (state.volumePanelVisible) engine.keepVolumePanelAlive()
                            if (state.channelListVisible && event.key == Key.DirectionRight) {
                                engine.closeChannelList()
                                rootFocus.requestFocus()
                                return@onPreviewKeyEvent true
                            }
                            if (state.hasModalOverlay) {
                                return@onPreviewKeyEvent false
                            }
                            // Pannello del volume aperto: Su/Giù cambiano il livello
                            // anche con il focus ancora sulla barra comandi.
                            if (state.volumePanelVisible) {
                                when (event.key) {
                                    Key.DirectionUp -> {
                                        engine.changeVolume(1)
                                        return@onPreviewKeyEvent true
                                    }
                                    Key.DirectionDown -> {
                                        engine.changeVolume(-1)
                                        return@onPreviewKeyEvent true
                                    }
                                    else -> Unit
                                }
                            }
                            // Focus dentro la barra comandi: le frecce servono ai pulsanti.
                            if (state.controlsVisible && !rootFocused) {
                                return@onPreviewKeyEvent false
                            }
                            when (event.key) {
                                Key.DirectionCenter, Key.Enter -> {
                                    engine.onOk()
                                    true
                                }
                                Key.DirectionUp -> {
                                    when {
                                        // Con il pannello aperto Su/Giù cambiano il
                                        // livello, non il canale.
                                        state.volumePanelVisible -> engine.changeVolume(1)
                                        session.source is PlaybackSource.Live && !state.isReplay -> engine.onUp()
                                        // La barra appare senza mettere in pausa.
                                        else -> engine.showControls()
                                    }
                                    true
                                }
                                Key.DirectionDown -> {
                                    when {
                                        state.volumePanelVisible -> engine.changeVolume(-1)
                                        state.controlsVisible && session.source !is PlaybackSource.Live ->
                                            audioFocus.requestFocus()
                                        session.source is PlaybackSource.Live && !state.isReplay -> engine.onDown()
                                        // Film ed episodi: barra chiusa, Giù apre il volume.
                                        else -> engine.openVolumePanel()
                                    }
                                    true
                                }
                                Key.DirectionLeft -> {
                                    if (session.source is PlaybackSource.Live && !state.isReplay) {
                                        engine.openChannelList()
                                    } else {
                                        handleSeek(-1)
                                    }
                                    true
                                }
                                Key.DirectionRight -> {
                                    if (session.source is PlaybackSource.Live && !state.isReplay) {
                                        // Live: Destra apre il volume, solo con lista
                                        // canali e banner chiusi.
                                        if (!state.channelListVisible && state.banner == null &&
                                            !state.volumePanelVisible
                                        ) {
                                            engine.openVolumePanel()
                                        }
                                    } else {
                                        // Film ed episodi: Destra resta +10 s.
                                        handleSeek(1)
                                    }
                                    true
                                }
                                else -> false
                            }
                        }
                        KeyEventType.KeyUp -> {
                            if (event.key == Key.DirectionLeft || event.key == Key.DirectionRight) {
                                seekDirection = 0
                            }
                            false
                        }
                        else -> false
                    }
                }
                .onFocusChanged { rootFocused = it.isFocused }
                .focusRequester(rootFocus)
                .focusable()
                .testTag("player_root"),
        ) {
            LaunchedEffect(Unit) {
                withFrameNanos { }
                rootFocus.requestFocus()
            }
            LaunchedEffect(state.isReplay) {
                if (state.isReplay) {
                    withFrameNanos { }
                    rootFocus.requestFocus()
                }
            }

            // Dopo il riquadro del prossimo episodio (anche a fine countdown)
            // il focus torna alla radice, così i tasti tornano al player.
            LaunchedEffect(state.nextEpisode != null) {
                if (state.nextEpisode == null && !state.hasModalOverlay) {
                    withFrameNanos { }
                    rootFocus.requestFocus()
                }
            }

            val currentPlayer = engine.exoPlayer
            if (currentPlayer != null) {
                AndroidView(
                    factory = { ctx ->
                        PlayerView(ctx).apply {
                            // Nessun controller Media3: i comandi sono in Compose.
                            useController = false
                            keepScreenOn = true
                        }
                    },
                    update = { view -> view.player = currentPlayer },
                    onRelease = { view -> view.player = null },
                    modifier = Modifier.fillMaxSize(),
                )
            }

            if (state.isReplay && !state.hasModalOverlay) {
                Text(
                    text = "REPLAY · ${state.currentTitle}",
                    color = FvpColors.TextPrimary,
                    modifier = Modifier.align(Alignment.TopStart).padding(scale.dp(28f)).playerOverlay(scale).padding(horizontal = scale.dp(14f), vertical = scale.dp(8f)),
                )
            }

            if (state.isBuffering && state.errorMessage == null && !state.hasModalOverlay) {
                Text(
                    text = "Caricamento…",
                    color = FvpColors.TextSecondary,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .testTag("player_buffering"),
                )
            }

            if (state.controlsVisible && !state.hasModalOverlay && (session.source !is PlaybackSource.Live || state.isReplay)) {
                PlayerControlsBar(
                    state = state,
                    scale = scale,
                    audioFocusRequester = audioFocus,
                    onAudio = { engine.openTrackPanel(TrackPanelType.AUDIO) },
                    onSubtitles = { engine.openTrackPanel(TrackPanelType.SUBTITLES) },
                    onVolume = { engine.openVolumePanel() },
                    modifier = Modifier.align(Alignment.BottomCenter),
                    audioFormatLabel = state.audioFormatLabel,
                    ffmpegActive = state.ffmpegActive,
                )
            }

            state.banner?.let { banner ->
                if (!state.hasModalOverlay) {
                    PlayerChannelBanner(
                        banner = banner,
                        scale = scale,
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(scale.dp(28f)),
                        audioFormatLabel = state.audioFormatLabel,
                        ffmpegActive = state.ffmpegActive,
                        schedulePrograms = currentLiveChannel?.let { bannerSchedulePrograms[it.streamId] },
                        scheduleNowMillis = bannerScheduleNow,
                    )
                }
            }

            seekFeedback?.let { feedback ->
                if (!state.hasModalOverlay) {
                    PlayerSeekFeedback(
                        feedback = feedback,
                        scale = scale,
                        modifier = Modifier
                            .align(
                                if (feedback.direction < 0) Alignment.CenterStart else Alignment.CenterEnd
                            )
                            .padding(horizontal = scale.dp(52f))
                            .padding(top = scale.dp(80f)),
                    )
                }
            }

            if (state.epgVisible && session.source is PlaybackSource.Live) {
                PlayerEpgOverlay(channelName = state.currentTitle, programs = state.epgPrograms, loading = state.epgLoading, unavailable = state.epgUnavailable, expanded = state.epgExpanded, scale = scale, clock = container.clock, onDescription = engine::toggleEpgDescription, channel = state.liveChannels.getOrNull(state.currentChannelIndex), onReplay = engine::startReplay, modifier = Modifier.align(Alignment.CenterEnd))
            }

            if (state.channelListVisible) {
                PlayerChannelListOverlay(
                    channels = state.liveChannels,
                    currentIndex = state.currentChannelIndex,
                    categoryName = state.liveCategoryName,
                    scale = scale,
                    onSelect = { index ->
                        engine.selectChannel(index)
                        rootFocus.requestFocus()
                    },
                    epgClient = container.channelScheduleLoader,
                    epgServer = session.server,
                    epgUsername = session.username,
                    epgPassword = session.password,
                    clock = container.clock,
                    myChannelIds = myChannels.map { it.streamId }.toSet(),
                )
            }

            if (session.source is PlaybackSource.Live && !state.isReplay && !state.hasModalOverlay) {
                ChannelNumberIndicator(
                    overlay = state.channelNumberOverlay,
                    scale = scale,
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(scale.dp(28f)),
                )
            }

            if (state.volumePanelVisible && !state.hasModalOverlay) {
                PlayerVolumePanel(
                    level = state.volumeLevel,
                    scale = scale,
                    modifier = Modifier
                        .align(Alignment.CenterEnd)
                        .padding(end = scale.dp(28f)),
                )
            }

            state.trackPanel?.let { panel ->
                PlayerTrackPanel(
                    panel = panel,
                    audioOptions = state.audioTracks,
                    subtitleOptions = state.subtitleTracks,
                    subtitlesDisabled = state.subtitlesDisabled,
                    scale = scale,
                    onSelectAudio = { option ->
                        engine.selectAudio(option)
                        rootFocus.requestFocus()
                    },
                    onSelectSubtitle = { option ->
                        engine.selectSubtitle(option)
                        rootFocus.requestFocus()
                    },
                )
            }

            state.errorMessage?.let { message ->
                PlayerErrorOverlay(
                    message = message,
                    scale = scale,
                    onRetry = {
                        engine.retry()
                        rootFocus.requestFocus()
                    },
                    onBack = {
                        if (state.isReplay) {
                            engine.returnToLive()
                            rootFocus.requestFocus()
                        } else engine.requestExit()
                    },
                    showRetry = !state.isReplay,
                )
            }

            state.resumePositionMillis?.let { position ->
                PlayerResumePrompt(
                    positionMillis = position,
                    scale = scale,
                    onResume = {
                        engine.resumeFromSavedPosition()
                        rootFocus.requestFocus()
                    },
                    onStartOver = {
                        engine.startFromBeginning()
                        rootFocus.requestFocus()
                    },
                )
            }

            state.nextEpisode?.let { prompt ->
                PlayerNextEpisodePrompt(
                    prompt = prompt,
                    scale = scale,
                    onWatchNow = {
                        engine.playNextEpisode()
                        rootFocus.requestFocus()
                    },
                    onPostpone = { engine.postponeNextEpisode() },
                    onCancel = { engine.cancelNextEpisode() },
                )
            }
        }
    }

    // Pressione lunga sul canale in onda: aggiunta o menu di modifica di
    // "I miei canali", in una finestra sopra il player.
    myChannelEdit?.let { channel ->
        MyChannelDialog(
            channel = channel,
            channels = myChannels,
            scale = scale,
            onInsertAt = { position -> confirmMyChannelPosition(channel, position) },
            onMoveUp = { moveMyChannel(channel, up = true) },
            onMoveDown = { moveMyChannel(channel, up = false) },
            onRemove = { removeMyChannel(channel) },
            onDismiss = { myChannelEdit = null },
        )
    }
}
