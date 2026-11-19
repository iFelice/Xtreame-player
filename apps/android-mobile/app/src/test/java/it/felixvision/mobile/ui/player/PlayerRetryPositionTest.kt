package it.felixvision.mobile.ui.player

import org.junit.Assert.assertEquals
import org.junit.Test

class PlayerRetryPositionTest {
    @Test
    fun retryPreservesPositionOnlyForSeekableContent() {
        assertEquals(0L, retryPosition(MobilePlaybackType.LIVE, 25_000L, 10_000L))
        assertEquals(25_000L, retryPosition(MobilePlaybackType.MOVIE, 25_000L, 10_000L))
        assertEquals(10_000L, retryPosition(MobilePlaybackType.CATCHUP, null, 10_000L))
        assertEquals(0L, retryPosition(MobilePlaybackType.MOVIE, -1L, 10_000L))
    }
}
