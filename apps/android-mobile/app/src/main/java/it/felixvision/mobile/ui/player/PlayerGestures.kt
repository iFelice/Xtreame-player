package it.felixvision.mobile.ui.player

import android.app.Activity
import android.content.Context
import android.media.AudioManager
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerInputChange
import androidx.compose.ui.input.pointer.PointerInputScope
import androidx.compose.ui.input.pointer.util.calculateZoom
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.geometry.Offset
import kotlin.math.abs

class PlayerGestureFeedback {
    var volume by mutableStateOf<Float?>(null)
        private set
    var brightness by mutableStateOf<Float?>(null)
        private set
    var scrubPosition by mutableStateOf<Long?>(null)
        private set
    var seekMessage by mutableStateOf<String?>(null)
        private set
    var zoomMessage by mutableStateOf<String?>(null)
        private set
    var revision by mutableIntStateOf(0)
        private set

    fun showVolume(value: Float) {
        volume = value
        brightness = null
    }

    fun showBrightness(value: Float) {
        brightness = value
        volume = null
    }

    fun showScrub(position: Long) {
        scrubPosition = position
    }

    fun showSeek(message: String) {
        seekMessage = message
        scrubPosition = null
        revision += 1
    }

    fun showZoom(message: String) {
        zoomMessage = message
        revision += 1
    }

    fun gestureFinished() {
        revision += 1
    }

    fun clearIfCurrent(expectedRevision: Int) {
        if (revision != expectedRevision) return
        volume = null
        brightness = null
        scrubPosition = null
        seekMessage = null
        zoomMessage = null
    }
}

@Composable
fun rememberPlayerGestureFeedback(): PlayerGestureFeedback = remember {
    PlayerGestureFeedback()
}

@Composable
fun Modifier.playerGestureLayer(
    playbackType: MobilePlaybackType,
    duration: Long,
    position: Long,
    feedback: PlayerGestureFeedback,
    enabled: Boolean,
    sourceKey: String? = null,
    density: Float,
    context: Context,
    activity: Activity?,
    onToggleControls: () -> Unit,
    onSeekBy: (Int) -> Unit,
    onSeekTo: (Long) -> Unit,
    onNextChannel: () -> Unit,
    onPreviousChannel: () -> Unit,
    onZoomMode: (TouchGestureRules.ZoomMode) -> Unit,
    gestureClockMillis: () -> Long = { android.os.SystemClock.elapsedRealtime() },
): Modifier {
    val currentPosition = rememberUpdatedState(position)
    val currentGestureClock = rememberUpdatedState(gestureClockMillis)
    val seekBurst = remember(playbackType, sourceKey) { SeekBurst() }
    return pointerInput(playbackType, sourceKey, duration, enabled) {
        detectPlayerGestures(
            playbackType = playbackType,
            positionMillis = { currentPosition.value },
            duration = duration,
            context = context,
            activity = activity,
            enabled = enabled,
            feedback = feedback,
            densityScale = density,
            clockMillis = { currentGestureClock.value() },
            onSeekTo = onSeekTo,
            onNextChannel = onNextChannel,
            onPreviousChannel = onPreviousChannel,
            onZoomMode = onZoomMode,
            seekBurst = seekBurst,
        )
    }.pointerInput(playbackType, enabled) {
        if (!enabled) return@pointerInput
        androidx.compose.foundation.gestures.detectTapGestures(
            onTap = { onToggleControls() },
            onDoubleTap = { point ->
                val direction = when {
                    point.x < size.width / 3f -> -1
                    point.x > size.width * 2f / 3f -> 1
                    else -> 0
                }
                if (playbackType.supportsSeeking && direction != 0) {
                    val next = seekBurst.record(direction, currentGestureClock.value())
                    onSeekBy(direction * 10)
                    feedback.showSeek("${if (direction < 0) "−" else "+"}$next s")
                }
            },
        )
    }
}

private class SeekBurst {
    private var seconds = 0
    private var atMillis = 0L
    private var direction = 0

    fun record(nextDirection: Int, nowMillis: Long): Int {
        seconds = TouchGestureRules.seekBurst(
            previousSeconds = seconds,
            previousAtMillis = atMillis,
            previousDirection = direction,
            direction = nextDirection,
            nowMillis = nowMillis,
        )
        atMillis = nowMillis
        direction = nextDirection
        return seconds
    }
}

private suspend fun PointerInputScope.detectPlayerGestures(
    playbackType: MobilePlaybackType,
    positionMillis: () -> Long,
    duration: Long,
    context: Context,
    activity: Activity?,
    enabled: Boolean,
    feedback: PlayerGestureFeedback,
    densityScale: Float,
    clockMillis: () -> Long,
    seekBurst: SeekBurst,
    onSeekTo: (Long) -> Unit,
    onNextChannel: () -> Unit,
    onPreviousChannel: () -> Unit,
    onZoomMode: (TouchGestureRules.ZoomMode) -> Unit,
) {
    if (!enabled) return
    awaitEachGesture {
        val firstDown = awaitFirstDown(requireUnconsumed = false)
        val start = firstDown.position
        val startTime = clockMillis()
        val startPosition = positionMillis()
        val startBrightness = activity?.window?.attributes?.screenBrightness
            ?.takeIf { it >= 0f } ?: .5f
        val audio = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val maxVolume = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC).coerceAtLeast(1)
        val startVolume = audio.getStreamVolume(AudioManager.STREAM_MUSIC)
        var totalDelta = Offset.Zero
        var lastAction = TouchGestureRules.Action.IGNORE
        var hadMultiplePointers = false
        var accumulatedZoom = 1f
        var zoomModeChanged = false
        var zoomNotice: String? = null
        var previewPosition: Long? = null

        while (true) {
            val event = awaitPointerEvent()
            val pressed = event.changes.filter { it.pressed }
            if (pressed.size > 1) {
                hadMultiplePointers = true
                accumulatedZoom *= event.calculateZoom()
                if (!zoomModeChanged) {
                    val mode = TouchGestureRules.zoomModeForAccumulatedScale(accumulatedZoom)
                    if (mode != null) {
                        zoomModeChanged = true
                        zoomNotice = if (mode == TouchGestureRules.ZoomMode.FILL) "Riempi" else "Adatta"
                        onZoomMode(mode)
                    }
                }
                event.consumePressedChanges()
                continue
            }

            val change = event.changes.firstOrNull { it.id == firstDown.id }
            if (change != null && change.pressed) {
                totalDelta = change.position - start
                val elapsed = (clockMillis() - startTime).coerceAtLeast(1L)
                lastAction = TouchGestureRules.classify(
                    widthPx = size.width.toFloat(),
                    heightPx = size.height.toFloat(),
                    density = densityScale,
                    startX = start.x,
                    startY = start.y,
                    deltaX = totalDelta.x,
                    deltaY = totalDelta.y,
                    elapsedMillis = elapsed,
                    playbackType = playbackType,
                    pointerCount = if (hadMultiplePointers) 2 else 1,
                )
                if (!hadMultiplePointers) {
                    when (lastAction) {
                        TouchGestureRules.Action.SCRUB -> {
                            val effectiveDuration = duration.coerceAtLeast(60_000L)
                            val offset = totalDelta.x / size.width * effectiveDuration
                            previewPosition = (startPosition + offset.toLong())
                                .coerceIn(0L, effectiveDuration)
                            feedback.showScrub(previewPosition!!)
                        }
                        TouchGestureRules.Action.BRIGHTNESS -> {
                            val value = TouchGestureRules.dragScaleValue(
                                initialValue = startBrightness,
                                totalDeltaY = totalDelta.y,
                                heightPx = size.height.toFloat(),
                                invert = true,
                            ).coerceAtLeast(.02f)
                            activity?.window?.applyBrightness(value)
                            feedback.showBrightness(value)
                        }
                        TouchGestureRules.Action.VOLUME -> {
                            val level = (
                                startVolume - totalDelta.y / size.height * maxVolume
                                ).toInt().coerceIn(0, maxVolume)
                            audio.setStreamVolume(AudioManager.STREAM_MUSIC, level, 0)
                            feedback.showVolume(level.toFloat() / maxVolume)
                        }
                        else -> Unit
                    }
                    if (abs(totalDelta.x) >= TouchGestureRules.MIN_DRAG_DP * densityScale ||
                        abs(totalDelta.y) >= TouchGestureRules.MIN_DRAG_DP * densityScale
                    ) {
                        change.consume()
                    }
                }
            }

            if (pressed.isEmpty()) break
        }

        if (hadMultiplePointers) {
            if (zoomNotice != null) feedback.showZoom(zoomNotice!!)
            feedback.gestureFinished()
            return@awaitEachGesture
        }

        when (lastAction) {
            TouchGestureRules.Action.SCRUB -> previewPosition?.let(onSeekTo)
            TouchGestureRules.Action.CHANNEL_NEXT -> onNextChannel()
            TouchGestureRules.Action.CHANNEL_PREVIOUS -> onPreviousChannel()
            TouchGestureRules.Action.VOLUME,
            TouchGestureRules.Action.BRIGHTNESS,
            -> feedback.gestureFinished()
            else -> Unit
        }
        if (previewPosition != null) feedback.gestureFinished()
    }
}

private fun PointerEvent.consumePressedChanges() {
    changes.filter { it.pressed }.forEach(PointerInputChange::consume)
}

private fun android.view.Window.applyBrightness(value: Float) {
    attributes = attributes.apply { screenBrightness = value }
}
