package it.felixvision.tv.data.protection

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.stringPreferencesKey
import it.felixvision.tv.core.FvpJson
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json

/**
 * Archivio dei contenuti per adulti: PIN (solo hash PBKDF2, mai in chiaro e
 * mai nei log) ed elenchi di categorie e contenuti nascosti, uno per
 * server+utente. Preferenze DataStore sullo stesso modello di
 * [it.felixvision.tv.data.channels.MyChannelsStore].
 *
 * Le regole sugli elenchi sono pure e stanno in [ProtectedContentRules]; qui
 * restano lettura, scrittura e notifica delle revisioni.
 */
class ProtectedContentStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val mutex = Mutex()

    /** Incrementato dopo ogni scrittura: la schermata ricarica subito l'archivio. */
    private val _revision = MutableStateFlow(0L)
    val revision: StateFlow<Long> = _revision.asStateFlow()

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_protected_content.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("protected_${safe}_${hash}")
    }

    /** Archivio attuale; vuoto quando non c'è ancora nulla di salvato. */
    suspend fun get(server: String, username: String): ProtectedContentData =
        withContext(io) { read(server, username) }

    /**
     * Imposta (o sostituisce) il PIN creando un hash nuovo con sale nuovo;
     * gli elenchi di categorie e contenuti nascosti restano invariati.
     */
    suspend fun setPin(server: String, username: String, pin: String): ProtectedContentData =
        mutate(server, username) { current ->
            val credential = PinHasher.create(pin)
            current.copy(
                pinHash = credential.hash,
                pinSalt = credential.salt,
                pinIterations = credential.iterations,
            )
        }

    /**
     * Vero solo se il PIN coincide con l'hash salvato per l'account. Lettura e
     * derivazione PBKDF2 girano su [io]: la verifica non deve bloccare il
     * thread dell'interfaccia.
     */
    suspend fun verifyPin(server: String, username: String, pin: String): Boolean =
        withContext(io) {
            val data = read(server, username)
            val hash = data.pinHash ?: return@withContext false
            val salt = data.pinSalt ?: return@withContext false
            PinHasher.verify(pin = pin, hash = hash, salt = salt, iterations = data.pinIterations)
        }

    suspend fun toggleCategory(
        server: String,
        username: String,
        kind: ProtectedKind,
        categoryId: String,
        name: String,
    ): ProtectedContentData = mutate(server, username) {
        ProtectedContentRules.toggleCategory(it, kind, categoryId, name)
    }

    suspend fun toggleItem(
        server: String,
        username: String,
        kind: ProtectedKind,
        itemId: String,
        categoryId: String?,
        name: String,
    ): ProtectedContentData = mutate(server, username) {
        ProtectedContentRules.toggleItem(it, kind, itemId, categoryId, name)
    }

    suspend fun removeCategory(
        server: String,
        username: String,
        kind: ProtectedKind,
        categoryId: String,
    ): ProtectedContentData = mutate(server, username) {
        ProtectedContentRules.removeCategory(it, kind, categoryId)
    }

    suspend fun removeItem(
        server: String,
        username: String,
        kind: ProtectedKind,
        itemId: String,
    ): ProtectedContentData = mutate(server, username) {
        ProtectedContentRules.removeItem(it, kind, itemId)
    }

    /**
     * Rimuove tutte le voci selezionate con UNA sola scrittura: `mutate`
     * persiste una volta e incrementa [revision] una volta. Con nessuna voce
     * (o con voci già assenti) non scrive nulla, come le altre operazioni.
     */
    suspend fun removeSelected(
        server: String,
        username: String,
        keys: Collection<ProtectedEntryKey>,
    ): ProtectedContentData = mutate(server, username) {
        ProtectedContentRules.removeAll(it, keys)
    }

    private suspend fun mutate(
        server: String,
        username: String,
        transform: (ProtectedContentData) -> ProtectedContentData,
    ): ProtectedContentData = mutex.withLock {
        withContext(io) {
            val current = read(server, username)
            val updated = transform(current)
            if (updated == current) return@withContext current
            persist(keyFor(server, username), updated)
            _revision.value = _revision.value + 1L
            updated
        }
    }

    private suspend fun read(server: String, username: String): ProtectedContentData {
        val raw = dataStore.data.map { it[keyFor(server, username)] }.first()
        return decode(raw)
    }

    private fun decode(raw: String?): ProtectedContentData {
        if (raw.isNullOrBlank()) return ProtectedContentData()
        return try {
            json.decodeFromString(ProtectedContentData.serializer(), raw)
        } catch (_: Exception) {
            ProtectedContentData()
        }
    }

    private suspend fun persist(key: Preferences.Key<String>, data: ProtectedContentData) {
        val encoded = json.encodeToString(ProtectedContentData.serializer(), data)
        dataStore.edit { preferences -> preferences[key] = encoded }
    }
}
