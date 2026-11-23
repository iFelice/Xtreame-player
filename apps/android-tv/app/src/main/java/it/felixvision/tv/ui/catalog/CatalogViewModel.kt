package it.felixvision.tv.ui.catalog

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.catalog.CatalogClient
import it.felixvision.tv.data.catalog.CatalogOrdering
import it.felixvision.tv.data.catalog.CatalogRefresh
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.CatalogSectionProgress
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.sources.AggregatedCatalog
import it.felixvision.tv.data.sources.CatalogPart
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.SourceIds
import it.felixvision.tv.data.sources.SourceType
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex

data class CatalogUiState(
    val isLoading: Boolean = true,
    val catalog: Catalog? = null,
    val errorMessage: String? = null,
    val lastUpdateMillis: Long? = null,
    val recentFilms: List<VodStream> = emptyList(),
    val recentSeries: List<SeriesItem> = emptyList(),
    val isRefreshing: Boolean = false,
    /** Una riga per Live, Film, Serie: stato dell'ultimo aggiornamento. */
    val refreshSections: List<CatalogSectionProgress> = CatalogRefresh.idle(),
    /**
     * Errore non bloccante della Lista M3U: le altre sorgenti restano
     * utilizzabili e la riga si può ignorare.
     */
    val m3uError: String? = null,
)

internal data class CatalogRecentItems(
    val films: List<VodStream>,
    val series: List<SeriesItem>,
)

/**
 * Contenuti della categoria NOVITÀ: solo l'account Xtream.
 *
 * Le voci della Lista M3U non hanno una data di aggiunta (e quindi nessun
 * ordinamento "dal più recente"): restano nelle loro categorie e non entrano in
 * Novità.
 */
internal fun catalogRecentItems(catalog: Catalog): CatalogRecentItems = CatalogRecentItems(
    films = CatalogOrdering.recentVodStreams(
        catalog.vodStreams.filterNot { SourceIds.isScoped(it.streamId) },
        NOVITA_CATEGORY_RECENT_LIMIT,
    ),
    series = CatalogOrdering.recentSeries(catalog.series, NOVITA_CATEGORY_RECENT_LIMIT),
)

/**
 * Catalogo delle sorgenti abilitate.
 *
 * L'account Xtream si carica come sempre (tre sezioni in parallelo, copia su
 * disco di 24 ore). La Lista M3U, quando esiste ed è abilitata, si scarica con
 * la sua copia di 6 ore; i due cataloghi si uniscono con [AggregatedCatalog].
 *
 * Un errore della lista M3U non blocca nulla: si usa la copia salvata (se c'è),
 * l'errore finisce in [CatalogUiState.m3uError] e le altre sorgenti restano
 * visibili. I tentativi successivi sono in silenzio, con attese crescenti (vedi
 * `M3uSourceService`).
 */
class CatalogViewModel(
    private val container: AppContainer,
    private val server: String,
    private val username: String,
    private val password: String,
) : ViewModel() {

    private val client: CatalogClient = container.catalogClient
    private val cache: CatalogCache = container.catalogCache

    private val _ui = MutableStateFlow(CatalogUiState())
    val ui: StateFlow<CatalogUiState> = _ui.asStateFlow()

    private val loadMutex = Mutex()

    /** Parte Xtream dell'ultimo catalogo letto (se l'account è abilitato). */
    private var xtreamPart: CatalogPart? = null

    /** Parti M3U dell'ultimo catalogo letto. */
    private var m3uParts: List<CatalogPart> = emptyList()

    init {
        viewModelScope.launch {
            // Riga non bloccante dell'errore M3U: cambia anche con i tentativi
            // in silenzio.
            container.m3uSourceService.error.collect { error ->
                _ui.update { it.copy(m3uError = error?.message) }
            }
        }
        viewModelScope.launch {
            // Ad app aperta: controllo periodico degli orari di rilettura delle
            // liste M3U (08:30, 14:30, 18:30, 22:30). Il controllo non fa rete
            // finché la copia è ancora valida.
            while (true) {
                delay(M3U_SCHEDULE_CHECK_MILLIS)
                refreshM3uIfDue()
            }
        }
        viewModelScope.launch {
            val cached = cache.load(server, username)
            val sources = enabledSources()
            m3uParts = loadM3uParts(sources, forceRefresh = false)
            xtreamPart = sources
                .firstOrNull { it.type == SourceType.XTREAM }
                ?.let { source -> cached?.let { CatalogPart(source, it.catalog) } }
            if (cached != null) {
                applyCatalog(merged(), cached.updatedAtMillis)
                _ui.update { it.copy(isLoading = false) }
                if (cache.shouldAutoRefresh(cached.updatedAtMillis)) {
                    // Il catalogo aggiornato o il fallback cache verrà passato
                    // alla Guida al termine di questo refresh, una sola volta.
                    refreshInternal(showLoading = false)
                } else {
                    scheduleGuideRefresh(cached.catalog)
                }
            } else {
                refreshInternal(showLoading = true)
            }
        }
    }

    fun refreshManual() {
        viewModelScope.launch { refreshInternal(showLoading = true, forceM3u = true) }
    }

    fun retry() {
        viewModelScope.launch { refreshInternal(showLoading = true, forceM3u = true) }
    }

    /**
     * Rilegge le sole liste M3U scadute, senza toccare il catalogo Xtream: la
     * usano il controllo periodico ad app aperta e non blocca nulla se una
     * lista non risponde (resta la copia salvata e la riga d'errore).
     */
    private suspend fun refreshM3uIfDue() {
        if (!loadMutex.tryLock()) return
        try {
            val m3uSources = enabledSources().filter { it.type == SourceType.M3U }
            if (m3uSources.isEmpty()) return
            if (m3uSources.none { container.m3uSourceService.isRefreshDue(it) }) return
            val refreshed = loadM3uParts(m3uSources, forceRefresh = false)
            if (refreshed == m3uParts) return
            m3uParts = refreshed
            applyCatalog(merged(), _ui.value.lastUpdateMillis ?: System.currentTimeMillis())
        } finally {
            loadMutex.unlock()
        }
    }

    private suspend fun refreshInternal(showLoading: Boolean, forceM3u: Boolean = false) {
        // Un solo caricamento alla volta: tryLock, se in corso ignora nuova richiesta
        if (!loadMutex.tryLock()) return
        container.guideEpgRepository.resetFallbackSession(server, username)
        try {
            _ui.update { it.copy(refreshSections = CatalogRefresh.idle()) }
            if (showLoading && _ui.value.catalog == null) {
                _ui.update { it.copy(isLoading = true, errorMessage = null) }
            } else if (showLoading) {
                _ui.update { it.copy(isRefreshing = true, errorMessage = null) }
            } else {
                _ui.update { it.copy(isRefreshing = true) }
            }

            val sources = enabledSources()
            m3uParts = loadM3uParts(sources, forceRefresh = forceM3u)
            val xtreamSource = sources.firstOrNull { it.type == SourceType.XTREAM }

            // Nessun account Xtream abilitato: nessuna richiesta al pannello, si
            // mostra la sola Lista M3U.
            if (xtreamSource == null) {
                xtreamPart = null
                applyCatalog(merged(), System.currentTimeMillis())
                _ui.update { it.copy(isLoading = false, isRefreshing = false, errorMessage = null) }
                return
            }

            val result = client.loadCatalog(server, username, password) { stage ->
                _ui.update { state ->
                    state.copy(
                        refreshSections = CatalogRefresh.apply(state.refreshSections, stage),
                    )
                }
            }
            when (result) {
                is CatalogResult.Success -> {
                    cache.save(server, username, result.catalog)
                    xtreamPart = CatalogPart(xtreamSource, result.catalog)
                    applyCatalog(merged(), result.catalog.updatedAtMillis)
                    _ui.update { it.copy(isLoading = false, isRefreshing = false, errorMessage = null) }
                    scheduleGuideRefresh(result.catalog)
                }
                is CatalogResult.Error -> {
                    // Le voci della lista restano visibili: l'errore
                    // dell'account non deve nascondere le altre sorgenti.
                    if (m3uParts.isNotEmpty() && merged().vodStreams.isNotEmpty()) {
                        applyCatalog(merged(), System.currentTimeMillis())
                    }
                    _ui.update { it.copy(isLoading = false, isRefreshing = false, errorMessage = result.message) }
                    _ui.value.catalog?.let(::scheduleGuideRefresh)
                        ?: container.guideEpgRepository.markCatalogUnavailable(server, username)
                }
            }
        } finally {
            loadMutex.unlock()
        }
    }

    /** Sorgenti abilitate, in ordine di etichetta; errore di lettura = nessuna. */
    private suspend fun enabledSources(): List<Source> =
        runCatching { container.sourceRepository.enabledSources() }.getOrDefault(emptyList())

    /**
     * Catalogo della Lista M3U per ogni sorgente M3U abilitata. Senza copia
     * disponibile la parte è vuota (e la riga d'errore lo dice): le altre
     * sorgenti si vedono lo stesso.
     */
    private suspend fun loadM3uParts(sources: List<Source>, forceRefresh: Boolean): List<CatalogPart> {
        val m3uSources = sources.filter { it.type == SourceType.M3U }
        if (m3uSources.isEmpty()) return emptyList()
        return m3uSources.map { source ->
            container.m3uSourceService.playlist(source, forceRefresh = forceRefresh)
            CatalogPart(
                source = source,
                catalog = container.m3uSourceService.catalogFor(source) ?: Catalog(),
            )
        }
    }

    /** Catalogo unito delle parti lette (Xtream, poi M3U in ordine di etichetta). */
    private fun merged(): Catalog = AggregatedCatalog.merge(
        listOfNotNull(xtreamPart) + m3uParts,
    )

    private fun scheduleGuideRefresh(catalog: Catalog) {
        container.guideEpgRepository.scheduleCatalogRefresh(
            server = server,
            username = username,
            password = password,
            liveStreams = catalog.liveStreams,
        )
    }

    companion object {
        /** Ogni quanto, ad app aperta, si controlla se una lista M3U è scaduta. */
        const val M3U_SCHEDULE_CHECK_MILLIS = 5L * 60L * 1000L
    }

    private fun applyCatalog(catalog: Catalog, updatedAt: Long) {
        val recent = catalogRecentItems(catalog)
        _ui.update {
            it.copy(
                catalog = catalog,
                lastUpdateMillis = updatedAt,
                recentFilms = recent.films,
                recentSeries = recent.series,
            )
        }
    }

    suspend fun loadVodInfo(vodId: String): VodInfoResponse? {
        // Voci della Lista M3U: nessun metadato da chiedere al pannello.
        if (SourceIds.isScoped(vodId)) return null
        return when (val res = client.getVodInfo(server, username, password, vodId)) {
            is it.felixvision.tv.data.catalog.VodInfoResult.Success -> res.info
            else -> null
        }
    }

    suspend fun loadSeriesInfo(seriesId: String): SeriesInfoResponse? {
        return when (val res = client.getSeriesInfo(server, username, password, seriesId)) {
            is it.felixvision.tv.data.catalog.SeriesInfoResult.Success -> res.info
            else -> null
        }
    }
}
