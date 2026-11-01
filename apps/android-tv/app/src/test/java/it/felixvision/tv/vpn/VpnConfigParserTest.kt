package it.felixvision.tv.vpn

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Lettura del file `.conf` WireGuard: nel tunnel entra solo FelixVP qualunque
 * cosa dica il file, e gli errori non riportano mai parti del file. Solo
 * chiavi a zero e indirizzi di esempio.
 */
class VpnConfigParserTest {

    private fun valid(text: String): VpnConfigParseResult.Valid {
        val result = VpnConfigParser.parse(text, PACKAGE)
        assertTrue("Atteso Valid, ricevuto $result", result is VpnConfigParseResult.Valid)
        return result as VpnConfigParseResult.Valid
    }

    private fun assertInvalid(text: String) {
        assertEquals(
            VpnConfigParseResult.Invalid(VpnConfigParser.INVALID_MESSAGE),
            VpnConfigParser.parse(text, PACKAGE),
        )
    }

    @Test
    fun `il file di esempio passa con il nome del server dal commento`() {
        val result = valid(VpnTestVectors.CONFIG_TEXT)

        assertEquals(VpnTestVectors.SERVER_NAME, result.serverName)
        assertEquals(setOf(PACKAGE), result.config.getInterface().includedApplications)
        assertTrue(result.config.getInterface().excludedApplications.isEmpty())
        assertEquals(1, result.config.peers.size)
    }

    @Test
    fun `senza commento il nome del server è l'host dell'Endpoint`() {
        val text = VpnTestVectors.CONFIG_TEXT.replace("# ${VpnTestVectors.SERVER_NAME}\n", "")

        assertEquals("192.168.1.10", valid(text).serverName)
    }

    @Test
    fun `le applicazioni indicate nel file vengono sostituite da FelixVP`() {
        val text = VpnTestVectors.CONFIG_TEXT.replace(
            "DNS = 10.2.0.1\n",
            "DNS = 10.2.0.1\nIncludedApplications = com.esempio.altra\nExcludedApplications = com.esempio.terza\n",
        )

        val config = valid(text).config
        assertEquals(setOf(PACKAGE), config.getInterface().includedApplications)
        assertTrue(config.getInterface().excludedApplications.isEmpty())
    }

    @Test
    fun `senza sezione Peer il file non è valido`() {
        assertInvalid(VpnTestVectors.CONFIG_TEXT.substringBefore("[Peer]"))
    }

    @Test
    fun `un testo che non è un file WireGuard dà l'errore generico`() {
        assertInvalid("PrivateKey = non-una-chiave\nciao")
    }

    @Test
    fun `una chiave privata non valida dà l'errore generico senza parti del file`() {
        assertInvalid(VpnTestVectors.CONFIG_TEXT.replaceFirst(VpnTestVectors.ZERO_KEY, "chiave-non-valida"))
    }

    private companion object {
        const val PACKAGE = "it.felixvision.tv.test"
    }
}
