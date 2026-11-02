package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Un contenuto assegnato dal provider a più categorie (`category_id` "001" +
 * `category_ids` ["001", "002"]) compare in OGNI categoria, non solo nella
 * principale. L'ordine dentro la categoria resta quello dell'elenco del
 * provider. Dati inventati.
 */
class MultiCategoryMembershipTest {

    private val filmDoppio = VodStream(
        streamId = "201",
        name = "Film in due categorie",
        categoryId = "001",
        categoryIds = listOf("001", "002"),
    )
    private val filmSoloUno = VodStream(streamId = "202", name = "Film in una categoria", categoryId = "001")
    private val filmSoloDue = VodStream(streamId = "203", name = "Film in due", categoryId = "002")
    private val serieDoppia = SeriesItem(
        seriesId = "301",
        name = "Serie in due categorie",
        categoryId = "001",
        categoryIds = listOf("002"),
    )

    @Test
    fun `filmsForCategory mostra il film in tutte le sue categorie`() {
        val streams = listOf(filmDoppio, filmSoloUno, filmSoloDue)

        assertEquals(listOf(filmDoppio, filmSoloUno), filmsForCategory("001", streams, emptyList()))
        assertEquals(listOf(filmDoppio, filmSoloDue), filmsForCategory("002", streams, emptyList()))
        // Ordine del provider, non quello dell'elenco delle categorie.
        assertEquals(
            listOf(filmDoppio, filmSoloDue),
            filmsForCategory("002", listOf(filmSoloDue, filmDoppio), emptyList()),
        )
        assertTrue(filmsForCategory("003", streams, emptyList()).isEmpty())
    }

    @Test
    fun `seriesForCategory mostra la serie in tutte le sue categorie`() {
        val series = listOf(serieDoppia)

        assertEquals(listOf(serieDoppia), seriesForCategory("001", series, emptyList()))
        assertEquals(listOf(serieDoppia), seriesForCategory("002", series, emptyList()))
        assertTrue(seriesForCategory("003", series, emptyList()).isEmpty())
    }

    @Test
    fun `Novita resta la copia dei recenti e non dipende dalle categorie`() {
        val recent = listOf(filmSoloDue, filmDoppio)
        assertEquals(recent, filmsForCategory(NOVITA_CATEGORY_ID, listOf(filmDoppio), recent))
        assertEquals(
            recent,
            seriesForCategory(NOVITA_CATEGORY_ID, emptyList(), listOf(serieDoppia)),
        )
    }

    @Test
    fun `filtro Live mostra il canale in tutte le sue categorie`() {
        val canaleDoppio = LiveStream(
            streamId = "101",
            name = "Canale in due categorie",
            categoryId = "001",
            categoryIds = listOf("001", "002"),
        )
        val canaleUno = LiveStream(streamId = "102", name = "Canale uno", categoryId = "001")
        val canaleDue = LiveStream(streamId = "103", name = "Canale due", categoryId = "002")
        val streams = listOf(canaleDoppio, canaleUno, canaleDue)

        assertEquals(listOf(canaleDoppio, canaleUno), liveStreamsForCategory("001", streams))
        assertEquals(listOf(canaleDoppio, canaleDue), liveStreamsForCategory("002", streams))
        assertTrue(liveStreamsForCategory(null, streams).isEmpty())
        assertTrue(liveStreamsForCategory("003", streams).isEmpty())
    }

    @Test
    fun `conteggio di una categoria Live preferita conta il canale in ogni sua categoria`() {
        val canaleDoppio = LiveStream(streamId = "101", categoryId = "001", categoryIds = listOf("002"))
        val canaleDue = LiveStream(streamId = "102", categoryId = "002")
        val canaleSenzaCategoria = LiveStream(streamId = "103", categoryId = null)

        val righe = liveCategoryFavorites(
            favorites = listOf(
                FavoriteItem.liveCategory("001", "Notizie"),
                FavoriteItem.liveCategory("002", "Sport"),
            ),
            categories = listOf(
                Category(categoryId = "001", categoryName = "Notizie"),
                Category(categoryId = "002", categoryName = "Sport"),
            ),
            streams = listOf(canaleDoppio, canaleDue, canaleSenzaCategoria),
        )

        assertEquals(listOf(1, 2), righe.map { it.channelCount })
        assertEquals("1 canali", righe[0].supportingText)
        assertEquals("2 canali", righe[1].supportingText)
    }
}
