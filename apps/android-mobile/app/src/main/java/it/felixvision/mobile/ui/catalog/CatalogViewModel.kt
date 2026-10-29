@file:OptIn(kotlinx.coroutines.FlowPreview::class)

package it.felixvision.mobile.ui.catalog

import androidx.compose.runtime.mutableStateMapOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.main.AppSection
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogOrdering
import it.felixvision.tv.data.catalog.CatalogRefresh
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.CatalogSectionProgress
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesInfoResult
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueWatchingRules
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.search.CatalogSearch
import it.felixvision.tv.data.search.SearchResults
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.debounce
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex

/** Stato del catalogo, con la stessa forma del CatalogUiState della TV. */
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
)

/**
 * Destinazione di una richiesta di riproduzione. Porta solo identificativi
 * del catalogo: nessun URL di stream viene costruito o loggato in questo PR
 * (il player arriva nel PR3 e sostituirà [CatalogViewModel.onPlayRequest]).
 */
sealed interface PlayTarget {

    data class LiveChannel(val streamId: String, val fromMyChannels: Boolean = false) : PlayTarget

    data class CatchupProgram(val streamId: String, val programTitle: String) : PlayTarget

    data class Movie(val streamId: String) : PlayTarget

    data class SeriesEpisode(val seriesId: String, val episodeId: String) : PlayTarget

    data class ContinueItem(val key: String) : PlayTarget
}

/** Pagina di dettaglio a schermo intero attualmente aperta, se c'è. */
sealed interface DetailTarget {

    data class Film(val stream: VodStream) : DetailTarget

    data class Series(val item: SeriesItem) : DetailTarget

    /** Dettaglio canale con la guida dei programmi (icona "Guida" della riga Live). */
    data class LiveGuide(val stream: LiveStream) : DetailTarget
}

/** Contenuto del pannello azioni aperto dalla pressione lunga. */
sealed interface ActionTarget {

    /** Canale del catalogo Live o dei risultati di ricerca. */
    data class Channel(val stream: LiveStream) : ActionTarget

    /** Canale già presente in "I miei canali" (numero e spostamenti). */
    data class MyChannelEntry(val channel: MyChannel) : ActionTarget

    data class Film(val stream: VodStream) : ActionTarget

    data class Series(val item: SeriesItem) : ActionTarget

    data class LiveCategory(val categoryId: String, val name: String) : ActionTarget

    /** Voce di "Continua a guardare": solo la rimozione. */
    data class Continue(val entry: ContinueEntry) : ActionTarget
}

/** Dialogo "Sposta in posizione n°" / "Aggiungi in posizione n°". */
data class PositionDialogState(
    val channel: MyChannel,
    /** Vero se il canale non è ancora nella lista (inserimento, non spostamento). */
    val isNewChannel: Boolean,
)

/** Conferma breve da mostrare nello snackbar; [id] unico per ripetere testi uguali. */
data class ActionNotice(val id: Long, val message: String)

/** Esito del tasto Indietro, deciso dal ViewModel. */
enum class BackAction {
    SHEET_CLOSED,
    DIALOG_CLOSED,
    DETAIL_CLOSED,
    DROPDOWN_CLOSED,
    HOME,
    EXIT_APP,
}

/** Posizione di scorrimento di una lista (indice + offset del primo elemento). */
data class ScrollPosition(val index: Int = 0, val offset: Int = 0)

/**
 * Stato di navigazione e delle sezioni che sopravvive al cambio di sezione e
 * alla rotazione dello schermo: vive nel ViewModel, non nella composizione.
 *
 * Categoria scelta e tendina aperta sono osservabili (stato Compose); le
 * posizioni di scorrimento no: vengono lette solo per inizializzare le liste.
 */
class SectionStateStore {

    private val categories = mutableStateMapOf<String, String>()
    private val headerOpen = mutableStateMapOf<String, Boolean>()
    private val scrollPositions = mutableMapOf<String, ScrollPosition>()

    fun selectedCategory(sectionKey: String): String? = categories[sectionKey]

    fun selectCategory(sectionKey: String, categoryId: String) {
        categories[sectionKey] = categoryId
    }

    fun isHeaderOpen(sectionKey: String): Boolean = headerOpen[sectionKey] == true

    fun setHeaderOpen(sectionKey: String, open: Boolean) {
        headerOpen[sectionKey] = open
    }

    fun anyHeaderOpen(): Boolean = headerOpen.values.any { it }

    fun closeAllHeaders() {
        headerOpen.keys.forEach { headerOpen[it] = false }
    }

    fun scrollPosition(listKey: String): ScrollPosition =
        scrollPositions[listKey] ?: ScrollPosition()

    fun saveScroll(listKey: String, index: Int, offset: Int) {
        scrollPositions[listKey] = ScrollPosition(index, offset)
    }
}

/**
 * ViewModel dei cataloghi del tablet, adattato da
 * `it.felixvision.tv.ui.catalog.CatalogViewModel` con la stessa logica:
 * caricamento e cache del catalogo (cache prima, poi rete se serve),
 * aggiornamento manuale con avanzamento per sezione ([CatalogRefresh]),
 * info VOD e serie, preferiti, "I miei canali", "Continua a guardare",
 * ricerca con debounce e naviga tra le sezioni. Tutto ciò che riguarda
 * l'aggiornamento dell'app è escluso (arriva nel PR4).
 *
 * Le dipendenze di dati sono iniettate tramite le interfacce di
 * [CatalogGateways] per poterle falsificare nei test; dall'app si usa il
 * costruttore che accetta [AppContainer].
 */
class CatalogViewModel(
    private val server: String,
    private val username: String,
    private val password: String,
    private val catalogGateway: CatalogGateway,
    private val cacheGateway: CatalogCacheGateway,
    private val favoritesGateway: FavoritesGateway,
    private val myChannelsGateway: MyChannelsGateway,
    private val continueGateway: ContinueWatchingGateway,
    private val progressGateway: ProgressGateway,
) : ViewModel() {

    constructor(
        container: AppContainer,
        server: String,
        username: String,
        password: String,
    ) : this(
        server = server,
        username = username,
        password = password,
        catalogGateway = LiveCatalogGateway(container.catalogClient),
        cacheGateway = FileCatalogCacheGateway(container.catalogCache, container.clock),
        favoritesGateway = StoreFavoritesGateway(container.favoritesStore),
        myChannelsGateway = StoreMyChannelsGateway(container.myChannelsStore, container.favoritesStore),
        continueGateway = StoreContinueWatchingGateway(container.continueWatchingStore),
        progressGateway = StoreProgressGateway(container.progressStore),
    )

    private val _ui = MutableStateFlow(CatalogUiState())
    val ui: StateFlow<CatalogUiState> = _ui.asStateFlow()

    private val _favorites = MutableStateFlow<List<FavoriteItem>>(emptyList())
    val favorites: StateFlow<List<FavoriteItem>> = _favorites.asStateFlow()

    private val _myChannels = MutableStateFlow<List<MyChannel>>(emptyList())
    val myChannels: StateFlow<List<MyChannel>> = _myChannels.asStateFlow()

    /** Voci visibili di "Continua a guardare", dalla più recente. */
    private val _continueEntries = MutableStateFlow<List<ContinueEntry>>(emptyList())
    val continueEntries: StateFlow<List<ContinueEntry>> = _continueEntries.asStateFlow()

    private val _watchProgress = MutableStateFlow<Map<String, WatchProgress>>(emptyMap())
    val watchProgress: StateFlow<Map<String, WatchProgress>> = _watchProgress.asStateFlow()

    /** Testo di ricerca: nel ViewModel, sopravvive a sezione e rotazione. */
    private val _searchQuery = MutableStateFlow("")
    val searchQuery: StateFlow<String> = _searchQuery.asStateFlow()

    private val _searchResults = MutableStateFlow(SearchResults())
    val searchResults: StateFlow<SearchResults> = _searchResults.asStateFlow()

    /** Sezione attualmente scelta; dopo l'accesso è sempre Novità. */
    private val _selectedSection = MutableStateFlow(AppSection.NOVITA)
    val selectedSection: StateFlow<AppSection> = _selectedSection.asStateFlow()

    private val _detailTarget = MutableStateFlow<DetailTarget?>(null)
    val detailTarget: StateFlow<DetailTarget?> = _detailTarget.asStateFlow()

    private val _actionTarget = MutableStateFlow<ActionTarget?>(null)
    val actionTarget: StateFlow<ActionTarget?> = _actionTarget.asStateFlow()

    private val _positionDialog = MutableStateFlow<PositionDialogState?>(null)
    val positionDialog: StateFlow<PositionDialogState?> = _positionDialog.asStateFlow()

    /** Conferma breve da mostrare; la UI la consuma con [consumeNotice]. */
    private val _notice = MutableStateFlow<ActionNotice?>(null)
    val notice: StateFlow<ActionNotice?> = _notice.asStateFlow()

    private val _playRequest = MutableStateFlow<PlayTarget?>(null)
    val playRequest: StateFlow<PlayTarget?> = _playRequest.asStateFlow()

    private var noticeCounter = 0L

    /** Stato di sezione conservato tra cambi di sezione e rotazioni. */
    val sectionStates = SectionStateStore()

    private val loadMutex = Mutex()

    init {
        viewModelScope.launch {
            val cached = cacheGateway.load(server, username)
            if (cached != null) {
                applyCatalog(cached.catalog, cached.updatedAtMillis)
                _ui.update { it.copy(isLoading = false) }
                if (cacheGateway.shouldAutoRefresh(cached.updatedAtMillis)) {
                    refreshInternal(showLoading = false)
                }
            } else {
                refreshInternal(showLoading = true)
            }
        }
        viewModelScope.launch { reloadFavorites() }
        viewModelScope.launch {
            myChannelsGateway.revision.collect { reloadMyChannels() }
        }
        viewModelScope.launch {
            continueGateway.revision.collect { reloadContinueWatching() }
        }
        viewModelScope.launch {
            progressGateway.revision.collect { reloadProgress() }
        }
        // Ricerca locale con debounce ~300 ms: la coroutine riparte a ogni
        // digitazione e cerca sull'ultimo testo, come nella sezione TV. Il
        // ritardo arriva da [searchDebounceMillis] perché i test possano
        // sostituirlo (tempo virtuale). La mutazione dei risultati va per
        // [afterSearch], sempre su questo dispatcher.
        viewModelScope.launch {
            _searchQuery.debounce(searchDebounceMillis()).collectLatest { query ->
                _searchResults.value = CatalogSearch.search(_ui.value.catalog, query)
                afterSearch(query)
            }
        }
    }

    // --- Catalogo ---

    fun refreshManual() {
        viewModelScope.launch { refreshInternal(showLoading = true) }
    }

    fun retry() {
        viewModelScope.launch { refreshInternal(showLoading = true) }
    }

    private suspend fun refreshInternal(showLoading: Boolean) {
        // Un solo caricamento alla volta: tryLock, se in corso ignora nuova richiesta.
        if (!loadMutex.tryLock()) return
        try {
            _ui.update { it.copy(refreshSections = CatalogRefresh.idle()) }
            if (showLoading && _ui.value.catalog == null) {
                _ui.update { it.copy(isLoading = true, errorMessage = null) }
            } else if (showLoading) {
                _ui.update { it.copy(isRefreshing = true, errorMessage = null) }
            } else {
                _ui.update { it.copy(isRefreshing = true) }
            }

            val result = catalogGateway.loadCatalog(server, username, password) { stage ->
                _ui.update { state ->
                    state.copy(
                        refreshSections = CatalogRefresh.apply(state.refreshSections, stage),
                    )
                }
            }
            when (result) {
                is CatalogResult.Success -> {
                    cacheGateway.save(server, username, result.catalog)
                    applyCatalog(result.catalog, result.catalog.updatedAtMillis)
                    _ui.update {
                        it.copy(isLoading = false, isRefreshing = false, errorMessage = null)
                    }
                }
                is CatalogResult.Error -> {
                    _ui.update {
                        it.copy(isLoading = false, isRefreshing = false, errorMessage = result.message)
                    }
                }
            }
        } finally {
            loadMutex.unlock()
        }
    }

    private fun applyCatalog(catalog: Catalog, updatedAt: Long) {
        _ui.update {
            it.copy(
                catalog = catalog,
                lastUpdateMillis = updatedAt,
                recentFilms = CatalogOrdering.recentVodStreams(catalog.vodStreams, 40),
                recentSeries = CatalogOrdering.recentSeries(catalog.series, 40),
            )
        }
    }

    suspend fun loadVodInfo(vodId: String): VodInfoResponse? {
        return when (val res = catalogGateway.loadVodInfo(server, username, password, vodId)) {
            is VodInfoResult.Success -> res.info
            else -> null
        }
    }

    suspend fun loadSeriesInfo(seriesId: String): SeriesInfoResponse? {
        return when (val res = catalogGateway.loadSeriesInfo(server, username, password, seriesId)) {
            is SeriesInfoResult.Success -> res.info
            else -> null
        }
    }

    // --- Preferiti ---

    fun reloadFavorites() {
        viewModelScope.launch {
            _favorites.value = favoritesGateway.getFavorites(server, username)
        }
    }

    private suspend fun reloadFavoritesInternal() {
        _favorites.value = favoritesGateway.getFavorites(server, username)
    }

    fun toggleFavorite(item: FavoriteItem) {
        viewModelScope.launch {
            val added = favoritesGateway.toggleFavorite(server, username, item)
            reloadFavoritesInternal()
            postNotice(
                when (item.type) {
                    FavoriteItem.LIVE_CATEGORY ->
                        if (added) CATEGORY_FAVORITE_ADDED else CATEGORY_FAVORITE_REMOVED
                    else ->
                        if (added) FAVORITE_ADDED else FAVORITE_REMOVED
                },
            )
        }
    }

    fun isFavorite(id: String): Boolean = _favorites.value.any { it.id == id }

    // --- I miei canali ---

    private suspend fun reloadMyChannels() {
        _myChannels.value = myChannelsGateway.getChannels(server, username)
    }

    /**
     * Pulizia dei vecchi preferiti Live alla prima apertura dell'account,
     * invocata dalla schermata principale nello stesso punto e alle stesse
     * condizioni in cui la TV la invoca (una sola volta per server+utente).
     */
    suspend fun migrateLegacyLiveFavorites() {
        myChannelsGateway.migrateLegacyLiveFavorites(server, username)
        reloadFavoritesInternal()
    }

    fun addMyChannel(channel: MyChannel) {
        viewModelScope.launch {
            myChannelsGateway.add(server, username, channel)
            postNotice(MY_CHANNEL_ADDED)
        }
    }

    fun insertMyChannelAt(channel: MyChannel, position: Int) {
        viewModelScope.launch {
            myChannelsGateway.insertAt(server, username, channel, position)
            postNotice("$ADDED_AT_POSITION_PREFIX $position")
        }
    }

    /** "Sposta in posizione n°" e riordino a trascinamento (già in lista). */
    fun moveMyChannelTo(streamId: String, position: Int) {
        viewModelScope.launch {
            myChannelsGateway.moveTo(server, username, streamId, position)
            postNotice("$MOVED_TO_POSITION_PREFIX $position")
        }
    }

    fun removeMyChannel(streamId: String) {
        viewModelScope.launch {
            myChannelsGateway.remove(server, username, streamId)
            postNotice(MY_CHANNEL_REMOVED)
        }
    }

    // --- Continua a guardare ---

    private suspend fun reloadContinueWatching() {
        _continueEntries.value = ContinueWatchingRules.visible(
            continueGateway.getAll(server, username),
        )
    }

    /** "Rimuovi da Continua a guardare" dal pannello azioni. */
    fun hideContinueEntry(entry: ContinueEntry) {
        viewModelScope.launch {
            continueGateway.hide(server, username, entry.key)
            postNotice(CONTINUE_REMOVED)
        }
    }

    // --- Avanzamento ---

    private suspend fun reloadProgress() {
        _watchProgress.value = progressGateway.getAll(server, username)
    }

    // --- Ricerca ---

    /** Debounce della ricerca, sostituibile nei test con tempo virtuale. */
    protected open fun searchDebounceMillis(): Long = SEARCH_DEBOUNCE_MILLIS

    /** Dopo ogni ricerca conclusa: punto di aggancio per i test. */
    protected open fun afterSearch(query: String) {}

    fun onSearchQueryChange(value: String) {
        _searchQuery.value = value
        // Sotto la lunghezza minima la riga dei risultati si svuota subito,
        // senza aspettare il debounce.
        if (CatalogSearch.normalize(value).length < CatalogSearch.MIN_QUERY_LENGTH) {
            _searchResults.value = SearchResults()
        }
    }

    // --- Navigazione ---

    fun selectSection(section: AppSection) {
        sectionStates.closeAllHeaders()
        _selectedSection.value = section
    }

    fun openDetail(target: DetailTarget) {
        sectionStates.closeAllHeaders()
        _actionTarget.value = null
        _detailTarget.value = target
    }

    fun closeDetail() {
        _detailTarget.value = null
    }

    fun openActions(target: ActionTarget) {
        _actionTarget.value = target
    }

    /** Dai Preferiti: apre la sezione Live sulla categoria scelta. */
    fun selectLiveCategory(categoryId: String) {
        sectionStates.selectCategory("live", categoryId)
        sectionStates.closeAllHeaders()
        _selectedSection.value = AppSection.LIVE
    }

    fun closeActions() {
        _actionTarget.value = null
    }

    fun openPositionDialog(channel: MyChannel, isNewChannel: Boolean) {
        _actionTarget.value = null
        _positionDialog.value = PositionDialogState(channel = channel, isNewChannel = isNewChannel)
    }

    fun closePositionDialog() {
        _positionDialog.value = null
    }

    /**
     * Tasto Indietro: chiude prima pannello azioni, dialogo, tendina delle
     * categorie o pagina di dettaglio aperti; poi da qualunque sezione torna a
     * Novità; da Novità esce dall'app, senza conferma. I popup di sistema
     * (sheet, dialoghi) gestiscono Indietro da soli in Android: questo metodo
     * copre gli stati che non sono popup.
     */
    fun onBackPressed(): BackAction {
        return when {
            _actionTarget.value != null -> {
                _actionTarget.value = null
                BackAction.SHEET_CLOSED
            }
            _positionDialog.value != null -> {
                _positionDialog.value = null
                BackAction.DIALOG_CLOSED
            }
            _detailTarget.value != null -> {
                _detailTarget.value = null
                BackAction.DETAIL_CLOSED
            }
            sectionStates.anyHeaderOpen() -> {
                sectionStates.closeAllHeaders()
                BackAction.DROPDOWN_CLOSED
            }
            _selectedSection.value != AppSection.NOVITA -> {
                _selectedSection.value = AppSection.NOVITA
                BackAction.HOME
            }
            else -> BackAction.EXIT_APP
        }
    }

    // --- Riproduzione: richieste osservate dalla schermata host del player. ---
    fun onPlayRequest(target: PlayTarget) {
        _playRequest.value = target
    }

    fun consumePlayRequest(target: PlayTarget) {
        if (_playRequest.value == target) _playRequest.value = null
    }

    // --- Avvisi brevi (snackbar) ---

    private fun postNotice(message: String) {
        noticeCounter += 1L
        _notice.value = ActionNotice(id = noticeCounter, message = message)
    }

    fun consumeNotice(id: Long) {
        if (_notice.value?.id == id) {
            _notice.value = null
        }
    }

    companion object {
        const val FAVORITE_ADDED = "Aggiunto ai preferiti"
        const val FAVORITE_REMOVED = "Rimosso dai preferiti"
        const val CATEGORY_FAVORITE_ADDED = "Categoria aggiunta ai preferiti"
        const val CATEGORY_FAVORITE_REMOVED = "Categoria rimossa dai preferiti"
        const val MY_CHANNEL_ADDED = "Aggiunto a I miei canali"
        const val MY_CHANNEL_REMOVED = "Rimosso da I miei canali"
        const val ADDED_AT_POSITION_PREFIX = "Aggiunto in posizione"
        const val MOVED_TO_POSITION_PREFIX = "Spostato in posizione"
        const val CONTINUE_REMOVED = "Rimosso da Continua a guardare"

        /** Debounce della ricerca, come nella sezione Cerca della TV. */
        const val SEARCH_DEBOUNCE_MILLIS = 300L
    }
}
