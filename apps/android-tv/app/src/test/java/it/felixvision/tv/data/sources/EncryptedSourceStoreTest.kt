package it.felixvision.tv.data.sources

import it.felixvision.tv.data.store.CredentialCipher
import it.felixvision.tv.data.store.CredentialDecryptionException
import it.felixvision.tv.data.store.SecurePreferences
import it.felixvision.tv.data.store.StoredCredentials
import java.util.Base64
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Elenco delle sorgenti: migrazione dal blob singolo all'account Xtream come S1,
 * lista M3U presente solo con l'indirizzo di compilazione, massimo tre sorgenti,
 * etichette mai riassegnate.
 *
 * Valori dimostrativi: `http://server.esempio:8080`, utente e password `demo`.
 */
class EncryptedSourceStoreTest {

    private class InMemoryPreferences : SecurePreferences {
        val values = mutableMapOf<String, String>()
        override suspend fun read(key: String): String? = values[key]
        override suspend fun write(key: String, value: String?) {
            if (value == null) values.remove(key) else values[key] = value
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
        serverCode = "001",
    )

    /** Scrive il vecchio blob singolo, come lo lascia la versione precedente. */
    private suspend fun seedLegacy(preferences: InMemoryPreferences) {
        val record = """{"server":"http://server.esempio:8080","username":"demo","password":"demo-password","serverCode":"001"}"""
        val encoded = Base64.getEncoder().encodeToString(record.toByteArray(Charsets.UTF_8))
        preferences.write(EncryptedSourceStore.KEY_LEGACY_CREDENTIALS, encoded)
    }

    @Test
    fun `il vecchio blob singolo diventa l'account Xtream S1`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)

        val store = EncryptedSourceStore(preferences, FakeCipher())
        val sources = store.load()

        assertEquals(1, sources.size)
        val source = sources.single()
        assertEquals(SourceType.XTREAM, source.type)
        assertEquals(EncryptedSourceStore.LEGACY_XTREAM_ID, source.id)
        assertEquals("S1", source.label)
        assertTrue(source.enabled)
        assertEquals(credentials, source.xtream)
        // Migrata: la lista nuova è su disco e il blob vecchio non c'è più.
        assertTrue(preferences.values.containsKey(EncryptedSourceStore.KEY_SOURCES))
        assertFalse(preferences.values.containsKey(EncryptedSourceStore.KEY_LEGACY_CREDENTIALS))
    }

    @Test
    fun `la migrazione non perde l'etichetta tra due letture`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "http://server.esempio/lista.m3u8")

        val first = store.load()
        val second = store.load()

        assertEquals(listOf("S1", "S2"), first.map { it.label })
        assertEquals(first, second)
        assertEquals(SourceType.M3U, second[1].type)
        assertEquals("http://server.esempio/lista.m3u8", second[1].m3uUrl)
    }

    @Test
    fun `senza indirizzo la sorgente M3U non esiste`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)

        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "")
        val sources = store.load()

        assertEquals(listOf(SourceType.XTREAM), sources.map { it.type })
    }

    @Test
    fun `l'indirizzo vuoto non crea la riga M3U`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "   ")

        assertTrue(store.load().isEmpty())
    }

    @Test
    fun `al massimo tre sorgenti`() = runTest {
        val preferences = InMemoryPreferences()
        val store = EncryptedSourceStore(preferences, FakeCipher())
        val many = (1..4).map { index ->
            Source(
                id = "src$index",
                type = SourceType.XTREAM,
                label = "S$index",
                xtream = credentials.copy(username = "demo$index"),
            )
        }

        store.save(many)

        assertEquals(3, store.load().size)
        assertEquals(listOf("S1", "S2", "S3"), store.load().map { it.label })
    }

    @Test
    fun `la scelta dell'interruttore resta con la stessa etichetta`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "http://server.esempio/lista.m3u8")
        val repository = SourceRepository(store)
        val m3u = repository.sources().first { it.type == SourceType.M3U }

        repository.setEnabled(m3u.id, false)

        val after = repository.sources().first { it.id == m3u.id }
        assertEquals("S2", after.label)
        assertFalse(after.enabled)
        // La riga c'è ancora: spegnerla non la cancella.
        assertEquals(2, repository.sources().size)
        assertEquals(1, repository.enabledSources().size)
    }

    @Test
    fun `un blob illeggibile non fa cadere l'app`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        var failure: Throwable? = null

        val store = EncryptedSourceStore(
            preferences = preferences,
            cipher = FakeCipher(breakDecryption = true),
            onDecryptionFailure = { failure = it },
        )

        assertEquals(emptyList<Source>(), store.load())
        assertTrue(failure is CredentialDecryptionException)
        assertNull(preferences.values[EncryptedSourceStore.KEY_LEGACY_CREDENTIALS])
    }

    @Test
    fun `la facciata delle credenziali aggiorna l'account senza cambiare etichetta`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "http://server.esempio/lista.m3u8")
        val credentialStore = XtreamCredentialStore(store)
        val replacement = credentials.copy(username = "demo2", password = "demo-password-2")

        credentialStore.save(replacement)

        assertEquals(replacement, credentialStore.load())
        val source = store.load().first { it.type == SourceType.XTREAM }
        assertEquals("S1", source.label)
        assertEquals(EncryptedSourceStore.LEGACY_XTREAM_ID, source.id)
    }

    @Test
    fun `uscire dall'account toglie solo le sorgenti Xtream`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "http://server.esempio/lista.m3u8")
        val credentialStore = XtreamCredentialStore(store)

        credentialStore.clear()

        assertNull(credentialStore.load())
        assertEquals(listOf(SourceType.M3U), store.load().map { it.type })
    }

    @Test
    fun `con un indirizzo gia configurato la riga M3U e S2`() = runTest {
        val preferences = InMemoryPreferences()
        seedLegacy(preferences)
        val store = EncryptedSourceStore(preferences, FakeCipher(), m3uUrl = "http://server.esempio/lista.m3u8")

        val sources = store.load()

        assertEquals(listOf("S1", "S2"), sources.map { it.label })
        assertEquals(Sources.rowTitle(sources[1]), "Lista M3U · S2")
        assertFalse(Sources.rowTitle(sources[1]).contains("server.esempio"))
    }
}
