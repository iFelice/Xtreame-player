package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import kotlinx.serialization.builtins.ListSerializer
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Parsing dell'elenco completo delle categorie (`category_ids`) che alcuni
 * pannelli mandano accanto a `category_id`. Il campo non deve MAI far fallire
 * il parsing dell'intero elenco di contenuti: le forme strane vengono
 * normalizzate o scartate, gli altri elementi restano.
 *
 * Dati inventati: nessun server, nessun contenuto reale.
 */
class CategoryIdsParsingTest {

    private val json = FvpJson

    private fun vodCategoryIds(rawEntries: String): List<String> =
        json.decodeFromString<List<VodStream>>(
            """[{"name":"Film demo","stream_id":"201","category_id":"001","category_ids":$rawEntries}]""",
        ).single().categoryIds

    // --- forme accettate ---

    @Test
    fun `array di numeri`() {
        assertEquals(listOf("3", "7"), vodCategoryIds("[3, 7]"))
    }

    @Test
    fun `array di stringhe`() {
        assertEquals(listOf("3", "7"), vodCategoryIds("""["3", "7"]"""))
    }

    @Test
    fun `array misto numeri e stringhe`() {
        assertEquals(listOf("3", "7"), vodCategoryIds("""[3, "7"]"""))
    }

    @Test
    fun `null diventa elenco vuoto`() {
        assertTrue(vodCategoryIds("null").isEmpty())
    }

    @Test
    fun `campo assente diventa elenco vuoto`() {
        val stream = json.decodeFromString<List<VodStream>>(
            """[{"name":"Film demo","stream_id":"201","category_id":"001"}]""",
        ).single()
        assertEquals("001", stream.categoryId)
        assertTrue(stream.categoryIds.isEmpty())
    }

    @Test
    fun `stringa singola diventa elenco di un elemento`() {
        assertEquals(listOf("3"), vodCategoryIds("\"3\""))
    }

    @Test
    fun `numero singolo diventa elenco di un elemento`() {
        assertEquals(listOf("3"), vodCategoryIds("3"))
    }

    @Test
    fun `gli elementi vuoti vengono scartati`() {
        assertEquals(listOf("3", "7"), vodCategoryIds("""["", "3", "  ", "7"]"""))
        assertEquals(listOf("3"), vodCategoryIds("""["3", null]"""))
    }

    @Test
    fun `un elemento strano non rompe l elenco`() {
        // Oggetto, booleano e array annidato: scartati, il resto resta.
        assertEquals(
            listOf("3", "7"),
            vodCategoryIds("""[3, {"k":1}, true, [7], "7"]"""),
        )
    }

    @Test
    fun `array vuoto resta vuoto`() {
        assertTrue(vodCategoryIds("[]").isEmpty())
    }

    // --- modelli che portano il campo ---

    @Test
    fun `live stream e serie leggono category_ids con le stesse regole`() {
        val live = json.decodeFromString<List<LiveStream>>(
            """[{"name":"Canale demo","stream_id":"101","category_id":"001","category_ids":[1,2]}]""",
        ).single()
        assertEquals(listOf("1", "2"), live.categoryIds)

        val serie = json.decodeFromString<List<SeriesItem>>(
            """[{"name":"Serie demo","series_id":"301","category_id":"001","category_ids":"2"}]""",
        ).single()
        assertEquals(listOf("2"), serie.categoryIds)
    }

    @Test
    fun `campo assente resta la lista vuota anche nei live e nelle serie`() {
        val live = json.decodeFromString<List<LiveStream>>(
            """[{"name":"Canale demo","stream_id":"101","category_id":"001"}]""",
        ).single()
        assertTrue(live.categoryIds.isEmpty())

        val serie = json.decodeFromString<List<SeriesItem>>(
            """[{"name":"Serie demo","series_id":"301","category_id":"001"}]""",
        ).single()
        assertTrue(serie.categoryIds.isEmpty())
    }

    @Test
    fun `scrittura e rilettura conservano l elenco`() {
        // Il campo viene anche scritto (cache del catalogo): un elenco con
        // valori torna uguale dopo un giro su JSON.
        val stream = VodStream(
            streamId = "201",
            name = "Film demo",
            categoryId = "001",
            categoryIds = listOf("001", "002"),
        )
        val encoded = FvpJson.encodeToString(ListSerializer(VodStream.serializer()), listOf(stream))
        val decoded = FvpJson.decodeFromString(ListSerializer(VodStream.serializer()), encoded)
        assertEquals(listOf("001", "002"), decoded.single().categoryIds)
        assertEquals("001", decoded.single().categoryId)
        // Elenco vuoto: il campo non compare (encodeDefaults = false) e alla
        // rilettura torna vuoto, mai null.
        val vuoto = FvpJson.encodeToString(ListSerializer(VodStream.serializer()), listOf(VodStream(streamId = "202")))
        assertTrue(!vuoto.contains("category_ids"))
    }

    @Test
    fun `un elenco intero con un category_ids rotto non fallisce`() {
        // Il secondo contenuto ha forme impossibili: il parsing del catalogo riesce comunque.
        val list = json.decodeFromString<List<VodStream>>(
            """
            [
              {"name":"Film uno","stream_id":"201","category_id":"001","category_ids":[3,"7"]},
              {"name":"Film due","stream_id":"202","category_id":"002","category_ids":{"strano":true}},
              {"name":"Film tre","stream_id":"203","category_id":"001"}
            ]
            """.trimIndent(),
        )
        assertEquals(3, list.size)
        assertEquals(listOf("3", "7"), list[0].categoryIds)
        assertTrue(list[1].categoryIds.isEmpty())
        assertTrue(list[2].categoryIds.isEmpty())
    }

    // --- insieme delle categorie (principale + elenco) ---

    @Test
    fun `allCategoryIds unisce principale ed elenco senza vuoti ne doppioni`() {
        assertEquals(setOf("001", "002"), allCategoryIds("001", listOf("001", "002")))
        assertEquals(setOf("001", "002"), allCategoryIds("001", listOf("002", "001", "002")))
        // Primaria assente o vuota: restano solo gli id veri dell'elenco.
        assertEquals(setOf("002"), allCategoryIds(null, listOf("", "002", " ")))
        assertEquals(setOf("001"), allCategoryIds("001", listOf("")))
        assertEquals(emptySet<String>(), allCategoryIds(null, emptyList()))
        assertEquals(emptySet<String>(), allCategoryIds("  ", listOf("")))
    }

    @Test
    fun `le proprieta calcolate dei tre modelli usano principale ed elenco`() {
        val film = VodStream(streamId = "201", categoryId = "001", categoryIds = listOf("001", "002"))
        assertEquals(setOf("001", "002"), film.allCategoryIds)

        val canale = LiveStream(streamId = "101", categoryId = "001", categoryIds = listOf("002"))
        assertEquals(setOf("001", "002"), canale.allCategoryIds)

        val serie = SeriesItem(seriesId = "301", categoryId = null, categoryIds = listOf("002"))
        assertEquals(setOf("002"), serie.allCategoryIds)
    }
}
