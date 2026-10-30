package it.felixvision.mobile.ui.player

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class TouchGestureRulesTest {
    @Test
    fun edgesAndVerticalGesturesAreClassified() {
        assertEquals(
            TouchGestureRules.Action.IGNORE,
            classify(startX = 10f, deltaX = 0f, deltaY = 120f),
        )
        assertEquals(
            TouchGestureRules.Action.BRIGHTNESS,
            classify(startX = 300f, deltaX = 0f, deltaY = 100f),
        )
        assertEquals(
            TouchGestureRules.Action.VOLUME,
            classify(startX = 700f, deltaX = 0f, deltaY = 100f),
        )
    }

    @Test
    fun liveSwipesZapAndRecordedTypesSeekInTime() {
        assertEquals(
            TouchGestureRules.Action.IGNORE,
            classify(deltaX = -200f, elapsedMillis = 500L, type = MobilePlaybackType.LIVE),
        )
        assertEquals(
            TouchGestureRules.Action.CHANNEL_NEXT,
            classify(deltaX = -200f, elapsedMillis = 100L, type = MobilePlaybackType.LIVE),
        )
        listOf(
            MobilePlaybackType.CATCHUP,
            MobilePlaybackType.MOVIE,
            MobilePlaybackType.EPISODE,
        ).forEach { type ->
            assertEquals(
                type.name,
                TouchGestureRules.Action.SCRUB,
                classify(deltaX = -200f, elapsedMillis = 100L, type = type),
            )
        }
    }

    @Test
    fun doubleTapSeeksForEveryNonLiveTypeOnlyInOuterThirds() {
        listOf(
            MobilePlaybackType.CATCHUP,
            MobilePlaybackType.MOVIE,
            MobilePlaybackType.EPISODE,
        ).forEach { type ->
            assertEquals(
                TouchGestureRules.Action.SEEK_BACK,
                classify(startX = 200f, isDoubleTap = true, type = type),
            )
            assertEquals(
                TouchGestureRules.Action.SEEK_FORWARD,
                classify(startX = 800f, isDoubleTap = true, type = type),
            )
            assertEquals(
                TouchGestureRules.Action.IGNORE,
                classify(startX = 500f, isDoubleTap = true, type = type),
            )
        }
        assertEquals(
            TouchGestureRules.Action.IGNORE,
            classify(startX = 200f, isDoubleTap = true, type = MobilePlaybackType.LIVE),
        )
    }

    @Test
    fun totalVerticalDragIsAppliedFromGestureStart() {
        assertEquals(
            .75f,
            TouchGestureRules.dragScaleValue(.5f, -150f, 600f, invert = true),
            .0001f,
        )
        assertEquals(
            .25f,
            TouchGestureRules.dragScaleValue(.5f, -150f, 600f, invert = false),
            .0001f,
        )
    }

    @Test
    fun pinchThresholdChangesModeOnceAndIgnoresMiddleRange() {
        assertEquals(
            TouchGestureRules.ZoomMode.FILL,
            TouchGestureRules.zoomModeForAccumulatedScale(1.16f),
        )
        assertEquals(
            TouchGestureRules.ZoomMode.FIT,
            TouchGestureRules.zoomModeForAccumulatedScale(.86f),
        )
        assertNull(TouchGestureRules.zoomModeForAccumulatedScale(1f))
        assertEquals(2.39f, PlayerLayoutRules.pipRatio(4, 1), .0001f)
        assertEquals(1f / 2.39f, PlayerLayoutRules.pipRatio(1, 4), .0001f)
        assertEquals(16f / 9f, PlayerLayoutRules.pipRatio(16, 9), .0001f)
    }

    @Test
    fun repeatedSeekBurstAccumulatesOnlyForSameDirection() {
        assertEquals(30, TouchGestureRules.seekBurst(20, 1_000, -1, -1, 1_200))
        assertEquals(10, TouchGestureRules.seekBurst(20, 1_000, -1, 1, 1_200))
        assertEquals(10, TouchGestureRules.seekBurst(20, 1_000, -1, -1, 2_600))
    }

    private fun classify(
        startX: Float = 500f,
        deltaX: Float = 0f,
        deltaY: Float = 0f,
        elapsedMillis: Long = 100L,
        type: MobilePlaybackType = MobilePlaybackType.MOVIE,
        isDoubleTap: Boolean = false,
        pointerCount: Int = 1,
    ): TouchGestureRules.Action = TouchGestureRules.classify(
        widthPx = 1_000f,
        heightPx = 600f,
        density = 1f,
        startX = startX,
        startY = 300f,
        deltaX = deltaX,
        deltaY = deltaY,
        elapsedMillis = elapsedMillis,
        playbackType = type,
        pointerCount = pointerCount,
        isDoubleTap = isDoubleTap,
    )
}
