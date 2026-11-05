package it.felixvision.mobile.ui.main

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedKind
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Scelta delle liste della schermata principale: con la sessione sbloccata
 * passano le liste originali (stesse istanze), con la sessione bloccata
 * passano quelle filtrate. Nessun Android, nessuna composizione.
 */
class VisibleContentTest {

    private val catalog = Catalog(
        liveCategories = listOf(
            Category(categoryId = "001", categoryName = "News"),
            Category(categoryId = "002", categoryName = "Sport"),
        ),
        liveStreams = listOf(
            LiveStream(streamId = "101", name = "Canale uno", categoryId = "001"),
            LiveStream(streamId = "102", name = "Canale due", categoryId = "002"),
        ),
        vodCategories = listOf(Category(categoryId = "10", categoryName = "Azione")),
        vodStreams = listOf(
            VodStream(streamId = "201", name = "Film uno", categoryId = "10"),
            VodStream(streamId = "202", name = "Film due", categoryId = "10"),
        ),
        seriesCategories = listOf(Category(categoryId = "20", categoryName = "Dramma")),
        series = listOf(
            SeriesItem(seriesId = "301", name = "Serie uno", categoryId = "20"),
            SeriesItem(seriesId = "302", name = "Serie due", categoryId = "20"),
        ),
        updatedAtMillis = 1_700_000_000_000L,
    )

    private val recentFilms = listOf(
        VodStream(streamId = "201", name = "Film uno", categoryId = "10"),
        VodStream(streamId = "202", name = "Film due", categoryId = "10"),
    )
    private val recentSeries = listOf(
        SeriesItem(seriesId = "301", name = "Serie uno", categoryId = "20"),
        SeriesItem(seriesId = "302", name = "Serie due", categoryId = "20"),
    )
    private val favorites = listOf(
        FavoriteItem(id = "vod_201", type = FavoriteItem.VOD, title = "Film uno", categoryId = "10"),
        FavoriteItem(id = "vod_202", type = FavoriteItem.VOD, title = "Film due", categoryId = "10"),
    )
    private val continueEntries = listOf(
        ContinueEntry.movie("201", "Film uno", null, "10", "mp4"),
        ContinueEntry.movie("202", "Film due", null, "10", "mkv"),
    )
    private val myChannels = listOf(
        MyChannel(streamId = "101", name = "Canale uno"),
        MyChannel(streamId = "102", name = "Canale due"),
    )

    private val data = ProtectedContentData(
        hiddenCategories = listOf(HiddenCategory(ProtectedKind.LIVE.storageKey, "001", "News")),
        hiddenItems = listOf(
            HiddenItem(ProtectedKind.VOD.storageKey, "201", "10", "Film uno"),
            HiddenItem(ProtectedKind.SERIES.storageKey, "302", "20", "Serie due"),
        ),
    )

    @Test
    fun `sessione sbloccata usa le liste originali`() {
        val visible = visibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = data,
            unlocked = true,
        )

        assertSame(catalog, visible.catalog)
        assertSame(recentFilms, visible.recentFilms)
        assertSame(recentSeries, visible.recentSeries)
        assertSame(favorites, visible.favorites)
        assertSame(continueEntries, visible.continueEntries)
        assertSame(myChannels, visible.myChannels)
        assertFalse(visible.pending)
    }

    @Test
    fun `sessione bloccata usa le liste filtrate`() {
        val visible = visibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = data,
            unlocked = false,
        )

        val visibleCatalog = visible.catalog
        requireNotNull(visibleCatalog)
        assertEquals(listOf("002"), visibleCatalog.liveCategories.map { it.categoryId })
        assertEquals(listOf("102"), visibleCatalog.liveStreams.map { it.streamId })
        assertEquals(listOf("202"), visibleCatalog.vodStreams.map { it.streamId })
        assertEquals(listOf("301"), visibleCatalog.series.map { it.seriesId })
        assertEquals(catalog.updatedAtMillis, visibleCatalog.updatedAtMillis)

        assertEquals(listOf("202"), visible.recentFilms.map { it.streamId })
        assertEquals(listOf("301"), visible.recentSeries.map { it.seriesId })
        assertEquals(listOf("vod_202"), visible.favorites.map { it.id })
        assertEquals(listOf("vod_202"), visible.continueEntries.map { it.key })
        // Canale 101: la categoria "001" è nascosta e la si ricava dal catalogo
        // completo, non da quello già filtrato.
        assertEquals(listOf("102"), visible.myChannels.map { it.streamId })
        assertFalse(visible.pending)
    }

    @Test
    fun `sessione bloccata senza nulla di nascosto non copia le liste`() {
        val visible = visibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = ProtectedContentData(),
            unlocked = false,
        )

        assertSame(catalog, visible.catalog)
        assertSame(recentFilms, visible.recentFilms)
        assertSame(recentSeries, visible.recentSeries)
        assertSame(favorites, visible.favorites)
        assertSame(continueEntries, visible.continueEntries)
        assertSame(myChannels, visible.myChannels)
    }

    @Test
    fun `sessione bloccata con archivio non letto non mostra nulla`() {
        // L'archivio dei contenuti protetti dell'account corrente non è ancora
        // stato letto: finché la sessione è bloccata non si mostra niente.
        val visible = visibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = null,
            unlocked = false,
        )

        assertTrue(visible.pending)
        assertEquals(null, visible.catalog)
        assertTrue(visible.recentFilms.isEmpty())
        assertTrue(visible.recentSeries.isEmpty())
        assertTrue(visible.favorites.isEmpty())
        assertTrue(visible.continueEntries.isEmpty())
        assertTrue(visible.myChannels.isEmpty())
    }

    @Test
    fun `sessione sbloccata con archivio non letto mostra tutto`() {
        // Con la sessione sbloccata i contenuti protetti si possono vedere, non
        // serve aspettare l'archivio.
        val visible = visibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = null,
            unlocked = true,
        )

        assertFalse(visible.pending)
        assertSame(catalog, visible.catalog)
        assertSame(recentFilms, visible.recentFilms)
        assertSame(recentSeries, visible.recentSeries)
        assertSame(favorites, visible.favorites)
        assertSame(continueEntries, visible.continueEntries)
        assertSame(myChannels, visible.myChannels)
    }

    @Test
    fun `catalogo assente lascia le altre liste filtrate`() {
        val visible = visibleContent(
            catalog = null,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = data,
            unlocked = false,
        )

        assertEquals(null, visible.catalog)
        assertEquals(listOf("202"), visible.recentFilms.map { it.streamId })
        // Senza catalogo la categoria dei canali non si ricava: sparisce solo
        // chi è nascosto singolarmente (qui nessuno).
        assertEquals(listOf("101", "102"), visible.myChannels.map { it.streamId })
        assertFalse(visible.pending)
    }
}
