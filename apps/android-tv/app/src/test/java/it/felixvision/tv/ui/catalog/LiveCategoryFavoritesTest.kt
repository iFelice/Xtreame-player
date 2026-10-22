package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.favorites.FavoriteItem
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class LiveCategoryFavoritesTest {
    private val category = Category(categoryId = "001", categoryName = "Notizie")
    private val favorite = FavoriteItem.liveCategory("001", "Notizie")

    @Test
    fun `riga Categorie Live filtra solo il nuovo tipo e conserva l'ordine`() {
        val otherCategory = FavoriteItem.liveCategory("002", "Sport")
        val favorites = listOf(
            FavoriteItem("live_001", "live", "Canale demo"),
            otherCategory,
            FavoriteItem("vod_001", "vod", "Film demo"),
            favorite,
            FavoriteItem("series_001", "series", "Serie demo"),
        )
        val rows = liveCategoryFavorites(favorites, listOf(category), emptyList())
        assertEquals(listOf(otherCategory, favorite), rows.map { it.favorite })
        assertTrue(liveCategoryFavorites(favorites.filterNot { it.type == FavoriteItem.LIVE_CATEGORY }, emptyList(), emptyList()).isEmpty())
        assertTrue(liveCategoryFavorites(emptyList(), listOf(category), emptyList()).isEmpty())
    }

    @Test
    fun `categoria assente non disponibile anche con canali orfani`() {
        val rows = liveCategoryFavorites(
            listOf(favorite), emptyList(),
            listOf(LiveStream(streamId = "001", categoryId = "001")),
        )
        assertFalse(rows.single().available)
        assertEquals("Non più disponibile", rows.single().supportingText)
        assertEquals(0, rows.single().channelCount)
        assertEquals(favorite, rows.single().favorite)
    }

    @Test
    fun `categoria presente vuota disponibile con zero canali`() {
        val item = liveCategoryFavorites(listOf(favorite), listOf(category), emptyList()).single()
        assertTrue(item.available)
        assertEquals(0, item.channelCount)
        assertEquals("0 canali", item.supportingText)
    }

    @Test
    fun `conteggio usa solo i canali della categoria nel catalogo attuale`() {
        val streams = listOf(
            LiveStream(streamId = "001", categoryId = "001"),
            LiveStream(streamId = "002", categoryId = "001"),
            LiveStream(streamId = "003", categoryId = "002"),
            LiveStream(streamId = "004", categoryId = null),
        )
        val items = liveCategoryFavorites(
            listOf(favorite, FavoriteItem.liveCategory("002", "Sport")),
            listOf(category, Category(categoryId = "002", categoryName = "Sport")), streams,
        )
        assertEquals(listOf(2, 1), items.map { it.channelCount })
        assertEquals("2 canali", items.first().supportingText)
        val refreshed = liveCategoryFavorites(listOf(favorite), listOf(category), streams.take(1)).single()
        assertEquals(1, refreshed.channelCount)
    }

    @Test
    fun `categoryId mancante non viene ricostruito dal nome o dall'id`() {
        val item = liveCategoryFavorites(listOf(favorite.copy(categoryId = null)), listOf(category), emptyList()).single()
        assertFalse(item.available)
        assertEquals("Non più disponibile", item.supportingText)
    }
}
