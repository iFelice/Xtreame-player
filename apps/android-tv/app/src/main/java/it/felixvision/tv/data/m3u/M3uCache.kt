package it.felixvision.tv.data.m3u

import android.content.Context
import it.felixvision.tv.core.FvpJson
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import kotlinx.serialization.json.encodeToStream

/**
 * Copia su disco della lista M3U analizzata, un file per sorgente: senza rete
 * l'app usa quella. Stesso schema di
 * [it.felixvision.tv.data.catalog.CatalogCache] (scrittura atomica su file
 * temporaneo e rinomina).
 *
 * La copia contiene gli indirizzi delle voci: non va mai mostrata né registrata
 * nei log.
 */
class M3uCache(
    private val cacheDir: File,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    constructor(
        context: Context,
        json: Json = FvpJson,
        io: CoroutineDispatcher = Dispatchers.IO,
    ) : this(cacheDir = context.filesDir, json = json, io = io)

    /**
     * La copia salvata vale fino al primo orario di rilettura successivo al
     * download ([M3uRefreshSchedule]): 08:30, 14:30, 18:30, 22:30.
     */
    fun shouldRefresh(fetchedAtMillis: Long?, nowMillis: Long = System.currentTimeMillis()): Boolean =
        M3uRefreshSchedule.shouldRefresh(fetchedAtMillis, nowMillis)

    fun fileFor(sourceId: String): File {
        val safe = sourceId.lowercase().replace(Regex("[^a-z0-9._-]"), "_").take(40)
        val hash = sourceId.hashCode().toString(36)
        return File(cacheDir, "m3u_${safe}_${hash}.json")
    }

    suspend fun load(sourceId: String): M3uPlaylist? = withContext(io) {
        val file = fileFor(sourceId)
        if (!file.exists()) return@withContext null
        try {
            file.inputStream().use { input ->
                BufferedInputStream(input, 8192).use { buffered ->
                    json.decodeFromStream<M3uPlaylist>(buffered)
                }
            }
        } catch (_: Exception) {
            null
        }
    }

    suspend fun save(playlist: M3uPlaylist) = withContext(io) {
        val target = fileFor(playlist.sourceId)
        try {
            val temporary = File(target.parentFile, "${target.name}.tmp")
            temporary.outputStream().use { output ->
                BufferedOutputStream(output, 8192).use { buffered ->
                    json.encodeToStream(M3uPlaylist.serializer(), playlist, buffered)
                    buffered.flush()
                }
            }
            if (!temporary.renameTo(target)) {
                temporary.copyTo(target, overwrite = true)
                temporary.delete()
            }
        } catch (_: Exception) {
            // Silenzioso come CatalogCache: una copia mancante non blocca l'app.
        }
    }

    suspend fun clear(sourceId: String) = withContext(io) {
        val file = fileFor(sourceId)
        if (file.exists()) file.delete()
    }

}
