package it.felixvision.mobile.ui.player

import androidx.media3.common.util.UnstableApi
import org.junit.Assert.assertEquals
import org.junit.Test

@OptIn(UnstableApi::class)
class PlayerNetworkConfigTest {
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
