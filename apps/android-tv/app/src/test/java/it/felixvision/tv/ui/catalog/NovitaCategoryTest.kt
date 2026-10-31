package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

class NovitaCategoryTest {

    private val categories = listOf(
        Category(categoryId = "001", categoryName = "Categoria uno"),
        Category(categoryId = "002", categoryName = "Categoria due"),
    )
    private val film1 = VodStream(streamId = "001", name = "Film uno", categoryId = "001")
    private val film2 = VodStream(streamId = "002", name = "Film due", categoryId = "002")
    private val film3 = VodStream(streamId = "003", name = "Film tre", categoryId = "001")
    private val serie1 = SeriesItem(seriesId = "001", name = "Serie uno", categoryId = "001")
    private val serie2 = SeriesItem(seriesId = "002", name = "Serie due", categoryId = "002")
    private val serie3 = SeriesItem(seriesId = "003", name = "Serie tre", categoryId = "001")

    @Test
    fun `Novita e sempre prima e le categorie del provider restano in ordine`() {
        val result = withNovitaCategory(categories)

        assertEquals(Category(categoryId = NOVITA_CATEGORY_ID, categoryName = NOVITA_CATEGORY_NAME), result.first())
        assertEquals(categories, result.drop(1))
        assertSame(categories[0], result[1])
        assertSame(categories[1], result[2])
        assertEquals(listOf("001", "002"), categories.map { it.categoryId })
        assertEquals(listOf(Category(NOVITA_CATEGORY_ID, NOVITA_CATEGORY_NAME)), withNovitaCategory(emptyList()))
    }

    @Test
    fun `Novita mostra i film recenti senza cambiare categorie ne ordine`() {
        val streams = listOf(film1, film2, film3)
        val recent = listOf(film2, film1)
        val result = filmsForCategory(NOVITA_CATEGORY_ID, streams, recent)

        assertSame(recent, result)
        assertEquals(listOf(film2, film1), result)
        assertEquals(listOf("002", "001"), result.map { it.categoryId })
        assertTrue(filmsForCategory(NOVITA_CATEGORY_ID, streams, emptyList()).isEmpty())
    }

    @Test
    fun `le categorie del provider filtrano i film del catalogo`() {
        val orphan = VodStream(streamId = "004", name = "Film senza categoria", categoryId = null)
        val streams = listOf(film1, film2, film3, orphan)

        assertEquals(listOf(film1, film3), filmsForCategory("001", streams, listOf(film2)))
        assertEquals(listOf(film2), filmsForCategory("002", streams, emptyList()))
        assertTrue(filmsForCategory("sconosciuta", streams, listOf(film1)).isEmpty())
        assertTrue(filmsForCategory("001", emptyList(), listOf(film1)).isEmpty())
    }

    @Test
    fun `Novita mostra le serie recenti senza cambiare categorie ne ordine`() {
        val series = listOf(serie1, serie2, serie3)
        val recent = listOf(serie2, serie1)
        val result = seriesForCategory(NOVITA_CATEGORY_ID, series, recent)

        assertSame(recent, result)
        assertEquals(listOf(serie2, serie1), result)
        assertEquals(listOf("002", "001"), result.map { it.categoryId })
        assertTrue(seriesForCategory(NOVITA_CATEGORY_ID, series, emptyList()).isEmpty())
    }

    @Test
    fun `le categorie del provider filtrano le serie del catalogo`() {
        val orphan = SeriesItem(seriesId = "004", name = "Serie senza categoria", categoryId = null)
        val series = listOf(serie1, serie2, serie3, orphan)

        assertEquals(listOf(serie1, serie3), seriesForCategory("001", series, listOf(serie2)))
        assertEquals(listOf(serie2), seriesForCategory("002", series, emptyList()))
        assertTrue(seriesForCategory("sconosciuta", series, listOf(serie1)).isEmpty())
        assertTrue(seriesForCategory("001", emptyList(), listOf(serie1)).isEmpty())
    }
}
