package it.felixvision.tv.data.backup

import java.nio.charset.StandardCharsets
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Cifratura del file di backup: giro completo con la password, fallimenti
 * generici con password errata o dati alterati, versione sconosciuta e file
 * non riconosciuto. Il tempo di derivazione PBKDF2 è stampato nel rapporto
 * del test (vedi `misura il tempo di derivazione PBKDF2`).
 */
class BackupCryptoTest {

    private val password = "password-di-prova"
    private val plaintext = "contenuto di prova del backup".toByteArray(StandardCharsets.UTF_8)

    @Test
    fun `la password minima accettata e di 8 caratteri`() {
        assertFalse(BackupCrypto.isValidPassword("1234567"))
        assertTrue(BackupCrypto.isValidPassword("12345678"))
    }

    @Test
    fun `cifratura e decifratura restituiscono il contenuto originale`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)

        assertEquals(BACKUP_FORMAT_VERSION, envelope.formatVersion)
        assertEquals(BackupCrypto.ITERATIONS, envelope.kdfIterations)

        val decrypted = BackupCrypto.decrypt(password, envelope)
        assertArrayEquals(plaintext, decrypted)
    }

    @Test
    fun `due cifrature dello stesso contenuto usano sale e nonce diversi`() {
        val first = BackupCrypto.encrypt(password, plaintext)
        val second = BackupCrypto.encrypt(password, plaintext)

        assertTrue(first.kdfSalt != second.kdfSalt)
        assertTrue(first.nonce != second.nonce)
        assertTrue(first.ciphertext != second.ciphertext)
        assertArrayEquals(plaintext, BackupCrypto.decrypt(password, second))
    }

    @Test
    fun `password errata fa fallire la decifratura con un errore generico`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)

        val error = assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt("password-sbagliata", envelope)
        }
        assertEquals("Backup non leggibile", error.message)
    }

    @Test
    fun `testo cifrato alterato fa fallire la decifratura`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)
        val altered = envelope.copy(ciphertext = alterBase64Url(envelope.ciphertext))

        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, altered)
        }
    }

    @Test
    fun `nonce alterato fa fallire la decifratura`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)
        val altered = envelope.copy(nonce = alterBase64Url(envelope.nonce))

        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, altered)
        }
    }

    @Test
    fun `sale alterato fa fallire la decifratura`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)
        val altered = envelope.copy(kdfSalt = alterBase64Url(envelope.kdfSalt))

        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, altered)
        }
    }

    @Test
    fun `involucro non valido fa fallire la decifratura senza eccezioni impreviste`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)

        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, envelope.copy(kdfSalt = "non-base64url!!!"))
        }
        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, envelope.copy(kdfIterations = 0))
        }
        assertThrows(BackupCryptoException::class.java) {
            BackupCrypto.decrypt(password, envelope.copy(ciphertext = "AA"))
        }
    }

    @Test
    fun `testo che non e un backup viene rifiutato dal lettore`() {
        val error = assertThrows(BackupFormatException::class.java) {
            BackupCodec.decodeEnvelope("questo non è un backup")
        }
        assertEquals(BackupFormatException.Kind.NOT_A_BACKUP, error.kind)
    }

    @Test
    fun `versione sconosciuta viene rilevata dal lettore`() {
        val envelope = BackupCrypto.encrypt(password, plaintext)
        val text = BackupCodec.encodeEnvelope(envelope.copy(formatVersion = BACKUP_FORMAT_VERSION + 1))

        val error = assertThrows(BackupFormatException::class.java) {
            BackupCodec.decodeEnvelope(text)
        }
        assertEquals(BackupFormatException.Kind.UNSUPPORTED_VERSION, error.kind)
    }

    @Test
    fun `contenuto decifrato non valido viene rifiutato dal lettore`() {
        // Cifrato valido ma con un JSON che non è un BackupData.
        val envelope = BackupCrypto.encrypt(password, "[]".toByteArray(StandardCharsets.UTF_8))
        val decrypted = BackupCrypto.decrypt(password, envelope)

        val error = assertThrows(BackupFormatException::class.java) {
            BackupCodec.decodeData(decrypted)
        }
        assertEquals(BackupFormatException.Kind.NOT_A_BACKUP, error.kind)
    }

    @Test
    fun `giro completo del file con dati di backup dimostrativi`() {
        val data = BackupData(
            favorites = emptyList(),
            progress = emptyMap(),
            account = BackupAccountIds.forAccount("http://server.esempio:8080", "demo"),
        )
        val fileText = BackupCodec.encodeEnvelope(BackupCrypto.encrypt(password, BackupCodec.encodeData(data)))

        val envelope = BackupCodec.decodeEnvelope(fileText)
        val decrypted = BackupCrypto.decrypt(password, envelope)
        val decoded = BackupCodec.decodeData(decrypted)

        assertTrue(BackupAccountIds.matches(decoded.account, "http://server.esempio:8080", "demo"))
    }

    @Test
    fun `misura il tempo di derivazione PBKDF2`() {
        val iterations = BackupCrypto.ITERATIONS
        val encryptStart = System.nanoTime()
        val envelope = BackupCrypto.encrypt(password, plaintext)
        val encryptMillis = (System.nanoTime() - encryptStart) / 1_000_000L
        val decryptStart = System.nanoTime()
        BackupCrypto.decrypt(password, envelope)
        val decryptMillis = (System.nanoTime() - decryptStart) / 1_000_000L
        println("BackupCrypto PBKDF2-HMAC-SHA256 $iterations iterazioni: cifratura ${encryptMillis}ms, decifratura ${decryptMillis}ms")
    }

    /** Altera un carattere base64url valido mantenendo l'alfabeto. */
    private fun alterBase64Url(value: String): String {
        val replacement = if (value.first() == 'A') 'B' else 'A'
        return replacement + value.drop(1)
    }
}
