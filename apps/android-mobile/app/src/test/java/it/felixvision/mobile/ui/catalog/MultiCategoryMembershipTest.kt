package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/** Appartenenza multipla e ordine provider. Dati fittizi senza credenziali/stream reali. */
class MultiCategoryMembershipTest {

    @Test
    fun film_in_due_categorie_compare_in_entrambi_i_filtri() {
        val films = listOf(
            VodStream(streamId = "10", name = "Film Multi", categoryId = "1", categoryIds = listOf("2")),
            VodStream(streamId = "11", name = "Film Solo1", categoryId = "1"),
        )
        val cat1 = filmsForCategory("1", films, emptyList())
        val cat2 = filmsForCategory("2", films, emptyList())
        assertTrue(cat1.any { it.name == "Film Multi" })
        assertTrue(cat1.any { it.name == "Film Solo1" })
        assertTrue(cat2.any { it.name == "Film Multi" })
        assertTrue(cat2.none { it.name == "Film Solo1" })
    }

    @Test
    fun serie_in_due_categorie_compare_in_entrambi_i_filtri() {
        val series = listOf(
            SeriesItem(seriesId = "20", name = "Serie Multi", categoryId = "3", categoryIds = listOf("4")),
        )
        assertTrue(seriesForCategory("3", series, emptyList()).any { it.name == "Serie Multi" })
        assertTrue(seriesForCategory("4", series, emptyList()).any { it.name == "Serie Multi" })
    }

    @Test
    fun ordine_provider_conservato_in_categoria() {
        val films = listOf(
            VodStream(streamId = "30", name = "Film A", categoryId = "1"),
            VodStream(streamId = "31", name = "Film B", categoryId = "1"),
            VodStream(streamId = "32", name = "Film C", categoryId = "1"),
        )
        assertEquals(listOf("Film A", "Film B", "Film C"), filmsForCategory("1", films, emptyList()).map { it.name })
    }

    @Test
    fun lazy_keys_uniche_per_id_contenuto() {
        val films = listOf(VodStream(streamId = "40", name = "Film Multi", categoryId = "1", categoryIds = listOf("2")))
        val keys = listOf("1", "2").flatMap { category -> filmsForCategory(category, films, emptyList()).map { "vod_${it.streamId}" } }
        assertEquals(listOf("vod_40", "vod_40"), keys)
        assertEquals(1, keys.distinct().size)
    }

    @Test
    fun live_channel_incluso_nello_zapping_della_categoria_secondaria() {
        val streams = listOf(
            LiveStream(streamId = "1", name = "Canale Multi", categoryId = "a", categoryIds = listOf("b")),
            LiveStream(streamId = "2", name = "Canale B", categoryId = "b"),
        )
        assertEquals(listOf("1", "2"), streams.filter { "b" in it.allCategoryIds }.map { it.streamId })
    }
}
