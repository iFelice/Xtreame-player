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
import it.felixvision.tv.data.sources.M3uErrorRow
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.SourceIds
import it.felixvision.tv.data.sources.SourceType
import it.felixvision.tv.data.sources.Sources
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

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
     * Righe non bloccanti delle liste M3U: una per lista in errore (con la sua
     * etichetta `M<n>`), più quella dell'indice se serve. Le altre sorgenti
     * restano utilizzabili.
     */
    val m3uErrors: List<M3uErrorRow> = emptyList(),
    /**
     * Catalogo dell'account Xtream: è quello che la sezione Film mostra quando
     * si sceglie "Xtream". Serie e Live restano sempre dell'account.
     */
    val xtreamCatalog: Catalog? = null,
    /** Film di tutte le liste M3U abilitate, unite in una sola voce. */
    val m3uCatalog: Catalog? = null,
    /** Falso quando nessuna sorgente è attiva: stato vuoto con rimando alle Impostazioni. */
    val hasAnySource: Boolean = true,
)

internal data class CatalogRecentItems(
    val films: List<VodStream>,
    val series: List<SeriesItem>,
)

/** Cosa serve quando cambiano le sorgenti abilitate: vedi [sourceReload]. */
internal enum class SourceReload { RECOMPOSE, RELOAD_XTREAM }

/**
 * Dopo un cambio di sorgenti (interruttore "Mostra", interruttore generale delle
 * liste, ordine delle liste) il catalogo si **ricompone in memoria**: niente
 * `isLoading`, niente catalogo azzerato, niente sezioni smontate. La rete serve
 * solo se l'account Xtream è appena stato (ri)acceso e la sua parte non è più in
 * memoria; quel ricaricamento resta comunque "silenzioso" quando un catalogo è
 * già a schermo (`isRefreshing`, non `isLoading`).
 */
internal fun sourceReload(xtreamSourceId: String?, loadedXtreamSourceId: String?): SourceReload =
    when {
        xtreamSourceId == null -> SourceReload.RECOMPOSE
        xtreamSourceId == loadedXtreamSourceId -> SourceReload.RECOMPOSE
        else -> SourceReload.RELOAD_XTREAM
    }

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
 * Un errore di una lista non blocca nulla: si usa la copia salvata (se c'è),
 * l'errore finisce in [CatalogUiState.m3uErrors] (una riga per lista, con la sua
 * etichetta) e le altre sorgenti restano visibili. I tentativi successivi sono
 * in silenzio, con attese crescenti (vedi `M3uSourceService`).
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
            // Righe non bloccanti: una per lista in errore (e quella
            // dell'indice). Cambiano anche con i tentativi in silenzio.
            container.m3uSourceService.errors.collect { refreshM3uErrors() }
        }
        viewModelScope.launch {
            container.m3uSourceService.indexError.collect { refreshM3uErrors() }
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
            prepareM3u(forceRefresh = false)
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
            val indexDue = container.m3uSourceService.isIndexRefreshDue()
            val m3uSources = enabledSources().filter { it.type == SourceType.M3U }
            if (!indexDue && m3uSources.isEmpty()) return
            if (!indexDue && m3uSources.none { container.m3uSourceService.isRefreshDue(it) }) return
            prepareM3u(forceRefresh = false)
            val refreshed = loadM3uParts(enabledSources(), forceRefresh = false)
            if (refreshed == m3uParts) return
            m3uParts = refreshed
            applyCatalog(merged(), _ui.value.lastUpdateMillis ?: System.currentTimeMillis())
        } finally {
            loadMutex.unlock()
        }
    }

    /**
     * Rilegge le sorgenti abilitate e **ricompone** il catalogo senza azzerarlo:
     * la usano il cambio di un interruttore "Mostra", l'ordine delle liste e
     * l'elenco delle liste. Il catalogo resta a schermo (niente `isLoading`,
     * niente sezioni smontate, niente schermata di caricamento): quando la
     * nuova composizione è pronta si sostituisce, un fotogramma dopo.
     *
     * Se l'account Xtream viene (ri)attivato e la sua parte non è più in
     * memoria, si ricarica in silenzio: [refreshInternal] con un catalogo già
     * presente accende `isRefreshing`, non `isLoading`.
     */
    fun reloadSources() {
        viewModelScope.launch {
            val plan = loadMutex.withLock {
                prepareM3u(forceRefresh = false)
                val sources = enabledSources()
                m3uParts = loadM3uParts(sources, forceRefresh = false)
                val xtreamSource = sources.firstOrNull { it.type == SourceType.XTREAM }
                val plan = sourceReload(
                    xtreamSourceId = xtreamSource?.id,
                    loadedXtreamSourceId = xtreamPart?.source?.id,
                )
                if (plan == SourceReload.RECOMPOSE) {
                    if (xtreamSource == null) xtreamPart = null
                    applyCatalog(merged(), _ui.value.lastUpdateMillis ?: System.currentTimeMillis())
                }
                plan
            }
            if (plan == SourceReload.RELOAD_XTREAM) refreshInternal(showLoading = true)
        }
    }

    /** Risolve l'indice delle liste; se l'elenco cambia, la UI lo ricarica. */
    private suspend fun prepareM3u(forceRefresh: Boolean) {
        val changed = try {
            container.m3uSourceService.prepare(forceRefresh)
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (_: Exception) {
            false
        }
        if (changed) container.sourceRepository.notifyChanged()
        // Una lista sparita dall'indice esce dall'elenco: il Log dice perché.
        container.m3uIssueCollector.refresh()
    }

    /**
     * Ricalcola le righe d'errore delle liste abilitate e allinea il Log dei
     * problemi permanenti: errori passeggeri fuori, definitivi dentro.
     */
    private suspend fun refreshM3uErrors() {
        val sources = enabledSources()
        val rows = container.m3uSourceService.errorRows(sources)
        _ui.update { it.copy(m3uErrors = rows) }
        container.m3uIssueCollector.refresh()
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

            prepareM3u(forceRefresh = forceM3u)
            val sources = enabledSources()
            m3uParts = loadM3uParts(sources, forceRefresh = forceM3u)
            // Righe delle liste sparite dall'indice e senza dati utente: si
            // eliminano al primo aggiornamento utile, mentre quelle con dati
            // (preferiti, avanzamento, nascosti) restano salvate e nascoste.
            runCatching { container.sourceRepository.cleanupOrphans { id -> hasUserData(id) } }
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
    private suspend fun enabledSources(): List<Source> {
        val sources = runCatching { container.sourceRepository.enabledSources() }
            .getOrDefault(emptyList())
        val any = sources.isNotEmpty()
        if (_ui.value.hasAnySource != any) {
            _ui.update { it.copy(hasAnySource = any) }
        }
        return sources
    }

    /**
     * Vero se la riga [sourceId] ha dati utente da conservare: preferiti,
     * avanzamento o contenuti nascosti. Senza account Xtream non c'è dove
     * salvarli, quindi la riga si può eliminare.
     */
    private suspend fun hasUserData(sourceId: String): Boolean {
        val credentials = Sources.primaryXtream(enabledSources())?.xtream ?: return false
        val marker = "$sourceId:"
        val favorites = runCatching {
            container.favoritesStore.getFavorites(credentials.server, credentials.username)
        }.getOrDefault(emptyList())
        if (favorites.any { it.id.contains(marker) }) return true
        val progress = runCatching {
            container.progressStore.getAll(credentials.server, credentials.username)
        }.getOrDefault(emptyMap())
        if (progress.keys.any { it.contains(marker) }) return true
        val hidden = runCatching {
            container.protectedContentStore.get(credentials.server, credentials.username)
        }.getOrNull() ?: return false
        return hidden.hiddenCategories.any { it.categoryId.contains(marker) } ||
            hidden.hiddenItems.any { it.itemId.contains(marker) }
    }

    /**
     * Catalogo della Lista M3U per ogni sorgente M3U abilitata. Senza copia
     * disponibile la parte è vuota (e la riga d'errore lo dice): le altre
     * sorgenti si vedono lo stesso.
     */
    private suspend fun loadM3uParts(sources: List<Source>, forceRefresh: Boolean): List<CatalogPart> =
        container.m3uSourceService.playlists(sources, forceRefresh = forceRefresh)

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
                xtreamCatalog = xtreamPart?.catalog,
                m3uCatalog = if (m3uParts.isEmpty()) null else AggregatedCatalog.mergeM3u(m3uParts),
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
