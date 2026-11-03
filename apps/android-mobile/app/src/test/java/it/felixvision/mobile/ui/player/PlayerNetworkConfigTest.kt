package it.felixvision.mobile.ui.player

import androidx.media3.common.util.UnstableApi
import androidx.media3.common.Player
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.assertEquals
import org.junit.Test

@OptIn(UnstableApi::class, ExperimentalCoroutinesApi::class)
class PlayerNetworkConfigTest {
    @Test
    fun liveStallsUseVirtualClockAndOnlyOneRestartBeforeError() = runTest {
        val detector = LiveStallDetector()
        val restart = LiveAutoRestart(maxRestarts = 1)
        fun check(state: Int, eligible: Boolean = true) =
            detector.timedOut(state, eligible, testScheduler.currentTime)

        assertFalse(check(Player.STATE_READY))
        advanceTimeBy(5_000)
        assertFalse(check(Player.STATE_READY))
        advanceTimeBy(1)
        assertTrue(check(Player.STATE_READY))
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, true))
        assertFalse(check(Player.STATE_BUFFERING))
        advanceTimeBy(PlayerNetworkConfig.READ_TIMEOUT_MILLIS.toLong() + 1)
        assertTrue(check(Player.STATE_BUFFERING))
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, true))
    }

    @Test
    fun pauseOrSuppressionResetsStallTimer() = runTest {
        val detector = LiveStallDetector()
        fun check(eligible: Boolean) = detector.timedOut(Player.STATE_READY, eligible, testScheduler.currentTime)
        assertFalse(check(true))
        advanceTimeBy(4_000)
        assertFalse(check(false))
        advanceTimeBy(10_000)
        assertFalse(check(true))
        advanceTimeBy(5_001)
        assertTrue(check(true))
    }

    @Test
    fun onlyNetworkErrorsForLiveCanRestartAndRestartBudgetResets() {
        val restart = LiveAutoRestart(maxRestarts = 1)

        assertEquals(
            PlayerErrorAction.SILENT_RESTART,
            restart.onPlayerError(PlaybackKind.LIVE, networkError = true),
        )
        assertEquals(
            PlayerErrorAction.SHOW_ERROR,
            restart.onPlayerError(PlaybackKind.LIVE, networkError = true),
        )
        assertEquals(
            PlayerErrorAction.SHOW_ERROR,
            restart.onPlayerError(PlaybackKind.MOVIE, networkError = true),
        )
        assertEquals(
            PlayerErrorAction.SHOW_ERROR,
            restart.onPlayerError(PlaybackKind.LIVE, networkError = false),
        )

        restart.reset()
        assertEquals(0, restart.restartsUsed)
        assertEquals(
            PlayerErrorAction.SILENT_RESTART,
            restart.onPlayerError(PlaybackKind.LIVE, networkError = true),
        )
    }
}
