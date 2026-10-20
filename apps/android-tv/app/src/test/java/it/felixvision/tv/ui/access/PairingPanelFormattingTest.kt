package it.felixvision.tv.ui.access

import org.junit.Assert.assertEquals
import org.junit.Test

class PairingPanelFormattingTest {

    @Test
    fun `il PIN mostra le cifre separate`() {
        assertEquals("1 2 3 4 5 6", formatPin("123456"))
    }

    @Test
    fun `l'indirizzo breve del servizio perde schema e barra finale`() {
        assertEquals(
            "relay.esempio.test",
            shortRelayAddress("https://relay.esempio.test/"),
        )
        assertEquals(
            "relay.esempio.test",
            shortRelayAddress("http://relay.esempio.test"),
        )
    }

    @Test
    fun `il tempo residuo è formattato in minuti e secondi`() {
        assertEquals("10:00", formatCountdown(600))
        assertEquals("00:09", formatCountdown(9))
        assertEquals("00:00", formatCountdown(-3))
    }
}
