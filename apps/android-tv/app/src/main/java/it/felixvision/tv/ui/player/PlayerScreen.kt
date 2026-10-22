@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import android.os.SystemClock
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
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
import it.felixvision.tv.data.playback.SeekAcceleration
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

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
        val now = SystemClock.elapsedRealtime()
        if (seekDirection != direction || now - lastSeekAt > 700L) {
            seekDirection = direction
            seekStartedAt = now
        }
        lastSeekAt = now
        val step = SeekAcceleration.secondsForHold(now - seekStartedAt)
        engine.seekBySeconds(direction * step)
    }

    fun handleBack() {
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
            state.errorMessage != null -> engine.requestExit()
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
        val dialogView = LocalView.current
        DisposableEffect(dialogView) {
            dialogView.keepScreenOn = true
            onDispose { dialogView.keepScreenOn = false }
        }
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black)
                .onPreviewKeyEvent { event ->
                    when (event.type) {
                        KeyEventType.KeyDown -> {
                            keyTick++
                            if (state.channelListVisible && event.key == Key.DirectionRight) {
                                engine.closeChannelList()
                                rootFocus.requestFocus()
                                return@onPreviewKeyEvent true
                            }
                            if (state.hasModalOverlay) {
                                return@onPreviewKeyEvent false
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
                                    engine.onUp()
                                    true
                                }
                                Key.DirectionDown -> {
                                    if (state.controlsVisible && session.source !is PlaybackSource.Live) {
                                        audioFocus.requestFocus()
                                    } else {
                                        engine.onDown()
                                    }
                                    true
                                }
                                Key.DirectionLeft -> {
                                    if (session.source is PlaybackSource.Live) {
                                        engine.openChannelList()
                                    } else {
                                        handleSeek(-1)
                                    }
                                    true
                                }
                                Key.DirectionRight -> {
                                    handleSeek(1)
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

            if (state.isBuffering && state.errorMessage == null && !state.hasModalOverlay) {
                Text(
                    text = "Caricamento…",
                    color = FvpColors.TextSecondary,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .testTag("player_buffering"),
                )
            }

            if (state.controlsVisible && !state.hasModalOverlay && session.source !is PlaybackSource.Live) {
                PlayerControlsBar(
                    state = state,
                    scale = scale,
                    audioFocusRequester = audioFocus,
                    onAudio = { engine.openTrackPanel(TrackPanelType.AUDIO) },
                    onSubtitles = { engine.openTrackPanel(TrackPanelType.SUBTITLES) },
                    modifier = Modifier.align(Alignment.BottomCenter),
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
                    )
                }
            }

            if (state.channelListVisible) {
                PlayerChannelListOverlay(
                    channels = (session.source as? PlaybackSource.Live)?.channels.orEmpty(),
                    currentIndex = state.currentChannelIndex,
                    categoryName = (session.source as? PlaybackSource.Live)?.categoryName,
                    scale = scale,
                    onSelect = { index ->
                        engine.selectChannel(index)
                        rootFocus.requestFocus()
                    },
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
                    onBack = { engine.requestExit() },
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
                    onCancel = { engine.cancelNextEpisode() },
                )
            }
        }
    }

}
