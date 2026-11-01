package it.felixvision.tv.vpn

import java.security.GeneralSecurityException
import java.security.SecureRandom
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

/**
 * Canale cifrato con cui il telefono consegna alla TV il file `.conf`
 * WireGuard, passando dal relay.
 *
 * La TV genera una chiave AES-256 che resta in memoria e arriva al telefono
 * solo nel frammento `#k=` del QR: il browser non manda mai il frammento al
 * server, quindi il relay vede soltanto dati cifrati. La pagina `/vpn` cifra
 * con AES-GCM (IV di 12 byte, tag di 128 bit) e lega il testo al codice della
 * sessione con i dati associati `felixvp-vpn-v1:<codice>`.
 *
 * Chiave, URL del QR, IV e testo cifrato non vanno mai nei log.
 */
object VpnTransferCrypto {

    const val KEY_BYTES = 32
    const val IV_BYTES = 12
    const val MAX_PLAINTEXT_BYTES = 8192

    private const val TAG_BITS = 128
    private const val TAG_BYTES = TAG_BITS / 8
    private const val AAD_PREFIX = "felixvp-vpn-v1:"
    private const val TRANSFORMATION = "AES/GCM/NoPadding"

    private val random = SecureRandom()

    /** Nuova chiave casuale di 32 byte: chi la usa la azzera con `fill(0)` a fine sessione. */
    fun newKey(): ByteArray = ByteArray(KEY_BYTES).also { random.nextBytes(it) }

    /**
     * Indirizzo del QR: pagina `/vpn` del relay con il codice nella query e la
     * chiave in base64url senza padding nel frammento.
     */
    fun qrUrl(relayBase: String, code: String, key: ByteArray): String =
        "${relayBase.trim().trimEnd('/')}/vpn?code=$code#k=${encodeBase64Url(key)}"

    /**
     * Decifra il testo inviato dalla pagina `/vpn`.
     *
     * @throws VpnTransferException se la chiave, l'IV o il testo cifrato non
     * sono validi, se il codice non corrisponde o se il testo in chiaro supera
     * [MAX_PLAINTEXT_BYTES]. Il messaggio non contiene mai dettagli dei dati.
     */
    fun decrypt(key: ByteArray, code: String, ivB64u: String, ciphertextB64u: String): String {
        if (key.size != KEY_BYTES) throw VpnTransferException()
        val iv = decodeBase64Url(ivB64u)
        if (iv.size != IV_BYTES) throw VpnTransferException()
        val ciphertext = decodeBase64Url(ciphertextB64u)
        if (ciphertext.size <= TAG_BYTES || ciphertext.size > MAX_PLAINTEXT_BYTES + TAG_BYTES) {
            throw VpnTransferException()
        }

        val plaintext = try {
            val cipher = Cipher.getInstance(TRANSFORMATION)
            cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(TAG_BITS, iv))
            cipher.updateAAD((AAD_PREFIX + code).toByteArray(Charsets.UTF_8))
            cipher.doFinal(ciphertext)
        } catch (error: GeneralSecurityException) {
            throw VpnTransferException()
        }

        try {
            if (plaintext.size > MAX_PLAINTEXT_BYTES) throw VpnTransferException()
            return String(plaintext, Charsets.UTF_8)
        } finally {
            plaintext.fill(0)
        }
    }

    private fun encodeBase64Url(bytes: ByteArray): String =
        Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)

    private fun decodeBase64Url(value: String): ByteArray =
        try {
            Base64.getUrlDecoder().decode(value.trim())
        } catch (error: IllegalArgumentException) {
            throw VpnTransferException()
        }
}

/** Dati ricevuti dal telefono non decifrabili: nessun dettaglio nel messaggio. */
class VpnTransferException : Exception("Dati della configurazione VPN non validi")
