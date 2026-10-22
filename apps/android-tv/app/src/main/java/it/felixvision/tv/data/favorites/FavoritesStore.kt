package it.felixvision.tv.data.favorites

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/**
 * Preferiti salvati in DataStore per server+utente.
 *
 * Supporta aggiunta/rimozione con pressione lunga OK su canali, film e serie
 * e con pulsante nelle schede di dettaglio; salvati per server+utente;
 * la sezione mostra tre righe (Canali, Film, Serie), le vuote nascoste;
 * se non ci sono preferiti, spiegazione di come aggiungerli.
 */
@Serializable
data class FavoriteItem(
    val id: String, // es: "live_101", "vod_201", "series_301"
    val type: String, // "live", "vod", "series"
    val title: String,
    val poster: String? = null,
    val categoryId: String? = null,
    val addedAtMillis: Long = 0L,
)

@Serializable
private data class FavoritesPayload(val items: List<FavoriteItem> = emptyList())

class FavoritesStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_favorites.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("favorites_${safe}_${hash}")
    }

    suspend fun getFavorites(server: String, username: String): List<FavoriteItem> {
        val key = keyFor(server, username)
        val raw = dataStore.data.map { it[key] }.first()
        if (raw.isNullOrBlank()) return emptyList()
        return try {
            json.decodeFromString<FavoritesPayload>(raw).items
        } catch (_: Exception) {
            emptyList()
        }
    }

    suspend fun isFavorite(server: String, username: String, id: String): Boolean {
        return getFavorites(server, username).any { it.id == id }
    }

    suspend fun addFavorite(server: String, username: String, item: FavoriteItem) {
        val key = keyFor(server, username)
        val current = getFavorites(server, username).toMutableList()
        if (current.any { it.id == item.id }) return
        current.add(0, item.copy(addedAtMillis = clock.nowMillis()))
        persist(key, current)
    }

    suspend fun removeFavorite(server: String, username: String, id: String) {
        val key = keyFor(server, username)
        val current = getFavorites(server, username).filterNot { it.id == id }
        persist(key, current)
    }

    suspend fun toggleFavorite(server: String, username: String, item: FavoriteItem): Boolean {
        val exists = isFavorite(server, username, item.id)
        if (exists) removeFavorite(server, username, item.id) else addFavorite(server, username, item)
        return !exists
    }

    suspend fun clearForAccount(server: String, username: String) {
        val key = keyFor(server, username)
        dataStore.edit { it.remove(key) }
    }

    private suspend fun persist(key: Preferences.Key<String>, items: List<FavoriteItem>) {
        val limited = items.take(500) // limite ragionevole
        val payload = FavoritesPayload(limited)
        val encoded = json.encodeToString(FavoritesPayload.serializer(), payload)
        dataStore.edit { it[key] = encoded }
    }

    // Per test: iniezione diretta senza DataStore
    class InMemory(
        private val clock: Clock = SystemClock,
    ) {
        private val map = mutableMapOf<String, MutableList<FavoriteItem>>()
        private fun key(server: String, username: String) = "${server.lowercase()}|${username.lowercase()}"
        fun get(server: String, username: String): List<FavoriteItem> = map[key(server, username)] ?: emptyList()
        fun add(server: String, username: String, item: FavoriteItem) {
            val list = map.getOrPut(key(server, username)) { mutableListOf() }
            if (list.none { it.id == item.id }) list.add(0, item.copy(addedAtMillis = clock.nowMillis()))
        }
        fun remove(server: String, username: String, id: String) {
            map[key(server, username)]?.removeAll { it.id == id }
        }
        fun toggle(server: String, username: String, item: FavoriteItem): Boolean {
            val list = map.getOrPut(key(server, username)) { mutableListOf() }
            val idx = list.indexOfFirst { it.id == item.id }
            return if (idx >= 0) {
                list.removeAt(idx); false
            } else {
                list.add(0, item.copy(addedAtMillis = clock.nowMillis())); true
            }
        }
        fun clear(server: String, username: String) { map.remove(key(server, username)) }
        fun isFav(server: String, username: String, id: String) = get(server, username).any { it.id == id }
    }
}
