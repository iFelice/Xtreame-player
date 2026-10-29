@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.player

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class PlayerPipTest {
    @Test
    fun closeCallbackRunsOncePerPipSessionAndCanRunAgainAfterReentry() {
        var closeCount = 0
        PlayerPipRegistry.onClosed = { closeCount += 1 }
        try {
            PlayerPipRegistry.markEntered()
            PlayerPipRegistry.notifyClosed()
            PlayerPipRegistry.notifyClosed()
            assertEquals(1, closeCount)

            PlayerPipRegistry.markEntered()
            PlayerPipRegistry.notifyClosed()
            assertEquals(2, closeCount)
        } finally {
            PlayerPipRegistry.onClosed = null
            PlayerPipRegistry.inPip = false
        }
    }
}
