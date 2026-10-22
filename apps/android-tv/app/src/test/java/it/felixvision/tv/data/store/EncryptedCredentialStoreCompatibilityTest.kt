package it.felixvision.tv.data.store

import it.felixvision.tv.core.FvpJson
import java.util.Base64
import kotlinx.coroutines.test.runTest
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class EncryptedCredentialStoreCompatibilityTest {

    private class InMemoryPreferences : SecurePreferences {
        val values = mutableMapOf<String, String>()
        override suspend fun read(key: String): String? = values[key]
        override suspend fun write(key: String, value: String?) {
            if (value == null) values.remove(key) else values[key] = value
        }
    }

    private class FakeCipher : CredentialCipher {
        override fun encrypt(plaintext: ByteArray): ByteArray = plaintext
        override fun decrypt(blob: ByteArray): ByteArray = blob
    }

    @Test
    fun `decodifica payload vecchio senza serverCode`() = runTest {
        val preferences = InMemoryPreferences()
        val json = FvpJson
        // Simula payload vecchio: senza serverCode
        val oldRecordJson = """{"server":"http://server.esempio:8080","username":"demo","password":"demo"}"""
        val blob = oldRecordJson.toByteArray(Charsets.UTF_8)
        val encoded = Base64.getEncoder().encodeToString(blob)
        preferences.write("credentials_blob_v1", encoded)

        val store = EncryptedCredentialStore(preferences, FakeCipher(), json)
        val loaded = store.load()

        assertEquals("http://server.esempio:8080", loaded?.server)
        assertEquals("demo", loaded?.username)
        assertEquals("demo", loaded?.password)
        assertNull(loaded?.serverCode)
        // Etichetta deve essere Personalizzato per vecchio payload
        assertEquals("Personalizzato", serverLabel(loaded))
    }

    @Test
    fun `salvataggio e rilettura con serverCode`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedCredentialStore(preferences, FakeCipher())
        val creds = StoredCredentials(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            serverCode = "001"
        )
        store.save(creds)
        val loaded = store.load()
        assertEquals(creds, loaded)
        assertEquals("001", loaded?.serverCode)
        assertEquals("001", serverLabel(loaded))
    }

    @Test
    fun `payload nuovo decodificabile e vecchia compatibilità`() = runTest {
        val preferences = InMemoryPreferences()
        val json = FvpJson
        val newRecordJson = """{"server":"http://server.esempio:8080","username":"demo","password":"demo","serverCode":"001"}"""
        val blob = newRecordJson.toByteArray(Charsets.UTF_8)
        val encoded = Base64.getEncoder().encodeToString(blob)
        preferences.write("credentials_blob_v1", encoded)

        val store = EncryptedCredentialStore(preferences, FakeCipher(), json)
        val loaded = store.load()
        assertEquals("001", loaded?.serverCode)
        assertEquals("001", serverLabel(loaded))
    }
}
