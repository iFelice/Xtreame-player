package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Ordinamento delle categorie di Film e Serie: funzioni pure, provate sulla JVM
 * senza emulatore né composizione.
 *
 * L'ordine predefinito è per data di aggiunta dal più recente, come nell'app
 * Black; A-Z usa il [java.text.Collator] italiano con forza PRIMARY, che ignora
 * maiuscole e accenti; Anno mette in fondo i contenuti senza anno.
 */
class CatalogSortingTest {

    private fun film(id: String, name: String, added: String? = null, year: String? = null, categoryId: String = "001") =
        VodStream(streamId = id, name = name, added = added, year = year, categoryId = categoryId)

    private fun serie(id: String, name: String, lastModified: String? = null, releaseDate: String? = null, categoryId: String = "001") =
        SeriesItem(seriesId = id, name = name, lastModified = lastModified, releaseDate = releaseDate, categoryId = categoryId)

    // --- Data di aggiunta, predefinito ---

    @Test
    fun `aggiunta ordina dal piu recente con i secondi`() {
        val old = film("1", "Vecchio", added = "1700000000")
        val recent = film("2", "Recente", added = "1730000000")
        val middle = film("3", "Mezzo", added = "1715000000")

        val result = sortedFilms(listOf(old, recent, middle), CatalogSort.ADDED)

        assertEquals(listOf("Recente", "Mezzo", "Vecchio"), result.map { it.name })
    }

    @Test
    fun `aggiunta legge anche i millisecondi`() {
        val seconds = film("1", "Secondi", added = "1700000000")
        val millis = film("2", "Millisecondi", added = "1730000000000")

        val result = sortedFilms(listOf(seconds, millis), CatalogSort.ADDED)

        assertEquals(listOf("Millisecondi", "Secondi"), result.map { it.name })
        assertEquals(1730000000000L, addedMillisOf("1730000000000"))
        assertEquals(1700000000000L, addedMillisOf("1700000000"))
    }

    @Test
    fun `aggiunta mette in fondo i contenuti senza data`() {
        val without = film("1", "Senza data", added = null)
        val blank = film("2", "Data vuota", added = "  ")
        val dated = film("3", "Con data", added = "1700000000")

        val result = sortedFilms(listOf(without, blank, dated), CatalogSort.ADDED)

        assertEquals("Con data", result.first().name)
        assertEquals(setOf("Senza data", "Data vuota"), result.drop(1).map { it.name }.toSet())
        assertEquals(0L, addedMillisOf(null))
        assertEquals(0L, addedMillisOf(""))
    }

    @Test
    fun `a parita di data vale lo streamId numerico decrescente`() {
        val low = film("100", "Basso", added = "1700000000")
        val high = film("900", "Alto", added = "1700000000")

        val result = sortedFilms(listOf(low, high), CatalogSort.ADDED)

        assertEquals(listOf("Alto", "Basso"), result.map { it.name })
    }

    @Test
    fun `le serie usano lastModified e in mancanza releaseDate`() {
        val old = serie("1", "Vecchia", lastModified = "1600000000")
        val recent = serie("2", "Recente", lastModified = "1730000000")
        val onlyRelease = serie("3", "Solo uscita", lastModified = null, releaseDate = "1710000000")

        val result = sortedSeries(listOf(old, recent, onlyRelease), CatalogSort.ADDED)

        assertEquals(listOf("Recente", "Solo uscita", "Vecchia"), result.map { it.name })
    }

    @Test
    fun `le serie con lastModified vuoto ricadono su releaseDate`() {
        val blank = serie("1", "Vuota", lastModified = " ", releaseDate = "1700000000")
        val dated = serie("2", "Con data", lastModified = "1600000000")

        val result = sortedSeries(listOf(blank, dated), CatalogSort.ADDED)

        assertEquals(listOf("Vuota", "Con data"), result.map { it.name })
    }

    // --- A-Z ---

    @Test
    fun `A-Z ignora maiuscole e accenti`() {
        val items = listOf(
            film("1", "Zorro"),
            film("2", "elite"),
            film("3", "Èlite"),
            film("4", "àmbito"),
            film("5", "Ambra"),
        )

        val result = sortedFilms(items, CatalogSort.AZ)

        // Primo per forza "Ambra"/"àmbito" (entrambi con la A), "Zorro" ultimo.
        assertEquals("Zorro", result.last().name)
        assertTrue(result.take(3).all { it.name.first().lowercase() in setOf("a", "à", "e", "è") })
        assertEquals(setOf("àmbito", "Ambra"), result.take(2).map { it.name }.toSet())
    }

    @Test
    fun `A-Z tratta le varianti con accento e maiuscola come uguali`() {
        assertEquals(0, CatalogTitles.compare("Èlite", "elite"))
        assertEquals(0, CatalogTitles.compare("elite", "ELITE"))
        assertEquals(0, CatalogTitles.compare("àmbito", "ambito"))
        assertTrue(CatalogTitles.compare("Ambra", "Zorro") < 0)
        assertTrue(CatalogTitles.compare("Zorro", "Ambra") > 0)
    }

    @Test
    fun `A-Z ordina le serie per titolo`() {
        val result = sortedSeries(
            listOf(serie("1", "Zorro"), serie("2", "Ambra"), serie("3", "èlite")),
            CatalogSort.AZ,
        )
        assertEquals(listOf("Ambra", "èlite", "Zorro"), result.map { it.name })
    }

    // --- Anno ---

    @Test
    fun `Anno usa il campo year e mette in fondo chi non ce l'ha`() {
        val items = listOf(
            film("1", "Vecchio", year = "2019"),
            film("2", "Senza anno"),
            film("3", "Nuovo", year = "2025"),
        )

        val result = sortedFilms(items, CatalogSort.YEAR)

        assertEquals(listOf("Nuovo", "Vecchio", "Senza anno"), result.map { it.name })
    }

    @Test
    fun `Anno legge l'anno tra parentesi nel titolo`() {
        val items = listOf(
            film("1", "Film (2019)"),
            film("2", "Altro film (2025)"),
            film("3", "Senza anno"),
        )

        val result = sortedFilms(items, CatalogSort.YEAR)

        assertEquals(listOf("Altro film (2025)", "Film (2019)", "Senza anno"), result.map { it.name })
        assertEquals(2025, titleYear("Altro film (2025)"))
        assertEquals(2025, titleYear("Altro film (2025-2026)"))
        assertNull(titleYear("Nessun anno"))
        assertEquals(2025, yearOf("2025", "Titolo"))
        assertEquals(2019, yearOf(null, "Titolo (2019)"))
        assertNull(yearOf(null, "Titolo"))
    }

    @Test
    fun `a parita di anno vale la data di aggiunta`() {
        val old = film("1", "Vecchio 2024", added = "1600000000", year = "2024")
        val recent = film("2", "Recente 2024", added = "1730000000", year = "2024")

        val result = sortedFilms(listOf(old, recent), CatalogSort.YEAR)

        assertEquals(listOf("Recente 2024", "Vecchio 2024"), result.map { it.name })
    }

    @Test
    fun `Anno delle serie usa il titolo e poi releaseDate`() {
        val fromTitle = serie("1", "Serie (2024)", releaseDate = null)
        val fromRelease = serie("2", "Serie senza anno", releaseDate = "2026-03-01")
        val without = serie("3", "Serie senza niente")

        val result = sortedSeries(listOf(fromTitle, fromRelease, without), CatalogSort.YEAR)

        assertEquals(listOf("Serie senza anno", "Serie (2024)", "Serie senza niente"), result.map { it.name })
        assertEquals(2026, yearOfSeries(fromRelease))
        assertEquals(2024, yearOfSeries(fromTitle))
        assertNull(yearOfSeries(without))
    }

    @Test
    fun `releaseDate riconosce solo anni plausibili`() {
        assertEquals(2021, releaseDateYear("2021-03-04"))
        assertEquals(2021, releaseDateYear("2021"))
        assertNull(releaseDateYear("0000-00-00"))
        assertNull(releaseDateYear("n/d"))
    }

    // --- Preferenza per categoria ---

    @Test
    fun `valore assente o non valido vale aggiunta`() {
        assertEquals(CatalogSort.ADDED, CatalogSort.fromStorage(null))
        assertEquals(CatalogSort.ADDED, CatalogSort.fromStorage(""))
        assertEquals(CatalogSort.ADDED, CatalogSort.fromStorage("boh"))
        assertEquals(CatalogSort.ADDED, CatalogSort.fromStorage("  "))
        assertEquals(CatalogSort.AZ, CatalogSort.fromStorage("az"))
        assertEquals(CatalogSort.YEAR, CatalogSort.fromStorage(" year "))
        assertEquals(CatalogSort.AZ, CatalogSort.fromStorage("AZ"))
    }

    @Test
    fun `OK sul pulsante passa al successivo a ciclo`() {
        assertEquals(CatalogSort.AZ, CatalogSort.ADDED.next())
        assertEquals(CatalogSort.YEAR, CatalogSort.AZ.next())
        assertEquals(CatalogSort.ADDED, CatalogSort.YEAR.next())
        assertEquals(
            listOf("Ordina: Aggiunti di recente", "Ordina: A-Z", "Ordina: Anno"),
            CatalogSort.entries.map { it.buttonLabel() },
        )
        assertEquals(CATALOG_SORT_LABELS, CatalogSort.entries.map { it.buttonLabel() })
    }

    @Test
    fun `la scelta vale per la sola categoria scelta`() {
        val store = InMemoryCategorySortStore()
        store.set("vod", "001", CatalogSort.AZ)

        assertEquals(CatalogSort.AZ, readCategorySort("001", "vod", store))
        assertEquals(CatalogSort.ADDED, readCategorySort("002", "vod", store))
        assertEquals(CatalogSort.ADDED, readCategorySort("001", "series", store))
        assertEquals(CatalogSort.DEFAULT, readCategorySort("001", "vod", null))
    }

    @Test
    fun `NOVITA resta nell'ordine dei recenti`() {
        val recent = listOf(film("2", "Zeta"), film("1", "Alfa"))
        val all = listOf(film("1", "Alfa"), film("2", "Zeta"))

        val result = sortedFilmsCategory(NOVITA_CATEGORY_ID, all, recent, CatalogSort.AZ)

        assertEquals(listOf("Zeta", "Alfa"), result.map { it.name })
    }

    @Test
    fun `la categoria del provider viene ordinata`() {
        val streams = listOf(
            film("1", "Zorro", added = "1600000000"),
            film("2", "Ambra", added = "1730000000"),
            film("3", "Altro film", added = "1700000000", categoryId = "002"),
        )

        val byDate = sortedFilmsCategory("001", streams, emptyList(), CatalogSort.ADDED)
        val byTitle = sortedFilmsCategory("001", streams, emptyList(), CatalogSort.AZ)

        assertEquals(listOf("Ambra", "Zorro"), byDate.map { it.name })
        assertEquals(listOf("Ambra", "Zorro"), byTitle.map { it.name })
    }
}
