@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.player

import androidx.media3.common.PlaybackException
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class PlayerPresentationRulesTest {
    @Test fun formatCycleIncludesOriginalWideAndClassic() {
        assertEquals(PlayerVideoFormat.WIDE, PlayerVideoFormat.ORIGINAL.next())
        assertEquals(PlayerVideoFormat.CLASSIC, PlayerVideoFormat.WIDE.next())
        assertEquals(PlayerVideoFormat.ORIGINAL, PlayerVideoFormat.CLASSIC.next())
    }

    @Test fun networkAndDecoderErrorsHaveDifferentSafeMessages() {
        val network = playerErrorMessage(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED)
        val decoder = playerErrorMessage(PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED)
        assertNotEquals(network, decoder)
        assertEquals("Contenuto non disponibile sul server.", playerErrorMessage(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS))
    }
}
