package it.felixvision.tv.data.continuewatching

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
internal data class ContinueWatchingPayload(
    val entries: List<ContinueEntry> = emptyList(),
)

/**
 * Archivio "Continua a guardare" in DataStore, per server+utente, sullo stesso
 * modello di preferiti e avanzamento.
 *
 * Il player aggiorna l'archivio quando salva l'avanzamento (posizione ≥ 30 s):
 * i film visti si tolgono, per le serie la voce passa all'episodio successivo.
 * La pressione lunga nella sezione nasconde la voce finché il contenuto non
 * viene ripreso. Le regole sono in [ContinueWatchingRules].
 *
 * Un archivio assente, vuoto o illeggibile vale come archivio vuoto: nessuna
 * eccezione arriva alla UI.
 */
class ContinueWatchingStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val mutex = Mutex()

    /** Incrementato dopo ogni scrittura: la sezione ricarica subito le voci. */
    private val _revision = MutableStateFlow(0L)
    val revision: StateFlow<Long> = _revision.asStateFlow()

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_continue_watching.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("continue_${safe}_${hash}")
    }

    /** Voci visibili, dalla più recente aggiornata. */
    suspend fun getAll(server: String, username: String): List<ContinueEntry> =
        withContext(io) { ContinueWatchingRules.visible(read(server, username)) }

    /** Tutte le voci, comprese quelle nascoste: usata solo internamente e dai test. */
    suspend fun getAllIncludingHidden(server: String, username: String): List<ContinueEntry> =
        withContext(io) { read(server, username) }

    suspend fun recordMovie(
        server: String,
        username: String,
        movie: ContinueEntry,
        positionMillis: Long,
        durationMillis: Long,
    ): Boolean = mutate(server, username) { entries ->
        ContinueWatchingRules.recordMovie(
            entries = entries,
            movie = movie,
            positionMillis = positionMillis,
            durationMillis = durationMillis,
            nowMillis = clock.nowMillis(),
        )
    }

    suspend fun recordEpisode(
        server: String,
        username: String,
        series: ContinueEntry,
        nextEpisode: ContinueEpisode?,
        positionMillis: Long,
        durationMillis: Long,
    ): Boolean = mutate(server, username) { entries ->
        ContinueWatchingRules.recordEpisode(
            entries = entries,
            series = series,
            nextEpisode = nextEpisode,
            positionMillis = positionMillis,
            durationMillis = durationMillis,
            nowMillis = clock.nowMillis(),
        )
    }

    /** Rimozione manuale dalla sezione: nascosta finché non viene ripresa. */
    suspend fun hide(server: String, username: String, key: String): Boolean =
        mutate(server, username) { entries -> ContinueWatchingRules.hide(entries, key) }

    /** Rimozione definitiva ("Segna come visto" su un film). */
    suspend fun remove(server: String, username: String, key: String): Boolean =
        mutate(server, username) { entries -> ContinueWatchingRules.remove(entries, key) }

    suspend fun clearForAccount(server: String, username: String) {
        mutex.withLock {
            withContext(io) {
                dataStore.edit { preferences -> preferences.remove(keyFor(server, username)) }
                _revision.value = _revision.value + 1L
            }
        }
    }

    private suspend fun mutate(
        server: String,
        username: String,
        transform: (List<ContinueEntry>) -> List<ContinueEntry>,
    ): Boolean = mutex.withLock {
        withContext(io) {
            val key = keyFor(server, username)
            val current = read(server, username)
            val updated = transform(current)
            if (updated == current) return@withContext false
            persist(key, updated)
            _revision.value = _revision.value + 1L
            true
        }
    }

    private suspend fun read(server: String, username: String): List<ContinueEntry> {
        val key = keyFor(server, username)
        val raw = dataStore.data.map { it[key] }.first()
        return decode(raw)
    }

    private fun decode(raw: String?): List<ContinueEntry> {
        if (raw.isNullOrBlank()) return emptyList()
        return try {
            json.decodeFromString<ContinueWatchingPayload>(raw).entries
        } catch (_: Exception) {
            emptyList()
        }
    }

    private suspend fun persist(
        key: Preferences.Key<String>,
        entries: List<ContinueEntry>,
    ) {
        val payload = ContinueWatchingPayload(entries.take(ContinueWatchingRules.MAX_ENTRIES))
        val encoded = json.encodeToString(ContinueWatchingPayload.serializer(), payload)
        dataStore.edit { preferences -> preferences[key] = encoded }
    }

    /**
     * Implementazione senza DataStore per i test: segue esattamente le stesse
     * regole di [ContinueWatchingRules].
     */
    class InMemory(
        private val clock: Clock = SystemClock,
    ) {
        private val data = mutableMapOf<String, MutableList<ContinueEntry>>()

        private fun accountKey(server: String, username: String): String =
            "${server.lowercase().trim()}|${username.lowercase().trim()}"

        private fun entries(server: String, username: String): MutableList<ContinueEntry> =
            data.getOrPut(accountKey(server, username)) { mutableListOf() }

        fun getAll(server: String, username: String): List<ContinueEntry> =
            ContinueWatchingRules.visible(entries(server, username).toList())

        fun getAllIncludingHidden(server: String, username: String): List<ContinueEntry> =
            entries(server, username).toList()

        fun recordMovie(
            server: String,
            username: String,
            movie: ContinueEntry,
            positionMillis: Long,
            durationMillis: Long,
        ): Boolean {
            val list = entries(server, username)
            val updated = ContinueWatchingRules.recordMovie(
                entries = list.toList(),
                movie = movie,
                positionMillis = positionMillis,
                durationMillis = durationMillis,
                nowMillis = clock.nowMillis(),
            )
            if (updated == list.toList()) return false
            list.clear()
            list.addAll(updated)
            return true
        }

        fun recordEpisode(
            server: String,
            username: String,
            series: ContinueEntry,
            nextEpisode: ContinueEpisode?,
            positionMillis: Long,
            durationMillis: Long,
        ): Boolean {
            val list = entries(server, username)
            val updated = ContinueWatchingRules.recordEpisode(
                entries = list.toList(),
                series = series,
                nextEpisode = nextEpisode,
                positionMillis = positionMillis,
                durationMillis = durationMillis,
                nowMillis = clock.nowMillis(),
            )
            if (updated == list.toList()) return false
            list.clear()
            list.addAll(updated)
            return true
        }

        fun hide(server: String, username: String, key: String): Boolean {
            val list = entries(server, username)
            val updated = ContinueWatchingRules.hide(list.toList(), key)
            if (updated == list.toList()) return false
            list.clear()
            list.addAll(updated)
            return true
        }

        fun remove(server: String, username: String, key: String): Boolean {
            val list = entries(server, username)
            val updated = ContinueWatchingRules.remove(list.toList(), key)
            if (updated == list.toList()) return false
            list.clear()
            list.addAll(updated)
            return true
        }

        fun clear(server: String, username: String) {
            data.remove(accountKey(server, username))
        }
    }
}
