package it.felixvision.mobile.ui.player

/** Pure touch classification; Compose only translates pointer events into this input. */
object TouchGestureRules {
    const val EDGE_DP = 32f
    const val SEEK_ZONE = 1f / 3f
    const val LIVE_SWIPE_FRACTION = .25f
    const val MIN_DRAG_DP = 48f
    const val FAST_FLING_DP_PER_SECOND = 900f

    enum class Action { IGNORE, TAP, SEEK_BACK, SEEK_FORWARD, SCRUB, CHANNEL_PREVIOUS, CHANNEL_NEXT, VOLUME, BRIGHTNESS }
    enum class Zone { LEFT, CENTER, RIGHT }

    fun classify(
        widthPx: Float, heightPx: Float, density: Float,
        startX: Float, startY: Float, deltaX: Float, deltaY: Float,
        elapsedMillis: Long, isLive: Boolean, isDoubleTap: Boolean = false,
    ): Action {
        if (widthPx <= 0f || heightPx <= 0f || density <= 0f) return Action.IGNORE
        val edge = EDGE_DP * density
        if (startX < edge || startX > widthPx - edge || startY < edge || startY > heightPx - edge) return Action.IGNORE
        val threshold = MIN_DRAG_DP * density
        if (kotlin.math.abs(deltaX) < threshold && kotlin.math.abs(deltaY) < threshold) {
            if (!isDoubleTap && elapsedMillis < 500L) return Action.TAP
            if (isDoubleTap && !isLive) {
                return if (startX < widthPx * SEEK_ZONE) Action.SEEK_BACK
                else if (startX > widthPx * (1f - SEEK_ZONE)) Action.SEEK_FORWARD else Action.IGNORE
            }
            return Action.IGNORE
        }
        if (kotlin.math.abs(deltaX) >= kotlin.math.abs(deltaY)) {
            if (isLive) {
                val fast = elapsedMillis > 0 && kotlin.math.abs(deltaX) * 1000f / elapsedMillis >= FAST_FLING_DP_PER_SECOND * density
                if (kotlin.math.abs(deltaX) < widthPx * LIVE_SWIPE_FRACTION && !fast) return Action.IGNORE
                return if (deltaX < 0f) Action.CHANNEL_NEXT else Action.CHANNEL_PREVIOUS
            }
            return Action.SCRUB // VOD horizontal drag previews and applies on release.
        }
        return if (startX >= widthPx / 2f) Action.VOLUME else Action.BRIGHTNESS
    }

    fun seekBurst(previousSeconds: Int, previousAtMillis: Long, previousDirection: Int, direction: Int, nowMillis: Long, stepSeconds: Int = 10): Int =
        if (direction == 0) 0 else if (previousDirection == direction && nowMillis - previousAtMillis in 0..1_500L) previousSeconds + stepSeconds else stepSeconds
}

object PlayerLayoutRules {
    const val PIP_MIN_RATIO = 1f / 2.39f
    const val PIP_MAX_RATIO = 2.39f
    fun pipRatio(width: Int, height: Int): Float {
        if (width <= 0 || height <= 0) return 16f / 9f
        return (width.toFloat() / height).coerceIn(PIP_MIN_RATIO, PIP_MAX_RATIO)
    }

    /** A temporary window override is always reset to Android's system setting (-1) on exit. */
    fun restoredBrightness(): Float = -1f

    fun preferredLiveList(origin: LiveListOrigin, category: List<String>, personal: List<String>): List<String> =
        when (origin) {
            LiveListOrigin.MY_CHANNELS -> personal
            LiveListOrigin.CATEGORY, LiveListOrigin.SEARCH, LiveListOrigin.CONTINUE_WATCHING -> category
        }
}

enum class LiveListOrigin { MY_CHANNELS, CATEGORY, SEARCH, CONTINUE_WATCHING }
