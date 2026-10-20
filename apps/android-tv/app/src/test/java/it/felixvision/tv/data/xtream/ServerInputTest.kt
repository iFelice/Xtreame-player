package it.felixvision.tv.data.xtream

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regola "codice o indirizzo": senza `://` e senza punto il testo è un codice
 * rubrica, in tutti gli altri casi è un indirizzo.
 */
class ServerInputTest {

    @Test
    fun `un testo senza schema e senza punto è un codice`() {
        val input = ServerInput.classify(" 12A ")
        assertTrue(input is ServerInput.Code)
        assertEquals("12a", (input as ServerInput.Code).code)
        assertTrue(ServerInput.isCode("001"))
    }

    @Test
    fun `un indirizzo completo è un indirizzo`() {
        assertTrue(ServerInput.classify("http://server.esempio:8080") is ServerInput.Address)
        assertTrue(ServerInput.classify("https://server.esempio") is ServerInput.Address)
        assertFalse(ServerInput.isCode("server.esempio"))
    }

    @Test
    fun `un indirizzo senza schema ma con punto resta un indirizzo`() {
        val input = ServerInput.classify("server.esempio:8080")
        assertTrue(input is ServerInput.Address)
        assertEquals("server.esempio:8080", (input as ServerInput.Address).raw)
    }

    @Test
    fun `un indirizzo IP locale è trattato come indirizzo`() {
        assertFalse(ServerInput.isCode("192.168.1.10:8080"))
    }
}
