package it.felixvision.tv.data.backup

import java.nio.charset.StandardCharsets
import java.util.Base64
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Canale di trasporto del backup: giro completo con il codice giusto, fallimenti
 * generici con codice errato o byte alterati, limiti di chiave e dimensione
 * come sul relay.
 */
class BackupTransferCryptoTest {

    private val key = ByteArray(BackupTransferCrypto.KEY_BYTES) { index -> index.toByte() }
    private val code = "123456"
    private val plaintext = "file di backup cifrato".toByteArray(StandardCharsets.UTF_8)

    @Test
    fun `cifratura e decifratura restituiscono il file originale`() {
        val envelope = BackupTransferCrypto.encrypt(key, code, plaintext)

        val decrypted = BackupTransferCrypto.decrypt(key, code, envelope.iv, envelope.ciphertext)
        assertArrayEquals(plaintext, decrypted)
    }

    @Test
    fun `l'indirizzo del QR porta direzione e codice con la chiave nel frammento`() {
        val url = BackupTransferCrypto.qrUrl("https://relay.esempio/", BackupDirection.Export, code, key)

        assertTrue(url.startsWith("https://relay.esempio/backup?mode=export&code=123456#k="))
        val fragment = url.substringAfter("#k=")
        assertEquals(BackupTransferCrypto.KEY_BYTES, Base64.getUrlDecoder().decode(fragment).size)
    }

    @Test
    fun `con un altro codice la decifratura fallisce`() {
        val envelope = BackupTransferCrypto.encrypt(key, code, plaintext)

        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.decrypt(key, "654321", envelope.iv, envelope.ciphertext)
        }
    }

    @Test
    fun `un byte alterato fa fallire la decifratura`() {
        val envelope = BackupTransferCrypto.encrypt(key, code, plaintext)
        val bytes = Base64.getUrlDecoder().decode(envelope.ciphertext)
        val index = bytes.size / 2
        bytes[index] = (bytes[index].toInt() xor 0x01).toByte()
        val altered = Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)

        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.decrypt(key, code, envelope.iv, altered)
        }
    }

    @Test
    fun `una chiave di lunghezza diversa viene rifiutata`() {
        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.encrypt(ByteArray(16), code, plaintext)
        }
        val envelope = BackupTransferCrypto.encrypt(key, code, plaintext)
        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.decrypt(ByteArray(16), code, envelope.iv, envelope.ciphertext)
        }
    }

    @Test
    fun `un file oltre il limite viene rifiutato`() {
        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.encrypt(key, code, ByteArray(BackupTransferCrypto.MAX_PLAINTEXT_BYTES + 1))
        }
    }

    @Test
    fun `un file vuoto viene rifiutato`() {
        assertThrows(BackupTransferException::class.java) {
            BackupTransferCrypto.encrypt(key, code, ByteArray(0))
        }
    }
}
