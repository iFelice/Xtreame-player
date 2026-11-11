package it.felixvision.tv.data.backup

import it.felixvision.tv.core.FvpJson
import java.security.GeneralSecurityException
import java.security.SecureRandom
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.PBEKeySpec
import javax.crypto.spec.SecretKeySpec
import kotlinx.serialization.json.Json

/**
 * Cifratura del file di backup con la password scelta sulla TV, solo API
 * standard JCA già disponibili: PBKDF2WithHmacSHA256 con sale casuale e
 * AES-256-GCM con nonce casuale.
 *
 * Password, chiavi, contenuto del backup e configurazione VPN non vanno mai
 * nei log: i messaggi d'errore sono generici e senza dettagli tecnici.
 * Derivazione e cifratura girano fuori dal thread principale (vedi
 * [BackupRepository]).
 */
object BackupCrypto {

    /** Derivazione della chiave dalla password. */
    const val PBKDF2_ALGORITHM = "PBKDF2WithHmacSHA256"

    /** Sale casuale per file: 16 byte in base64url. */
    const val SALT_BYTES = 16

    /**
     * Iterazioni PBKDF2: alte ma sostenibili su una TV economica
     * (il tempo è misurato in `BackupCryptoTest` e riportato nella PR).
     */
    const val ITERATIONS = 100_000

    /** Chiave AES derivata: 256 bit. */
    const val KEY_LENGTH_BITS = 256

    /** Nonce GCM casuale per file: 12 byte in base64url. */
    const val NONCE_BYTES = 12

    private const val TRANSFORMATION = "AES/GCM/NoPadding"
    private const val TAG_BITS = 128
    private const val TAG_BYTES = TAG_BITS / 8
    private const val MIN_ITERATIONS = 1

    private val random = SecureRandom()

    /** La password è accettata solo con almeno 8 caratteri. */
    fun isValidPassword(password: String): Boolean =
        password.length >= BACKUP_MIN_PASSWORD_LENGTH

    /** Cifra [plaintext] con [password]: involucro pronto da salvare o inviare. */
    fun encrypt(password: String, plaintext: ByteArray): BackupEnvelope {
        require(isValidPassword(password)) { "Password troppo corta" }
        val salt = ByteArray(SALT_BYTES).also { random.nextBytes(it) }
        val nonce = ByteArray(NONCE_BYTES).also { random.nextBytes(it) }
        return try {
            val key = derive(password, salt, ITERATIONS)
            try {
                val cipher = Cipher.getInstance(TRANSFORMATION)
                cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(TAG_BITS, nonce))
                val ciphertext = cipher.doFinal(plaintext)
                BackupEnvelope(
                    formatVersion = BACKUP_FORMAT_VERSION,
                    kdfSalt = encode(salt),
                    kdfIterations = ITERATIONS,
                    nonce = encode(nonce),
                    ciphertext = encode(ciphertext),
                )
            } finally {
                key.fill(0)
            }
        } finally {
            salt.fill(0)
            nonce.fill(0)
        }
    }

    /**
     * Decifra [envelope] con [password].
     *
     * @throws BackupCryptoException con password errata o dati alterati: il
     *   messaggio è generico e non distingue i due casi.
     */
    fun decrypt(password: String, envelope: BackupEnvelope): ByteArray {
        val salt = decode(envelope.kdfSalt) ?: throw BackupCryptoException()
        val nonce = decode(envelope.nonce) ?: throw BackupCryptoException()
        val ciphertext = decode(envelope.ciphertext) ?: throw BackupCryptoException()
        if (
            salt.size != SALT_BYTES || nonce.size != NONCE_BYTES ||
            envelope.kdfIterations < MIN_ITERATIONS || ciphertext.size <= TAG_BYTES
        ) {
            throw BackupCryptoException()
        }
        val key = try {
            derive(password, salt, envelope.kdfIterations)
        } catch (_: GeneralSecurityException) {
            throw BackupCryptoException()
        } catch (_: IllegalArgumentException) {
            throw BackupCryptoException()
        }
        try {
            val cipher = try {
                Cipher.getInstance(TRANSFORMATION).also {
                    it.init(Cipher.DECRYPT_MODE, SecretKeySpec(key, "AES"), GCMParameterSpec(TAG_BITS, nonce))
                }
            } catch (_: GeneralSecurityException) {
                throw BackupCryptoException()
            }
            return try {
                cipher.doFinal(ciphertext)
            } catch (_: GeneralSecurityException) {
                throw BackupCryptoException()
            }
        } finally {
            key.fill(0)
        }
    }

    private fun derive(password: String, salt: ByteArray, iterations: Int): ByteArray {
        val chars = password.toCharArray()
        try {
            val spec = PBEKeySpec(chars, salt, iterations, KEY_LENGTH_BITS)
            return SecretKeyFactory.getInstance(PBKDF2_ALGORITHM).generateSecret(spec).encoded
        } finally {
            chars.fill('\u0000')
        }
    }

    private fun encode(bytes: ByteArray): String =
        Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)

    private fun decode(value: String): ByteArray? = try {
        Base64.getUrlDecoder().decode(value.trim())
    } catch (_: IllegalArgumentException) {
        null
    }
}

/** Password errata o file alterato: nessun dettaglio nel messaggio. */
class BackupCryptoException : Exception("Backup non leggibile")

/**
 * Lettura e scrittura del file di backup (involucro JSON + contenuto JSON).
 * I messaggi sono generici: la [Kind] serve solo ai test e alla scelta del
 * testo mostrato, mai ai log di dettaglio.
 */
object BackupCodec {

    private val json: Json = FvpJson

    /** Contenuto cifrabile: JSON di [BackupData]. */
    fun encodeData(data: BackupData): ByteArray =
        json.encodeToString(BackupData.serializer(), data).toByteArray(Charsets.UTF_8)

    /** File da salvare o inviare: JSON di [BackupEnvelope]. */
    fun encodeEnvelope(envelope: BackupEnvelope): String =
        json.encodeToString(BackupEnvelope.serializer(), envelope)

    /**
     * @throws BackupFormatException [BackupFormatException.Kind.NOT_A_BACKUP]
     *   se il testo non è un involucro di backup.
     * @throws BackupFormatException
     *   [BackupFormatException.Kind.UNSUPPORTED_VERSION] se la versione del
     *   formato è diversa da [BACKUP_FORMAT_VERSION].
     */
    fun decodeEnvelope(text: String): BackupEnvelope {
        val envelope = try {
            json.decodeFromString(BackupEnvelope.serializer(), text.trim())
        } catch (_: Exception) {
            throw BackupFormatException(BackupFormatException.Kind.NOT_A_BACKUP)
        }
        if (envelope.formatVersion != BACKUP_FORMAT_VERSION) {
            throw BackupFormatException(BackupFormatException.Kind.UNSUPPORTED_VERSION)
        }
        return envelope
    }

    /**
     * @throws BackupFormatException [BackupFormatException.Kind.NOT_A_BACKUP]
     *   se il contenuto decifrato non è un backup valido.
     */
    fun decodeData(plaintext: ByteArray): BackupData = try {
        json.decodeFromString(BackupData.serializer(), String(plaintext, Charsets.UTF_8))
    } catch (_: Exception) {
        throw BackupFormatException(BackupFormatException.Kind.NOT_A_BACKUP)
    }
}

/** File non riconosciuto o scritto da una versione più recente dell'app. */
class BackupFormatException(val kind: Kind) : Exception("Backup non leggibile") {

    enum class Kind {
        NOT_A_BACKUP,
        UNSUPPORTED_VERSION,
    }
}
