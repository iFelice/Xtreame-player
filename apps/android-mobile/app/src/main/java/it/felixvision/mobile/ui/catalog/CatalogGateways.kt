package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.CachedCatalog
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.catalog.CatalogClient
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.CatalogStage
import it.felixvision.tv.data.catalog.SeriesInfoResult
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueWatchingStore
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentStore
import kotlinx.coroutines.flow.StateFlow

/**
 * Punti di accesso iniettabili ai dati condivisi (data/ della TV): il
 * [CatalogViewModel] dipende da queste interfacce strette invece che dai
 * client/store concreti, così i test girano con catalogo, cache e archivi
 * finti senza Android né rete. In app le implementazioni predefinite
 * delegano alle classi condivise costruite dall'AppContainer.
 */
interface ProtectedContentGateway {
    val revision: StateFlow<Long>
    suspend fun get(server: String, username: String): ProtectedContentData
}

class StoreProtectedContentGateway(private val store: ProtectedContentStore) : ProtectedContentGateway {
    override val revision: StateFlow<Long> = store.revision
    override suspend fun get(server: String, username: String): ProtectedContentData = store.get(server, username)
}

interface CatalogGateway {

    suspend fun loadCatalog(
        server: String,
        username: String,
        password: String,
        onStage: suspend (CatalogStage) -> Unit,
    ): CatalogResult

    suspend fun loadVodInfo(
        server: String,
        username: String,
        password: String,
        vodId: String,
    ): VodInfoResult

    suspend fun loadSeriesInfo(
        server: String,
        username: String,
        password: String,
        seriesId: String,
    ): SeriesInfoResult
}

/** Implementazione reale su [CatalogClient] condiviso. */
class LiveCatalogGateway(private val client: CatalogClient) : CatalogGateway {

    override suspend fun loadCatalog(
        server: String,
        username: String,
        password: String,
        onStage: suspend (CatalogStage) -> Unit,
    ): CatalogResult = client.loadCatalog(server, username, password, onStage)

    override suspend fun loadVodInfo(
        server: String,
        username: String,
        password: String,
        vodId: String,
    ): VodInfoResult = client.getVodInfo(server, username, password, vodId)

    override suspend fun loadSeriesInfo(
        server: String,
        username: String,
        password: String,
        seriesId: String,
    ): SeriesInfoResult = client.getSeriesInfo(server, username, password, seriesId)
}

interface CatalogCacheGateway {

    suspend fun load(server: String, username: String): CachedCatalog?

    suspend fun save(server: String, username: String, catalog: Catalog)

    suspend fun clear(server: String, username: String)

    suspend fun lastUpdateMillis(server: String, username: String): Long?

    fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean
}

/** Implementazione reale su [CatalogCache] condiviso; l'orologio è iniettato. */
class FileCatalogCacheGateway(
    private val cache: CatalogCache,
    private val clock: Clock,
) : CatalogCacheGateway {

    override suspend fun load(server: String, username: String): CachedCatalog? =
        cache.load(server, username)

    override suspend fun save(server: String, username: String, catalog: Catalog) =
        cache.save(server, username, catalog)

    override suspend fun clear(server: String, username: String) =
        cache.clear(server, username)

    override suspend fun lastUpdateMillis(server: String, username: String): Long? =
        cache.lastUpdateMillis(server, username)

    override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean =
        cache.shouldAutoRefresh(lastUpdateMillis, clock.nowMillis())
}

interface FavoritesGateway {

    suspend fun getFavorites(server: String, username: String): List<FavoriteItem>

    /** Vero se l'elemento è stato aggiunto, falso se tolto. */
    suspend fun toggleFavorite(server: String, username: String, item: FavoriteItem): Boolean
}

/** Implementazione reale su [FavoritesStore] condiviso. */
class StoreFavoritesGateway(private val store: FavoritesStore) : FavoritesGateway {

    override suspend fun getFavorites(server: String, username: String): List<FavoriteItem> =
        store.getFavorites(server, username)

    override suspend fun toggleFavorite(
        server: String,
        username: String,
        item: FavoriteItem,
    ): Boolean = store.toggleFavorite(server, username, item)
}

interface MyChannelsGateway {

    /** Incrementato dopo ogni scrittura: il ViewModel ricarica la lista. */
    val revision: StateFlow<Long>

    suspend fun getChannels(server: String, username: String): List<MyChannel>

    suspend fun add(server: String, username: String, channel: MyChannel): List<MyChannel>

    suspend fun insertAt(
        server: String,
        username: String,
        channel: MyChannel,
        position: Int,
    ): List<MyChannel>

    suspend fun moveTo(
        server: String,
        username: String,
        streamId: String,
        position: Int,
    ): List<MyChannel>

    suspend fun remove(server: String, username: String, streamId: String): List<MyChannel>

    /**
     * Pulizia dei vecchi preferiti Live alla prima apertura dell'account,
     * una sola volta per server+utente (stessa regola della TV).
     */
    suspend fun migrateLegacyLiveFavorites(server: String, username: String): Int
}

/** Implementazione reale su [MyChannelsStore] condiviso. */
class StoreMyChannelsGateway(
    private val store: MyChannelsStore,
    private val favoritesStore: FavoritesStore,
) : MyChannelsGateway {

    override val revision: StateFlow<Long> = store.revision

    override suspend fun getChannels(server: String, username: String): List<MyChannel> =
        store.getChannels(server, username)

    override suspend fun add(server: String, username: String, channel: MyChannel): List<MyChannel> =
        store.add(server, username, channel)

    override suspend fun insertAt(
        server: String,
        username: String,
        channel: MyChannel,
        position: Int,
    ): List<MyChannel> = store.insertAt(server, username, channel, position)

    override suspend fun moveTo(
        server: String,
        username: String,
        streamId: String,
        position: Int,
    ): List<MyChannel> = store.moveTo(server, username, streamId, position)

    override suspend fun remove(server: String, username: String, streamId: String): List<MyChannel> =
        store.remove(server, username, streamId)

    override suspend fun migrateLegacyLiveFavorites(server: String, username: String): Int =
        store.migrateLegacyLiveFavorites(server, username, favoritesStore)
}

interface ContinueWatchingGateway {

    /** Incrementato dopo ogni scrittura: il ViewModel ricarica l'archivio. */
    val revision: StateFlow<Long>

    suspend fun getAll(server: String, username: String): List<ContinueEntry>

    /** Rimuove la voce dalla vista finché il contenuto non viene ripreso. */
    suspend fun hide(server: String, username: String, key: String)
}

/** Implementazione reale su [ContinueWatchingStore] condiviso. */
class StoreContinueWatchingGateway(
    private val store: ContinueWatchingStore,
) : ContinueWatchingGateway {

    override val revision: StateFlow<Long> = store.revision

    override suspend fun getAll(server: String, username: String): List<ContinueEntry> =
        store.getAll(server, username)

    override suspend fun hide(server: String, username: String, key: String) {
        store.hide(server, username, key)
    }
}

interface ProgressGateway {

    /** Incrementato dopo ogni scrittura: il ViewModel ricarica l'avanzamento. */
    val revision: StateFlow<Long>

    suspend fun getAll(server: String, username: String): Map<String, WatchProgress>
}

/** Implementazione reale su [ProgressStore] condiviso. */
class StoreProgressGateway(
    private val store: ProgressStore,
) : ProgressGateway {

    override val revision: StateFlow<Long> = store.revision

    override suspend fun getAll(server: String, username: String): Map<String, WatchProgress> =
        store.getAll(server, username)
}
