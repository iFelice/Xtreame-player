package it.felixvision.mobile.ui.player

import org.junit.Assert.assertEquals
import org.junit.Test

class TouchGestureRulesTest {
    @Test fun edgeStartsAreIgnoredAndVerticalSidesAreDistinct() {
        assertEquals(TouchGestureRules.Action.IGNORE, TouchGestureRules.classify(1000f, 600f, 1f, 10f, 300f, 0f, 120f, 200, false))
        assertEquals(TouchGestureRules.Action.BRIGHTNESS, TouchGestureRules.classify(1000f, 600f, 1f, 300f, 300f, 0f, 100f, 200, false))
        assertEquals(TouchGestureRules.Action.VOLUME, TouchGestureRules.classify(1000f, 600f, 1f, 700f, 300f, 0f, 100f, 200, false))
    }

    @Test fun liveRequiresQuarterWidthExceptFastFlingAndVODDoubleTapSeeksOnlyOuterThirds() {
        assertEquals(TouchGestureRules.Action.IGNORE, TouchGestureRules.classify(1000f, 600f, 1f, 500f, 300f, -200f, 0f, 500, true))
        assertEquals(TouchGestureRules.Action.CHANNEL_NEXT, TouchGestureRules.classify(1000f, 600f, 1f, 500f, 300f, -200f, 0f, 100, true))
        assertEquals(TouchGestureRules.Action.SEEK_BACK, TouchGestureRules.classify(1000f, 600f, 1f, 200f, 300f, 0f, 0f, 100, false, true))
        assertEquals(TouchGestureRules.Action.IGNORE, TouchGestureRules.classify(1000f, 600f, 1f, 500f, 300f, 0f, 0f, 100, false, true))
        assertEquals(TouchGestureRules.Action.IGNORE, TouchGestureRules.classify(1000f, 600f, 1f, 200f, 300f, 0f, 0f, 100, true, true))
    }

    @Test fun tapAndScrubClassificationAndRepeatedSeekAccumulator() {
        assertEquals(TouchGestureRules.Action.TAP, TouchGestureRules.classify(1000f, 600f, 1f, 500f, 300f, 0f, 0f, 100, false))
        assertEquals(TouchGestureRules.Action.SCRUB, TouchGestureRules.classify(1000f, 600f, 1f, 500f, 300f, 80f, 0f, 300, false))
        assertEquals(30, TouchGestureRules.seekBurst(20, 1000, -1, -1, 1200))
        assertEquals(10, TouchGestureRules.seekBurst(20, 1000, -1, 1, 1200))
        assertEquals(10, TouchGestureRules.seekBurst(20, 1000, -1, -1, 2600))
    }

    @Test fun pipRatioClampsWithinPlatformBounds() {
        assertEquals(2.39f, PlayerLayoutRules.pipRatio(4, 1), .0001f)
        assertEquals(1f / 2.39f, PlayerLayoutRules.pipRatio(1, 4), .0001f)
        assertEquals(16f / 9f, PlayerLayoutRules.pipRatio(16, 9), .0001f)
    }

    @Test fun sourceZappingListAndBrightnessRestorationArePureRules() {
        assertEquals(listOf("personal"), PlayerLayoutRules.preferredLiveList(LiveListOrigin.MY_CHANNELS, listOf("category"), listOf("personal")))
        assertEquals(listOf("category"), PlayerLayoutRules.preferredLiveList(LiveListOrigin.SEARCH, listOf("category"), emptyList()))
        assertEquals(-1f, PlayerLayoutRules.restoredBrightness())
    }
}
