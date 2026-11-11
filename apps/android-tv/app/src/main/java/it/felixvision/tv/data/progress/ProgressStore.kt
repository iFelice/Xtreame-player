package it.felixvision.tv.data.progress

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.stringPreferencesKey
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
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
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

@Serializable
internal data class ProgressPayload(
    val items: Map<String, WatchProgress> = emptyMap(),
)

/**
 * Archivio dell'avanzamento per server+utente, sullo stesso modello dei
 * preferiti (DataStore, un payload JSON per account).
 *
 * Chiavi dedicate: `vod_<id>` per i film, `ep_<id>` per gli episodi. Le
 * posizioni sotto i 30 s non vengono salvate; il "già visto" è calcolato al
 * 90% della durata da [WatchRules].
 */
class ProgressStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val mutex = Mutex()

    /** Incrementato dopo ogni scrittura: la UI ricarica icone e barre subito. */
    private val _revision = MutableStateFlow(0L)
    val revision: StateFlow<Long> = _revision.asStateFlow()

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_progress.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("progress_${safe}_${hash}")
    }

    suspend fun getAll(server: String, username: String): Map<String, WatchProgress> =
        withContext(io) {
            val key = keyFor(server, username)
            val raw = dataStore.data.map { it[key] }.first()
            decode(raw)
        }

    suspend fun get(server: String, username: String, contentKey: String): WatchProgress? =
        getAll(server, username)[contentKey]

    /**
     * Salva la posizione. Restituisce `false` (senza scrivere) quando la
     * posizione è sotto la soglia dei 30 s.
     */
    suspend fun save(
        server: String,
        username: String,
        contentKey: String,
        positionMillis: Long,
        durationMillis: Long,
    ): Boolean = mutex.withLock {
        withContext(io) {
            if (!WatchRules.shouldPersist(positionMillis)) {
                return@withContext false
            }
            val key = keyFor(server, username)
            val current = decode(dataStore.data.map { it[key] }.first()).toMutableMap()
            val previous = current[contentKey]
            val effectiveDuration = if (durationMillis > 0L) {
                durationMillis
            } else {
                previous?.durationMillis ?: 0L
            }
            current[contentKey] = WatchProgress(
                positionMillis = positionMillis.coerceAtLeast(0L),
                durationMillis = effectiveDuration,
                updatedAtMillis = clock.nowMillis(),
            )
            persist(key, current)
            _revision.value = _revision.value + 1L
            true
        }
    }

    /**
     * "Segna come visto" dal catalogo: ignora la soglia dei 30 s perché non è
     * una posizione di visione ma un contrassegno esplicito. Se la durata non è
     * nota resta il solo contrassegno.
     */
    suspend fun markWatched(
        server: String,
        username: String,
        contentKey: String,
        durationMillis: Long,
    ): Boolean = mutex.withLock {
        withContext(io) {
            val key = keyFor(server, username)
            val current = decode(dataStore.data.map { it[key] }.first()).toMutableMap()
            val previous = current[contentKey]
            val effectiveDuration = if (durationMillis > 0L) {
                durationMillis
            } else {
                previous?.durationMillis ?: 0L
            }
            current[contentKey] = WatchRules.watchedEntry(effectiveDuration, clock.nowMillis())
            persist(key, current)
            _revision.value = _revision.value + 1L
            true
        }
    }

    /**
     * "Segna come non visto": cancella la voce dall'archivio, così spariscono
     * occhio, barra e proposta di ripresa.
     */
    suspend fun remove(
        server: String,
        username: String,
        contentKey: String,
    ): Boolean = mutex.withLock {
        withContext(io) {
            val key = keyFor(server, username)
            val current = decode(dataStore.data.map { it[key] }.first()).toMutableMap()
            if (current.remove(contentKey) == null) return@withContext false
            persist(key, current)
            _revision.value = _revision.value + 1L
            true
        }
    }

    /**
     * Scrive in blocco le voci già unite dal chiamante (vedi
     * `BackupMerge.mergeProgress`): UNA sola scrittura e una sola revisione.
     * A differenza di [save] non applica la soglia dei 30 s, perché le voci
     * arrivano da un backup già valido e non da una visione in corso.
     */
    suspend fun putAll(
        server: String,
        username: String,
        entries: Map<String, WatchProgress>,
    ) = mutex.withLock {
        withContext(io) {
            persist(keyFor(server, username), entries)
            _revision.value = _revision.value + 1L
        }
    }

    suspend fun clearForAccount(server: String, username: String) {
        mutex.withLock {
            withContext(io) {
                dataStore.edit { preferences -> preferences.remove(keyFor(server, username)) }
                _revision.value = _revision.value + 1L
            }
        }
    }

    private fun decode(raw: String?): Map<String, WatchProgress> {
        if (raw.isNullOrBlank()) return emptyMap()
        return try {
            json.decodeFromString<ProgressPayload>(raw).items
        } catch (_: Exception) {
            emptyMap()
        }
    }

    private suspend fun persist(
        key: Preferences.Key<String>,
        items: Map<String, WatchProgress>,
    ) {
        val payload = ProgressPayload(items)
        val encoded = json.encodeToString(ProgressPayload.serializer(), payload)
        dataStore.edit { preferences -> preferences[key] = encoded }
    }

    /**
     * Implementazione senza DataStore per i test e per i componenti che non
     * hanno un Context. Segue esattamente le stesse regole di [WatchRules].
     */
    class InMemory(
        private val clock: Clock = SystemClock,
    ) {
        private val data = mutableMapOf<String, MutableMap<String, WatchProgress>>()

        private fun accountKey(server: String, username: String): String =
            "${server.lowercase().trim()}|${username.lowercase().trim()}"

        fun getAll(server: String, username: String): Map<String, WatchProgress> =
            data[accountKey(server, username)]?.toMap() ?: emptyMap()

        fun get(server: String, username: String, contentKey: String): WatchProgress? =
            getAll(server, username)[contentKey]

        fun save(
            server: String,
            username: String,
            contentKey: String,
            positionMillis: Long,
            durationMillis: Long,
        ): Boolean {
            if (!WatchRules.shouldPersist(positionMillis)) return false
            val items = data.getOrPut(accountKey(server, username)) { mutableMapOf() }
            val previous = items[contentKey]
            items[contentKey] = WatchProgress(
                positionMillis = positionMillis.coerceAtLeast(0L),
                durationMillis = if (durationMillis > 0L) durationMillis else previous?.durationMillis ?: 0L,
                updatedAtMillis = clock.nowMillis(),
            )
            return true
        }

        /** Stesse regole di [ProgressStore.markWatched]. */
        fun markWatched(
            server: String,
            username: String,
            contentKey: String,
            durationMillis: Long,
        ): Boolean {
            val items = data.getOrPut(accountKey(server, username)) { mutableMapOf() }
            val previous = items[contentKey]
            val effectiveDuration = if (durationMillis > 0L) {
                durationMillis
            } else {
                previous?.durationMillis ?: 0L
            }
            items[contentKey] = WatchRules.watchedEntry(effectiveDuration, clock.nowMillis())
            return true
        }

        /** "Segna come non visto": rimuove la voce, `false` se non c'era. */
        fun remove(server: String, username: String, contentKey: String): Boolean {
            val items = data[accountKey(server, username)] ?: return false
            return items.remove(contentKey) != null
        }

        fun clear(server: String, username: String) {
            data.remove(accountKey(server, username))
        }
    }
}
