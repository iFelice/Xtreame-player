package it.felixvision.tv.data.playback

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
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/** Formato dello schermo scelto per ogni canale: `streamId` → chiave del formato. */
@Serializable
internal data class ChannelVideoFormatsPayload(val formats: Map<String, String> = emptyMap())

/**
 * Formato dello schermo per canale Live, salvato in DataStore come "I miei
 * canali": una sola voce per server+utente, con dentro i canali che hanno un
 * formato diverso da "Adatta".
 *
 * Solo le librerie già usate in `data/` (DataStore Preferences,
 * kotlinx.serialization, coroutines): il modulo `apps/android-mobile` compila
 * questa cartella e non dichiara Media3.
 *
 * "Adatta" è il predefinito e non si salva mai: la voce del canale viene
 * rimossa, così l'archivio resta piccolo e un canale senza voce parte
 * dall'inquadratura intera. Film e serie non passano di qui: il formato vale
 * per la riproduzione in corso e si perde alla chiusura.
 */
class ChannelVideoFormatStore(
    private val context: Context,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val mutex = Mutex()

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_channel_video_formats.preferences_pb") },
        )
    }

    private fun keyFor(server: String, username: String): Preferences.Key<String> {
        val normalized = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val hash = normalized.hashCode().toString(36)
        val safe = normalized.replace(Regex("[^a-z0-9._-]"), "_").take(60)
        return stringPreferencesKey("video_formats_${safe}_${hash}")
    }

    /**
     * Formato scelto per ogni canale di questo account. Le voci con una chiave
     * sconosciuta (per esempio di una versione diversa) si scartano: per quel
     * canale vale "Adatta".
     */
    suspend fun getAll(server: String, username: String): Map<String, VideoFormat> =
        withContext(io) { decode(readRaw(server, username)) }

    /**
     * Ricorda il formato di un canale. Con [VideoFormat.FIT] la voce si
     * rimuove: "Adatta" è il predefinito e non ha senso occupare l'archivio.
     */
    suspend fun save(
        server: String,
        username: String,
        streamId: String,
        format: VideoFormat,
    ) = mutate(server, username) { formats ->
        if (format == VideoFormat.FIT) {
            formats - streamId
        } else {
            formats + (streamId to format.storageKey)
        }
    }

    private suspend fun mutate(
        server: String,
        username: String,
        transform: (Map<String, String>) -> Map<String, String>,
    ) = mutex.withLock {
        withContext(io) {
            val current = readRaw(server, username)
            val updated = transform(current)
            if (updated == current) return@withContext
            persist(keyFor(server, username), updated)
        }
    }

    private suspend fun readRaw(server: String, username: String): Map<String, String> {
        val raw = dataStore.data.map { it[keyFor(server, username)] }.first()
        return decodePayload(raw).formats
    }

    private fun decodePayload(raw: String?): ChannelVideoFormatsPayload {
        if (raw.isNullOrBlank()) return ChannelVideoFormatsPayload()
        return try {
            json.decodeFromString<ChannelVideoFormatsPayload>(raw)
        } catch (_: Exception) {
            ChannelVideoFormatsPayload()
        }
    }

    private fun decode(formats: Map<String, String>): Map<String, VideoFormat> =
        formats.mapNotNull { (streamId, key) ->
            val format = VideoFormat.fromStorage(key) ?: return@mapNotNull null
            streamId to format
        }.toMap()

    private suspend fun persist(key: Preferences.Key<String>, formats: Map<String, String>) {
        val payload = ChannelVideoFormatsPayload(formats)
        val encoded = json.encodeToString(ChannelVideoFormatsPayload.serializer(), payload)
        dataStore.edit { preferences -> preferences[key] = encoded }
    }
}
