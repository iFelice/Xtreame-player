package it.felixvision.tv.data.backup

import java.security.GeneralSecurityException
import java.security.SecureRandom
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

/** Direzione della sessione di backup sul relay. */
enum class BackupDirection(val param: String) {
    /** La TV deposita il file, il telefono lo scarica. */
    Export("export"),

    /** Il telefono invia il file, la TV lo ritira. */
    Import("import"),
}

/**
 * Busta di trasporto pronta per il relay: IV e testo cifrato in base64url.
 * Mai nei log: il contenuto resta leggibile solo con la chiave del QR.
 */
data class BackupTransportEnvelope(
    val iv: String,
    val ciphertext: String,
) {
    override fun toString(): String = "BackupTransportEnvelope"
}

/**
 * Canale cifrato con cui il file di backup passa dal relay, con lo stesso
 * schema della VPN (vedi `VpnTransferCrypto`): la TV genera una chiave
 * AES-256 che resta in memoria e arriva al telefono solo nel frammento `#k=`
 * del QR, che il browser non manda mai al server. La pagina `/backup` cifra e
 * decifra con AES-GCM (IV di 12 byte, tag di 128 bit) e lega il file al codice
 * della sessione con i dati associati `felixvp-backup-v1:<codice>`.
 *
 * Questo è solo il trasporto: il file resta cifrato anche con la password del
 * backup, che non passa mai dal telefono né dal relay.
 *
 * Chiave, URL del QR, IV e testo cifrato non vanno mai nei log.
 */
object BackupTransferCrypto {

    const val KEY_BYTES = 32
    const val IV_BYTES = 12

    /** File di backup massimo trasportato: 256 KiB, come sul relay. */
    const val MAX_PLAINTEXT_BYTES = 262_144

    private const val TAG_BITS = 128
    private const val TAG_BYTES = TAG_BITS / 8
    private const val AAD_PREFIX = "felixvp-backup-v1:"
    private const val TRANSFORMATION = "AES/GCM/NoPadding"

    private val random = SecureRandom()

    /** Nuova chiave casuale di 32 byte: chi la usa la azzera con `fill(0)` a fine sessione. */
    fun newKey(): ByteArray = ByteArray(KEY_BYTES).also { random.nextBytes(it) }

    /**
     * Indirizzo del QR: pagina `/backup` del relay con direzione e codice
     * nella query e la chiave in base64url senza padding nel frammento.
     */
    fun qrUrl(relayBase: String, direction: BackupDirection, code: String, key: ByteArray): String =
        "${relayBase.trim().trimEnd('/')}/backup?mode=${direction.param}&code=$code#k=${encode(key)}"

    /**
     * Cifra il file da depositare sul relay (esportazione).
     *
     * @throws BackupTransferException se la chiave non è valida o il file
     * supera [MAX_PLAINTEXT_BYTES]. Il messaggio non contiene mai dettagli.
     */
    fun encrypt(key: ByteArray, code: String, plaintext: ByteArray): BackupTransportEnvelope {
        if (key.size != KEY_BYTES) throw BackupTransferException()
        if (plaintext.isEmpty() || plaintext.size > MAX_PLAINTEXT_BYTES) throw BackupTransferException()
        val iv = ByteArray(IV_BYTES).also { random.nextBytes(it) }
        try {
            val cipher = Cipher.getInstance(TRANSFORMATION)
            cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(TAG_BITS, iv))
            cipher.updateAAD((AAD_PREFIX + code).toByteArray(Charsets.UTF_8))
            val ciphertext = cipher.doFinal(plaintext)
            return BackupTransportEnvelope(iv = encode(iv), ciphertext = encode(ciphertext))
        } catch (error: GeneralSecurityException) {
            throw BackupTransferException()
        } finally {
            iv.fill(0)
        }
    }

    /**
     * Decifra il file arrivato dal relay (importazione).
     *
     * @throws BackupTransferException se chiave, IV, testo cifrato o codice
     * non sono validi. Il messaggio non contiene mai dettagli dei dati.
     */
    fun decrypt(key: ByteArray, code: String, ivB64u: String, ciphertextB64u: String): ByteArray {
        if (key.size != KEY_BYTES) throw BackupTransferException()
        val iv = decode(ivB64u)
        if (iv.size != IV_BYTES) throw BackupTransferException()
        val ciphertext = decode(ciphertextB64u)
        if (ciphertext.size <= TAG_BYTES || ciphertext.size > MAX_PLAINTEXT_BYTES + TAG_BYTES) {
            throw BackupTransferException()
        }

        return try {
            val cipher = Cipher.getInstance(TRANSFORMATION)
            cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(TAG_BITS, iv))
            cipher.updateAAD((AAD_PREFIX + code).toByteArray(Charsets.UTF_8))
            cipher.doFinal(ciphertext)
        } catch (error: GeneralSecurityException) {
            throw BackupTransferException()
        }
    }

    private fun encode(bytes: ByteArray): String =
        Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)

    private fun decode(value: String): ByteArray =
        try {
            Base64.getUrlDecoder().decode(value.trim())
        } catch (error: IllegalArgumentException) {
            throw BackupTransferException()
        }
}

/** Dati di trasporto del backup non validi: nessun dettaglio nel messaggio. */
class BackupTransferException : Exception("Backup non leggibile")
