package it.felixvision.tv.ui.catalog

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.catalog.CatalogClient
import it.felixvision.tv.data.catalog.CatalogOrdering
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
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
)

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

    init {
        viewModelScope.launch {
            val cached = cache.load(server, username)
            if (cached != null) {
                applyCatalog(cached.catalog, cached.updatedAtMillis)
                _ui.update { it.copy(isLoading = false) }
                if (cache.shouldAutoRefresh(cached.updatedAtMillis)) {
                    refreshInternal(showLoading = false)
                }
            } else {
                refreshInternal(showLoading = true)
            }
        }
    }

    fun refreshManual() {
        viewModelScope.launch { refreshInternal(showLoading = true) }
    }

    private suspend fun refreshInternal(showLoading: Boolean) {
        // Un solo caricamento alla volta: tryLock, se in corso ignora nuova richiesta
        if (!loadMutex.tryLock()) return
        try {
            if (showLoading && _ui.value.catalog == null) {
                _ui.update { it.copy(isLoading = true, errorMessage = null) }
            } else if (showLoading) {
                _ui.update { it.copy(isRefreshing = true, errorMessage = null) }
            } else {
                _ui.update { it.copy(isRefreshing = true) }
            }

            val result = client.loadCatalog(server, username, password)
            when (result) {
                is CatalogResult.Success -> {
                    cache.save(server, username, result.catalog)
                    applyCatalog(result.catalog, result.catalog.updatedAtMillis)
                    _ui.update { it.copy(isLoading = false, isRefreshing = false, errorMessage = null) }
                }
                is CatalogResult.Error -> {
                    _ui.update { it.copy(isLoading = false, isRefreshing = false, errorMessage = result.message) }
                }
            }
        } finally {
            loadMutex.unlock()
        }
    }

    fun retry() {
        viewModelScope.launch { refreshInternal(showLoading = true) }
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
