package it.felixvision.tv.data.catalog

import android.content.Context
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.data.epg.CachedGuideEpg
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import kotlinx.serialization.json.encodeToStream

class CatalogCache(
    private val cacheDir: File,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    constructor(
        context: Context,
        json: Json = FvpJson,
        io: CoroutineDispatcher = Dispatchers.IO,
    ) : this(cacheDir = context.filesDir, json = json, io = io)

    companion object {
        const val REFRESH_INTERVAL_MILLIS = 24L * 60L * 60L * 1000L
    }

    fun fileFor(server: String, username: String): File {
        val key = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val safe = key.replace(Regex("[^a-z0-9._-]"), "_").take(100)
        val hash = key.hashCode().toString(36)
        return File(cacheDir, "catalog_${safe}_${hash}.json")
    }

    fun cacheKey(server: String, username: String): String {
        val key = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val safe = key.replace(Regex("[^a-z0-9._-]"), "_").take(100)
        val hash = key.hashCode().toString(36)
        return "catalog_${safe}_${hash}"
    }

    /** File XMLTV/short EPG separato: `Svuota cache` non tocca il catalogo. */
    fun guideFileFor(server: String, username: String): File {
        val key = "${server.lowercase().trim()}|${username.lowercase().trim()}"
        val safe = key.replace(Regex("[^a-z0-9._-]"), "_").take(100)
        val hash = key.hashCode().toString(36)
        return File(cacheDir, "guide_${safe}_${hash}.json")
    }

    suspend fun load(server: String, username: String): CachedCatalog? = withContext(io) {
        val file = fileFor(server, username)
        if (!file.exists()) return@withContext null
        try {
            // Streaming da file con buffer 8k
            file.inputStream().use { fis ->
                BufferedInputStream(fis, 8192).use { bis ->
                    json.decodeFromStream<CachedCatalog>(bis)
                }
            }
        } catch (_: Exception) {
            null
        }
    }

    suspend fun save(server: String, username: String, catalog: Catalog) = withContext(io) {
        val cached = CachedCatalog(
            server = server,
            username = username,
            updatedAtMillis = System.currentTimeMillis(),
            catalog = catalog.copy(updatedAtMillis = System.currentTimeMillis()),
        )
        atomicWrite(fileFor(server, username), CachedCatalog.serializer(), cached)
    }

    suspend fun saveWithTimestamp(server: String, username: String, catalog: Catalog, timestamp: Long) = withContext(io) {
        val cached = CachedCatalog(server, username, timestamp, catalog)
        atomicWrite(fileFor(server, username), CachedCatalog.serializer(), cached)
    }

    suspend fun loadGuide(server: String, username: String): CachedGuideEpg? = withContext(io) {
        val file = guideFileFor(server, username)
        if (!file.exists()) return@withContext null
        try {
            file.inputStream().use { stream ->
                BufferedInputStream(stream, 8192).use { buffered ->
                    json.decodeFromStream<CachedGuideEpg>(buffered)
                }
            }
        } catch (_: Exception) {
            null
        }
    }

    suspend fun saveGuide(server: String, username: String, guide: CachedGuideEpg) = withContext(io) {
        atomicWrite(guideFileFor(server, username), CachedGuideEpg.serializer(), guide)
    }

    /** Byte occupati dalle sole cache Guida TV (JSON e temporanei atomici). */
    suspend fun guideCacheBytes(): Long = withContext(io) {
        guideCacheFiles().sumOf { it.length() }
    }

    /** Cancella tutte le cache Guida, senza toccare i file `catalog_*.json`. */
    suspend fun clearGuideCaches(): Long = withContext(io) {
        var freed = 0L
        guideCacheFiles().forEach { file ->
            val size = file.length()
            if (file.delete()) freed += size
        }
        freed
    }

    private fun guideCacheFiles(): List<File> = cacheDir.listFiles()
        ?.filter { it.isFile && it.name.startsWith("guide_") && (it.name.endsWith(".json") || it.name.endsWith(".json.tmp")) }
        .orEmpty()

    private fun <T> atomicWrite(target: File, serializer: kotlinx.serialization.KSerializer<T>, value: T) {
        try {
            val tmp = File(target.parentFile, "${target.name}.tmp")
            tmp.outputStream().use { fos ->
                BufferedOutputStream(fos, 8192).use { bos ->
                    json.encodeToStream(serializer, value, bos)
                    bos.flush()
                }
            }
            // Rename atomico: su Android File.renameTo è atomico se stessa partizione.
            if (!tmp.renameTo(target)) {
                // Fallback: copia e cancella.
                tmp.copyTo(target, overwrite = true)
                tmp.delete()
            }
        } catch (_: Exception) { /* silenzioso */ }
    }

    suspend fun clear(server: String, username: String) = withContext(io) {
        val file = fileFor(server, username)
        if (file.exists()) file.delete()
    }

    suspend fun lastUpdateMillis(server: String, username: String): Long? = withContext(io) {
        load(server, username)?.updatedAtMillis
    }

    fun shouldAutoRefresh(lastUpdateMillis: Long?, nowMillis: Long = System.currentTimeMillis()): Boolean {
        if (lastUpdateMillis == null || lastUpdateMillis <= 0L) return true
        return (nowMillis - lastUpdateMillis) >= REFRESH_INTERVAL_MILLIS
    }
}
