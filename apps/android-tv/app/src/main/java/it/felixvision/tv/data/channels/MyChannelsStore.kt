package it.felixvision.tv.data.channels

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
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.favorites.FavoritesStore
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
internal data class MyChannelsPayload(val channels: List<MyChannel> = emptyList())

/**
 * "I miei canali": lista ordinata di canali Live, salvata in DataStore per
 * server+utente come i preferiti.
 *
 * Le regole della lista (aggiunta in fondo, inserimento e spostamento per
 * posizione, su/giù, rimozione, nessun duplicato) sono pure e stanno in
 * [MyChannels]; qui resta la persistenza e la numerazione 1..N.
 *
 * Alla prima apertura di un account i preferiti di tipo "live" vengono tolti
 * dall'archivio preferiti: non vengono migrati in questa lista. Film, serie e
 * categorie Live restano nei preferiti.
 */
class MyChannelsStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val mutex = Mutex()

    /** Incrementato dopo ogni scrittura: la sezione ricarica subito la lista. */
    private val _revision = MutableStateFlow(0L)
    val revision: StateFlow<Long> = _revision.asStateFlow()

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_my_channels.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("my_channels_${safe}_${hash}")
    }

    private fun migrationKeyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("my_channels_migrated_${safe}_${hash}")
    }

    /** Lista personale nell'ordine scelto: la posizione è il numero del canale. */
    suspend fun getChannels(server: String, username: String): List<MyChannel> =
        withContext(io) { read(server, username) }

    suspend fun setChannels(
        server: String,
        username: String,
        channels: List<MyChannel>,
    ): List<MyChannel> = mutate(server, username) { channels }

    suspend fun add(server: String, username: String, channel: MyChannel): List<MyChannel> =
        mutate(server, username) { MyChannels.add(it, channel) }

    suspend fun insertAt(
        server: String,
        username: String,
        channel: MyChannel,
        position: Int,
    ): List<MyChannel> = mutate(server, username) { MyChannels.insertAt(it, channel, position) }

    suspend fun moveTo(
        server: String,
        username: String,
        streamId: String,
        position: Int,
    ): List<MyChannel> = mutate(server, username) { MyChannels.moveTo(it, streamId, position) }

    suspend fun moveUp(server: String, username: String, streamId: String): List<MyChannel> =
        mutate(server, username) { MyChannels.moveUp(it, streamId) }

    suspend fun moveDown(server: String, username: String, streamId: String): List<MyChannel> =
        mutate(server, username) { MyChannels.moveDown(it, streamId) }

    suspend fun remove(server: String, username: String, streamId: String): List<MyChannel> =
        mutate(server, username) { MyChannels.remove(it, streamId) }

    suspend fun clearForAccount(server: String, username: String) {
        mutex.withLock {
            withContext(io) {
                dataStore.edit { preferences ->
                    preferences.remove(keyFor(server, username))
                    preferences.remove(migrationKeyFor(server, username))
                }
                _revision.value = _revision.value + 1L
            }
        }
    }

    /**
     * Rimuove dall'archivio preferiti i canali Live salvati prima di questa
     * versione, una sola volta per server+utente. Restituisce quanti preferiti
     * sono stati tolti; alla seconda apertura non tocca nulla.
     */
    suspend fun migrateLegacyLiveFavorites(
        server: String,
        username: String,
        favoritesStore: FavoritesStore,
    ): Int = mutex.withLock {
        withContext(io) {
            val migrationKey = migrationKeyFor(server, username)
            val migrated = dataStore.data.map { it[migrationKey] }.first()
            if (migrated != null) return@withContext 0
            val favorites = favoritesStore.getFavorites(server, username)
            val result = LiveFavoriteRules.withoutLiveChannels(favorites)
            if (result.hasRemovals) {
                favoritesStore.removeFavorites(
                    server = server,
                    username = username,
                    ids = favorites.filter { it.type == FavoriteItem.LIVE }.map { it.id },
                )
            }
            dataStore.edit { preferences -> preferences[migrationKey] = "true" }
            result.removed
        }
    }

    /** Vero quando la pulizia dei vecchi preferiti Live è già stata eseguita. */
    suspend fun hasMigratedLiveFavorites(server: String, username: String): Boolean =
        withContext(io) {
            dataStore.data.map { it[migrationKeyFor(server, username)] }.first() != null
        }

    private suspend fun mutate(
        server: String,
        username: String,
        transform: (List<MyChannel>) -> List<MyChannel>,
    ): List<MyChannel> = mutex.withLock {
        withContext(io) {
            val current = read(server, username)
            val updated = transform(current)
            if (updated == current) return@withContext current
            persist(keyFor(server, username), updated)
            _revision.value = _revision.value + 1L
            updated
        }
    }

    private suspend fun read(server: String, username: String): List<MyChannel> {
        val raw = dataStore.data.map { it[keyFor(server, username)] }.first()
        return decode(raw)
    }

    private fun decode(raw: String?): List<MyChannel> {
        if (raw.isNullOrBlank()) return emptyList()
        return try {
            json.decodeFromString<MyChannelsPayload>(raw).channels
        } catch (_: Exception) {
            emptyList()
        }
    }

    private suspend fun persist(key: Preferences.Key<String>, channels: List<MyChannel>) {
        val payload = MyChannelsPayload(channels)
        val encoded = json.encodeToString(MyChannelsPayload.serializer(), payload)
        dataStore.edit { preferences -> preferences[key] = encoded }
    }
}
