package it.felixvision.tv.data.protection

import java.security.MessageDigest
import java.security.SecureRandom
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec

/**
 * Hash del PIN a 4 cifre: PBKDF2WithHmacSHA256 con sale casuale, 20 000
 * iterazioni e chiave di 256 bit. Sale e hash sono salvati in esadecimale,
 * senza usare librerie esterne (né `android.util.Base64`, che peraltro non è
 * disponibile nel codice condiviso con il tablet).
 *
 * Solo `java.security` e `javax.crypto`, cioè le API del sistema: niente di
 * più, come per gli altri archivi in data/.
 */
object PinHasher {

    /** Algoritmo di derivazione usato da [create] e [verify]. */
    private const val ALGORITHM = "PBKDF2WithHmacSHA256"

    /** Lunghezza del sale casuale: 16 byte = 32 caratteri esadecimali. */
    const val SALT_BYTES = 16

    /** Iterazioni PBKDF2 fissate alla creazione dell'hash. */
    const val ITERATIONS = 20_000

    /** Lunghezza della chiave derivata, in bit. */
    const val KEY_LENGTH_BITS = 256

    /** Numero di cifre del PIN. */
    const val PIN_LENGTH = 4

    /** Rappresentazione salvata del PIN: mai la cifra in chiaro. */
    data class PinCredential(
        val hash: String,
        val salt: String,
        val iterations: Int,
    )

    private val secureRandom = SecureRandom()

    /** Crea sale nuova e hash per [pin]. [pin] dovrebbe già superare [isValidPin]. */
    fun create(pin: String): PinCredential {
        val salt = ByteArray(SALT_BYTES).also { secureRandom.nextBytes(it) }
        val hash = derive(pin, salt, ITERATIONS)
        return PinCredential(hash = toHex(hash), salt = toHex(salt), iterations = ITERATIONS)
    }

    /**
     * Confronto a tempo costante tra l'hash derivato da [pin] e quello
     * salvato: nessun indizio temporale sulle cifre corrette. Falso su dati
     * malformati, senza eccezioni.
     */
    fun verify(pin: String, hash: String, salt: String, iterations: Int): Boolean {
        if (hash.isBlank() || salt.isBlank() || iterations <= 0) return false
        val saltBytes = fromHex(salt) ?: return false
        val expected = fromHex(hash) ?: return false
        val actual = runCatching { derive(pin, saltBytes, iterations) }.getOrNull() ?: return false
        return MessageDigest.isEqual(expected, actual)
    }

    /** Il PIN è accettato solo come esattamente 4 cifre decimali. */
    fun isValidPin(pin: String): Boolean =
        pin.length == PIN_LENGTH && pin.all { it in '0'..'9' }

    private fun derive(pin: String, salt: ByteArray, iterations: Int): ByteArray {
        val spec = PBEKeySpec(pin.toCharArray(), salt, iterations, KEY_LENGTH_BITS)
        return SecretKeyFactory.getInstance(ALGORITHM).generateSecret(spec).encoded
    }

    /** Byte in esadecimale minuscolo, due caratteri per byte. */
    fun toHex(bytes: ByteArray): String {
        val builder = StringBuilder(bytes.size * 2)
        for (byte in bytes) {
            val value = byte.toInt() and 0xFF
            builder.append(HEX_DIGITS[value shr 4]).append(HEX_DIGITS[value and 0x0F])
        }
        return builder.toString()
    }

    /** Esadecimale in byte; null se la stringa non è esadecimale di lunghezza pari. */
    fun fromHex(hex: String): ByteArray? {
        if (hex.length % 2 != 0) return null
        val bytes = ByteArray(hex.length / 2)
        for (index in bytes.indices) {
            val high = Character.digit(hex[index * 2], 16)
            val low = Character.digit(hex[index * 2 + 1], 16)
            if (high < 0 || low < 0) return null
            bytes[index] = ((high shl 4) or low).toByte()
        }
        return bytes
    }

    private val HEX_DIGITS = "0123456789abcdef".toCharArray()
}
