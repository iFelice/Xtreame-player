package it.felixvision.tv.data.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Test

/**
 * Regole di filtro dei contenuti protetti: dati inventati, nessuna rete, nessun
 * Android. Gli id sono finti ("001", "101", …) come nei test degli altri store.
 */
class ProtectedFilterTest {

    // --- dati inventati ---

    private val liveCategories = listOf(
        Category(categoryId = "001", categoryName = "News"),
        Category(categoryId = "002", categoryName = "Sport"),
    )
    private val liveStreams = listOf(
        LiveStream(streamId = "101", name = "Canale uno", categoryId = "001"),
        LiveStream(streamId = "102", name = "Canale due", categoryId = "002"),
        LiveStream(streamId = "103", name = "Canale tre", categoryId = "002"),
    )
    private val vodCategories = listOf(
        Category(categoryId = "10", categoryName = "Azione"),
        Category(categoryId = "11", categoryName = "Commedia"),
    )
    private val vodStreams = listOf(
        VodStream(streamId = "201", name = "Film uno", categoryId = "10"),
        VodStream(streamId = "202", name = "Film due", categoryId = "11"),
        VodStream(streamId = "203", name = "Film tre", categoryId = "10"),
    )
    private val seriesCategories = listOf(
        Category(categoryId = "20", categoryName = "Dramma"),
        Category(categoryId = "21", categoryName = "Cartoni"),
    )
    private val series = listOf(
        SeriesItem(seriesId = "301", name = "Serie uno", categoryId = "20"),
        SeriesItem(seriesId = "302", name = "Serie due", categoryId = "21"),
        SeriesItem(seriesId = "303", name = "Serie tre", categoryId = "21"),
    )

    private val catalog = Catalog(
        liveCategories = liveCategories,
        liveStreams = liveStreams,
        vodCategories = vodCategories,
        vodStreams = vodStreams,
        seriesCategories = seriesCategories,
        series = series,
        updatedAtMillis = 1_700_000_000_000L,
    )

    private fun hiddenLiveCategory(categoryId: String = "001"): ProtectedContentData =
        ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.LIVE.storageKey, categoryId, "News")),
        )

    private fun hiddenItem(kind: ProtectedKind, itemId: String, categoryId: String?): ProtectedContentData =
        ProtectedContentData(
            hiddenItems = listOf(HiddenItem(kind.storageKey, itemId, categoryId, "nascosto")),
        )

    // --- catalogo ---

    @Test
    fun `categoria Live nascosta sparisce con tutti i suoi canali`() {
        val filtered = ProtectedFilter.filterCatalog(catalog, hiddenLiveCategory())

        assertEquals(listOf("002"), filtered.liveCategories.map { it.categoryId })
        // Il canale della categoria nascosta sparisce anche se non è nell'elenco dei singoli.
        assertEquals(listOf("102", "103"), filtered.liveStreams.map { it.streamId })
        // Film e serie non sono toccati da una categoria Live.
        assertEquals(vodStreams, filtered.vodStreams)
        assertEquals(series, filtered.series)
        // Il momento dell'ultimo aggiornamento resta quello del catalogo.
        assertEquals(catalog.updatedAtMillis, filtered.updatedAtMillis)
    }

    @Test
    fun `categoria Vod nascosta toglie categoria e film`() {
        val data = ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.VOD.storageKey, "11", "Commedia")),
        )
        val filtered = ProtectedFilter.filterCatalog(catalog, data)

        assertEquals(listOf("10"), filtered.vodCategories.map { it.categoryId })
        assertEquals(listOf("201", "203"), filtered.vodStreams.map { it.streamId })
        assertEquals(liveStreams, filtered.liveStreams)
    }

    @Test
    fun `categoria Serie nascosta toglie categoria e serie`() {
        val data = ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.SERIES.storageKey, "21", "Cartoni")),
        )
        val filtered = ProtectedFilter.filterCatalog(catalog, data)

        assertEquals(listOf("20"), filtered.seriesCategories.map { it.categoryId })
        assertEquals(listOf("301"), filtered.series.map { it.seriesId })
    }

    @Test
    fun `un solo film nascosto in una categoria visibile sparisce solo lui`() {
        val data = hiddenItem(ProtectedKind.VOD, "201", "10")
        val filtered = ProtectedFilter.filterCatalog(catalog, data)

        assertEquals(listOf("202", "203"), filtered.vodStreams.map { it.streamId })
        // La categoria resta: non è nascosta per intero.
        assertEquals(listOf("10", "11"), filtered.vodCategories.map { it.categoryId })
        // Niente altro cambia.
        assertEquals(liveStreams, filtered.liveStreams)
        assertEquals(series, filtered.series)
    }

    @Test
    fun `una sola serie nascosta sparisce solo lei`() {
        val data = hiddenItem(ProtectedKind.SERIES, "302", "21")
        val filtered = ProtectedFilter.filterCatalog(catalog, data)

        assertEquals(listOf("301", "303"), filtered.series.map { it.seriesId })
        assertEquals(seriesCategories, filtered.seriesCategories)
    }

    @Test
    fun `catalogo senza nulla di nascosto restituisce la stessa istanza`() {
        assertSame(catalog, ProtectedFilter.filterCatalog(catalog, ProtectedContentData()))
    }

    @Test
    fun `nascosti che non riguardano il catalogo lasciano la stessa istanza`() {
        // Contenuto nascosto di un altro elenco: il catalogo non cambia.
        val data = hiddenItem(ProtectedKind.VOD, "999", "10")
        assertSame(catalog, ProtectedFilter.filterCatalog(catalog, data))
    }

    // --- Novità / recenti ---

    @Test
    fun `film e serie recenti nascondono solo i contenuti protetti`() {
        val data = hiddenItem(ProtectedKind.VOD, "203", "10")
        val recentFilms = ProtectedFilter.filterVodStreams(vodStreams, data)
        assertEquals(listOf("201", "202"), recentFilms.map { it.streamId })

        val seriesData = ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.SERIES.storageKey, "21", "Cartoni")),
        )
        assertEquals(listOf("301"), ProtectedFilter.filterSeries(series, seriesData).map { it.seriesId })
    }

    @Test
    fun `recenti senza nulla di nascosto restituiscono la stessa istanza`() {
        assertSame(vodStreams, ProtectedFilter.filterVodStreams(vodStreams, ProtectedContentData()))
        assertSame(series, ProtectedFilter.filterSeries(series, ProtectedContentData()))
    }

    // --- Preferiti ---

    @Test
    fun `preferiti nascondono film serie categoria live e vecchio canale live`() {
        val favorites = listOf(
            FavoriteItem(id = "vod_201", type = FavoriteItem.VOD, title = "Film uno", categoryId = "10"),
            FavoriteItem(id = "vod_203", type = FavoriteItem.VOD, title = "Film tre", categoryId = "10"),
            FavoriteItem(id = "series_301", type = FavoriteItem.SERIES, title = "Serie uno", categoryId = "20"),
            FavoriteItem(id = "series_302", type = FavoriteItem.SERIES, title = "Serie due", categoryId = "21"),
            FavoriteItem.liveCategory("001", "News"),
            FavoriteItem.liveCategory("002", "Sport"),
            FavoriteItem(id = "live_101", type = FavoriteItem.LIVE, title = "Canale uno", categoryId = "001"),
            FavoriteItem(id = "live_102", type = FavoriteItem.LIVE, title = "Canale due", categoryId = "002"),
        )
        val data = ProtectedContentData(
            hiddenCategories = listOf(
                HiddenCategory(ProtectedKind.LIVE.storageKey, "001", "News"),
                HiddenCategory(ProtectedKind.SERIES.storageKey, "21", "Cartoni"),
            ),
            hiddenItems = listOf(
                HiddenItem(ProtectedKind.VOD.storageKey, "201", "10", "Film uno"),
                HiddenItem(ProtectedKind.LIVE.storageKey, "102", "002", "Canale due"),
            ),
        )

        val visible = ProtectedFilter.filterFavorites(favorites, data)

        assertEquals(
            listOf("vod_203", "series_301", "livecat_002"),
            visible.map { it.id },
        )
    }

    @Test
    fun `categoria Live preferita è nascosta anche quando l'id è l'unica fonte`() {
        // Archivio vecchio: categoryId assente, id `livecat_<categoria>`.
        val favorites = listOf(
            FavoriteItem(id = "livecat_001", type = FavoriteItem.LIVE_CATEGORY, title = "News"),
            FavoriteItem(id = "livecat_002", type = FavoriteItem.LIVE_CATEGORY, title = "Sport"),
        )
        val visible = ProtectedFilter.filterFavorites(favorites, hiddenLiveCategory())
        assertEquals(listOf("livecat_002"), visible.map { it.id })
    }

    @Test
    fun `preferiti senza nulla di nascosto restituiscono la stessa istanza`() {
        val favorites = listOf(
            FavoriteItem(id = "vod_201", type = FavoriteItem.VOD, title = "Film uno", categoryId = "10"),
            FavoriteItem.liveCategory("001", "News"),
        )
        assertSame(favorites, ProtectedFilter.filterFavorites(favorites, ProtectedContentData()))
    }

    // --- Continua a guardare ---

    @Test
    fun `continua a guardare nasconde film e serie protetti`() {
        val entries = listOf(
            ContinueEntry.movie(
                streamId = "201",
                title = "Film uno",
                poster = null,
                categoryId = "10",
                containerExtension = "mp4",
            ),
            ContinueEntry.movie(
                streamId = "203",
                title = "Film tre",
                poster = null,
                categoryId = "10",
                containerExtension = "mkv",
            ),
            ContinueEntry.series(
                seriesId = "301",
                title = "Serie uno",
                poster = null,
                categoryId = "20",
                episode = null,
            ),
            ContinueEntry.series(
                seriesId = "302",
                title = "Serie due",
                poster = null,
                categoryId = "21",
                episode = null,
            ),
        )
        val data = ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.SERIES.storageKey, "21", "Cartoni")),
            hiddenItems = listOf(HiddenItem(ProtectedKind.VOD.storageKey, "201", "10", "Film uno")),
        )

        val visible = ProtectedFilter.filterContinueEntries(entries, data)

        assertEquals(listOf("vod_203", "series_301"), visible.map { it.key })
    }

    @Test
    fun `continua a guardare senza nulla di nascosto restituisce la stessa istanza`() {
        val entries = listOf(
            ContinueEntry.movie("201", "Film uno", null, "10", "mp4"),
            ContinueEntry.series("301", "Serie uno", null, "20", null),
        )
        assertSame(entries, ProtectedFilter.filterContinueEntries(entries, ProtectedContentData()))
    }

    // --- I miei canali ---

    @Test
    fun `i miei canali usano la categoria ricavata dai canali Live`() {
        val channels = listOf(
            MyChannel(streamId = "101", name = "Canale uno"), // categoria nascosta 001
            MyChannel(streamId = "102", name = "Canale due"), // nascosto singolarmente
            MyChannel(streamId = "103", name = "Canale tre"), // visibile
            MyChannel(streamId = "999", name = "Fuori catalogo"), // categoria ignota: resta
        )
        val data = ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(ProtectedKind.LIVE.storageKey, "001", "News")),
            hiddenItems = listOf(HiddenItem(ProtectedKind.LIVE.storageKey, "102", "002", "Canale due")),
        )

        val visible = ProtectedFilter.filterMyChannels(channels, data, liveStreams)

        assertEquals(listOf("103", "999"), visible.map { it.streamId })
    }

    @Test
    fun `i miei canali senza nulla di nascosto restituiscono la stessa istanza`() {
        val channels = listOf(MyChannel(streamId = "101", name = "Canale uno"))
        assertSame(channels, ProtectedFilter.filterMyChannels(channels, ProtectedContentData(), liveStreams))
    }

    @Test
    fun `i miei canali senza catalogo tolgono solo i canali nascosti singolarmente`() {
        val channels = listOf(
            MyChannel(streamId = "101", name = "Canale uno"),
            MyChannel(streamId = "103", name = "Canale tre"),
        )
        val data = hiddenItem(ProtectedKind.LIVE, "101", "001")

        val visible = ProtectedFilter.filterMyChannels(channels, data, emptyList())

        assertEquals(listOf("103"), visible.map { it.streamId })
    }
}
