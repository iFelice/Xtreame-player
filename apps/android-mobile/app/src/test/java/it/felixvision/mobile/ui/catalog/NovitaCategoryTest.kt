package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NovitaCategoryTest {
    @Test
    fun novita_id_e_nome_sono_stabili() {
        assertEquals("__fvp_novita__", NOVITA_CATEGORY_ID)
        assertEquals("NOVITÀ", NOVITA_CATEGORY_NAME)
    }

    @Test
    fun novita_precede_le_categorie_provider_nello_stesso_ordine() {
        val result = withNovitaCategory(listOf(Category(categoryId = "1", categoryName = "Action"), Category(categoryId = "2", categoryName = "Comedy")))
        assertEquals(listOf(NOVITA_CATEGORY_ID, "1", "2"), result.map { it.categoryId })
        assertEquals(listOf(NOVITA_CATEGORY_NAME, "Action", "Comedy"), result.map { it.categoryName })
    }

    @Test
    fun film_novita_restituisce_i_recenti() {
        val films = listOf(VodStream(streamId = "1", name = "Film A"), VodStream(streamId = "2", name = "Film B"))
        val recent = listOf(films[1])
        assertEquals(listOf("Film B"), filmsForCategory(NOVITA_CATEGORY_ID, films, recent).map { it.name })
    }

    @Test
    fun film_categoria_usa_tutte_le_appartenenze_e_conserva_ordine() {
        val films = listOf(
            VodStream(streamId = "1", name = "Film A", categoryId = "a", categoryIds = listOf("b")),
            VodStream(streamId = "2", name = "Film B", categoryId = "b"),
            VodStream(streamId = "3", name = "Film C", categoryId = "b"),
        )
        assertEquals(listOf("Film A", "Film B", "Film C"), filmsForCategory("b", films, emptyList()).map { it.name })
        assertTrue(filmsForCategory("inesistente", films, emptyList()).isEmpty())
    }

    @Test
    fun serie_novita_recenti_e_categoria_multipla() {
        val series = listOf(
            SeriesItem(seriesId = "1", name = "Serie A", categoryId = "a", categoryIds = listOf("b")),
            SeriesItem(seriesId = "2", name = "Serie B", categoryId = "b"),
        )
        assertEquals(listOf("Serie B"), seriesForCategory(NOVITA_CATEGORY_ID, series, listOf(series[1])).map { it.name })
        assertEquals(listOf("Serie A", "Serie B"), seriesForCategory("b", series, emptyList()).map { it.name })
    }

    @Test
    fun live_categoria_usa_appartenenza_multipla() {
        val live = listOf(
            LiveStream(streamId = "1", name = "Canale A", categoryId = "a", categoryIds = listOf("b")),
            LiveStream(streamId = "2", name = "Canale B", categoryId = "b"),
        )
        assertEquals(listOf("1", "2"), liveStreamsForCategory("b", live).map { it.streamId })
        assertTrue(liveStreamsForCategory(null, live).isEmpty())
    }
}
