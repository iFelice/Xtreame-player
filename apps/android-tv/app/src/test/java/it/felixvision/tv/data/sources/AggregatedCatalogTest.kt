package it.felixvision.tv.data.sources

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.m3u.M3uLibrary
import it.felixvision.tv.data.m3u.M3uEntry
import it.felixvision.tv.data.store.StoredCredentials
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Catalogo unito: con una sola sorgente l'app resta com'è oggi (nessun
 * prefisso, nessuna etichetta); con più sorgenti le categorie restano separate,
 * con il prefisso dell'etichetta e in ordine S1, S2, S3.
 */
class AggregatedCatalogTest {

    private val xtream = Source(
        id = "src1",
        type = SourceType.XTREAM,
        label = "S1",
        xtream = StoredCredentials(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo-password",
        ),
    )

    private val m3u = Source(id = "s2", type = SourceType.M3U, label = "M1")

    private fun xtreamCatalog(): Catalog = Catalog(
        vodCategories = listOf(Category(categoryId = "10", categoryName = "Azione")),
        vodStreams = listOf(
            VodStream(name = "Film Xtream", streamId = "101", categoryId = "10"),
        ),
        liveCategories = listOf(Category(categoryId = "1", categoryName = "Canali")),
        seriesCategories = listOf(Category(categoryId = "5", categoryName = "Serie TV")),
    )

    private fun m3uCatalog(): Catalog = M3uLibrary.buildCatalog(
        sourceId = "s2",
        entries = listOf(
            M3uEntry(title = "Film lista", url = "http://server.esempio/lista.mp4", group = "Azione"),
        ),
    )

    @Test
    fun `con una sola sorgente il catalogo e identico`() {
        val catalog = xtreamCatalog()

        val merged = AggregatedCatalog.merge(listOf(CatalogPart(xtream, catalog)))

        assertEquals(catalog, merged)
        assertEquals("Azione", merged.vodCategories.single().categoryName)
        assertEquals("101", merged.vodStreams.single().streamId)
    }

    @Test
    fun `con piu sorgenti il nome della categoria porta l'etichetta`() {
        val merged = AggregatedCatalog.merge(
            listOf(CatalogPart(xtream, xtreamCatalog()), CatalogPart(m3u, m3uCatalog())),
        )

        assertEquals(
            listOf("S1 · Azione", "M1 · Azione"),
            merged.vodCategories.map { it.categoryName },
        )
        // Le categorie restano separate: nessuna deduplicazione, nessuna fusione.
        assertEquals(2, merged.vodCategories.size)
        assertEquals(2, merged.vodCategories.map { it.categoryId }.distinct().size)
    }

    @Test
    fun `le categorie di S2 vanno in coda anche con nomi uguali`() {
        val parts = listOf(
            CatalogPart(m3u, m3uCatalog()),
            CatalogPart(xtream, xtreamCatalog()),
        )

        val merged = AggregatedCatalog.merge(parts)

        // L'ordine è quello delle etichette, non quello della lista di parti.
        assertEquals(listOf("S1 · Azione", "M1 · Azione"), merged.vodCategories.map { it.categoryName })
    }

    @Test
    fun `le voci di ogni sorgente restano nella propria categoria`() {
        val merged = AggregatedCatalog.merge(
            listOf(CatalogPart(xtream, xtreamCatalog()), CatalogPart(m3u, m3uCatalog())),
        )

        val xtreamStream = merged.vodStreams.first { it.name == "Film Xtream" }
        val m3uStream = merged.vodStreams.first { it.name == "Film lista" }
        assertEquals("10", xtreamStream.categoryId)
        assertEquals("s2", SourceIds.sourceOf(m3uStream.streamId))
        assertEquals(1, merged.vodStreams.count { it.categoryId == m3uStream.categoryId })
    }

    @Test
    fun `con una sola sorgente nessuna voce ha l'etichetta`() {
        val merged = AggregatedCatalog.merge(listOf(CatalogPart(xtream, xtreamCatalog())))

        assertNull(AggregatedCatalog.itemLabel("101", xtream, listOf(xtream)))
        assertNull(AggregatedCatalog.itemLabel("s2:abc", m3u, listOf(m3u)))
        assertTrue(merged.liveCategories.none { it.categoryName?.contains("·") == true })
    }

    @Test
    fun `con due sorgenti ogni voce sa da dove viene`() {
        val enabled = listOf(xtream, m3u)

        assertEquals("S1", AggregatedCatalog.itemLabel("101", xtream, enabled))
        assertEquals("M1", AggregatedCatalog.itemLabel("s2:abc", xtream, enabled))
    }

    @Test
    fun `identificativi aggregati`() {
        assertEquals("s2:abc", SourceIds.scoped("s2", "abc"))
        assertEquals("abc", SourceIds.localOf("s2:abc"))
        assertEquals("s2", SourceIds.sourceOf("s2:abc"))
        assertNull(SourceIds.sourceOf("101"))
        assertEquals("101", SourceIds.localOf("101"))
        assertTrue(SourceIds.isScoped("s2:abc"))
    }

    @Test
    fun `la partizione degli archivi separa Xtream e M3U`() {
        val xtreamAccount = SourceAccount.of(xtream, "http://server.esempio:8080", "demo")
        val m3uAccount = SourceAccount.of(m3u, "http://server.esempio:8080", "demo")

        assertEquals("http://server.esempio:8080", xtreamAccount.server)
        assertEquals("demo", xtreamAccount.username)
        assertEquals("m3u:s2", m3uAccount.server)
        assertEquals("", m3uAccount.username)
    }

    @Test
    fun `il catalogo vuoto non ha contenuti`() {
        assertEquals(Catalog(), AggregatedCatalog.merge(emptyList()))
    }
}
