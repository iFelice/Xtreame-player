package it.felixvision.tv.data.search

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class CatalogSearchTest {

    private fun channel(id: String, name: String) = LiveStream(name = name, streamId = id)

    private fun film(id: String, name: String) = VodStream(name = name, streamId = id)

    private fun serie(id: String, name: String) = SeriesItem(name = name, seriesId = id)

    @Test
    fun `normalizzazione toglie maiuscole e accenti`() {
        assertEquals("citta", CatalogSearch.normalize("Città"))
        assertEquals("perche", CatalogSearch.normalize("  PERCHÉ  "))
        assertEquals("d'annunzio", CatalogSearch.normalize("D'Annunzio"))
        assertEquals("", CatalogSearch.normalize("   "))
    }

    @Test
    fun `ricerca senza maiuscole e senza accenti`() {
        val films = listOf(
            film("1", "Città di vetro"),
            film("2", "Altro film"),
        )
        assertEquals(listOf("1"), CatalogSearch.filterRanked(films, "CITTA") { it.name }.map { it.streamId })
        assertEquals(listOf("1"), CatalogSearch.filterRanked(films, "città") { it.name }.map { it.streamId })
    }

    @Test
    fun `prima i prefissi poi chi contiene poi ordine alfabetico`() {
        val titles = listOf(
            "La città",
            "Città proibita",
            "cittadino",
            "Città",
        )
        assertEquals(
            listOf("Città", "Città proibita", "cittadino", "La città"),
            CatalogSearch.filterRanked(titles, "citta") { it },
        )
    }

    @Test
    fun `limite di cinquanta risultati per riga`() {
        val films = (1..60).map { film(it.toString(), "Film numero $it") }
        val result = CatalogSearch.filterRanked(films, "film") { it.name }
        assertEquals(CatalogSearch.MAX_RESULTS_PER_ROW, result.size)
        assertEquals(50, result.size)
        // Restano i primi in ordine alfabetico: "Film numero 1" prima di "Film numero 10".
        assertEquals("1", result.first().streamId)
    }

    @Test
    fun `sotto i due caratteri non si cerca`() {
        val catalogue = Catalog(
            liveStreams = listOf(channel("1", "Cinema")),
            vodStreams = listOf(film("2", "Cinema")),
            series = listOf(serie("3", "Cinema")),
        )
        val result = CatalogSearch.search(catalogue, "c")
        assertTrue(result.isEmpty)

        val full = CatalogSearch.search(catalogue, "ci")
        assertEquals(listOf("1"), full.live.map { it.streamId })
        assertEquals(listOf("2"), full.vod.map { it.streamId })
        assertEquals(listOf("3"), full.series.map { it.seriesId })
    }

    @Test
    fun `spazi ai bordi non contano`() {
        val catalogue = Catalog(series = listOf(serie("9", "Dark")))
        assertEquals(1, CatalogSearch.search(catalogue, "  dark ").series.size)
    }

    @Test
    fun `catalogo assente o testo vuoto non producono risultati`() {
        assertTrue(CatalogSearch.search(null, "film").isEmpty)
        assertTrue(CatalogSearch.search(Catalog(), "").isEmpty)
    }

    @Test
    fun `ogni riga segue il proprio ordine`() {
        val catalogue = Catalog(
            liveStreams = listOf(channel("1", "Rai Sport"), channel("2", "Sportivo"), channel("3", "Altro")),
            vodStreams = listOf(film("4", "Sport estremo"), film("5", "Lo sport")),
        )
        val result = CatalogSearch.search(catalogue, "sport")
        // "Sportivo" (prefisso) prima di "Rai Sport" (contiene).
        assertEquals(listOf("2", "1"), result.live.map { it.streamId })
        assertEquals(listOf("4", "5"), result.vod.map { it.streamId })
        assertTrue(result.series.isEmpty())
    }
}
