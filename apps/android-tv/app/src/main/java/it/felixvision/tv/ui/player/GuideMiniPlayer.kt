@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import android.content.Context
import androidx.annotation.OptIn
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.playback.StreamTarget
import it.felixvision.tv.data.playback.StreamUrls
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.data.volume.PlayerVolume
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.glassBorder
import it.felixvision.tv.ui.theme.surfaceCorner
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

/** Back-end minimo iniettabile: nei test non viene creato un vero player Media3. */
interface GuidePreviewPlayer {
    val player: Player?
    val isBuffering: StateFlow<Boolean>
    fun release()
}

fun interface GuidePreviewPlayerFactory {
    fun create(context: Context, streamUrl: String, title: String, videoFormat: VideoFormat): GuidePreviewPlayer
}

private data class GuidePreviewHandleState(
    val player: GuidePreviewPlayer? = null,
    val creationFailed: Boolean = false,
)

/** ExoPlayer isolato per l'anteprima; viene rilasciato a ogni stop della pagina. */
object Media3GuidePreviewPlayerFactory : GuidePreviewPlayerFactory {
    override fun create(
        context: Context,
        streamUrl: String,
        title: String,
        videoFormat: VideoFormat,
    ): GuidePreviewPlayer {
        val renderers = DefaultRenderersFactory(context)
            .setExtensionRendererMode(DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON)
        val player = ExoPlayer.Builder(context)
            .setRenderersFactory(renderers)
            .setMediaSourceFactory(PlayerNetworkConfig.mediaSourceFactory(context, streamUrl))
            .build()
        return ExoGuidePreviewPlayer(player, streamUrl, title, videoFormat)
    }
}

private class ExoGuidePreviewPlayer(
    private val exoPlayer: ExoPlayer,
    streamUrl: String,
    title: String,
    videoFormat: VideoFormat,
) : GuidePreviewPlayer {
    private val buffering = MutableStateFlow(false)
    private var released = false
    private val listener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            buffering.value = playbackState == Player.STATE_BUFFERING
        }

        override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
            buffering.value = false
        }
    }

    override val player: Player get() = exoPlayer
    override val isBuffering: StateFlow<Boolean> get() = buffering

    init {
        exoPlayer.addListener(listener)
        exoPlayer.volume = PlayerVolume.volumeForLevel(PlayerVolume.DEFAULT_LEVEL)
        exoPlayer.setMediaItem(
            MediaItem.Builder()
                .setUri(streamUrl)
                .setMediaMetadata(androidx.media3.common.MediaMetadata.Builder().setTitle(title).build())
                .build(),
        )
        exoPlayer.prepare()
        exoPlayer.playWhenReady = true
        // Il formato per canale arriva dalle Impostazioni Live; `FIT` è il
        // predefinito condiviso con il player fullscreen.
        @Suppress("UNUSED_VARIABLE")
        val selectedFormat = videoFormat
    }

    override fun release() {
        if (released) return
        released = true
        exoPlayer.playWhenReady = false
        exoPlayer.removeListener(listener)
        exoPlayer.release()
        buffering.value = false
    }
}

/** Mini-player 16:9 con audio attivo e caricamento ritardato di 300 ms. */
@Composable
fun GuideMiniPlayer(
    channel: LiveStream?,
    server: String,
    username: String,
    password: String,
    allowedOutputFormats: List<String>,
    videoFormat: VideoFormat,
    playing: Boolean,
    scale: UiScale,
    onLifecycleStop: () -> Unit,
    modifier: Modifier = Modifier,
    playerFactory: GuidePreviewPlayerFactory = Media3GuidePreviewPlayerFactory,
) {
    val context = LocalContext.current.applicationContext
    val lifecycleOwner = LocalLifecycleOwner.current
    val latestOnLifecycleStop by rememberUpdatedState(onLifecycleStop)
    var lifecycleStarted by remember(lifecycleOwner) {
        mutableStateOf(lifecycleOwner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED))
    }
    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_START -> lifecycleStarted = true
                Lifecycle.Event.ON_STOP -> {
                    lifecycleStarted = false
                    latestOnLifecycleStop()
                }
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    val streamUrl = remember(channel?.streamId, server, username, password, allowedOutputFormats) {
        channel?.let {
            StreamUrls.build(
                server = server,
                username = username,
                password = password,
                target = StreamTarget.Live(it.streamId, allowedOutputFormats),
            )
        }
    }
    val previewState by produceState(
        initialValue = GuidePreviewHandleState(),
        streamUrl,
        channel?.name,
        videoFormat,
        playing,
        lifecycleStarted,
        playerFactory,
    ) {
        if (!playing || !lifecycleStarted || streamUrl == null) {
            value = GuidePreviewHandleState()
            return@produceState
        }
        val created = runCatching {
            playerFactory.create(
                context = context,
                streamUrl = streamUrl,
                title = channel?.name.orEmpty(),
                videoFormat = videoFormat,
            )
        }.getOrNull()
        value = GuidePreviewHandleState(player = created, creationFailed = created == null)
        awaitDispose { created?.release() }
    }
    val handle = previewState.player
    val bufferingState = handle?.isBuffering?.collectAsState(initial = false)
    val buffering = bufferingState?.value == true
    val waitingForPlayer = playing && lifecycleStarted && streamUrl != null &&
        !previewState.creationFailed && (handle == null || buffering)
    var showLoading by remember { mutableStateOf(false) }
    LaunchedEffect(waitingForPlayer) {
        if (waitingForPlayer) {
            delay(PlayerBufferingIndicatorDefaults.SHOW_DELAY_MILLIS)
            showLoading = true
        } else {
            showLoading = false
        }
    }

    val shape = RoundedCornerShape(scale.surfaceCorner)
    Box(
        modifier = modifier
            .aspectRatio(16f / 9f)
            .clip(shape)
            .background(Color.Black)
            .border(scale.glassBorder, FvpColors.GlassBorder, shape)
            .testTag("guide_mini_player"),
        contentAlignment = Alignment.Center,
    ) {
        val mediaPlayer = handle?.player
        if (mediaPlayer != null) {
            AndroidView(
                factory = { viewContext ->
                    PlayerView(viewContext).apply {
                        useController = false
                        keepScreenOn = false
                    }
                },
                update = { view ->
                    view.player = mediaPlayer
                    view.resizeMode = VideoFormatLayout.resizeModeFor(videoFormat)
                },
                onRelease = { view -> view.player = null },
                modifier = Modifier.fillMaxSize(),
            )
        } else {
            val placeholder = when {
                channel == null -> "Seleziona un canale"
                playing && (streamUrl == null || previewState.creationFailed) -> "Anteprima non disponibile"
                playing -> null
                else -> "Premi OK per l'anteprima Live"
            }
            if (placeholder != null) {
                Text(
                    text = placeholder,
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(13f),
                    modifier = Modifier.padding(scale.dp(10f)),
                )
            }
        }
        if (showLoading) {
            PlayerBufferingIndicator(scale = scale, modifier = Modifier.align(Alignment.Center))
        }
    }
}
