package it.felixvision.mobile.ui.player

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

        val edge = EDGE_DP * density
        val isAtEdge = startX < edge || startX > widthPx - edge ||
            startY < edge || startY > heightPx - edge
        if (isAtEdge) return Action.IGNORE

        val horizontal = kotlin.math.abs(deltaX)
        val vertical = kotlin.math.abs(deltaY)
        val threshold = MIN_DRAG_DP * density
        if (horizontal < threshold && vertical < threshold) {
            if (isDoubleTap && playbackType.supportsSeeking) {
                return when {
                    startX < widthPx * SEEK_ZONE -> Action.SEEK_BACK
                    startX > widthPx * (1f - SEEK_ZONE) -> Action.SEEK_FORWARD
                    else -> Action.IGNORE
                }
            }
            return if (!isDoubleTap && elapsedMillis < 500L) Action.TAP else Action.IGNORE
        }

        if (horizontal >= vertical) {
            return when (playbackType) {
                MobilePlaybackType.LIVE -> classifyChannelSwipe(
                    widthPx = widthPx,
                    deltaX = deltaX,
                    elapsedMillis = elapsedMillis,
                    density = density,
                )
                MobilePlaybackType.CATCHUP,
                MobilePlaybackType.MOVIE,
                MobilePlaybackType.EPISODE,
                -> Action.SCRUB
            }
        }

        return if (startX >= widthPx / 2f) Action.VOLUME else Action.BRIGHTNESS
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
