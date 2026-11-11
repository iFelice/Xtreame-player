package it.felixvision.tv.vpn

import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Test

/**
 * Canale cifrato TV ↔ telefono: il vettore della pagina `/vpn` del relay si
 * decifra solo con il codice giusto e senza byte alterati; i limiti di IV e
 * dimensione valgono come sulla pagina.
 */
class VpnTransferCryptoTest {

    private val key: ByteArray = Base64.getUrlDecoder().decode(VpnTestVectors.KEY_B64U)

    @Test
    fun `il vettore della pagina vpn si decifra nel file atteso`() {
        val text = VpnTransferCrypto.decrypt(
            key,
            VpnTestVectors.CODE,
            VpnTestVectors.IV_B64U,
            VpnTestVectors.CIPHERTEXT_B64U,
        )

        assertEquals(VpnTestVectors.CONFIG_TEXT, text)
    }

    @Test
    fun `con un altro codice la decifratura fallisce`() {
        assertThrows(VpnTransferException::class.java) {
            VpnTransferCrypto.decrypt(key, "654321", VpnTestVectors.IV_B64U, VpnTestVectors.CIPHERTEXT_B64U)
        }
    }

    @Test
    fun `un byte alterato fa fallire la decifratura`() {
        val bytes = Base64.getUrlDecoder().decode(VpnTestVectors.CIPHERTEXT_B64U)
        val index = bytes.size / 2
        bytes[index] = (bytes[index].toInt() xor 0x01).toByte()

        assertThrows(VpnTransferException::class.java) {
            VpnTransferCrypto.decrypt(key, VpnTestVectors.CODE, VpnTestVectors.IV_B64U, encode(bytes))
        }
    }

    @Test
    fun `un IV diverso da 12 byte viene rifiutato`() {
        assertThrows(VpnTransferException::class.java) {
            VpnTransferCrypto.decrypt(key, VpnTestVectors.CODE, encode(ByteArray(16)), VpnTestVectors.CIPHERTEXT_B64U)
        }
    }

    @Test
    fun `un testo non in base64url viene rifiutato`() {
        assertThrows(VpnTransferException::class.java) {
            VpnTransferCrypto.decrypt(key, VpnTestVectors.CODE, VpnTestVectors.IV_B64U, "%%%")
        }
    }

    @Test
    fun `fino a 8192 byte in chiaro si accetta, oltre no`() {
        val iv = Base64.getUrlDecoder().decode(VpnTestVectors.IV_B64U)
        val atLimit = ByteArray(VpnTransferCrypto.MAX_PLAINTEXT_BYTES) { 'a'.code.toByte() }
        val overLimit = ByteArray(VpnTransferCrypto.MAX_PLAINTEXT_BYTES + 1) { 'a'.code.toByte() }

        val accepted = VpnTransferCrypto.decrypt(
            key,
            VpnTestVectors.CODE,
            VpnTestVectors.IV_B64U,
            encode(encrypt(iv, atLimit)),
        )
        assertEquals(VpnTransferCrypto.MAX_PLAINTEXT_BYTES, accepted.length)

        assertThrows(VpnTransferException::class.java) {
            VpnTransferCrypto.decrypt(key, VpnTestVectors.CODE, VpnTestVectors.IV_B64U, encode(encrypt(iv, overLimit)))
        }
    }

    @Test
    fun `il QR porta il codice nella query e la chiave nel frammento`() {
        assertEquals(
            "https://relay.esempio/vpn?code=123456#k=AQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyA",
            VpnTransferCrypto.qrUrl("https://relay.esempio/", VpnTestVectors.CODE, key),
        )
    }

    @Test
    fun `ogni sessione ha una chiave nuova di 32 byte`() {
        val first = VpnTransferCrypto.newKey()
        val second = VpnTransferCrypto.newKey()

        assertEquals(VpnTransferCrypto.KEY_BYTES, first.size)
        assertEquals(VpnTransferCrypto.KEY_BYTES, second.size)
        assertFalse(first.contentEquals(second))
    }

    /** Cifra come la pagina `/vpn`: AES-GCM, tag di 128 bit, dati associati legati al codice. */
    private fun encrypt(iv: ByteArray, plaintext: ByteArray): ByteArray {
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(128, iv))
        cipher.updateAAD("felixvp-vpn-v1:${VpnTestVectors.CODE}".toByteArray(Charsets.UTF_8))
        return cipher.doFinal(plaintext)
    }

    private fun encode(bytes: ByteArray): String = Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)
}
