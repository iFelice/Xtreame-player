package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Test dell'appartenenza a più categorie: un contenuto assegnato a due
 * categorie (category_id + category_ids) compare in ognuna di loro. Riplica il
 * test TV. I dati sono solo http://server.esempio:8080, demo/demo, nomi inventati.
 */
class MultiCategoryMembershipTest {

    @Test
    fun film_in_due_categorie_compare_in_entrante() {
        val films = listOf(
            VodStream(
                streamId = "10",
                name = "Film Multi",
                streamIcon = "http://server.esempio:8080/multi.jpg",
                categoryId = "1",
                allCategoryIds = listOf("1", "2"),
            ),
            VodStream(
                streamId = "11",
                name = "Film Solo1",
                streamIcon = "http://server.esempio:8080/s1.jpg",
                categoryId = "1",
                allCategoryIds = listOf("1"),
            ),
        )
        val cat1 = filmsForCategory("1", films, emptyList())
        val cat2 = filmsForCategory("2", films, emptyList())
        // "Film Multi" è in entrambe; "Film Solo1" solo in "1".
        assertTrue(cat1.any { it.name == "Film Multi" })
        assertTrue(cat1.any { it.name == "Film Solo1" })
        assertTrue(cat2.any { it.name == "Film Multi" })
        assertTrue(cat2.none { it.name == "Film Solo1" })
    }

    @Test
    fun serie_in_due_categorie_compare_in_entrante() {
        val series = listOf(
            SeriesItem(
                seriesId = "20",
                name = "Serie Multi",
                cover = "http://server.esempio:8080/multi.jpg",
                categoryId = "3",
                allCategoryIds = listOf("3", "4"),
            ),
        )
        val cat3 = seriesForCategory("3", series, emptyList())
        val cat4 = seriesForCategory("4", series, emptyList())
        assertTrue(cat3.any { it.name == "Serie Multi" })
        assertTrue(cat4.any { it.name == "Serie Multi" })
    }

    @Test
    fun ordine_provider_conservato_in_categoria() {
        val films = listOf(
            VodStream("30", "Film A", "http://server.esempio:8080/a.jpg", "1", listOf("1")),
            VodStream("31", "Film B", "http://server.esempio:8080/b.jpg", "1", listOf("1")),
            VodStream("32", "Film C", "http://server.esempio:8080/c.jpg", "1", listOf("1")),
        )
        val result = filmsForCategory("1", films, emptyList())
        assertEquals(3, result.size)
        assertEquals("Film A", result[0].name)
        assertEquals("Film B", result[1].name)
        assertEquals("Film C", result[2].name)
    }

    @Test
    fun lazy_keys_unic_tra_multicategoria() {
        // La chiave Lazy deve essere unica: streamId è univoco per contenuto.
        val films = listOf(
            VodStream("40", "Film Multi", "http://server.esempio:8080/m.jpg", "1", listOf("1", "2")),
        )
        val cat1 = filmsForCategory("1", films, emptyList())
        val cat2 = filmsForCategory("2", films, emptyList())
        // Lo stesso contenuto appare in entrambe le categorie ma con streamId
        // univoco (la chiave "vod_<streamId>" è unica).
        assertEquals(1, cat1.size)
        assertEquals(1, cat2.size)
        assertEquals("40", cat1[0].streamId)
        assertEquals("40", cat2[0].streamId)
    }
}
