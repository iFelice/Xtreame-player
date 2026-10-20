package it.felixvision.tv.data.xtream

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ServerAddressTest {

    @Test
    fun `aggiunge http quando lo schema manca`() {
        assertEquals("http://server.esempio:8080", ServerAddress.normalize("server.esempio:8080"))
    }

    @Test
    fun `toglie gli spazi e le barre finali`() {
        assertEquals(
            "http://server.esempio:8080",
            ServerAddress.normalize("   server.esempio:8080///   "),
        )
    }

    @Test
    fun `mantiene lo schema https`() {
        assertEquals(
            "https://server.esempio:8443",
            ServerAddress.normalize(" https://server.esempio:8443/ "),
        )
    }

    @Test
    fun `mantiene il percorso configurato dall'utente`() {
        assertEquals(
            "http://server.esempio/xtream",
            ServerAddress.normalize("server.esempio/xtream/"),
        )
    }

    @Test
    fun `rifiuta indirizzi vuoti o con schema non supportato`() {
        assertNull(ServerAddress.normalize(""))
        assertNull(ServerAddress.normalize("   "))
        assertNull(ServerAddress.normalize("ftp://server.esempio"))
        assertNull(ServerAddress.normalize("http://"))
    }

    @Test
    fun `riconosce la presenza dello schema`() {
        assertTrue(ServerAddress.hasScheme("https://server.esempio"))
        assertTrue(ServerAddress.hasScheme(" http://server.esempio "))
        assertFalse(ServerAddress.hasScheme("server.esempio:8080"))
    }
}
