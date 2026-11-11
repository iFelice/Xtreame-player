package it.felixvision.mobile.ui.player

import android.app.Activity
import android.view.WindowManager
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.media3.common.Player
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.epg.EpgProgram
import kotlinx.coroutines.delay

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerScreen(
    container: AppContainer,
    session: MobilePlayerSession,
    onExit: () -> Unit,
) {
    val context = LocalContext.current
    val activity = context.findActivity()
    val lifecycleOwner = LocalLifecycleOwner.current
    val engine = remember(session) {
        PlayerEngine(context.applicationContext, container, session)
    }
    val state = engine.state
    val feedback = rememberPlayerGestureFeedback()
    var videoView by remember { mutableStateOf<PlayerView?>(null) }
    var fit by remember { mutableStateOf(true) }
    var overlayPanel by remember { mutableStateOf<PlayerPanel?>(null) }
    var portraitPanel by remember { mutableStateOf(PlayerPanel.GUIDE) }
    var fullScreenPortrait by remember { mutableStateOf(false) }
    var guidePrograms by remember { mutableStateOf<List<EpgProgram>>(emptyList()) }
    var guideLoading by remember { mutableStateOf(false) }
    var movieInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    val density = LocalDensity.current.density
    // Volume e luminosità reali, iniettati nello strato dei gesti: la
    // luminosità viene ripristinata all'uscita dal player.
    val volumeControl = rememberVolumeControl(context)
    val brightnessControl = rememberBrightnessControl(context, activity?.window)

    LaunchedEffect(engine) {
        engine.start()
    }
    LaunchedEffect(engine) {
        while (true) {
            delay(500L)
            engine.refresh()
        }
    }
    LaunchedEffect(state.controls, overlayPanel) {
        if (state.controls && overlayPanel == null) {
            delay(4_000L)
            engine.setControls(false)
        }
    }
    PlayerIndicatorTimeout(feedback)
    LaunchedEffect(state.playbackType, state.currentStreamId) {
        movieInfo = if (state.playbackType == MobilePlaybackType.MOVIE) {
            runCatching { engine.loadMovieDetails() }.getOrNull()
        } else {
            null
        }
    }
    LaunchedEffect(overlayPanel, portraitPanel, state.currentStreamId) {
        val guideVisible = overlayPanel == PlayerPanel.GUIDE ||
            (state.playbackType.isLiveOrCatchup && portraitPanel == PlayerPanel.GUIDE)
        if (guideVisible) {
            guideLoading = true
            guidePrograms = runCatching {
                engine.loadCurrentSchedule()
            }.getOrDefault(emptyList())
            guideLoading = false
        }
    }
    DisposableEffect(engine, onExit) {
        PlayerPipRegistry.onClosed = {
            engine.close()
            onExit()
        }
        onDispose {
            if (PlayerPipRegistry.onClosed != null) {
                PlayerPipRegistry.onClosed = null
            }
        }
    }
    DisposableEffect(engine, lifecycleOwner, activity) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_START -> engine.onStart()
                Lifecycle.Event.ON_STOP -> {
                    val inPip = activity?.isInPictureInPictureMode == true ||
                        PlayerPipRegistry.inPip
                    engine.onStop(inPip)
                }
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            engine.close()
            activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
            brightnessControl.restore()
        }
    }
    DisposableEffect(activity) {
        activity?.window?.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        onDispose {
            activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
    }
    DisposableEffect(engine.player, videoView) {
        PlayerPipRegistry.player = engine.player
        PlayerPipRegistry.videoView = videoView
        onDispose {
            if (PlayerPipRegistry.player === engine.player) {
                PlayerPipRegistry.player = null
                PlayerPipRegistry.videoView = null
            }
        }
    }
    LaunchedEffect(state.playing, engine.player, videoView) {
        updatePlayerPip(
            activity = activity,
            player = engine.player,
            view = videoView,
            enter = false,
            autoEnter = state.playing,
        )
    }
    BackHandler {
        when {
            overlayPanel != null -> overlayPanel = null
            fullScreenPortrait -> fullScreenPortrait = false
            else -> onExit()
        }
    }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black),
    ) {
        val landscape = maxWidth > maxHeight
        val immersive = landscape || fullScreenPortrait
        ConfigureImmersiveWindow(immersive, activity)
        val isPip = PlayerPipRegistry.inPip
        val gestureEnabled = overlayPanel == null &&
            state.resume == null &&
            state.error == null &&
            state.nextEpisodeTitle == null &&
            !isPip
        val gestureLayer = Modifier
            .playerGestureLayer(
                playbackType = state.playbackType,
                duration = state.duration,
                position = state.position,
                feedback = feedback,
                enabled = gestureEnabled,
                sourceKey = state.currentStreamId,
                density = density,
                context = context,
                activity = activity,
                volumeControl = volumeControl,
                brightnessControl = brightnessControl,
                onToggleControls = { engine.setControls(!engine.state.controls) },
                onSeekBy = engine::seekBy,
                onSeekTo = engine::seekTo,
                onNextChannel = engine::nextChannel,
                onPreviousChannel = engine::previousChannel,
                onZoomMode = { mode ->
                    fit = mode == TouchGestureRules.ZoomMode.FIT
                    feedback.showZoom(if (fit) "Adatta" else "Riempi")
                },
            )

        if (isPip) {
            PlayerVideoSurface(
                player = engine.player,
                fit = fit,
                modifier = Modifier.fillMaxSize(),
                onView = { videoView = it },
            )
        } else if (immersive) {
            Box(Modifier.fillMaxSize().then(gestureLayer)) {
                PlayerVideoSurface(
                    player = engine.player,
                    fit = fit,
                    modifier = Modifier.fillMaxSize(),
                    onView = { videoView = it },
                )
                if (state.controls) {
                    ControlsOverlay(
                        state = state,
                        guidePrograms = guidePrograms,
                        fit = fit,
                        activity = activity,
                        videoView = videoView,
                        engine = engine,
                        onExit = onExit,
                        onOpenPanel = { overlayPanel = it },
                        onToggleFit = { fit = !fit },
                    )
                }
                StateOverlays(
                    state = state,
                    engine = engine,
                    modifier = Modifier.align(Alignment.Center),
                )
                PlayerIndicators(
                    feedback = feedback,
                    modifier = Modifier.align(Alignment.Center),
                )
                if (state.playbackType == MobilePlaybackType.CATCHUP && state.controls) {
                    PlayerIconAction(
                        image = FvpIcons.Live,
                        description = "Torna alla diretta",
                        onClick = engine::returnToLive,
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .windowInsetsPadding(WindowInsets.safeDrawing),
                    )
                }
            }
        } else {
            PortraitPlayerLayout(
                state = state,
                guidePrograms = guidePrograms,
                guideLoading = guideLoading,
                movieInfo = movieInfo,
                portraitPanel = portraitPanel,
                engine = engine,
                activity = activity,
                videoView = videoView,
                fit = fit,
                feedback = feedback,
                gestureLayer = gestureLayer,
                onVideoView = { videoView = it },
                onPanelChange = { portraitPanel = it },
                onOpenPanel = { overlayPanel = it },
                onToggleFit = { fit = !fit },
                onEnterFullScreen = { fullScreenPortrait = true },
                onExit = onExit,
            )
        }

        if (overlayPanel != null && !isPip) {
            PlayerOverlayPanel(
                panel = overlayPanel!!,
                playbackSource = engine.playbackSource,
                state = state,
                engine = engine,
                programs = guidePrograms,
                guideLoading = guideLoading,
                onClose = { overlayPanel = null },
            )
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
internal fun BoxScope.ControlsOverlay(
    state: MobilePlayerState,
    guidePrograms: List<EpgProgram>,
    fit: Boolean,
    activity: Activity?,
    videoView: PlayerView?,
    engine: PlayerEngine,
    onExit: () -> Unit,
    onOpenPanel: (PlayerPanel) -> Unit,
    onToggleFit: () -> Unit,
) {
    val nowSeconds = engine.nowMillis() / 1_000L
    val currentProgram = guidePrograms.firstOrNull {
        nowSeconds >= it.start && nowSeconds < it.end
    }
    Column(
        modifier = Modifier
            .align(Alignment.TopCenter)
            .fillMaxWidth()
            // Comandi dentro l'area sicura: fuori dal ritaglio della fotocamera
            // e dalle barre di sistema quando ricompaiono con lo scorrimento.
            .windowInsetsPadding(WindowInsets.safeDrawing),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        PlayerControls(
            state = state,
            currentProgram = currentProgram,
            nowMillis = engine.nowMillis(),
            isFit = fit,
            onBack = onExit,
            onTracks = { onOpenPanel(PlayerPanel.TRACKS) },
            onFit = onToggleFit,
            onPip = {
                updatePlayerPip(
                    activity = activity,
                    player = engine.player,
                    view = videoView,
                    enter = true,
                    autoEnter = state.playing,
                )
            },
            onPlayPause = engine::togglePlayback,
            onSeek = engine::seekTo,
            onSeekBy = engine::seekBy,
            modifier = Modifier.fillMaxWidth(),
        )
        if (state.playbackType.isLiveOrCatchup) {
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                PlayerIconAction(
                    image = FvpIcons.CanalePrecedente,
                    description = "Canale precedente",
                    onClick = engine::previousChannel,
                )
                PlayerIconAction(
                    image = FvpIcons.CanaleSuccessivo,
                    description = "Canale successivo",
                    onClick = engine::nextChannel,
                )
                PlayerIconAction(
                    image = FvpIcons.Guida,
                    description = "Apri la guida",
                    onClick = { onOpenPanel(PlayerPanel.GUIDE) },
                )
                PlayerIconAction(
                    image = FvpIcons.Live,
                    description = "Apri i canali",
                    onClick = { onOpenPanel(PlayerPanel.CHANNELS) },
                )
            }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun PortraitPlayerLayout(
    state: MobilePlayerState,
    guidePrograms: List<EpgProgram>,
    guideLoading: Boolean,
    movieInfo: VodInfoResponse?,
    portraitPanel: PlayerPanel,
    engine: PlayerEngine,
    activity: Activity?,
    videoView: PlayerView?,
    fit: Boolean,
    feedback: PlayerGestureFeedback,
    gestureLayer: Modifier,
    onVideoView: (PlayerView) -> Unit,
    onPanelChange: (PlayerPanel) -> Unit,
    onOpenPanel: (PlayerPanel) -> Unit,
    onToggleFit: () -> Unit,
    onEnterFullScreen: () -> Unit,
    onExit: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
            // In verticale le barre restano visibili: il video comincia sotto
            // la barra di stato, senza finirci sotto.
            .windowInsetsPadding(WindowInsets.statusBars),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(16f / 9f)
                .then(gestureLayer),
        ) {
            PlayerVideoSurface(
                player = engine.player,
                fit = fit,
                modifier = Modifier.fillMaxSize(),
                onView = onVideoView,
            )
            if (state.controls) {
                Column(
                    modifier = Modifier.align(Alignment.TopCenter),
                ) {
                    PlayerControls(
                        state = state,
                        currentProgram = guidePrograms.firstOrNull { program ->
                            val now = engine.nowMillis() / 1_000L
                            now >= program.start && now < program.end
                        },
                        nowMillis = engine.nowMillis(),
                        isFit = fit,
                        onBack = onExit,
                        onTracks = { onOpenPanel(PlayerPanel.TRACKS) },
                        onFit = onToggleFit,
                        onPip = {
                            updatePlayerPip(
                                activity = activity,
                                player = engine.player,
                                view = videoView,
                                enter = true,
                                autoEnter = state.playing,
                            )
                        },
                        onPlayPause = engine::togglePlayback,
                        onSeek = engine::seekTo,
                        onSeekBy = engine::seekBy,
                        modifier = Modifier.fillMaxWidth(),
                    )
                }
            }
            StateOverlays(
                state = state,
                engine = engine,
                modifier = Modifier.align(Alignment.Center),
            )
            PlayerIndicators(
                feedback = feedback,
                modifier = Modifier.align(Alignment.Center),
            )
        }
        Row(
            modifier = Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 4.dp),
            horizontalArrangement = Arrangement.End,
        ) {
            PlayerIconAction(
                image = FvpIcons.Adatta,
                description = "Schermo intero",
                onClick = onEnterFullScreen,
            )
        }
        PlayerPortraitContent(
            state = state,
            guidePrograms = guidePrograms,
            guideLoading = guideLoading,
            movieInfo = movieInfo,
            portraitPanel = portraitPanel,
            engine = engine,
            onPanelChange = onPanelChange,
        )
    }
}

@Composable
internal fun MovieInfoPanel(
    source: MobilePlaybackSource.Movie?,
    movieInfo: VodInfoResponse?,
    modifier: Modifier = Modifier,
) {
    if (source == null) return
    Column(
        modifier = modifier.fillMaxWidth().padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        Text(source.title, color = FvpColors.TextPrimary)
        val metadata = listOfNotNull(
            source.stream.year?.takeIf(String::isNotBlank),
            movieInfo?.info?.duration?.takeIf(String::isNotBlank),
        ).joinToString(" · ")
        if (metadata.isNotBlank()) {
            Text(metadata, color = FvpColors.TextSecondary)
        }
        movieInfo?.info?.plot?.takeIf(String::isNotBlank)?.let { plot ->
            Text(plot, color = FvpColors.TextSecondary)
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun StateOverlays(
    state: MobilePlayerState,
    engine: PlayerEngine,
    modifier: Modifier = Modifier,
) {
    when {
        state.error != null -> ErrorOverlay(
            message = state.error,
            retry = engine::retry,
            modifier = modifier,
        )
        state.resume != null -> ResumeOverlay(
            position = state.resume,
            resume = engine::resumeFromSaved,
            start = engine::playFromStart,
            modifier = modifier,
        )
        state.nextEpisodeTitle != null -> NextEpisodeOverlay(
            title = state.nextEpisodeTitle,
            countdown = state.nextCountdown,
            next = engine::nextEpisode,
            postpone = engine::postponeNextEpisode,
            dismiss = engine::dismissNextEpisode,
            modifier = modifier,
        )
    }
}

@Composable
private fun ErrorOverlay(
    message: String,
    retry: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        // I test su emulatore riconoscono da questo tag l'impossibilità di
        // riprodurre il contenuto (contenuti pubblici non raggiungibili).
        modifier = modifier
            .background(FvpColors.Background.copy(alpha = .95f))
            .padding(20.dp)
            .testTag("player_error"),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(message, color = FvpColors.TextPrimary)
        TextButton(onClick = retry) {
            Text("Riprova", color = FvpColors.Green)
        }
    }
}

@Composable
private fun ResumeOverlay(
    position: Long,
    resume: () -> Unit,
    start: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .background(FvpColors.Background.copy(alpha = .95f))
            .padding(20.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        Text("Vuoi riprendere?", color = FvpColors.TextPrimary)
        TextButton(onClick = resume) {
            Text("Riprendi da ${formatPlayerTime(position)}", color = FvpColors.Green)
        }
        TextButton(onClick = start) {
            Text("Dall'inizio", color = FvpColors.Green)
        }
    }
}

@Composable
private fun NextEpisodeOverlay(
    title: String,
    countdown: Int?,
    next: () -> Unit,
    postpone: () -> Unit,
    dismiss: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .background(FvpColors.Background.copy(alpha = .95f))
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        Text(
            text = if (countdown == null) "Episodio successivo" else "Il prossimo episodio parte tra $countdown s",
            color = FvpColors.TextPrimary,
        )
        Text(title, color = FvpColors.TextPrimary)
        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            TextButton(onClick = next) { Text("Riproduci", color = FvpColors.Green) }
            TextButton(onClick = postpone) { Text("Rinvio", color = FvpColors.Green) }
            TextButton(onClick = dismiss) { Text("Annulla", color = FvpColors.Green) }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun PlayerVideoSurface(
    player: Player?,
    fit: Boolean,
    modifier: Modifier,
    onView: (PlayerView) -> Unit,
) {
    AndroidView(
        // Tag usato dai test su emulatore per conoscere i confini dell'area
        // video (gesti volume/luminosità/canale) in orizzontale e in verticale.
        modifier = modifier.testTag("player_video"),
        factory = { context ->
            PlayerView(context).apply {
                useController = false
                resizeMode = if (fit) {
                    AspectRatioFrameLayout.RESIZE_MODE_FIT
                } else {
                    AspectRatioFrameLayout.RESIZE_MODE_ZOOM
                }
                this.player = player
                onView(this)
            }
        },
        update = { view ->
            view.player = player
            view.resizeMode = if (fit) {
                AspectRatioFrameLayout.RESIZE_MODE_FIT
            } else {
                AspectRatioFrameLayout.RESIZE_MODE_ZOOM
            }
            onView(view)
        },
    )
}

@Composable
private fun ConfigureImmersiveWindow(
    immersive: Boolean,
    activity: Activity?,
) {
    DisposableEffect(immersive, activity) {
        val window = activity?.window
        val controller = window?.decorView?.let {
            androidx.core.view.WindowCompat.getInsetsController(window, it)
        }
        if (immersive) {
            controller?.hide(androidx.core.view.WindowInsetsCompat.Type.systemBars())
            controller?.systemBarsBehavior =
                androidx.core.view.WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            if (android.os.Build.VERSION.SDK_INT >= 28) {
                window?.let { currentWindow ->
                    currentWindow.attributes = currentWindow.attributes.apply {
                        layoutInDisplayCutoutMode =
                            WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES
                    }
                }
            }
        } else {
            controller?.show(androidx.core.view.WindowInsetsCompat.Type.systemBars())
        }
        onDispose {
            controller?.show(androidx.core.view.WindowInsetsCompat.Type.systemBars())
        }
    }
}

private fun android.content.Context.findActivity(): Activity? = when (this) {
    is Activity -> this
    is android.content.ContextWrapper -> baseContext.findActivity()
    else -> null
}
