@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.CachedCatalog
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.CatalogSection
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import it.felixvision.tv.data.catalog.CatalogStage
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesInfoResult
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.advanceUntilIdle
import it.felixvision.mobile.ui.main.AppSection
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Test del [CatalogViewModel] con catalogo, cache e archivi finti (nessun
 * Android né rete; dati di esempio solo demo/demo su http://server.esempio:8080).
 *
 * Il dispatcher principale è sostituito da [StandardTestDispatcher] legato a
 * [TestCoroutineScheduler], così i lanci di ViewModel e la ricerca con
 * debounce di 300 ms si possono pilotare col tempo virtuale. Ogni mutazione
 * UI viene letta dopo `advanceUntilIdle()`/successivi passi di scheduler.
 */
class CatalogViewModelTest {

    private val scheduler = TestCoroutineScheduler()
    private val mainDispatcher = StandardTestDispatcher(scheduler)

    companion object {
        private const val SERVER = "http://server.esempio:8080"
        private const val USERNAME = "demo"
        private const val PASSWORD = "demo"
        private const val DEBOUNCE = 300L
    }

    @Before
    fun setUp() {
        Dispatchers.setMain(mainDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    // --- Finti ---



    private class FakeCatalogGateway(val catalog: Catalog = sampleCatalog()) : CatalogGateway {
        var loadCalls = 0
        val stagesSeen = mutableListOf<CatalogStage>()

        override suspend fun loadCatalog(
            server: String,
            username: String,
            password: String,
            onStage: suspend (CatalogStage) -> Unit,
        ): CatalogResult {
            loadCalls += 1
            val stage = CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = catalog.liveStreams.size,
            )
            stagesSeen.add(stage)
            onStage(stage)
            return CatalogResult.Success(catalog)
        }

        override suspend fun loadVodInfo(
            server: String,
            username: String,
            password: String,
            vodId: String,
        ): VodInfoResult = VodInfoResult.Error("assente nel test")

        override suspend fun loadSeriesInfo(
            server: String,
            username: String,
            password: String,
            seriesId: String,
        ): SeriesInfoResult = SeriesInfoResult.Error("assente nel test")
    }

    private class FakeCacheGateway(var cached: CachedCatalog? = null) : CatalogCacheGateway {
        var savedCount = 0

        override suspend fun load(server: String, username: String): CachedCatalog? = cached

        override suspend fun save(server: String, username: String, catalog: Catalog) {
            savedCount += 1
            cached = CachedCatalog(server = server, username = username, updatedAtMillis = catalog.updatedAtMillis, catalog = catalog)
        }

        override suspend fun clear(server: String, username: String) {
            cached = null
        }

        override suspend fun lastUpdateMillis(server: String, username: String): Long? =
            cached?.updatedAtMillis

        /** Nei test la cache recente non fa scattare l'aggiornamento automatico. */
        override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean = false
    }

    private class FakeFavoritesGateway : FavoritesGateway {
        val favorites = mutableListOf<FavoriteItem>()

        override suspend fun getFavorites(server: String, username: String): List<FavoriteItem> =
            favorites.toList()

        override suspend fun toggleFavorite(
            server: String,
            username: String,
            item: FavoriteItem,
        ): Boolean {
            val existing = favorites.indexOfFirst { it.id == item.id }
            return if (existing >= 0) {
                favorites.removeAt(existing)
                false
            } else {
                favorites.add(item)
                true
            }
        }
    }

    private class FakeMyChannelsGateway : MyChannelsGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        var channels = mutableListOf<MyChannel>()
        var migrateCalls = 0

        private fun bump() {
            _revision.value += 1
        }

        override suspend fun getChannels(server: String, username: String): List<MyChannel> =
            channels.toList()

        override suspend fun add(
            server: String,
            username: String,
            channel: MyChannel,
        ): List<MyChannel> {
            channels.removeAll { it.streamId == channel.streamId }
            channels.add(channel)
            bump()
            return channels.toList()
        }

        override suspend fun insertAt(
            server: String,
            username: String,
            channel: MyChannel,
            position: Int,
        ): List<MyChannel> {
            channels.removeAll { it.streamId == channel.streamId }
            channels.add((position - 1).coerceIn(0, channels.size), channel)
            bump()
            return channels.toList()
        }

        override suspend fun moveTo(
            server: String,
            username: String,
            streamId: String,
            position: Int,
        ): List<MyChannel> {
            val index = channels.indexOfFirst { it.streamId == streamId }
            if (index >= 0) {
                val entry = channels.removeAt(index)
                channels.add((position - 1).coerceIn(0, channels.size), entry)
                bump()
            }
            return channels.toList()
        }

        override suspend fun remove(
            server: String,
            username: String,
            streamId: String,
        ): List<MyChannel> {
            channels.removeAll { it.streamId == streamId }
            bump()
            return channels.toList()
        }

        override suspend fun migrateLegacyLiveFavorites(server: String, username: String): Int {
            migrateCalls += 1
            return 0
        }
    }

    private class FakeContinueWatchingGateway : ContinueWatchingGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        val entries = mutableListOf<ContinueEntry>()

        override suspend fun getAll(server: String, username: String): List<ContinueEntry> =
            entries.toList()

        override suspend fun hide(server: String, username: String, key: String) {
            entries.removeAll { it.key == key }
            _revision.value += 1
        }
    }

    private class FakeProgressGateway : ProgressGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        var progress = emptyMap<String, WatchProgress>()

        override suspend fun getAll(server: String, username: String): Map<String, WatchProgress> =
            progress
    }

    private fun newViewModel(
        catalogGateway: FakeCatalogGateway = FakeCatalogGateway(),
        cacheGateway: FakeCacheGateway = FakeCacheGateway(),
        favoritesGateway: FakeFavoritesGateway = FakeFavoritesGateway(),
        myChannelsGateway: FakeMyChannelsGateway = FakeMyChannelsGateway(),
        continueGateway: FakeContinueWatchingGateway = FakeContinueWatchingGateway(),
        progressGateway: FakeProgressGateway = FakeProgressGateway(),
    ): CatalogViewModel = CatalogViewModel(
        server = SERVER,
        username = USERNAME,
        password = PASSWORD,
        catalogGateway = catalogGateway,
        cacheGateway = cacheGateway,
        favoritesGateway = favoritesGateway,
        myChannelsGateway = myChannelsGateway,
        continueGateway = continueGateway,
        progressGateway = progressGateway,
    )

    // --- Casi ---

    @Test
    fun `senza cache il caricamento va in rete e poi salva in cache`() = runTest(scheduler) {
        val gateway = FakeCatalogGateway()
        val cache = FakeCacheGateway()
        val viewModel = newViewModel(catalogGateway = gateway, cacheGateway = cache)

        advanceUntilIdle()

        assertEquals("caricamenti di rete", 1, gateway.loadCalls)
        assertEquals("salvataggi in cache", 1, cache.savedCount)
        assertNull(viewModel.ui.value.errorMessage)
        assertEquals("catalogo caricato", gateway.catalog, viewModel.ui.value.catalog)
        assertTrue("tappe di avanzamento viste: ${gateway.stagesSeen}", gateway.stagesSeen.isNotEmpty())
        assertTrue("data aggiornamento valorizzata", viewModel.ui.value.lastUpdateMillis != null)
    }

    @Test
    fun `con cache prima si vede subito il salvataggio`() = runTest(scheduler) {
        val cachedCatalog = sampleCatalog(updatedAt = 42L)
        val cache = FakeCacheGateway(CachedCatalog(server = SERVER, username = USERNAME, updatedAtMillis = 42L, catalog = cachedCatalog))
        val gateway = FakeCatalogGateway()
        val viewModel = newViewModel(catalogGateway = gateway, cacheGateway = cache)

        advanceUntilIdle()

        // Con cache recente (auto-refresh disattivato nel finto) nessun nuovo
        // caricamento di rete: il catalogo è quello salvato.
        assertEquals(0, gateway.loadCalls)
        assertEquals(42L, viewModel.ui.value.lastUpdateMillis)
        assertEquals(cachedCatalog, viewModel.ui.value.catalog)
    }

    @Test
    fun `toggleFavorite aggiunge e rimuove con conferma breve`() = runTest(scheduler) {
        val favorites = FakeFavoritesGateway()
        val viewModel = newViewModel(favoritesGateway = favorites)
        advanceUntilIdle()

        val item = FavoriteItem(
            id = "vod_201",
            type = FavoriteItem.VOD,
            title = "Film Esempio",
            poster = null,
        )
        viewModel.toggleFavorite(item)
        advanceUntilIdle()

        assertTrue(viewModel.isFavorite("vod_201"))
        assertEquals(CatalogViewModel.FAVORITE_ADDED, viewModel.notice.value?.message)

        viewModel.toggleFavorite(item)
        advanceUntilIdle()

        assertFalse(viewModel.isFavorite("vod_201"))
        assertEquals(CatalogViewModel.FAVORITE_REMOVED, viewModel.notice.value?.message)
    }

    @Test
    fun `sposta in posizione rinumerando al rilascio del trascinamento`() = runTest(scheduler) {
        val myChannels = FakeMyChannelsGateway()
        myChannels.channels.addAll(
            listOf(
                MyChannel(streamId = "101", name = "Canale Uno"),
                MyChannel(streamId = "102", name = "Canale Due"),
                MyChannel(streamId = "103", name = "Canale Tre"),
            ),
        )
        val viewModel = newViewModel(myChannelsGateway = myChannels)
        advanceUntilIdle()
        assertEquals(
            listOf("101", "102", "103"),
            viewModel.myChannels.value.map { it.streamId },
        )

        // "Sposta in posizione n°" (rilascio del drag: dalla 1 alla 3).
        viewModel.moveMyChannelTo("101", 3)
        advanceUntilIdle()

        assertEquals(
            listOf("102", "103", "101"),
            viewModel.myChannels.value.map { it.streamId },
        )
    }

    @Test
    fun `aggiungi in posizione mantiene l'ordine richiesto`() = runTest(scheduler) {
        val myChannels = FakeMyChannelsGateway()
        myChannels.channels.add(MyChannel(streamId = "101", name = "Canale Uno"))
        val viewModel = newViewModel(myChannelsGateway = myChannels)
        advanceUntilIdle()

        viewModel.insertMyChannelAt(
            MyChannel(streamId = "104", name = "Canale Quattro"),
            position = 1,
        )
        advanceUntilIdle()

        assertEquals(
            listOf("104", "101"),
            viewModel.myChannels.value.map { it.streamId },
        )
    }

    @Test
    fun `rimozione da Continua a guardare nasconde la voce`() = runTest(scheduler) {
        val continueGateway = FakeContinueWatchingGateway()
        continueGateway.entries.add(
            ContinueEntry.movie(
                streamId = "201",
                title = "Film Esempio",
                poster = null,
                categoryId = null,
                containerExtension = null,
            ),
        )
        val viewModel = newViewModel(continueGateway = continueGateway)
        advanceUntilIdle()

        val entry = viewModel.continueEntries.value.single()
        viewModel.hideContinueEntry(entry)
        advanceUntilIdle()

        assertTrue(viewModel.continueEntries.value.isEmpty())
        assertEquals(CatalogViewModel.CONTINUE_REMOVED, viewModel.notice.value?.message)
    }

    @Test
    fun `ricerca con debounce di 300 ms - i risultati arrivano solo dopo l'attesa`() =
        runTest(scheduler) {
            val viewModel = newViewModel()
            advanceUntilIdle()

            viewModel.onSearchQueryChange("Canale")
            // Prima del debounce nessun risultato nuovo.
            advanceTimeBy(100)
            runCurrent()
            assertTrue(viewModel.searchResults.value.isEmpty)

            advanceTimeBy(DEBOUNCE - 100 + 1)
            runCurrent()

            assertTrue(
                viewModel.searchResults.value.live.any { it.name == "Canale Uno" },
            )
        }

    @Test
    fun `onPlayRequest pubblica la destinazione del player senza snackbar provvisoria`() =
        runTest(scheduler) {
            val viewModel = newViewModel()
            advanceUntilIdle()

            val target = PlayTarget.LiveChannel("101")
            viewModel.onPlayRequest(target)
            advanceUntilIdle()

            assertEquals(target, viewModel.playRequest.value)
            assertNull(viewModel.notice.value)
            viewModel.consumePlayRequest(target)
            assertNull(viewModel.playRequest.value)
        }

    @Test
    fun `indietro dalla sezione Film torna a Novita e da Novita chiede l'uscita`() =
        runTest(scheduler) {
            val viewModel = newViewModel()
            advanceUntilIdle()

            viewModel.selectSection(AppSection.FILM)
            assertEquals(AppSection.FILM, viewModel.selectedSection.value)

            assertEquals(BackAction.HOME, viewModel.onBackPressed())
            assertEquals(AppSection.NOVITA, viewModel.selectedSection.value)
            assertEquals(BackAction.EXIT_APP, viewModel.onBackPressed())
        }

    // --- Dati di esempio (solo demo/demo su http://server.esempio:8080) ---
}

private fun sampleCatalog(updatedAt: Long = 1_000L): Catalog = Catalog(
    liveCategories = listOf(
        Category(categoryId = "c1", categoryName = "Generale"),
        Category(categoryId = "c2", categoryName = "Sport"),
    ),
    liveStreams = listOf(
        LiveStream(num = 1, name = "Canale Uno", streamId = "101", categoryId = "c1"),
        LiveStream(num = 2, name = "Canale Due", streamId = "102", categoryId = "c1"),
        LiveStream(num = 3, name = "Sport Uno", streamId = "103", categoryId = "c2"),
    ),
    vodCategories = listOf(Category(categoryId = "v1", categoryName = "Film")),
    vodStreams = listOf(
        VodStream(streamId = "201", name = "Film Esempio", categoryId = "v1"),
    ),
    seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie")),
    series = listOf(
        SeriesItem(seriesId = "301", name = "Serie Esempio", categoryId = "s1"),
    ),
    updatedAtMillis = updatedAt,
)
