package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import java.io.BufferedInputStream
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import kotlinx.serialization.json.encodeToStream
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
) {

    /**
     * Carica l'intero catalogo in sequenza.
     * Se una delle tappe fallisce, restituisce errore senza riprovare.
     */
    suspend fun loadCatalog(
        server: String,
        username: String,
        password: String,
        /** Avanzamento per categoria: l'ordine e la sequenzialità non cambiano. */
        onStage: suspend (CatalogStage) -> Unit = {},
    ): CatalogResult {
        val base = server.toHttpUrlOrNull() ?: return CatalogResult.Error("Indirizzo del server non valido.")

        onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.DOWNLOADING))
        val liveCategories = when (val r = fetchList<Category>(base, username, password, "get_live_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val liveStreams = when (val r = fetchList<LiveStream>(base, username, password, "get_live_streams")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }
        onStage(
            CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, liveStreams.size),
        )

        onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.DOWNLOADING))
        val vodCategories = when (val r = fetchList<Category>(base, username, password, "get_vod_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val vodStreams = when (val r = fetchList<VodStream>(base, username, password, "get_vod_streams")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }
        onStage(
            CatalogStage(CatalogSection.FILM, CatalogSectionStatus.COMPLETED, vodStreams.size),
        )

        onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.DOWNLOADING))
        val seriesCategories = when (val r = fetchList<Category>(base, username, password, "get_series_categories")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }

        val series = when (val r = fetchList<SeriesItem>(base, username, password, "get_series")) {
            is FetchResult.Success -> r.value
            is FetchResult.Failure -> {
                onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.ERROR))
                return CatalogResult.Error(r.message)
            }
        }
        onStage(
            CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.COMPLETED, series.size),
        )

        val catalog = Catalog(
            liveCategories = liveCategories,
            liveStreams = liveStreams,
            vodCategories = vodCategories,
            vodStreams = vodStreams,
            seriesCategories = seriesCategories,
            series = series,
            updatedAtMillis = System.currentTimeMillis(),
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
                val body = response.body ?: return@withContext FetchResult.Success(emptyList())
                // Se contentLength 0 o body vuoto, ritorna vuoto
                if (body.contentLength() == 0L) {
                    return@withContext FetchResult.Success(emptyList())
                }
                try {
                    val decoded = withContext(background) {
                        body.byteStream().use { input ->
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
                    FetchResult.Success(decoded)
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

    private sealed interface FetchResult<out T> {
        data class Success<T>(val value: T) : FetchResult<T>
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
