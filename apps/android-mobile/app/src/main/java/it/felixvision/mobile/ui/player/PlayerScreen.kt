package it.felixvision.mobile.ui.player

import android.app.Activity
import android.os.SystemClock
import android.view.WindowManager
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.media3.common.Player
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import it.felixvision.mobile.AppContainer
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules
import it.felixvision.tv.data.catalog.VodInfoResponse
import kotlinx.coroutines.delay

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerScreen(container: AppContainer, session: MobilePlayerSession, onExit: () -> Unit) {
    val context = LocalContext.current
    val activity = context as? Activity
    val engine = remember(session) { PlayerEngine(context.applicationContext, container, session) }
    val state = engine.state
    var videoView by remember { mutableStateOf<PlayerView?>(null) }
    var fit by remember { mutableStateOf(true) }
    var panel by remember { mutableStateOf<String?>(null) }
    var fullScreenPortrait by remember { mutableStateOf(false) }
    var brightness by remember { mutableFloatStateOf(-1f) }
    var volumeIndicator by remember { mutableFloatStateOf(-1f) }
    var scrubStart by remember { mutableLongStateOf(0L) }
    var scrubDelta by remember { mutableFloatStateOf(0f) }
    var scrubPreview by remember { mutableStateOf<Long?>(null) }
    var startX by remember { mutableFloatStateOf(0f) }
    var startY by remember { mutableFloatStateOf(0f) }
    var startTime by remember { mutableLongStateOf(0L) }
    var interaction by remember { mutableIntStateOf(0) }
    var seekDirection by remember { mutableIntStateOf(0) }
    var seekSeconds by remember { mutableIntStateOf(0) }
    var seekUpdatedAt by remember { mutableLongStateOf(0L) }
    var guidePrograms by remember { mutableStateOf<List<EpgProgram>>(emptyList()) }
    var guideLoading by remember { mutableStateOf(false) }
    var movieInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    val density = LocalDensity.current.density
    val lifecycleOwner = LocalLifecycleOwner.current

    LaunchedEffect(engine) { engine.start() }
    LaunchedEffect(engine) { while (true) { delay(500); engine.refresh() } }
    LaunchedEffect(interaction, state.controls, panel) {
        if (state.controls && panel == null) { delay(4_000); engine.setControls(false) }
    }
    LaunchedEffect(seekUpdatedAt) {
        val timestamp = seekUpdatedAt
        if (timestamp > 0) { delay(1_500); if (seekUpdatedAt == timestamp) seekSeconds = 0 }
    }
    LaunchedEffect(session.source) {
        if (session.source is MobilePlaybackSource.Movie) movieInfo = runCatching { engine.loadMovieDetails() }.getOrNull()
    }
    LaunchedEffect(panel, state.channelName) {
        if (panel == "Guida") {
            guideLoading = true
            guidePrograms = runCatching { engine.loadCurrentSchedule() }.getOrDefault(emptyList())
            guideLoading = false
        }
    }
    DisposableEffect(engine.player, videoView) {
        PlayerPipRegistry.player = engine.player
        PlayerPipRegistry.videoView = videoView
        onDispose { if (PlayerPipRegistry.player === engine.player) { PlayerPipRegistry.player = null; PlayerPipRegistry.videoView = null } }
    }
    LaunchedEffect(state.playing, engine.player, videoView) {
        updatePlayerPip(activity, engine.player, videoView, enter = false, autoEnter = state.playing)
    }
    DisposableEffect(lifecycleOwner, engine) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_START -> engine.onStart()
                Lifecycle.Event.ON_STOP -> engine.onStop(activity?.isInPictureInPictureMode == true)
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            engine.close()
            activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
            activity?.window?.let { it.attributes = it.attributes.apply { screenBrightness = PlayerLayoutRules.restoredBrightness() } }
        }
    }
    DisposableEffect(activity) {
        activity?.window?.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        onDispose { activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON) }
    }
    BackHandler {
        when {
            panel != null -> panel = null
            fullScreenPortrait -> fullScreenPortrait = false
            else -> onExit()
        }
    }

    BoxWithConstraints(Modifier.fillMaxSize().background(Color.Black)) {
        val landscape = maxWidth > maxHeight
        val immersive = landscape || fullScreenPortrait
        DisposableEffect(immersive, activity) {
            val window = activity?.window
            val controller = window?.decorView?.let { androidx.core.view.WindowCompat.getInsetsController(window, it) }
            if (immersive) {
                window?.let { androidx.core.view.WindowCompat.setDecorFitsSystemWindows(it, false) }
                controller?.hide(androidx.core.view.WindowInsetsCompat.Type.systemBars())
                controller?.systemBarsBehavior = androidx.core.view.WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
                if (android.os.Build.VERSION.SDK_INT >= 28) window?.let { win -> win.attributes = win.attributes.apply { layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES } }
            } else {
                window?.let { androidx.core.view.WindowCompat.setDecorFitsSystemWindows(it, true) }
                controller?.show(androidx.core.view.WindowInsetsCompat.Type.systemBars())
            }
            onDispose { window?.let { androidx.core.view.WindowCompat.setDecorFitsSystemWindows(it, true) }; controller?.show(androidx.core.view.WindowInsetsCompat.Type.systemBars()) }
        }
        val gestures = Modifier
            .pointerInput(panel, state.resume, state.error, state.nextEpisodeTitle, PlayerPipRegistry.inPip) {
                if (panel != null || state.resume != null || state.error != null || state.nextEpisodeTitle != null || PlayerPipRegistry.inPip) return@pointerInput
                detectTapGestures(
                    onTap = { interaction++; engine.setControls(!engine.state.controls) },
                    onDoubleTap = { point ->
                        val isLive = session.source is MobilePlaybackSource.Live || session.source is MobilePlaybackSource.Catchup
                        if (!isLive) {
                            val direction = when { point.x < size.width / 3f -> -1; point.x > size.width * 2f / 3f -> 1; else -> 0 }
                            if (direction != 0) {
                                val now = SystemClock.elapsedRealtime()
                                seekSeconds = TouchGestureRules.seekBurst(seekSeconds, seekUpdatedAt, seekDirection, direction, now)
                                seekDirection = direction; seekUpdatedAt = now; engine.seekBy(direction * 10)
                            }
                        }
                    },
                )
            }
            .pointerInput(panel, state.resume, state.error, state.nextEpisodeTitle, PlayerPipRegistry.inPip, state.isReplay) {
                if (panel != null || state.resume != null || state.error != null || state.nextEpisodeTitle != null || PlayerPipRegistry.inPip) return@pointerInput
                detectDragGestures(
                    onDragStart = { point -> startX = point.x; startY = point.y; startTime = SystemClock.elapsedRealtime(); scrubStart = engine.state.position; scrubDelta = 0f; scrubPreview = null },
                    onDrag = { change, drag ->
                        change.consume(); scrubDelta += drag.x
                        val dy = change.position.y - startY
                        val live = session.source is MobilePlaybackSource.Live || session.source is MobilePlaybackSource.Catchup
                        val action = TouchGestureRules.classify(size.width.toFloat(), size.height.toFloat(), density, startX, startY, scrubDelta, dy, (SystemClock.elapsedRealtime() - startTime).coerceAtLeast(1L), live)
                        when (action) {
                            TouchGestureRules.Action.SCRUB -> scrubPreview = (scrubStart + scrubDelta / size.width * engine.state.duration.coerceAtLeast(60_000L)).toLong().coerceIn(0L, engine.state.duration.coerceAtLeast(60_000L))
                            TouchGestureRules.Action.BRIGHTNESS -> {
                                brightness = ((brightness.takeIf { it >= 0f } ?: (activity?.window?.attributes?.screenBrightness ?: -1f).takeIf { it >= 0 } ?: .5f) - dy / size.height).coerceIn(.02f, 1f)
                                activity?.window?.let { window -> window.attributes = window.attributes.apply { screenBrightness = brightness } }
                            }
                            TouchGestureRules.Action.VOLUME -> {
                                val manager = context.getSystemService(android.content.Context.AUDIO_SERVICE) as android.media.AudioManager
                                val max = manager.getStreamMaxVolume(android.media.AudioManager.STREAM_MUSIC)
                                val level = manager.getStreamVolume(android.media.AudioManager.STREAM_MUSIC) - (dy / size.height * max).toInt()
                                manager.setStreamVolume(android.media.AudioManager.STREAM_MUSIC, level.coerceIn(0, max), 0)
                                volumeIndicator = level.toFloat() / max.coerceAtLeast(1)
                            }
                            else -> Unit
                        }
                    },
                    onDragEnd = {
                        val live = session.source is MobilePlaybackSource.Live || session.source is MobilePlaybackSource.Catchup
                        val action = TouchGestureRules.classify(size.width.toFloat(), size.height.toFloat(), density, startX, startY, scrubDelta, 0f, (SystemClock.elapsedRealtime() - startTime).coerceAtLeast(1L), live)
                        when (action) {
                            TouchGestureRules.Action.CHANNEL_NEXT -> engine.nextChannel()
                            TouchGestureRules.Action.CHANNEL_PREVIOUS -> engine.previousChannel()
                            TouchGestureRules.Action.SCRUB -> engine.seekTo(scrubPreview ?: scrubStart)
                            else -> Unit
                        }
                        scrubPreview = null; scrubDelta = 0f; interaction++
                    },
                )
            }
            .pointerInput(fit, panel, PlayerPipRegistry.inPip) {
                if (panel == null && !PlayerPipRegistry.inPip) detectTransformGestures { _, _, zoom, _ ->
                    if (zoom > 1.08f || zoom < .92f) { fit = !fit; interaction++ }
                }
            }

        if (PlayerPipRegistry.inPip) {
            VideoSurface(engine.player, fit, Modifier.fillMaxSize()) { videoView = it }
        } else if (immersive) {
            Box(Modifier.fillMaxSize().then(gestures)) {
                VideoSurface(engine.player, fit, Modifier.fillMaxSize()) { videoView = it }
                if (seekSeconds > 0) Text("${if (seekDirection < 0) "−" else "+"}$seekSeconds s", Modifier.align(Alignment.Center), color = Color.White)
                if (state.controls) PlayerControls(state, engine, onExit, { panel = it }, { fit = !fit }, { updatePlayerPip(activity, engine.player, videoView, true, state.playing) }, Modifier.align(Alignment.TopCenter).fillMaxWidth())
                if (state.error != null) ErrorOverlay(state.error, engine::retry)
                if (state.resume != null) ResumeOverlay(state.resume, engine::resumeFromSaved, engine::playFromStart)
                if (state.isReplay && state.controls) Button(onClick = engine::returnToLive, Modifier.align(Alignment.BottomCenter).padding(16.dp)) { Text("Torna alla diretta") }
                if (volumeIndicator >= 0) Text("Volume ${(volumeIndicator * 100).toInt()}%", Modifier.align(Alignment.Center), color = Color.White)
                if (brightness >= 0) Text("Luminosità ${(brightness * 100).toInt()}%", Modifier.align(Alignment.Center), color = Color.White)
                if (scrubPreview != null) Text(formatTime(scrubPreview!!), Modifier.align(Alignment.Center), color = Color.White)
            }
        } else {
            Column(Modifier.fillMaxSize().background(Color.Black)) {
                Box(Modifier.fillMaxWidth().aspectRatio(16f / 9f).then(gestures)) {
                    VideoSurface(engine.player, fit, Modifier.fillMaxSize()) { videoView = it }
                    if (seekSeconds > 0) Text("${if (seekDirection < 0) "−" else "+"}$seekSeconds s", Modifier.align(Alignment.Center), color = Color.White)
                    if (state.controls) PlayerControls(state, engine, onExit, { panel = it }, { fit = !fit }, { updatePlayerPip(activity, engine.player, videoView, true, state.playing) }, Modifier.align(Alignment.TopCenter).fillMaxWidth())
                    if (state.resume != null) ResumeOverlay(state.resume, engine::resumeFromSaved, engine::playFromStart)
                    if (state.error != null) ErrorOverlay(state.error, engine::retry)
                }
                Row(Modifier.fillMaxWidth().padding(12.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { panel = "Guida" }) { Text("Guida") }
                    Button(onClick = { panel = "Canali" }) { Text("Canali") }
                    Spacer(Modifier.weight(1f)); Button(onClick = { fullScreenPortrait = true }) { Text("Schermo intero") }
                }
                when (val source = session.source) {
                    is MobilePlaybackSource.Movie -> Column(Modifier.padding(16.dp)) {
                        Text(source.title, color = Color.White, style = MaterialTheme.typography.titleLarge)
                        Text(listOfNotNull(source.stream.year?.takeIf { it.isNotBlank() }, movieInfo?.info?.duration?.takeIf { it.isNotBlank() }).joinToString(" · "), color = Color.LightGray)
                        Text(movieInfo?.info?.plot?.takeIf { it.isNotBlank() } ?: "", color = Color.LightGray)
                    }
                    is MobilePlaybackSource.Episode -> Column(Modifier.fillMaxSize().padding(horizontal = 16.dp)) {
                        Text(source.seriesTitle, color = Color.White, style = MaterialTheme.typography.titleLarge)
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            source.queue.map { it.season }.distinct().forEach { season -> Button(onClick = { engine.selectSeason(season) }) { Text("Stagione $season") } }
                        }
                        LazyColumn {
                            items(source.queue, key = { "episode_${it.id}" }) { episode ->
                                Surface(color = if (episode.id == source.episodeId) Color.DarkGray else Color.Transparent, onClick = { engine.selectEpisode(episode.id) }) {
                                    Text("${episode.episodeNumber}. ${episode.title}", Modifier.fillMaxWidth().padding(12.dp), color = Color.White)
                                }
                            }
                        }
                        Button(onClick = engine::nextEpisode) { Text("Episodio successivo") }
                    }
                    is MobilePlaybackSource.Live -> LazyColumn(Modifier.fillMaxSize()) {
                        item { Row(Modifier.fillMaxWidth().padding(8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) { Button(onClick = { panel = "Guida" }) { Text("Guida") }; Button(onClick = { panel = "Canali" }) { Text("Canali") } } }
                        items(source.channels, key = { "channel_${it.streamId}" }) { channel ->
                            Surface(color = if (channel.name == state.channelName) Color.DarkGray else Color.Transparent, onClick = { val idx = source.channels.indexOf(channel); if (idx >= 0) { repeat(kotlin.math.abs(idx - source.startIndex)) { if (idx > source.startIndex) engine.nextChannel() else engine.previousChannel() } } }) { Text(channel.name, Modifier.fillMaxWidth().padding(14.dp), color = Color.White) }
                        }
                    }
                    is MobilePlaybackSource.Catchup -> Column(Modifier.padding(16.dp)) { Text(source.title, color = Color.White); Button(onClick = engine::returnToLive) { Text("Torna alla diretta") } }
                }
            }
        }
        if (state.nextEpisodeTitle != null && !PlayerPipRegistry.inPip) NextEpisodeOverlay(state.nextEpisodeTitle!!, state.nextCountdown, engine::nextEpisode, engine::postponeNextEpisode, engine::dismissNextEpisode, Modifier.align(Alignment.BottomCenter))
        if (panel != null) TrackOrLivePanel(panel!!, state, engine, guidePrograms, guideLoading, { panel = null })
    }
}

@androidx.media3.common.util.UnstableApi
@Composable private fun VideoSurface(player: Player?, fit: Boolean, modifier: Modifier, onView: (PlayerView) -> Unit) {
    AndroidView(modifier = modifier, factory = { context -> PlayerView(context).apply { useController = false; resizeMode = if (fit) AspectRatioFrameLayout.RESIZE_MODE_FIT else AspectRatioFrameLayout.RESIZE_MODE_ZOOM; this.player = player; onView(this) } }, update = { it.player = player; it.resizeMode = if (fit) AspectRatioFrameLayout.RESIZE_MODE_FIT else AspectRatioFrameLayout.RESIZE_MODE_ZOOM; onView(it) })
}

@androidx.media3.common.util.UnstableApi
@Composable private fun PlayerControls(state: MobilePlayerState, engine: PlayerEngine, onBack: () -> Unit, onTracks: (String) -> Unit, onFit: () -> Unit, onPip: () -> Unit, modifier: Modifier) {
    Column(modifier.background(Color.Black.copy(alpha = .58f)).padding(10.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Button(onClick = onBack) { Text("Indietro") }
            Text(state.channelName, Modifier.weight(1f).padding(start = 8.dp), color = Color.White, maxLines = 1)
            Button(onClick = { onTracks("Tracce") }) { Text("Tracce") }; Button(onClick = onFit) { Text("Adatta/Riempi") }; Button(onClick = onPip) { Text("PiP") }
        }
        Spacer(Modifier.height(30.dp))
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.Center, verticalAlignment = Alignment.CenterVertically) {
            if (state.isReplay) Button(onClick = { engine.seekBy(-10) }) { Text("−10") }
            Button(onClick = engine::togglePlayback) { Text(if (state.playing) "Pausa" else "Play") }
            if (state.isReplay) Button(onClick = { engine.seekBy(10) }) { Text("+10") }
        }
        if (state.duration > 0L) {
            var position by remember(state.position, state.duration) { mutableFloatStateOf(state.position.toFloat().coerceIn(0f, state.duration.toFloat())) }
            Slider(position, { position = it }, onValueChangeFinished = { engine.seekTo(position.toLong()) }, valueRange = 0f..state.duration.toFloat())
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) { Text(formatTime(state.position), color = Color.White); Text(formatTime(state.duration), color = Color.White) }
        } else Text(if (state.isReplay) "REGISTRATO" else "IN DIRETTA", color = Color.White)
        if (state.audioLabel.isNotBlank()) Text(state.audioLabel, color = Color.White)
        if (engine.session.source is MobilePlaybackSource.Live || engine.session.source is MobilePlaybackSource.Catchup) Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            Button(onClick = engine::previousChannel) { Text("Canale precedente") }; Button(onClick = engine::nextChannel) { Text("Canale successivo") }; Button(onClick = { onTracks("Guida") }) { Text("Guida") }; Button(onClick = { onTracks("Canali") }) { Text("Canali") }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable private fun TrackOrLivePanel(type: String, state: MobilePlayerState, engine: PlayerEngine, programs: List<EpgProgram>, loading: Boolean, onClose: () -> Unit) {
    Surface(Modifier.fillMaxSize(), color = Color.Black.copy(alpha = .94f)) {
        Column(Modifier.padding(24.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) { Text(type, color = Color.White, style = MaterialTheme.typography.titleLarge); Button(onClick = onClose) { Text("Chiudi") } }
            when (type) {
                "Tracce" -> {
                    Text("Audio", color = Color.White)
                    state.audioTracks.forEach { group -> repeat(group.mediaTrackGroup.length) { index -> Button(onClick = { engine.selectTrack(group, index); onClose() }) { Text(group.getTrackFormat(index).label ?: "Audio ${index + 1}") } } }
                    Text("Sottotitoli", color = Color.White)
                    state.subtitleTracks.forEach { group -> repeat(group.mediaTrackGroup.length) { index -> Button(onClick = { engine.selectTrack(group, index); onClose() }) { Text(group.getTrackFormat(index).label ?: "Sottotitoli ${index + 1}") } } }
                }
                "Guida" -> {
                    if (state.isReplay) Button(onClick = { engine.returnToLive(); onClose() }) { Text("Torna alla diretta") }
                    if (loading) Text("Caricamento guida…", color = Color.White)
                    else if (programs.isEmpty()) Text("Guida non disponibile", color = Color.White)
                    else LazyColumn(Modifier.fillMaxSize()) {
                        items(programs, key = { "epg_${it.start}_${it.end}" }) { program ->
                            val replayable = engine.canPlayCatchup(program, System.currentTimeMillis() / 1_000L)
                            Row(Modifier.fillMaxWidth().padding(vertical = 4.dp), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                                Column(Modifier.weight(1f)) { Text(program.title, color = Color.White); Text("${EpgRules.time(program.start)} – ${EpgRules.time(program.end)}", color = Color.LightGray) }
                                if (replayable) Button(onClick = { engine.playCatchup(program); onClose() }) { Text("Catch-up") }
                            }
                        }
                    }
                }
                "Canali" -> LazyColumn(Modifier.fillMaxSize()) {
                    items(engine.zappingChannels, key = { "zap_${it.streamId}" }) { channel ->
                        Surface(color = if (channel.name == state.channelName) Color.DarkGray else Color.Transparent, onClick = { val index = engine.zappingChannels.indexOf(channel); engine.selectChannel(index); onClose() }) {
                            Text(channel.name, Modifier.fillMaxWidth().padding(14.dp), color = Color.White)
                        }
                    }
                }
                else -> Text("", color = Color.White)
            }
        }
    }
}

@Composable private fun NextEpisodeOverlay(title: String, countdown: Int?, next: () -> Unit, postpone: () -> Unit, dismiss: () -> Unit, modifier: Modifier) {
    Surface(modifier.padding(16.dp), color = Color.Black.copy(alpha = .85f)) {
        Column(Modifier.padding(16.dp)) {
            Text(if (countdown == null) "Episodio successivo" else "Il prossimo episodio parte tra $countdown s", color = Color.White)
            Text(title, color = Color.White)
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) { Button(onClick = next) { Text("Riproduci") }; Button(onClick = postpone) { Text("Rinvio") }; Button(onClick = dismiss) { Text("Annulla") } }
        }
    }
}
@Composable private fun ErrorOverlay(message: String, retry: () -> Unit) { Surface(Modifier.fillMaxSize(), color = Color.Black.copy(alpha = .85f)) { Column(Modifier.padding(24.dp), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) { Text(message, color = Color.White); Button(onClick = retry) { Text("Riprova") } } } }
@Composable private fun ResumeOverlay(position: Long, resume: () -> Unit, start: () -> Unit) { Surface(Modifier.fillMaxSize(), color = Color.Black.copy(alpha = .85f)) { Column(Modifier.padding(24.dp), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) { Text("Vuoi riprendere?", color = Color.White); Button(onClick = resume) { Text("Riprendi da ${formatTime(position)}") }; Button(onClick = start) { Text("Dall'inizio") } } } }
private fun formatTime(ms: Long): String { val seconds = (ms / 1000).coerceAtLeast(0); return "%02d:%02d".format(seconds / 60, seconds % 60) }
