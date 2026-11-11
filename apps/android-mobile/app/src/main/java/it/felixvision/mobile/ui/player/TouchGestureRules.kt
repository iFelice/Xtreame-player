package it.felixvision.mobile.ui.player

import kotlin.math.roundToInt

/** Pure rules shared by the production pointer handler and JVM tests. */
object TouchGestureRules {
    const val EDGE_DP = 32f
    const val SEEK_ZONE = 1f / 3f
    const val LIVE_SWIPE_FRACTION = .25f
    const val MIN_DRAG_DP = 48f
    const val FAST_FLING_DP_PER_SECOND = 900f
    const val PINCH_FILL_THRESHOLD = 1.15f
    const val PINCH_FIT_THRESHOLD = .87f

    enum class Action {
        IGNORE,
        TAP,
        SEEK_BACK,
        SEEK_FORWARD,
        SCRUB,
        CHANNEL_PREVIOUS,
        CHANNEL_NEXT,
        VOLUME,
        BRIGHTNESS,
    }

    enum class ZoomMode { FILL, FIT }

    /**
     * Natura di un trascinamento, decisa una sola volta al superamento della
     * soglia e mantenuta fino al rilascio: un gesto verticale resta verticale
     * anche se poi devia in orizzontale, e viceversa.
     */
    enum class DragMode { VOLUME, BRIGHTNESS, SCRUB, CHANNEL }

    fun classify(
        widthPx: Float,
        heightPx: Float,
        density: Float,
        startX: Float,
        startY: Float,
        deltaX: Float,
        deltaY: Float,
        elapsedMillis: Long,
        playbackType: MobilePlaybackType,
        pointerCount: Int = 1,
        isDoubleTap: Boolean = false,
    ): Action {
        if (widthPx <= 0f || heightPx <= 0f || density <= 0f) return Action.IGNORE
        if (pointerCount != 1) return Action.IGNORE

        if (isAtEdge(widthPx, heightPx, density, startX, startY)) return Action.IGNORE

        val mode = dragMode(
            widthPx = widthPx,
            heightPx = heightPx,
            density = density,
            startX = startX,
            startY = startY,
            deltaX = deltaX,
            deltaY = deltaY,
            playbackType = playbackType,
        )
        if (mode == null) {
            if (isDoubleTap && playbackType.supportsSeeking) {
                return when {
                    startX < widthPx * SEEK_ZONE -> Action.SEEK_BACK
                    startX > widthPx * (1f - SEEK_ZONE) -> Action.SEEK_FORWARD
                    else -> Action.IGNORE
                }
            }
            return if (!isDoubleTap && elapsedMillis < 500L) Action.TAP else Action.IGNORE
        }

        return when (mode) {
            DragMode.CHANNEL -> channelAction(
                widthPx = widthPx,
                deltaX = deltaX,
                elapsedMillis = elapsedMillis,
                density = density,
            )
            DragMode.SCRUB -> Action.SCRUB
            DragMode.VOLUME -> Action.VOLUME
            DragMode.BRIGHTNESS -> Action.BRIGHTNESS
        }
    }

    /**
     * Natura del trascinamento, o `null` se la soglia non è ancora stata
     * superata (o se il gesto parte dai bordi, riservati ai gesti di sistema).
     */
    fun dragMode(
        widthPx: Float,
        heightPx: Float,
        density: Float,
        startX: Float,
        startY: Float,
        deltaX: Float,
        deltaY: Float,
        playbackType: MobilePlaybackType,
    ): DragMode? {
        if (widthPx <= 0f || heightPx <= 0f || density <= 0f) return null
        if (isAtEdge(widthPx, heightPx, density, startX, startY)) return null

        val horizontal = kotlin.math.abs(deltaX)
        val vertical = kotlin.math.abs(deltaY)
        val threshold = MIN_DRAG_DP * density
        if (horizontal < threshold && vertical < threshold) return null

        if (horizontal >= vertical) {
            return if (playbackType == MobilePlaybackType.LIVE) DragMode.CHANNEL else DragMode.SCRUB
        }
        return if (startX >= widthPx / 2f) DragMode.VOLUME else DragMode.BRIGHTNESS
    }

    /** Esito del cambio canale, valutato al rilascio di un gesto orizzontale. */
    fun channelAction(
        widthPx: Float,
        deltaX: Float,
        elapsedMillis: Long,
        density: Float,
    ): Action = classifyChannelSwipe(
        widthPx = widthPx,
        deltaX = deltaX,
        elapsedMillis = elapsedMillis,
        density = density,
    )

    /**
     * Valore di una regolazione verticale (0..1) misurato DALLA soglia: il
     * tratto percorso prima di superarla non conta, così non c'è salto
     * iniziale fra il valore di partenza e il primo valore applicato.
     */
    fun verticalDragValue(
        initialValue: Float,
        totalDeltaY: Float,
        thresholdDeltaY: Float,
        heightPx: Float,
    ): Float = dragScaleValue(
        initialValue = initialValue,
        totalDeltaY = totalDeltaY - thresholdDeltaY,
        heightPx = heightPx,
        invert = true,
    )

    /**
     * Livello di volume più vicino al valore del gesto, sempre misurato dalla
     * soglia: arrotondamento al più vicino (non verso il basso) e limiti dello
     * stream.
     */
    fun volumeLevel(
        startLevel: Int,
        maxLevel: Int,
        totalDeltaY: Float,
        thresholdDeltaY: Float,
        heightPx: Float,
    ): Int {
        if (heightPx <= 0f || maxLevel <= 0) return startLevel.coerceIn(0, maxLevel.coerceAtLeast(0))
        val fraction = -(totalDeltaY - thresholdDeltaY) / heightPx
        return (startLevel + fraction * maxLevel).roundToInt().coerceIn(0, maxLevel)
    }

    fun dragScaleValue(
        initialValue: Float,
        totalDeltaY: Float,
        heightPx: Float,
        invert: Boolean,
    ): Float {
        if (heightPx <= 0f) return initialValue.coerceIn(0f, 1f)
        val direction = if (invert) -1f else 1f
        return (initialValue + direction * totalDeltaY / heightPx).coerceIn(0f, 1f)
    }

    fun zoomModeForAccumulatedScale(scale: Float): ZoomMode? = when {
        scale > PINCH_FILL_THRESHOLD -> ZoomMode.FILL
        scale < PINCH_FIT_THRESHOLD -> ZoomMode.FIT
        else -> null
    }

    fun seekBurst(
        previousSeconds: Int,
        previousAtMillis: Long,
        previousDirection: Int,
        direction: Int,
        nowMillis: Long,
        stepSeconds: Int = 10,
    ): Int {
        if (direction == 0) return 0
        val continues = previousDirection == direction &&
            nowMillis - previousAtMillis in 0..1_500L
        return if (continues) previousSeconds + stepSeconds else stepSeconds
    }

    /** I bordi sono riservati ai gesti di sistema: nessuna regolazione da lì. */
    private fun isAtEdge(
        widthPx: Float,
        heightPx: Float,
        density: Float,
        startX: Float,
        startY: Float,
    ): Boolean {
        val edge = EDGE_DP * density
        return startX < edge || startX > widthPx - edge ||
            startY < edge || startY > heightPx - edge
    }

    private fun classifyChannelSwipe(
        widthPx: Float,
        deltaX: Float,
        elapsedMillis: Long,
        density: Float,
    ): Action {
        val distance = kotlin.math.abs(deltaX)
        val fast = elapsedMillis > 0 &&
            distance * 1_000f / elapsedMillis >= FAST_FLING_DP_PER_SECOND * density
        if (distance < widthPx * LIVE_SWIPE_FRACTION && !fast) return Action.IGNORE
        return if (deltaX < 0f) Action.CHANNEL_NEXT else Action.CHANNEL_PREVIOUS
    }
}

object PlayerLayoutRules {
    const val PIP_MIN_RATIO = 1f / 2.39f
    const val PIP_MAX_RATIO = 2.39f

    fun pipRatio(width: Int, height: Int): Float {
        if (width <= 0 || height <= 0) return 16f / 9f
        return (width.toFloat() / height).coerceIn(PIP_MIN_RATIO, PIP_MAX_RATIO)
    }

    /** Restore Android's system brightness setting after temporary dimming. */
    fun restoredBrightness(): Float = -1f
}

enum class MobilePlaybackType {
    LIVE,
    CATCHUP,
    MOVIE,
    EPISODE;

    val supportsSeeking: Boolean
        get() = this != LIVE

    val isLiveOrCatchup: Boolean
        get() = this == LIVE || this == CATCHUP
}

internal fun MobilePlaybackSource.playbackType(): MobilePlaybackType = when (this) {
    is MobilePlaybackSource.Live -> MobilePlaybackType.LIVE
    is MobilePlaybackSource.Catchup -> MobilePlaybackType.CATCHUP
    is MobilePlaybackSource.Movie -> MobilePlaybackType.MOVIE
    is MobilePlaybackSource.Episode -> MobilePlaybackType.EPISODE
}
