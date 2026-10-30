package it.felixvision.mobile.ui.player

import android.app.Activity
import android.content.Context
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.gestures.detectTapGestures
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
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.geometry.Offset
import kotlin.math.abs
import kotlin.math.sqrt

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

/**
 * Strati di gesti del player: trascinamento (cambio canale, spostamento nel
 * tempo, volume a destra, luminosità a sinistra) e tocchi (comandi on/off,
 * doppio tocco ±10 s).
 *
 * Le chiavi del [pointerInput] sono SOLO i valori che giustificano un riavvio
 * del riconoscitore, cioè il tipo di riproduzione e l'abilitazione: tutto il
 * resto (durata, posizione, densità, controlli di sistema, richiamate) si
 * legge tramite [rememberUpdatedState]. Con la durata tra le chiavi il
 * riconoscitore veniva riavviato a ogni `refresh()` (ogni 500 ms) e il
 * trascinamento in corso veniva perso: il volume e la luminosità non
 * rispondevano mai, perché il gesto verticale dura più di un aggiornamento.
 */
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
    volumeControl: VolumeControl = rememberVolumeControl(context),
    brightnessControl: BrightnessControl = rememberBrightnessControl(context, activity?.window),
    onToggleControls: () -> Unit,
    onSeekBy: (Int) -> Unit,
    onSeekTo: (Long) -> Unit,
    onNextChannel: () -> Unit,
    onPreviousChannel: () -> Unit,
    onZoomMode: (TouchGestureRules.ZoomMode) -> Unit,
    gestureClockMillis: () -> Long = { android.os.SystemClock.elapsedRealtime() },
): Modifier {
    val inputs = rememberUpdatedState(
        PlayerGestureInputs(
            playbackType = playbackType,
            duration = duration,
            position = position,
            density = density,
            volumeControl = volumeControl,
            brightnessControl = brightnessControl,
            clockMillis = gestureClockMillis,
            onSeekTo = onSeekTo,
            onNextChannel = onNextChannel,
            onPreviousChannel = onPreviousChannel,
            onZoomMode = onZoomMode,
            feedback = feedback,
        ),
    )
    val seekBurst = remember(playbackType, sourceKey) { SeekBurst() }
    val currentSeekBurst = rememberUpdatedState(seekBurst)
    val currentToggleControls = rememberUpdatedState(onToggleControls)
    val currentSeekBy = rememberUpdatedState(onSeekBy)

    return pointerInput(playbackType, enabled) {
        detectPlayerGestures(
            playbackType = playbackType,
            enabled = enabled,
            inputs = { inputs.value },
        )
    }.pointerInput(playbackType, enabled) {
        if (!enabled) return@pointerInput
        detectTapGestures(
            onTap = { currentToggleControls.value() },
            onDoubleTap = { point ->
                val direction = when {
                    point.x < size.width / 3f -> -1
                    point.x > size.width * 2f / 3f -> 1
                    else -> 0
                }
                if (playbackType.supportsSeeking && direction != 0) {
                    val next = currentSeekBurst.value.record(
                        direction,
                        inputs.value.clockMillis(),
                    )
                    currentSeekBy.value(direction * 10)
                    feedback.showSeek("${if (direction < 0) "−" else "+"}$next s")
                }
            },
        )
    }
}

/**
 * Valori letti al momento dell'evento: il riconoscitore non viene riavviato
 * quando cambiano, quindi ogni gesto usa sempre lo stato più recente.
 */
private class PlayerGestureInputs(
    val playbackType: MobilePlaybackType,
    val duration: Long,
    val position: Long,
    val density: Float,
    val volumeControl: VolumeControl,
    val brightnessControl: BrightnessControl,
    val clockMillis: () -> Long,
    val onSeekTo: (Long) -> Unit,
    val onNextChannel: () -> Unit,
    val onPreviousChannel: () -> Unit,
    val onZoomMode: (TouchGestureRules.ZoomMode) -> Unit,
    val feedback: PlayerGestureFeedback,
)

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

/** Variazione minima di luminosità che vale una chiamata a [BrightnessControl.set]. */
private const val BRIGHTNESS_EPSILON = .005f

private suspend fun PointerInputScope.detectPlayerGestures(
    playbackType: MobilePlaybackType,
    enabled: Boolean,
    inputs: () -> PlayerGestureInputs,
) {
    if (!enabled) return
    awaitEachGesture {
        val firstDown = awaitFirstDown(requireUnconsumed = false)
        val start = firstDown.position
        val startTime = inputs().clockMillis()
        val startPosition = inputs().position
        val thresholdPx = TouchGestureRules.MIN_DRAG_DP * inputs().density
        var totalDelta = Offset.Zero
        var mode: TouchGestureRules.DragMode? = null
        var thresholdDelta = Offset.Zero
        var maxVolume = 1
        var startVolume = 0
        var appliedVolume = 0
        var startBrightness = .5f
        var appliedBrightness = Float.NaN
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
                accumulatedZoom *= event.zoomFactor()
                if (!zoomModeChanged) {
                    val zoom = TouchGestureRules.zoomModeForAccumulatedScale(accumulatedZoom)
                    if (zoom != null) {
                        zoomModeChanged = true
                        zoomNotice = if (zoom == TouchGestureRules.ZoomMode.FILL) "Riempi" else "Adatta"
                        inputs().onZoomMode(zoom)
                    }
                }
                event.consumePressedChanges()
                continue
            }

            val change = event.changes.firstOrNull { it.id == firstDown.id }
            if (change != null && change.pressed) {
                totalDelta = change.position - start
                val current = inputs()
                if (!hadMultiplePointers) {
                    // La classificazione avviene una sola volta, alla soglia:
                    // da lì in poi il gesto non cambia natura fino al rilascio.
                    if (mode == null &&
                        (abs(totalDelta.x) >= thresholdPx || abs(totalDelta.y) >= thresholdPx)
                    ) {
                        mode = TouchGestureRules.dragMode(
                            widthPx = size.width.toFloat(),
                            heightPx = size.height.toFloat(),
                            density = current.density,
                            startX = start.x,
                            startY = start.y,
                            deltaX = totalDelta.x,
                            deltaY = totalDelta.y,
                            playbackType = playbackType,
                        )
                        thresholdDelta = totalDelta
                        when (mode) {
                            TouchGestureRules.DragMode.VOLUME -> {
                                maxVolume = current.volumeControl.max
                                startVolume = current.volumeControl.current
                                appliedVolume = startVolume
                            }
                            TouchGestureRules.DragMode.BRIGHTNESS -> {
                                startBrightness = current.brightnessControl.current
                                appliedBrightness = startBrightness
                            }
                            else -> Unit
                        }
                    }

                    when (mode) {
                        TouchGestureRules.DragMode.SCRUB -> {
                            val effectiveDuration = current.duration.coerceAtLeast(60_000L)
                            val offset = totalDelta.x / size.width * effectiveDuration
                            previewPosition = (startPosition + offset.toLong())
                                .coerceIn(0L, effectiveDuration)
                            current.feedback.showScrub(previewPosition!!)
                        }
                        TouchGestureRules.DragMode.BRIGHTNESS -> {
                            // Il tratto percorso prima della soglia non conta:
                            // l'indicatore parte dal valore iniziale.
                            val value = TouchGestureRules.verticalDragValue(
                                initialValue = startBrightness,
                                totalDeltaY = totalDelta.y,
                                thresholdDeltaY = thresholdDelta.y,
                                heightPx = size.height.toFloat(),
                            ).coerceAtLeast(.02f)
                            if (appliedBrightness.isNaN() || abs(value - appliedBrightness) > BRIGHTNESS_EPSILON) {
                                appliedBrightness = value
                                current.brightnessControl.set(value)
                                current.feedback.showBrightness(value)
                            }
                        }
                        TouchGestureRules.DragMode.VOLUME -> {
                            val level = TouchGestureRules.volumeLevel(
                                startLevel = startVolume,
                                maxLevel = maxVolume,
                                totalDeltaY = totalDelta.y,
                                thresholdDeltaY = thresholdDelta.y,
                                heightPx = size.height.toFloat(),
                            )
                            if (level != appliedVolume) {
                                appliedVolume = level
                                current.volumeControl.set(level)
                                current.feedback.showVolume(level.toFloat() / maxVolume)
                            }
                        }
                        else -> Unit
                    }
                    if (mode != null) change.consume()
                }
            }

            if (pressed.isEmpty()) break
        }

        if (hadMultiplePointers) {
            if (zoomNotice != null) inputs().feedback.showZoom(zoomNotice!!)
            inputs().feedback.gestureFinished()
            return@awaitEachGesture
        }

        val finished = inputs()
        when (mode) {
            TouchGestureRules.DragMode.SCRUB -> previewPosition?.let(finished.onSeekTo)
            TouchGestureRules.DragMode.CHANNEL -> {
                val action = TouchGestureRules.channelAction(
                    widthPx = size.width.toFloat(),
                    deltaX = totalDelta.x,
                    elapsedMillis = (finished.clockMillis() - startTime).coerceAtLeast(1L),
                    density = finished.density,
                )
                when (action) {
                    TouchGestureRules.Action.CHANNEL_NEXT -> finished.onNextChannel()
                    TouchGestureRules.Action.CHANNEL_PREVIOUS -> finished.onPreviousChannel()
                    else -> Unit
                }
            }
            else -> Unit
        }
        if (mode == TouchGestureRules.DragMode.VOLUME ||
            mode == TouchGestureRules.DragMode.BRIGHTNESS ||
            previewPosition != null
        ) {
            finished.feedback.gestureFinished()
        }
    }
}

private fun PointerEvent.zoomFactor(): Float {
    val pointers = changes.filter { it.pressed }
    if (pointers.size < 2) return 1f
    val count = pointers.size.toFloat()
    val currentCenter = pointers.fold(Offset.Zero) { total, change -> total + change.position } / count
    val previousCenter = pointers.fold(Offset.Zero) { total, change -> total + change.previousPosition } / count
    fun radius(position: Offset, center: Offset): Float {
        val dx = position.x - center.x
        val dy = position.y - center.y
        return sqrt(dx * dx + dy * dy)
    }
    val currentSpan = pointers.sumOf { radius(it.position, currentCenter).toDouble() }.toFloat() / count
    val previousSpan = pointers.sumOf { radius(it.previousPosition, previousCenter).toDouble() }.toFloat() / count
    return if (previousSpan > 0f) currentSpan / previousSpan else 1f
}

private fun PointerEvent.consumePressedChanges() {
    changes.filter { it.pressed }.forEach(PointerInputChange::consume)
}
