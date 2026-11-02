package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.AppLog
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import java.io.BufferedInputStream
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

/**
 * Client per il caricamento del catalogo Xtream.
 *
 * Protezioni anti-blocco obbligatorie:
 * - richieste in sequenza e mai in parallelo: ogni richiesta parte solo quando
 *   la precedente è terminata (chiamate suspend consecutive senza async/parallelismo);
 * - analisi JSON in streaming su un dispatcher di background, con modelli
 *   tolleranti (numeri come testo e viceversa, campi assenti o null, come già fa FvpJson);
 * - nessun nuovo tentativo automatico: un errore interrompe la sequenza.
 */
class CatalogClient(
    private val http: OkHttpClient,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
    private val background: CoroutineDispatcher = Dispatchers.Default,
    private val clock: Clock = SystemClock,
) {

    companion object {
        /** Blocco di lettura dello stream HTTP (8 KB). */
        const val STREAM_BUFFER_SIZE = 8 * 1024

        /** Intervallo minimo tra due emissioni a tempo dell'avanzamento (200 ms). */
        const val PROGRESS_MIN_INTERVAL_MILLIS = 200L
    }

    /**
     * Carica l'intero catalogo in sequenza.
     * Se una delle tappe fallisce, restituisce errore senza riprovare.
     *
     * Ogni sezione fa due richieste (categorie ed elenco): la richiesta delle
     * categorie vale come fase iniziale a 0%, mentre la barra rappresenta la
     * richiesta pesante dell'elenco.
     */
    suspend fun loadCatalog(
        server: String,
        username: String,
        password: String,
        /** Avanzamento per categoria: l'ordine e la sequenzialità non cambiano. */
        onStage: suspend (CatalogStage) -> Unit = {},
    ): CatalogResult {
        val base = server.toHttpUrlOrNull() ?: return CatalogResult.Error("Indirizzo del server non valido.")

        onStage(CatalogStage(section = CatalogSection.LIVE, status = CatalogSectionStatus.DOWNLOADING))
        val liveCategories = when (val r = fetchList<Category>(base, username, password, "get_live_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val liveStreamsResult = fetchList<LiveStream>(
            base = base,
            username = username,
            password = password,
            action = "get_live_streams",
            section = CatalogSection.LIVE,
            onStage = onStage,
        )
        val liveStreams = when (liveStreamsResult) {
            is FetchResult.Success -> liveStreamsResult.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(liveStreamsResult.message)
            }
        }
        onStage(
            CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = liveStreams.size,
                bytesReceived = liveStreamsResult.bytesReceived,
                bytesTotal = liveStreamsResult.bytesTotal,
            ),
        )

        onStage(CatalogStage(section = CatalogSection.FILM, status = CatalogSectionStatus.DOWNLOADING))
        val vodCategories = when (val r = fetchList<Category>(base, username, password, "get_vod_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val vodStreamsResult = fetchList<VodStream>(
            base = base,
            username = username,
            password = password,
            action = "get_vod_streams",
            section = CatalogSection.FILM,
            onStage = onStage,
        )
        val vodStreams = when (vodStreamsResult) {
            is FetchResult.Success -> vodStreamsResult.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(vodStreamsResult.message)
            }
        }
        onStage(
            CatalogStage(
                section = CatalogSection.FILM,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = vodStreams.size,
                bytesReceived = vodStreamsResult.bytesReceived,
                bytesTotal = vodStreamsResult.bytesTotal,
            ),
        )

        onStage(CatalogStage(section = CatalogSection.SERIES, status = CatalogSectionStatus.DOWNLOADING))
        val seriesCategories = when (val r = fetchList<Category>(base, username, password, "get_series_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val seriesResult = fetchList<SeriesItem>(
            base = base,
            username = username,
            password = password,
            action = "get_series",
            section = CatalogSection.SERIES,
            onStage = onStage,
        )
        val series = when (seriesResult) {
            is FetchResult.Success -> seriesResult.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(seriesResult.message)
            }
        }
        onStage(
            CatalogStage(
                section = CatalogSection.SERIES,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = series.size,
                bytesReceived = seriesResult.bytesReceived,
                bytesTotal = seriesResult.bytesTotal,
            ),
        )

        val catalog = Catalog(
            liveCategories = liveCategories,
            liveStreams = liveStreams,
            vodCategories = vodCategories,
            vodStreams = vodStreams,
            seriesCategories = seriesCategories,
            series = series,
            updatedAtMillis = clock.nowMillis(),
        )
        return CatalogResult.Success(catalog)
    }

    suspend fun getVodInfo(
        server: String,
        username: String,
        password: String,
        vodId: String,
    ): VodInfoResult = withContext(io) {
        val base = server.toHttpUrlOrNull() ?: return@withContext VodInfoResult.Error("Indirizzo non valido")
        val url = base.newBuilder()
            .addPathSegment("player_api.php")
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .addQueryParameter("action", "get_vod_info")
            .addQueryParameter("vod_id", vodId)
            .build()
        val request = Request.Builder().url(url).get().header("Accept", "application/json").build()
        try {
            http.newCall(request).execute().use { response ->
                if (response.code != 200) return@withContext VodInfoResult.Error("Errore HTTP ${response.code}")
                val body = response.body ?: return@withContext VodInfoResult.Error("Risposta vuota")
                // Streaming su background
                val info = withContext(background) {
                    body.byteStream().use { input ->
                        json.decodeFromStream<VodInfoResponse>(BufferedInputStream(input))
                    }
                }
                VodInfoResult.Success(info)
            }
        } catch (e: InterruptedIOException) {
            VodInfoResult.Error("Timeout del server")
        } catch (e: IOException) {
            VodInfoResult.Error("Server non raggiungibile")
        } catch (e: Exception) {
            VodInfoResult.Error("Risposta non riconosciuta")
        }
    }

    suspend fun getSeriesInfo(
        server: String,
        username: String,
        password: String,
        seriesId: String,
    ): SeriesInfoResult = withContext(io) {
        val base = server.toHttpUrlOrNull() ?: return@withContext SeriesInfoResult.Error("Indirizzo non valido")
        val url = base.newBuilder()
            .addPathSegment("player_api.php")
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .addQueryParameter("action", "get_series_info")
            .addQueryParameter("series_id", seriesId)
            .build()
        val request = Request.Builder().url(url).get().header("Accept", "application/json").build()
        try {
            http.newCall(request).execute().use { response ->
                if (response.code != 200) return@withContext SeriesInfoResult.Error("Errore HTTP ${response.code}")
                val body = response.body ?: return@withContext SeriesInfoResult.Error("Risposta vuota")
                val info = withContext(background) {
                    body.byteStream().use { input ->
                        json.decodeFromStream<SeriesInfoResponse>(BufferedInputStream(input))
                    }
                }
                SeriesInfoResult.Success(info)
            }
        } catch (e: InterruptedIOException) {
            SeriesInfoResult.Error("Timeout del server")
        } catch (e: IOException) {
            SeriesInfoResult.Error("Server non raggiungibile")
        } catch (e: Exception) {
            SeriesInfoResult.Error("Risposta non riconosciuta")
        }
    }

    private suspend inline fun <reified T> fetchList(
        base: okhttp3.HttpUrl,
        username: String,
        password: String,
        action: String,
        section: CatalogSection? = null,
        noinline onStage: suspend (CatalogStage) -> Unit = {},
    ): FetchResult<List<T>> = withContext(io) {
        val url = base.newBuilder()
            .addPathSegment("player_api.php")
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .addQueryParameter("action", action)
            .build()
        val request = Request.Builder().url(url).get().header("Accept", "application/json").build()
        try {
            http.newCall(request).execute().use { response ->
                if (response.code != 200) {
                    return@withContext FetchResult.Failure("Il server ha risposto con un errore (HTTP ${response.code}).")
                }
                val body = response.body ?: return@withContext FetchResult.Success(emptyList(), 0L, null)
                val rawContentLength = body.contentLength()
                // Se contentLength 0, ritorna vuoto
                if (rawContentLength == 0L) {
                    if (section != null) {
                        onStage(
                            CatalogStage(
                                section = section,
                                status = CatalogSectionStatus.PROCESSING,
                                bytesReceived = 0L,
                                bytesTotal = 0L,
                            ),
                        )
                    }
                    return@withContext FetchResult.Success(emptyList(), 0L, 0L)
                }
                val bytesTotal: Long? = rawContentLength.takeIf { it > 0L }
                val downloadStartMillis = clock.nowMillis()
                var bytesReceived = 0L
                var lastEmittedBytes = 0L
                var lastEmittedPercent = 0
                var lastEmittedAtMillis = downloadStartMillis
                val initialCapacity = if (bytesTotal != null && bytesTotal <= Int.MAX_VALUE.toLong()) {
                    bytesTotal.toInt()
                } else {
                    STREAM_BUFFER_SIZE
                }
                val rawBytes = DirectByteArrayOutputStream(initialCapacity)
                body.byteStream().use { input ->
                    val buffer = ByteArray(STREAM_BUFFER_SIZE)
                    while (true) {
                        val read = input.read(buffer)
                        if (read < 0) break
                        if (read == 0) continue
                        rawBytes.write(buffer, 0, read)
                        bytesReceived += read
                        if (section != null) {
                            val now = clock.nowMillis()
                            val elapsed = now - lastEmittedAtMillis
                            val shouldEmit = if (bytesTotal != null) {
                                val percent = ((bytesReceived * 100L) / bytesTotal).toInt().coerceIn(0, 100)
                                val percentAdvanced = percent > lastEmittedPercent
                                val timeAdvanced = elapsed >= PROGRESS_MIN_INTERVAL_MILLIS
                                if (percentAdvanced || timeAdvanced) {
                                    lastEmittedPercent = percent
                                    true
                                } else {
                                    false
                                }
                            } else {
                                lastEmittedBytes == 0L || elapsed >= PROGRESS_MIN_INTERVAL_MILLIS
                            }
                            if (shouldEmit) {
                                lastEmittedBytes = bytesReceived
                                lastEmittedAtMillis = now
                                onStage(
                                    CatalogStage(
                                        section = section,
                                        status = CatalogSectionStatus.DOWNLOADING,
                                        bytesReceived = bytesReceived,
                                        bytesTotal = bytesTotal,
                                    ),
                                )
                            }
                        }
                    }
                }
                if (section != null && bytesReceived > lastEmittedBytes) {
                    onStage(
                        CatalogStage(
                            section = section,
                            status = CatalogSectionStatus.DOWNLOADING,
                            bytesReceived = bytesReceived,
                            bytesTotal = bytesTotal,
                        ),
                    )
                }
                val downloadDurationMillis = (clock.nowMillis() - downloadStartMillis).coerceAtLeast(0L)
                if (bytesReceived == 0L) {
                    if (section != null) {
                        onStage(
                            CatalogStage(
                                section = section,
                                status = CatalogSectionStatus.PROCESSING,
                                bytesReceived = 0L,
                                bytesTotal = bytesTotal,
                            ),
                        )
                    }
                    return@withContext FetchResult.Success(emptyList(), 0L, bytesTotal)
                }
                if (section != null) {
                    onStage(
                        CatalogStage(
                            section = section,
                            status = CatalogSectionStatus.PROCESSING,
                            bytesReceived = bytesReceived,
                            bytesTotal = bytesTotal,
                        ),
                    )
                }
                try {
                    val parseStartMillis = clock.nowMillis()
                    val decoded = withContext(background) {
                        rawBytes.toInputStream().use { input ->
                            BufferedInputStream(input).use { buffered ->
                                // Per tolleranza: se il pannello restituisce oggetto anziché array, decode fallirà e gestiamo come vuoto
                                try {
                                    json.decodeFromStream<List<T>>(buffered)
                                } catch (_: Exception) {
                                    emptyList()
                                }
                            }
                        }
                    }
                    val parseDurationMillis = (clock.nowMillis() - parseStartMillis).coerceAtLeast(0L)
                    AppLog.info(
                        "Catalogo [$action]: ricevuti $bytesReceived byte" +
                            (bytesTotal?.let { " su $it" } ?: "") +
                            " in $downloadDurationMillis ms, ${decoded.size} elementi elaborati in $parseDurationMillis ms",
                    )
                    FetchResult.Success(
                        value = decoded,
                        bytesReceived = bytesReceived,
                        bytesTotal = bytesTotal,
                    )
                } catch (e: Exception) {
                    FetchResult.Failure("Risposta del server non riconosciuta: non sembra un pannello Xtream.")
                }
            }
        } catch (timeout: InterruptedIOException) {
            FetchResult.Failure("Server non raggiungibile: timeout. Controlla l'indirizzo e la rete.")
        } catch (ioe: IOException) {
            FetchResult.Failure("Server non raggiungibile. Controlla l'indirizzo e la connessione.")
        }
    }

    private class DirectByteArrayOutputStream(size: Int) : ByteArrayOutputStream(size) {
        fun toInputStream(): ByteArrayInputStream = ByteArrayInputStream(buf, 0, count)
    }

    private sealed interface FetchResult<out T> {
        data class Success<T>(
            val value: T,
            val bytesReceived: Long,
            val bytesTotal: Long?,
        ) : FetchResult<T>

        data class Failure(val message: String) : FetchResult<Nothing>
    }
}

sealed interface CatalogResult {
    data class Success(val catalog: Catalog) : CatalogResult
    data class Error(val message: String) : CatalogResult
}

sealed interface VodInfoResult {
    data class Success(val info: VodInfoResponse) : VodInfoResult
    data class Error(val message: String) : VodInfoResult
}

sealed interface SeriesInfoResult {
    data class Success(val info: SeriesInfoResponse) : SeriesInfoResult
    data class Error(val message: String) : SeriesInfoResult
}

object CatalogOrdering {
    fun recentVodStreams(streams: List<VodStream>, limit: Int = 40): List<VodStream> {
        return streams.sortedWith(compareByDescending<VodStream> { parseDateToMillis(it.added) }.thenByDescending { it.streamId.toLongOrNull() ?: 0L }).take(limit)
    }
    fun recentSeries(series: List<SeriesItem>, limit: Int = 40): List<SeriesItem> {
        return series.sortedWith(compareByDescending<SeriesItem> { parseDateToMillis(it.lastModified ?: it.releaseDate) }.thenByDescending { it.seriesId.toLongOrNull() ?: 0L }).take(limit)
    }
    fun parseDateToMillis(value: String?): Long {
        if (value.isNullOrBlank()) return 0L
        val trimmed = value.trim()
        val numeric = trimmed.toLongOrNull()
        if (numeric != null) return if (trimmed.length <= 10 && numeric < 10_000_000_000L) numeric * 1000L else numeric
        return try {
            val numPart = trimmed.takeWhile { it.isDigit() }
            if (numPart.length >= 9 && numPart.toLongOrNull() != null) return numPart.toLong() * 1000L
            java.time.LocalDate.parse(trimmed).let { it.atStartOfDay(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli() }
        } catch (_: Exception) {
            try { java.time.LocalDateTime.parse(trimmed.replace(" ", "T")).atZone(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli() } catch (_: Exception) { 0L }
        }
    }
}
