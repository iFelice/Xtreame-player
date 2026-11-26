package it.felixvision.tv.data.sources

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.m3u.M3uCache
import it.felixvision.tv.data.m3u.M3uClient
import it.felixvision.tv.data.m3u.M3uEntry
import it.felixvision.tv.data.m3u.M3uFetchResult
import it.felixvision.tv.data.m3u.M3uIndex
import it.felixvision.tv.data.m3u.M3uIndexCache
import it.felixvision.tv.data.m3u.M3uIndexResult
import it.felixvision.tv.data.m3u.M3uLibrary
import it.felixvision.tv.data.m3u.M3uPlaylist
import it.felixvision.tv.data.m3u.M3uRefreshSchedule
import it.felixvision.tv.data.m3u.M3uTextResult
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext

/** Errore da mostrare in una riga non bloccante, legato a una sorgente. */
data class M3uSourceError(
    val sourceId: String,
    val message: String,
)

/**
 * Riga d'errore pronta per l'interfaccia: titolo della sorgente ("Lista M3U ·
 * M1", oppure l'indice) e messaggio. Non contiene mai indirizzi.
 */
data class M3uErrorRow(
    val sourceId: String,
    val title: String,
    val message: String,
)

/**
 * Sorgenti "Lista M3U": risolve l'eventuale indice, scarica le liste e tiene una
 * copia in memoria e una su disco (valida fino al primo dei quattro orari
 * giornalieri di [M3uRefreshSchedule]).
 *
 * Regole:
 * - una voce configurata (`FVP_M3U_URL`) può essere una lista oppure un indice
 *   di liste: si distingue dal contenuto (`#EXTM3U`);
 * - una lista tolta dall'indice **scompare** dall'elenco, ma la sua riga resta
 *   su disco con l'etichetta `M<n>`, quindi se torna riprende la stessa;
 * - le liste si scaricano **in parallelo**, al massimo
 *   [maxConcurrentDownloads] alla volta: una lista lenta non blocca le altre;
 * - quando una lista non risponde si usa la copia salvata, l'errore finisce in
 *   [errors] (una riga per lista) e i tentativi successivi sono in silenzio, con
 *   attese crescenti e un numero massimo;
 * - se l'indice non è raggiungibile si usano le liste dell'ultima copia salvata
 *   e l'errore finisce in [indexError].
 */
class M3uSourceService(
    private val client: M3uClient,
    private val cache: M3uCache,
    private val indexCache: M3uIndexCache,
    private val registry: M3uUrlRegistry,
    private val clock: Clock = SystemClock,
    private val scope: CoroutineScope,
    private val io: CoroutineDispatcher = Dispatchers.IO,
    private val retryDelaysMillis: List<Long> = DEFAULT_RETRY_DELAYS,
    private val maxConcurrentDownloads: Int = MAX_CONCURRENT_DOWNLOADS,
) {

    private val mutex = Mutex()

    /** Ultima lista buona per sorgente, anche quella arrivata dalla copia su disco. */
    private val playlists = MutableStateFlow<Map<String, M3uPlaylist>>(emptyMap())

    private val _errors = MutableStateFlow<Map<String, M3uSourceError>>(emptyMap())

    /** Errori dell'ultimo aggiornamento, uno per sorgente. */
    val errors: StateFlow<Map<String, M3uSourceError>> = _errors.asStateFlow()

    private val _indexError = MutableStateFlow<String?>(null)

    /** Errore dell'indice delle liste (non raggiungibile o non valido). */
    val indexError: StateFlow<String?> = _indexError.asStateFlow()

    /** Tentativi in silenzio già avviati, per sorgente. */
    private val retryJobs = HashMap<String, Job>()

    /** Tentativi già consumati, per sorgente (letto anche dal Log). */
    private val retryAttempts = ConcurrentHashMap<String, Int>()

    /** Lista di [source]: dalla copia in memoria, dal disco o dalla rete. */
    suspend fun playlist(source: Source, forceRefresh: Boolean = false): M3uPlaylist? {
        val current = withContext(io) {
            val cached = cache.load(source.id)
            mutex.withLock {
                val previous = playlists.value[source.id]
                if (previous != null) previous else cached?.also { rememberLocked(it) }
            }
        }
        if (!forceRefresh && current != null && !cache.shouldRefresh(current.fetchedAtMillis, clock.nowMillis())) {
            return current
        }
        return when (val result = client.fetch(source.m3uUrl.orEmpty())) {
            is M3uFetchResult.Success -> {
                val playlist = M3uPlaylist(
                    sourceId = source.id,
                    fetchedAtMillis = clock.nowMillis(),
                    entries = result.entries,
                )
                cache.save(playlist)
                mutex.withLock {
                    rememberLocked(playlist)
                    retryAttempts[source.id] = 0
                    _errors.value = _errors.value - source.id
                }
                playlist
            }
            is M3uFetchResult.Failure -> {
                mutex.withLock {
                    _errors.value = _errors.value + (source.id to M3uSourceError(source.id, result.message))
                }
                scheduleRetry(source)
                current
            }
        }
    }

    /**
     * Risolve le voci configurate: per ognuna scarica il contenuto e capisce se
     * è una lista o un indice, poi aggiorna il registro delle liste da mostrare.
     *
     * @param forceRefresh `true` per "Aggiorna catalogo": ignora la scadenza.
     * @return `true` se l'elenco delle liste è cambiato.
     */
    suspend fun prepare(forceRefresh: Boolean = false): Boolean {
        val entries = registry.entries()
        if (entries.isEmpty()) return false
        val snapshot = withContext(io) { indexCache.load() }
        if (!forceRefresh && !M3uRefreshSchedule.shouldRefresh(snapshot?.fetchedAtMillis, clock.nowMillis())) {
            return false
        }
        val gate = Semaphore(maxConcurrentDownloads.coerceAtLeast(1))
        val resolutions = coroutineScope {
            entries
                .map { entry -> async(io) { gate.withPermit { resolveEntry(entry, snapshot) } } }
                .awaitAll()
        }
        val lists = LinkedHashSet<String>()
        var failure: String? = null
        for (resolution in resolutions) {
            lists += resolution.playlists
            resolution.error?.let { failure = it }
        }
        _indexError.value = failure
        val mapping = resolutions
            .filter { it.playlists.isNotEmpty() }
            .associate { it.entry to it.playlists }
        if (mapping.isNotEmpty()) {
            withContext(io) {
                indexCache.save(
                    M3uIndexCache.Snapshot(
                        fetchedAtMillis = clock.nowMillis(),
                        entries = mapping,
                    ),
                )
            }
        }
        if (lists.isEmpty()) return false
        val previous = registry.playlists()
        registry.update(lists.toList())
        return registry.playlists() != previous
    }

    /**
     * Catalogo delle liste abilitate, scaricato in parallelo: al massimo
     * [maxConcurrentDownloads] richieste alla volta.
     */
    suspend fun playlists(
        sources: List<Source>,
        forceRefresh: Boolean = false,
    ): List<CatalogPart> = coroutineScope {
        val lists = sources.filter { it.type == SourceType.M3U }
        if (lists.isEmpty()) return@coroutineScope emptyList()
        val gate = Semaphore(maxConcurrentDownloads.coerceAtLeast(1))
        lists
            .map { source ->
                async(io) {
                    gate.withPermit { playlist(source, forceRefresh = forceRefresh) }
                    CatalogPart(source = source, catalog = catalogFor(source) ?: Catalog())
                }
            }
            .awaitAll()
    }

    /**
     * Vero quando la lista di [source] non è in memoria o ha superato il primo
     * orario di rilettura successivo al download.
     */
    fun isRefreshDue(source: Source, nowMillis: Long = clock.nowMillis()): Boolean {
        val current = playlists.value[source.id] ?: return true
        return cache.shouldRefresh(current.fetchedAtMillis, nowMillis)
    }

    /** Vero quando l'indice va riscaricato (mai scaricato o orario passato). */
    suspend fun isIndexRefreshDue(): Boolean {
        if (registry.entries().isEmpty()) return false
        val snapshot = withContext(io) { indexCache.load() }
        return M3uRefreshSchedule.shouldRefresh(snapshot?.fetchedAtMillis, clock.nowMillis())
    }

    /** Catalogo Film della lista già scaricata, `null` se non c'è una copia. */
    fun catalogFor(source: Source): Catalog? =
        playlists.value[source.id]?.let { M3uLibrary.buildCatalog(source.id, it.entries) }

    /** Voci della lista già scaricata, `null` se non c'è una copia. */
    fun entriesFor(source: Source): List<M3uEntry>? = playlists.value[source.id]?.entries

    /**
     * Coda di riproduzione di una categoria della lista, nell'ordine del file.
     * È la coda che il player usa per Successivo/Precedente e per il passaggio
     * automatico alla voce dopo.
     */
    fun queueFor(source: Source, categoryId: String): List<VodStream> {
        val entries = playlists.value[source.id]?.entries ?: return emptyList()
        return M3uLibrary.entriesInCategory(entries, source.id, categoryId).map { it.first }
    }

    /**
     * Indirizzi di riproduzione delle voci della lista, per identificativo
     * aggregato. Vuoto se la lista non è ancora in memoria.
     */
    fun directUrlsFor(source: Source): Map<String, String> {
        val entries = playlists.value[source.id]?.entries ?: return emptyMap()
        return M3uLibrary.urlsById(entries, source.id)
    }

    /** Indirizzo diretto di una voce, `null` se non è della lista o non c'è. */
    fun directUrl(source: Source, streamId: String): String? =
        directUrlsFor(source)[streamId]

    /** Sorgente proprietaria di un identificativo aggregato, tra quelle note. */
    fun sourceOf(streamId: String, sources: List<Source>): Source? {
        val sourceId = SourceIds.sourceOf(streamId) ?: return null
        return sources.firstOrNull { it.id == sourceId && it.type == SourceType.M3U }
    }

    /**
     * Una riga di errore per ogni sorgente in errore (con la sua etichetta) e,
     * se c'è, una per l'indice delle liste. Le altre sorgenti restano usabili.
     */
    fun errorRows(sources: List<Source>): List<M3uErrorRow> {
        val current = errors.value
        val names = Sources.displayNames(sources)
        val rows = Sources.ordered(sources)
            .mapNotNull { source ->
                val error = current[source.id] ?: return@mapNotNull null
                M3uErrorRow(
                    sourceId = source.id,
                    title = names[source.id] ?: Sources.typeName(source.type),
                    message = error.message,
                )
            }
            .toMutableList()
        indexError.value?.let { message ->
            rows += M3uErrorRow(sourceId = INDEX_SOURCE_ID, title = INDEX_ROW_TITLE, message = message)
        }
        return rows
    }

    /**
     * Indirizzi delle liste dell'ultima risoluzione dell'indice: quelli appena
     * risolti, altrimenti quelli della copia su disco. Vuoto se l'indice non è
     * mai stato letto (all'avvio, prima della prima preparazione).
     */
    suspend fun indexedListUrls(): List<String> {
        val resolved = registry.playlists()
        if (resolved.isNotEmpty()) return resolved
        return withContext(io) { indexCache.load()?.entries?.values?.flatten().orEmpty() }
    }

    /**
     * Errori **definitivi** delle singole liste: quelli rimasti dopo tutti i
     * tentativi automatici. Fino a quel momento l'errore è passeggero e non
     * entra nel Log (la riga dell'indice si gestisce a parte).
     */
    fun permanentErrorRows(sources: List<Source>): List<M3uErrorRow> =
        errorRows(sources).filter { row ->
            row.sourceId != INDEX_SOURCE_ID &&
                (retryAttempts[row.sourceId] ?: 0) >= retryDelaysMillis.size
        }

    /** Toglie le righe di errore (per esempio dopo un aggiornamento riuscito). */
    fun clearError() {
        _errors.value = emptyMap()
        _indexError.value = null
    }

    private fun rememberLocked(playlist: M3uPlaylist) {
        playlists.value = playlists.value + (playlist.sourceId to playlist)
    }

    /** Scarica una voce e stabilisce se è una lista o un indice. */
    private suspend fun resolveEntry(entry: String, snapshot: M3uIndexCache.Snapshot?): EntryResolution =
        when (val fetched = client.fetchText(entry)) {
            is M3uTextResult.Success -> {
                if (M3uIndex.looksLikePlaylist(fetched.text)) {
                    EntryResolution(entry = entry, playlists = listOf(entry))
                } else {
                    when (val index = M3uIndex.parse(fetched.text)) {
                        is M3uIndexResult.Success ->
                            EntryResolution(entry = entry, playlists = index.urls)
                        is M3uIndexResult.Failure -> EntryResolution(
                            entry = entry,
                            playlists = snapshot?.entries?.get(entry).orEmpty(),
                            error = index.reason.message,
                        )
                    }
                }
            }
            is M3uTextResult.Failure -> EntryResolution(
                entry = entry,
                // Una lista diretta non raggiungibile resta nell'elenco: la sua
                // copia su disco può essere ancora buona.
                playlists = snapshot?.entries?.get(entry) ?: listOf(entry),
                error = fetched.error.message,
            )
        }

    /**
     * Nuovo tentativo in silenzio dopo [retryDelaysMillis] crescenti. Al
     * massimo un ciclo di tentativi per sorgente alla volta.
     */
    private fun scheduleRetry(source: Source) {
        val attempt = retryAttempts[source.id] ?: 0
        if (attempt >= retryDelaysMillis.size) return
        if (retryJobs[source.id]?.isActive == true) return
        val wait = retryDelaysMillis[attempt]
        retryAttempts[source.id] = attempt + 1
        retryJobs[source.id] = scope.launch {
            delay(wait)
            playlist(source, forceRefresh = true)
        }.also { job ->
            job.invokeOnCompletion {
                synchronized(retryJobs) {
                    if (retryJobs[source.id] === job) retryJobs.remove(source.id)
                }
            }
        }
    }

    /** Esito della risoluzione di una voce configurata. */
    private data class EntryResolution(
        val entry: String,
        val playlists: List<String>,
        val error: String? = null,
    )

    companion object {

        /** Attese crescenti dei tentativi in silenzio: 30 s, 2 min, 5 min. */
        val DEFAULT_RETRY_DELAYS: List<Long> = listOf(30_000L, 120_000L, 300_000L)

        /** Richieste simultanee massime quando si scaricano più liste. */
        const val MAX_CONCURRENT_DOWNLOADS = 3

        /** Identificativo della riga d'errore dell'indice. */
        const val INDEX_SOURCE_ID = "index"

        /** Titolo della riga d'errore dell'indice. */
        const val INDEX_ROW_TITLE = "Indice delle liste"
    }
}
