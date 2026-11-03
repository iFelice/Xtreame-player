package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Test delle funzioni pure della categoria Novità (mobile package):
 * NOVITA_CATEGORY_ID/NAME, withNovitaCategory, filmsForCategory,
 * seriesForCategory. Riplica il test TV con lo stesso comportamento.
 */
class NovitaCategoryTest {

    @Test
    fun NOVITA_ID_e_NAME() {
        assertEquals("__fvp_novita__", NOVITA_CATEGORY_ID)
        assertEquals("NOVITÀ", NOVITA_CATEGORY_NAME)
    }

    @Test
    fun withNovitaCategory_comincia_con_Novità() {
        val categories = listOf(
            Category("1", "Action"),
            Category("2", "Comedy"),
        )
        val result = withNovitaCategory(categories)
        assertEquals(3, result.size)
        assertEquals(NOVITA_CATEGORY_ID, result[0].categoryId)
        assertEquals(NOVITA_CATEGORY_NAME, result[0].name)
        assertEquals("Action", result[1].name)
        assertEquals("Comedy", result[2].name)
    }

    @Test
    fun withNovitaCategory_catalogo_vuoto_restituisce_solo_Novità() {
        val result = withNovitaCategory(emptyList())
        assertEquals(1, result.size)
        assertEquals(NOVITA_CATEGORY_ID, result[0].categoryId)
    }

    @Test
    fun filmsForCategory_Novità_mostra_i_recenti() {
        val films = listOf(
            VodStream("1", "Film A", "http://server.esempio:8080/a.jpg", "Action"),
            VodStream("2", "Film B", "http://server.esempio:8080/b.jpg", "Comedy"),
        )
        val recent = listOf(VodStream("2", "Film B", "http://server.esempio:8080/b.jpg", "Comedy"))
        val result = filmsForCategory(NOVITA_CATEGORY_ID, films, recent)
        assertEquals(1, result.size)
        assertEquals("Film B", result[0].name)
    }

    @Test
    fun filmsForCategory_categoria_normale_usa_appartenenza() {
        val films = listOf(
            VodStream("1", "Film A", "http://server.esempio:8080/a.jpg", "Action", allCategoryIds = listOf("1", "3")),
            VodStream("2", "Film B", "http://server.esempio:8080/b.jpg", "Comedy"),
        )
        val result = filmsForCategory("1", films, emptyList())
        assertEquals(1, result.size)
        assertEquals("Film A", result[0].name)
    }

    @Test
    fun filmsForCategory_categoria_inesistente_restituisce_vuoto() {
        val films = listOf(
            VodStream("1", "Film A", "http://server.esempio:8080/a.jpg", "Action"),
        )
        val result = filmsForCategory("99", films, emptyList())
        assertTrue(result.isEmpty())
    }

    @Test
    fun seriesForCategory_Novità_mostra_i_recenti() {
        val series = listOf(
            SeriesItem("1", "Serie A", "http://server.esempio:8080/a.jpg"),
            SeriesItem("2", "Serie B", "http://server.esempio:8080/b.jpg"),
        )
        val recent = listOf(SeriesItem("2", "Serie B", "http://server.esempio:8080/b.jpg"))
        val result = seriesForCategory(NOVITA_CATEGORY_ID, series, recent)
        assertEquals(1, result.size)
        assertEquals("Serie B", result[0].name)
    }

    @Test
    fun seriesForCategory_categoria_normale_usa_appartenenza() {
        val series = listOf(
            SeriesItem("1", "Serie A", "http://server.esempio:8080/a.jpg", categoryId = "2", allCategoryIds = listOf("2", "5")),
            SeriesItem("2", "Serie B", "http://server.esempio:8080/b.jpg", categoryId = "3"),
        )
        val result = seriesForCategory("2", series, emptyList())
        assertEquals(1, result.size)
        assertEquals("Serie A", result[0].name)
    }

    @Test
    fun liveStreamsForCategory_usa_appartenenza() {
        val live1 = it.felixvision.tv.data.catalog.LiveStream("1", "Canale A", "http://server.esempio:8080/a.m3u8", "News", allCategoryIds = listOf("1", "2"))
        val live2 = it.felixvision.tv.data.catalog.LiveStream("2", "Canale B", "http://server.esempio:8080/b.m3u8", "Sports")
        val result = liveStreamsForCategory("1", listOf(live1, live2))
        assertEquals(1, result.size)
        assertEquals("Canale A", result[0].name)
    }

    @Test
    fun liveStreamsForCategory_null_restituisce_vuoto() {
        assertNull(liveStreamsForCategory(null, emptyList()))
    }
}
