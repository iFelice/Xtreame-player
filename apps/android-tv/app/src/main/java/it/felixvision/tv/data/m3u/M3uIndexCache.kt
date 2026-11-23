package it.felixvision.tv.data.m3u

import android.content.Context
import it.felixvision.tv.core.FvpJson
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import kotlinx.serialization.json.encodeToStream

/**
 * Ultima risoluzione buona degli indirizzi configurati: per ogni voce
 * dell'indice, le liste che conteneva. Serve quando l'indice non è
 * raggiungibile: si usano le liste salvate e si segnala l'errore.
 *
 * Il file contiene indirizzi di liste: sta nella cartella privata
 * dell'applicazione e non va mai mostrato né registrato nei log.
 */
class M3uIndexCache(
    private val cacheDir: File,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    constructor(
        context: Context,
        json: Json = FvpJson,
        io: CoroutineDispatcher = Dispatchers.IO,
    ) : this(cacheDir = context.filesDir, json = json, io = io)

    @Serializable
    data class Snapshot(
        val fetchedAtMillis: Long = 0L,
        /** Voce configurata → liste che conteneva (per una lista diretta: sé stessa). */
        val entries: Map<String, List<String>> = emptyMap(),
    )

    fun file(): File = File(cacheDir, "m3u_index.json")

    suspend fun load(): Snapshot? = withContext(io) {
        val file = file()
        if (!file.exists()) return@withContext null
        try {
            file.inputStream().use { input ->
                BufferedInputStream(input, 8192).use { buffered ->
                    json.decodeFromStream<Snapshot>(buffered)
                }
            }
        } catch (_: Exception) {
            null
        }
    }

    suspend fun save(snapshot: Snapshot) = withContext(io) {
        val target = file()
        val temporary = File(target.parentFile, "${target.name}.tmp")
        try {
            temporary.outputStream().use { output ->
                BufferedOutputStream(output, 8192).use { buffered ->
                    json.encodeToStream(snapshot, buffered)
                }
            }
            if (!temporary.renameTo(target)) {
                temporary.copyTo(target, overwrite = true)
                temporary.delete()
            }
        } catch (_: Exception) {
            temporary.delete()
        }
    }
}
