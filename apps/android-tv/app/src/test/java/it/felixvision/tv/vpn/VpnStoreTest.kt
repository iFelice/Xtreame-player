package it.felixvision.tv.vpn

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import java.security.GeneralSecurityException
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

/**
 * Archivio della VPN con un cifrario finto (XOR): la configurazione torna
 * uguale, ma nelle preferenze non finisce mai il testo in chiaro.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class VpnStoreTest {

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private class FakeCipher(private val breakDecryption: Boolean = false) : VpnConfigCipher {
        override fun encrypt(plaintext: ByteArray): ByteArray =
            ByteArray(plaintext.size) { index -> (plaintext[index].toInt() xor XOR_KEY).toByte() }

        override fun decrypt(blob: ByteArray): ByteArray {
            if (breakDecryption) throw GeneralSecurityException("chiave assente")
            return ByteArray(blob.size) { index -> (blob[index].toInt() xor XOR_KEY).toByte() }
        }
    }

    private fun rawPreferences(): Map<String, *> =
        context.getSharedPreferences(VpnStore.PREFERENCES_NAME, Context.MODE_PRIVATE).all

    @Test
    fun `senza configurazione l'archivio è vuoto e spento`() {
        val store = VpnStore(context, FakeCipher())

        assertFalse(store.hasConfig())
        assertNull(store.loadConfigText())
        assertNull(store.serverName)
        assertFalse(store.isEnabled)
    }

    @Test
    fun `la configurazione torna uguale dopo salvataggio e rilettura`() {
        VpnStore(context, FakeCipher()).saveConfig(VpnTestVectors.CONFIG_TEXT, VpnTestVectors.SERVER_NAME)

        // Una nuova istanza legge le stesse preferenze, come dopo un riavvio.
        val reopened = VpnStore(context, FakeCipher())
        assertTrue(reopened.hasConfig())
        assertEquals(VpnTestVectors.CONFIG_TEXT, reopened.loadConfigText())
        assertEquals(VpnTestVectors.SERVER_NAME, reopened.serverName)
    }

    @Test
    fun `nelle preferenze non finisce mai il testo in chiaro`() {
        VpnStore(context, FakeCipher()).saveConfig(VpnTestVectors.CONFIG_TEXT, VpnTestVectors.SERVER_NAME)

        val values = rawPreferences().values.map { it.toString() }
        assertTrue(values.isNotEmpty())
        assertTrue(values.none { it.contains("PrivateKey") })
        assertTrue(values.none { it.contains("[Interface]") })
    }

    @Test
    fun `l'interruttore resta salvato`() {
        VpnStore(context, FakeCipher()).setEnabled(true)

        assertTrue(VpnStore(context, FakeCipher()).isEnabled)
    }

    @Test
    fun `clear cancella configurazione, nome del server e interruttore`() {
        val store = VpnStore(context, FakeCipher())
        store.saveConfig(VpnTestVectors.CONFIG_TEXT, VpnTestVectors.SERVER_NAME)
        store.setEnabled(true)

        store.clear()

        assertFalse(store.hasConfig())
        assertNull(store.serverName)
        assertFalse(store.isEnabled)
        assertTrue(rawPreferences().isEmpty())
    }

    @Test
    fun `una configurazione non più decifrabile si legge come assente senza cancellarla`() {
        VpnStore(context, FakeCipher()).saveConfig(VpnTestVectors.CONFIG_TEXT, VpnTestVectors.SERVER_NAME)

        val broken = VpnStore(context, FakeCipher(breakDecryption = true))
        assertNull(broken.loadConfigText())
        assertTrue(broken.hasConfig())
    }

    private companion object {
        const val XOR_KEY = 0x5A
    }
}
