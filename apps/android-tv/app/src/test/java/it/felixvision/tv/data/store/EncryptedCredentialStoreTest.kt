package it.felixvision.tv.data.store

import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Verifica della logica di archiviazione cifrata con un'implementazione finta
 * del cifrario: nessuna dipendenza dall'Android Keystore, che non esiste in JVM.
 */
class EncryptedCredentialStoreTest {

    private class InMemoryPreferences : SecurePreferences {
        val values = mutableMapOf<String, String>()

        override suspend fun read(key: String): String? = values[key]

        override suspend fun write(key: String, value: String?) {
            if (value == null) {
                values.remove(key)
            } else {
                values[key] = value
            }
        }
    }

    /** Cifrario finto: XOR con una chiave fissa, reversibile, senza valore crittografico. */
    private class FakeCipher(private val breakDecryption: Boolean = false) : CredentialCipher {
        override fun encrypt(plaintext: ByteArray): ByteArray =
            ByteArray(plaintext.size) { index -> (plaintext[index].toInt() xor KEY).toByte() }

        override fun decrypt(blob: ByteArray): ByteArray {
            if (breakDecryption) {
                throw CredentialDecryptionException("Chiave del Keystore non più disponibile")
            }
            return ByteArray(blob.size) { index -> (blob[index].toInt() xor KEY).toByte() }
        }

        private companion object {
            const val KEY = 0x5A
        }
    }

    private val credentials = StoredCredentials(
        server = "http://server.esempio:8080",
        username = "demo",
        password = "demo-password",
    )

    @Test
    fun `le credenziali sopravvivono al salvataggio e alla rilettura`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedCredentialStore(preferences, FakeCipher())

        store.save(credentials)

        assertEquals(credentials, store.load())
    }

    @Test
    fun `il valore salvato non contiene le credenziali in chiaro`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedCredentialStore(preferences, FakeCipher())

        store.save(credentials)

        val stored = preferences.values.values.single()
        // L'alfabeto Base64 non contiene '-' né '.', quindi questi frammenti
        // possono comparire solo se il payload fosse in chiaro.
        assertFalse(stored.contains("demo-password"))
        assertFalse(stored.contains("server.esempio"))
    }

    @Test
    fun `se la decifratura fallisce i dati vengono cancellati`() = runTest {
        val preferences = InMemoryPreferences()
        EncryptedCredentialStore(preferences, FakeCipher()).save(credentials)
        assertTrue(preferences.values.isNotEmpty())

        var reportedFailure = false
        val brokenStore = EncryptedCredentialStore(
            preferences = preferences,
            cipher = FakeCipher(breakDecryption = true),
            onDecryptionFailure = { reportedFailure = true },
        )

        val loaded = brokenStore.load()

        assertNull(loaded)
        assertTrue(reportedFailure)
        assertTrue(preferences.values.isEmpty())
    }

    @Test
    fun `un blob non decodificabile viene eliminato senza eccezioni`() = runTest {
        val preferences = InMemoryPreferences()
        preferences.write("credentials_blob_v1", "non-base64!!")

        val store = EncryptedCredentialStore(preferences, FakeCipher())

        assertNull(store.load())
        assertTrue(preferences.values.isEmpty())
        assertNull(store.load())
    }

    @Test
    fun `clear elimina le credenziali salvate`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedCredentialStore(preferences, FakeCipher())
        store.save(credentials)

        store.clear()

        assertNull(store.load())
        assertTrue(preferences.values.isEmpty())
    }

    @Test
    fun `senza dati salvati il caricamento è nullo`() = runTest {
        val store = EncryptedCredentialStore(InMemoryPreferences(), FakeCipher())

        assertNull(store.load())
    }
}
