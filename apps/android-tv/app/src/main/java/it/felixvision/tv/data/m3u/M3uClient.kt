package it.felixvision.tv.data.m3u

import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InputStream
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

/** Motivo per cui il download della lista non è riuscito. */
enum class M3uFetchFailure(val defaultMessage: String) {

    NOT_FOUND("Lista non trovata (404)"),
    RATE_LIMITED("Troppe richieste alla lista (429)"),
    SERVER_ERROR("La lista ha risposto con un errore"),
    TIMEOUT("La lista non ha risposto in tempo"),
    UNREACHABLE("Lista non raggiungibile"),
    TOO_LARGE("La lista supera i 5 MB"),
    INVALID("Il file non è una lista M3U valida"),
    HLS("Il file è una playlist HLS, non una lista M3U"),
}

/** Esito del download e dell'analisi di una lista. */
sealed interface M3uFetchResult {

    data class Success(val entries: List<M3uEntry>) : M3uFetchResult

    /**
     * Errore con messaggio già pronto per l'interfaccia. Non contiene mai
     * l'indirizzo della lista né quello delle voci.
     */
    data class Failure(
        val reason: M3uFetchFailure,
        val detail: String? = null,
    ) : M3uFetchResult {
        val message: String get() = detail?.let { "${reason.defaultMessage} ($it)" } ?: reason.defaultMessage
    }
}

/**
 * Scarica e analizza una lista M3U.
 *
 * - il download e l'analisi avvengono fuori dal thread principale
 *   ([Dispatchers.IO]);
 * - il corpo viene letto al massimo fino a [M3uParser.MAX_PLAYLIST_BYTES]: oltre
 *   quella soglia la lista viene scartata, anche quando il server non dichiara
 *   `Content-Length`;
 * - 404, 429, timeout e file non valido tornano come [M3uFetchResult.Failure],
 *   senza eccezioni al chiamante e senza numeri di indirizzo nei messaggi.
 */
class M3uClient(
    private val http: OkHttpClient,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    suspend fun fetch(url: String): M3uFetchResult = withContext(io) {
        val httpUrl = url.trim().takeIf { it.isNotEmpty() }?.toHttpUrlOrNull()
            ?: return@withContext M3uFetchResult.Failure(M3uFetchFailure.INVALID)
        if (httpUrl.scheme != "http" && httpUrl.scheme != "https") {
            return@withContext M3uFetchResult.Failure(M3uFetchFailure.INVALID)
        }
        val request = Request.Builder()
            .url(httpUrl)
            .get()
            .header("Accept", "application/x-mpegurl, audio/mpegurl, text/plain, */*")
            .build()
        try {
            http.newCall(request).execute().use { response ->
                when {
                    response.code == 404 -> return@withContext M3uFetchResult.Failure(M3uFetchFailure.NOT_FOUND)
                    response.code == 429 -> return@withContext M3uFetchResult.Failure(M3uFetchFailure.RATE_LIMITED)
                    !response.isSuccessful ->
                        return@withContext M3uFetchResult.Failure(
                            M3uFetchFailure.SERVER_ERROR,
                            detail = response.code.toString(),
                        )
                }
                val body = response.body
                val declared = body.contentLength()
                if (declared > M3uParser.MAX_PLAYLIST_BYTES) {
                    return@withContext M3uFetchResult.Failure(M3uFetchFailure.TOO_LARGE)
                }
                val bytes = readLimited(body.byteStream()) 
                    ?: return@withContext M3uFetchResult.Failure(M3uFetchFailure.TOO_LARGE)
                when (val parsed = M3uParser.parse(M3uParser.decode(bytes))) {
                    is M3uParseResult.Success -> M3uFetchResult.Success(parsed.entries)
                    is M3uParseResult.Failure -> M3uFetchResult.Failure(
                        reason = when (parsed.reason) {
                            M3uFailure.HLS_PLAYLIST -> M3uFetchFailure.HLS
                            M3uFailure.TOO_LARGE -> M3uFetchFailure.TOO_LARGE
                            M3uFailure.NOT_A_LIST,
                            M3uFailure.INVALID_TEXT,
                            -> M3uFetchFailure.INVALID
                        },
                    )
                }
            }
        } catch (timeout: InterruptedIOException) {
            M3uFetchResult.Failure(M3uFetchFailure.TIMEOUT)
        } catch (_: IOException) {
            M3uFetchResult.Failure(M3uFetchFailure.UNREACHABLE)
        }
    }

    /** Legge al massimo un byte oltre il limite, per accorgersi del superamento. */
    private fun readLimited(stream: InputStream): ByteArray? {
        val output = ByteArrayOutputStream()
        val buffer = ByteArray(READ_BUFFER_BYTES)
        var total = 0
        while (true) {
            val read = stream.read(buffer)
            if (read < 0) break
            total += read
            if (total > M3uParser.MAX_PLAYLIST_BYTES) return null
            output.write(buffer, 0, read)
        }
        return output.toByteArray()
    }

    private companion object {
        const val READ_BUFFER_BYTES = 16 * 1024
    }
}
