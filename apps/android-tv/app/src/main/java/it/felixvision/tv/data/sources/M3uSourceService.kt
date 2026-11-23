package it.felixvision.tv.data.sources

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.m3u.M3uCache
import it.felixvision.tv.data.m3u.M3uClient
import it.felixvision.tv.data.m3u.M3uEntry
import it.felixvision.tv.data.m3u.M3uFetchResult
import it.felixvision.tv.data.m3u.M3uLibrary
import it.felixvision.tv.data.m3u.M3uPlaylist
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

/** Errore da mostrare in una riga non bloccante, legato a una sorgente. */
data class M3uSourceError(
    val sourceId: String,
    val message: String,
)

/**
 * Sorgente "Lista M3U": scarica la lista, ne tiene una copia in memoria e una su
 * disco (per 6 ore, come il catalogo), e fornisce al resto dell'app ciò che
 * serve per catalogo e riproduzione.
 *
 * Comportamento quando la lista non è raggiungibile:
 * - se c'è una copia salvata si usa quella, senza bloccare l'app;
 * - l'errore viene esposto in [error] e mostrato in una riga non bloccante;
 *   l'utente può disattivare la sorgente dall'interruttore delle Impostazioni;
 * - i nuovi tentativi avvengono in silenzio, con attese crescenti e un numero
 *   massimo di tentativi per sessione.
 */
class M3uSourceService(
    private val client: M3uClient,
    private val cache: M3uCache,
    private val clock: Clock = SystemClock,
    private val scope: CoroutineScope,
    private val io: CoroutineDispatcher = Dispatchers.IO,
    private val retryDelaysMillis: List<Long> = DEFAULT_RETRY_DELAYS,
) {

    private val mutex = Mutex()

    /** Ultima lista buona per sorgente, anche quella arrivata dalla copia su disco. */
    private val playlists = MutableStateFlow<Map<String, M3uPlaylist>>(emptyMap())

    private val _error = MutableStateFlow<M3uSourceError?>(null)

    /** Errore dell'ultimo aggiornamento; `null` quando la lista è a posto. */
    val error: StateFlow<M3uSourceError?> = _error.asStateFlow()

    private val retryJobs = HashMap<String, Job>()
    private val retryAttempts = HashMap<String, Int>()

    /**
     * Lista della [source], dalla copia in memoria, dal disco o dalla rete.
     *
     * @param forceRefresh `true` per "Aggiorna catalogo": ignora la scadenza
     *   delle 6 ore.
     */
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
                    if (_error.value?.sourceId == source.id) _error.value = null
                }
                playlist
            }
            is M3uFetchResult.Failure -> {
                mutex.withLock {
                    _error.value = M3uSourceError(source.id, result.message)
                }
                scheduleRetry(source)
                current
            }
        }
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

    /** Toglie la riga di errore (per esempio dopo un aggiornamento riuscito). */
    fun clearError() {
        _error.value = null
    }

    private fun rememberLocked(playlist: M3uPlaylist) {
        playlists.value = playlists.value + (playlist.sourceId to playlist)
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

    companion object {
        /** Attese crescenti dei tentativi in silenzio: 30 s, 2 min, 5 min. */
        val DEFAULT_RETRY_DELAYS: List<Long> = listOf(30_000L, 120_000L, 300_000L)
    }
}
