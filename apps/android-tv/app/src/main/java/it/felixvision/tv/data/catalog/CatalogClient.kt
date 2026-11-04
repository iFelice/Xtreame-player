package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.AppLog
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.File
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Deferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromStream
import okhttp3.Call
import okhttp3.Callback
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap

/**
 * Client per il caricamento del catalogo Xtream.
 *
 * Protezioni anti-blocco obbligatorie:
 * - le tre sezioni (Live, Film, Serie) partono insieme con [coroutineScope] +
 *   [async], ma ognuna fa una sola richiesta per volta (categorie, poi
 *   elenco): al massimo 3 richieste HTTP contemporanee. Il pannello regge
 *   questa concorrenza senza rallentare (vedi CatalogRefresh.kt per le
 *   misure);
 * - analisi JSON in streaming su file temporaneo e dispatcher di background,
 *   con modelli tolleranti (numeri come testo e viceversa, campi assenti o
 *   null, come già fa FvpJson): nessuna risposta intera tenuta in memoria
 *   come stringa;
 * - nessun nuovo tentativo automatico e timeout invariati: un errore
 *   interrompe l'aggiornamento e annulla le richieste ancora in corso;
 * - le tappe [CatalogStage] sono emesse una alla volta (Mutex), anche se
 *   ora arrivano interlacciate fra sezioni.
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
     * Carica l'intero catalogo con le tre sezioni in parallelo.
     *
     * Ogni sezione fa due richieste nello stesso ordine di prima (categorie,
     * poi elenco); la richiesta delle categorie vale come fase iniziale a 0%,
     * mentre la barra rappresenta la richiesta pesante dell'elenco. Il
     * [Catalog] finale ha lo stesso contenuto e lo stesso ordine degli elenchi
     * del vecchio caricamento sequenziale: i risultati sono ricomposti
     * nell'ordine Live, Film, Serie.
     *
     * Se una sezione fallisce, emette ERROR per quella sezione, annulla le
     * richieste delle altre ancora in volo e restituisce lo stesso
     * [CatalogResult.Error] di prima, senza riprove. Se più sezioni risultano
     * in errore, vince la prima nell'ordine Live, Film, Serie (l'ordine in cui
     * il vecchio percorso sequenziale le avrebbe incontrate).
     */
    suspend fun loadCatalog(
        server: String,
        username: String,
        password: String,
        /** Tappe di avanzamento: possono arrivare interlacciate fra sezioni. */
        onStage: suspend (CatalogStage) -> Unit = {},
    ): CatalogResult {
        val base = server.toHttpUrlOrNull()
            ?: return CatalogResult.Error("Indirizzo del server non valido.")

        return coroutineScope<CatalogResult> {
            // Le emissioni delle tre sezioni sono interlacciate ma mai
            // concorrenti: chi le raccoglie (anche con una lista semplice)
            // riceve una tappa alla volta, come nel percorso sequenziale.
            val stageMutex = Mutex()
            val emit: suspend (CatalogStage) -> Unit = { stage ->
                stageMutex.withLock { onStage(stage) }
            }

            val sectionJobs = SectionJobs()
            val fail: suspend (CatalogSection, String) -> SectionOutcome.Failed =
                { section, message ->
                    // Una sezione annullata dopo l'errore di un'altra non deve
                    // emettere un ERROR proprio: la cancellazione prevale.
                    currentCoroutineContext().ensureActive()
                    emit(CatalogStage(section, CatalogSectionStatus.ERROR))
                    // Un errore interrompe tutto: chiude subito le richieste
                    // delle altre sezioni, senza riprove.
                    sectionJobs.cancelOthers(section)
                    SectionOutcome.Failed(message)
                }

            // Tre async lazy, avviati dopo aver registrato tutti gli handle:
            // nessuna sezione può fallire prima che le altre siano registrate.
            val live = async<SectionOutcome>(start = CoroutineStart.LAZY) {
                loadSection(
                    section = CatalogSection.LIVE,
                    emit = emit,
                    fail = fail,
                    fetchCategories = {
                        fetchList<Category>(base, username, password, "get_live_categories")
                    },
                    fetchItems = {
                        fetchList<LiveStream>(
                            base = base,
                            username = username,
                            password = password,
                            action = "get_live_streams",
                            section = CatalogSection.LIVE,
                            onStage = emit,
                        )
                    },
                    build = { categories, items -> SectionOutcome.LiveOk(categories, items) },
                )
            }
            val film = async<SectionOutcome>(start = CoroutineStart.LAZY) {
                loadSection(
                    section = CatalogSection.FILM,
                    emit = emit,
                    fail = fail,
                    fetchCategories = {
                        fetchList<Category>(base, username, password, "get_vod_categories")
                    },
                    fetchItems = {
                        fetchList<VodStream>(
                            base = base,
                            username = username,
                            password = password,
                            action = "get_vod_streams",
                            section = CatalogSection.FILM,
                            onStage = emit,
                        )
                    },
                    build = { categories, items -> SectionOutcome.FilmOk(categories, items) },
                )
            }
            val series = async<SectionOutcome>(start = CoroutineStart.LAZY) {
                loadSection(
                    section = CatalogSection.SERIES,
                    emit = emit,
                    fail = fail,
                    fetchCategories = {
                        fetchList<Category>(base, username, password, "get_series_categories")
                    },
                    fetchItems = {
                        fetchList<SeriesItem>(
                            base = base,
                            username = username,
                            password = password,
                            action = "get_series",
                            section = CatalogSection.SERIES,
                            onStage = emit,
                        )
                    },
                    build = { categories, items -> SectionOutcome.SeriesOk(categories, items) },
                )
            }
            sectionJobs.register(CatalogSection.LIVE, live)
            sectionJobs.register(CatalogSection.FILM, film)
            sectionJobs.register(CatalogSection.SERIES, series)
            live.start()
            film.start()
            series.start()

            // Attese nell'ordine Live, Film, Serie: con più errori vince il
            // primo di questo elenco, come nel vecchio percorso sequenziale.
            suspend fun awaitOrNull(deferred: Deferred<SectionOutcome>): SectionOutcome? =
                try {
                    deferred.await()
                } catch (e: CancellationException) {
                    // Le sezioni annullate da un errore altrui non sono un
                    // errore proprio; se invece è stato annullato tutto il
                    // caricamento, la cancellazione deve propagare.
                    currentCoroutineContext().ensureActive()
                    null
                }

            val liveOutcome = awaitOrNull(live)
            val filmOutcome = awaitOrNull(film)
            val seriesOutcome = awaitOrNull(series)
            val failure = listOfNotNull(liveOutcome, filmOutcome, seriesOutcome)
                .filterIsInstance<SectionOutcome.Failed>()
                .firstOrNull()
            if (failure != null) return@coroutineScope CatalogResult.Error(failure.message)

            val l = liveOutcome as? SectionOutcome.LiveOk
            val f = filmOutcome as? SectionOutcome.FilmOk
            val s = seriesOutcome as? SectionOutcome.SeriesOk
            if (l == null || f == null || s == null) {
                // Difensivo: senza errori tutte e tre le sezioni sono complete.
                return@coroutineScope CatalogResult.Error("Aggiornamento del catalogo interrotto.")
            }
            return@coroutineScope CatalogResult.Success(
                Catalog(
                    liveCategories = l.categories,
                    liveStreams = l.streams,
                    vodCategories = f.categories,
                    vodStreams = f.streams,
                    seriesCategories = s.categories,
                    series = s.items,
                    updatedAtMillis = clock.nowMillis(),
                ),
            )
        }
    }

    /**
     * Carica una sezione: categorie, poi elenco. Le tappe della sezione
     * restano DOWNLOADING (fase iniziale a 0%), avanzamenti dell'elenco,
     * PROCESSING e COMPLETED; in caso di errore solo ERROR.
     */
    private suspend fun <T> loadSection(
        section: CatalogSection,
        emit: suspend (CatalogStage) -> Unit,
        fail: suspend (CatalogSection, String) -> SectionOutcome.Failed,
        fetchCategories: suspend () -> FetchResult<List<Category>>,
        fetchItems: suspend () -> FetchResult<List<T>>,
        build: (List<Category>, List<T>) -> SectionOutcome,
    ): SectionOutcome {
        emit(CatalogStage(section = section, status = CatalogSectionStatus.DOWNLOADING))
        val categories = when (val result = fetchCategories()) {
            is FetchResult.Success -> result.value
            is FetchResult.Failure -> return fail(section, result.message)
        }
        val itemsResult = fetchItems()
        val items = when (itemsResult) {
            is FetchResult.Success -> itemsResult.value
            is FetchResult.Failure -> return fail(section, itemsResult.message)
        }
        emit(
            CatalogStage(
                section = section,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = items.size,
                bytesReceived = itemsResult.bytesReceived,
                bytesTotal = itemsResult.bytesTotal,
            ),
        )
        return build(categories, items)
    }

    /** Handle delle tre sezioni, per annullare le sorelle dopo un errore. */
    private class SectionJobs {
        private val jobs = ConcurrentHashMap<CatalogSection, Deferred<SectionOutcome>>()

        fun register(section: CatalogSection, job: Deferred<SectionOutcome>) {
            jobs[section] = job
        }

        fun cancelOthers(section: CatalogSection) {
            jobs.forEach { (other, job) -> if (other != section) job.cancel() }
        }
    }

    private sealed interface SectionOutcome {
        data class LiveOk(val categories: List<Category>, val streams: List<LiveStream>) : SectionOutcome
        data class FilmOk(val categories: List<Category>, val streams: List<VodStream>) : SectionOutcome
        data class SeriesOk(val categories: List<Category>, val items: List<SeriesItem>) : SectionOutcome
        data class Failed(val message: String) : SectionOutcome
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
        base: HttpUrl,
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
            executeCancellable(request).use { response ->
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
                // Prefisso univoco per sezione: con tre sezioni in parallelo
                // nessun file temporaneo può essere condiviso o sovrascritto.
                val tempFile = File.createTempFile("fvp_catalog_${UUID.randomUUID()}_", ".json")
                try {
                    body.byteStream().use { input ->
                        tempFile.outputStream().use { fileOut ->
                            BufferedOutputStream(fileOut, STREAM_BUFFER_SIZE).use { output ->
                                val buffer = ByteArray(STREAM_BUFFER_SIZE)
                                while (true) {
                                    val read = input.read(buffer)
                                    if (read < 0) break
                                    if (read == 0) continue
                                    output.write(buffer, 0, read)
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
                                output.flush()
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
                            tempFile.inputStream().use { input ->
                                BufferedInputStream(input, STREAM_BUFFER_SIZE).use { buffered ->
                                    // Per tolleranza: se il pannello restituisce oggetto anziché array, decode fallirà e gestiamo come vuoto
                                    try {
                                        json.decodeFromStream<List<T>>(buffered)
                                    } catch (e: CancellationException) {
                                        throw e
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
                    } catch (e: CancellationException) {
                        throw e
                    } catch (e: Exception) {
                        currentCoroutineContext().ensureActive()
                        FetchResult.Failure("Risposta del server non riconosciuta: non sembra un pannello Xtream.")
                    }
                } finally {
                    tempFile.delete()
                }
            }
        } catch (timeout: InterruptedIOException) {
            currentCoroutineContext().ensureActive()
            FetchResult.Failure("Server non raggiungibile: timeout. Controlla l'indirizzo e la rete.")
        } catch (ioe: IOException) {
            currentCoroutineContext().ensureActive()
            FetchResult.Failure("Server non raggiungibile. Controlla l'indirizzo e la connessione.")
        }
    }

    /**
     * Esegue una richiesta in modo annullabile: se il caricamento viene
     * annullato (dall'utente o dopo l'errore di un'altra sezione) la
     * [Call] OkHttp viene chiusa subito, anche mentre il body è in lettura.
     * Il corpo resta comunque letto in streaming su file temporaneo.
     */
    private suspend fun executeCancellable(request: Request): Response =
        suspendCancellableCoroutine { continuation ->
            val call = http.newCall(request)
            call.enqueue(object : Callback {
                override fun onFailure(call: Call, e: IOException) {
                    if (continuation.isActive) continuation.resumeWith(Result.failure(e))
                }

                override fun onResponse(call: Call, response: Response) {
                    if (continuation.isActive) {
                        continuation.resumeWith(Result.success(response))
                    } else {
                        response.close()
                    }
                }
            })
            continuation.invokeOnCancellation { call.cancel() }
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
