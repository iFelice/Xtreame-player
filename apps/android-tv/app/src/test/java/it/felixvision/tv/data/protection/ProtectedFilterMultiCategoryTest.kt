package it.felixvision.tv.data.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Contenuti con più categorie (`category_id` + `category_ids`): nascondere una
 * QUALSIASI delle loro categorie li nasconde, anche quando la categoria
 * principale resta visibile. Dati inventati ("001", "002", …).
 */
class ProtectedFilterMultiCategoryTest {

    // Film: 201 è in entrambe le categorie, 202 solo in "001", 203 solo in "002".
    private val vodStreams = listOf(
        VodStream(
            streamId = "201",
            name = "Film in due categorie",
            categoryId = "001",
            categoryIds = listOf("001", "002"),
        ),
        VodStream(streamId = "202", name = "Film in una categoria", categoryId = "001"),
        VodStream(streamId = "203", name = "Film in due", categoryId = "002"),
    )
    private val series = listOf(
        SeriesItem(
            seriesId = "301",
            name = "Serie in due categorie",
            categoryId = "001",
            categoryIds = listOf("002"),
        ),
        SeriesItem(seriesId = "302", name = "Serie in due", categoryId = "002"),
    )
    private val liveStreams = listOf(
        LiveStream(
            streamId = "101",
            name = "Canale in due categorie",
            categoryId = "001",
            categoryIds = listOf("002"),
        ),
        LiveStream(streamId = "102", name = "Canale in due", categoryId = "002"),
    )
    private val catalog = Catalog(
        liveCategories = listOf(
            Category(categoryId = "001", categoryName = "News"),
            Category(categoryId = "002", categoryName = "Sport"),
        ),
        liveStreams = liveStreams,
        vodCategories = listOf(
            Category(categoryId = "001", categoryName = "Azione"),
            Category(categoryId = "002", categoryName = "Ultimi usciti"),
        ),
        vodStreams = vodStreams,
        seriesCategories = listOf(
            Category(categoryId = "001", categoryName = "Dramma"),
            Category(categoryId = "002", categoryName = "Serie recenti"),
        ),
        series = series,
        updatedAtMillis = 1_700_000_000_000L,
    )

    private fun hidden(kind: ProtectedKind, categoryId: String): ProtectedContentData =
        ProtectedContentData(
            hiddenCategories = listOf(HiddenCategory(kind.storageKey, categoryId, "nascosta")),
        )

    // --- catalogo ---

    @Test
    fun `categoria secondaria nascosta nasconde il film anche nella principale`() {
        val filtered = ProtectedFilter.filterCatalog(catalog, hidden(ProtectedKind.VOD, "002"))

        // Sparisce la categoria "002" e con lei il film che vi appartiene, che
        // quindi non compare più nemmeno in "001".
        assertEquals(listOf("001"), filtered.vodCategories.map { it.categoryId })
        assertEquals(listOf("202"), filtered.vodStreams.map { it.streamId })
    }

    @Test
    fun `categoria principale nascosta nasconde anche il contenuto con altre categorie`() {
        val filtered = ProtectedFilter.filterCatalog(catalog, hidden(ProtectedKind.VOD, "001"))

        assertEquals(listOf("002"), filtered.vodCategories.map { it.categoryId })
        assertEquals(listOf("203"), filtered.vodStreams.map { it.streamId })
    }

    @Test
    fun `serie con due categorie sparisce da tutte`() {
        val filtered = ProtectedFilter.filterCatalog(catalog, hidden(ProtectedKind.SERIES, "002"))

        assertEquals(listOf("001"), filtered.seriesCategories.map { it.categoryId })
        assertEquals(emptyList<String>(), filtered.series.map { it.seriesId })
    }

    @Test
    fun `canale con due categorie sparisce da tutte`() {
        // Categoria principale ("001") nascosta: sparisce anche il canale che ha
        // "002" fra le sue categorie.
        val filtered = ProtectedFilter.filterCatalog(catalog, hidden(ProtectedKind.LIVE, "001"))
        assertEquals(listOf("102"), filtered.liveStreams.map { it.streamId })

        // Categoria secondaria ("002") nascosta: spariscono entrambi i canali,
        // perché "101" la ha nell'elenco e "102" la ha come principale.
        val filteredBySecondary = ProtectedFilter.filterCatalog(catalog, hidden(ProtectedKind.LIVE, "002"))
        assertEquals(emptyList<String>(), filteredBySecondary.liveStreams.map { it.streamId })
    }

    @Test
    fun `un contenuto nascosto singolarmente resta nascosto in tutte le sue categorie`() {
        val data = ProtectedContentData(
            hiddenItems = listOf(
                HiddenItem(ProtectedKind.VOD.storageKey, "201", "001", "Film in due categorie"),
            ),
        )
        val filtered = ProtectedFilter.filterCatalog(catalog, data)

        assertEquals(listOf("202", "203"), filtered.vodStreams.map { it.streamId })
        // Le categorie restano: non è nascosta nessuna categoria intera.
        assertEquals(listOf("001", "002"), filtered.vodCategories.map { it.categoryId })
    }

    // --- Novità / recenti ---

    @Test
    fun `recenti tolgono il contenuto nascosto per una categoria secondaria`() {
        assertEquals(
            listOf("202"),
            ProtectedFilter.filterVodStreams(vodStreams, hidden(ProtectedKind.VOD, "002")).map { it.streamId },
        )
        assertEquals(
            listOf("302"),
            ProtectedFilter.filterSeries(series, hidden(ProtectedKind.SERIES, "001")).map { it.seriesId },
        )
    }

    // --- I miei canali ---

    @Test
    fun `i miei canali usano tutte le categorie del canale`() {
        val channels = listOf(
            MyChannel(streamId = "101", name = "Canale in due categorie"),
            MyChannel(streamId = "102", name = "Canale in due"),
        )

        // Nascosta "001": "101" ha "001" come principale, "102" resta.
        assertEquals(
            listOf("102"),
            ProtectedFilter.filterMyChannels(
                channels,
                hidden(ProtectedKind.LIVE, "001"),
                liveStreams,
            ).map { it.streamId },
        )
        // Nascosta "002": spariscono entrambi ("101" la ha nell'elenco).
        assertEquals(
            emptyList<String>(),
            ProtectedFilter.filterMyChannels(
                channels,
                hidden(ProtectedKind.LIVE, "002"),
                liveStreams,
            ).map { it.streamId },
        )
    }

    // --- Preferiti ---

    @Test
    fun `il preferito resta agganciato alla categoria principale`() {
        // FavoriteItem.categoryId resta la categoria principale salvata: la
        // categoria secondaria nascosta non tocca la voce dei preferiti (il
        // contenuto è comunque tolto dalle liste del catalogo, filterCatalog).
        val favorites = listOf(
            FavoriteItem(
                id = "vod_201",
                type = FavoriteItem.VOD,
                title = "Film in due categorie",
                categoryId = "001",
            ),
        )
        assertEquals(favorites, ProtectedFilter.filterFavorites(favorites, hidden(ProtectedKind.VOD, "002")))
    }
}
