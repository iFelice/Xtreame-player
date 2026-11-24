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
 * Catalogo unito **senza etichette**: le categorie delle sorgenti stanno una
 * dopo l'altra (in ordine di etichetta, ma senza prefissi) e le voci portano la
 * loro provenienza dentro l'identificativo. Le liste M3U si uniscono in un solo
 * catalogo, con le categorie omonime fuse.
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
    fun `con piu sorgenti le categorie restano separate e senza etichetta`() {
        val merged = AggregatedCatalog.merge(
            listOf(CatalogPart(xtream, xtreamCatalog()), CatalogPart(m3u, m3uCatalog())),
        )

        // Il nome è quello della sorgente: nessun prefisso, nessuna etichetta.
        assertEquals(listOf("Azione", "Azione"), merged.vodCategories.map { it.categoryName })
        assertEquals(2, merged.vodCategories.size)
        assertEquals(2, merged.vodCategories.map { it.categoryId }.distinct().size)
        assertTrue(merged.vodCategories.none { it.categoryName.contains("·") })
    }

    @Test
    fun `le categorie dell'account vanno davanti anche con nomi uguali`() {
        val parts = listOf(
            CatalogPart(m3u, m3uCatalog()),
            CatalogPart(xtream, xtreamCatalog()),
        )

        val merged = AggregatedCatalog.merge(parts)

        // L'ordine è quello delle etichette, non quello della lista di parti.
        assertEquals("10", merged.vodCategories.first().categoryId)
        assertEquals("101", merged.vodStreams.first().streamId)
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

        assertTrue(merged.vodCategories.none { it.categoryName.contains("·") })
        assertTrue(merged.liveCategories.none { it.categoryName?.contains("·") == true })
    }

    @Test
    fun `le liste con la stessa categoria si uniscono in una sola`() {
        val first = Source(id = "s2", type = SourceType.M3U, label = "M1")
        val second = Source(id = "s3", type = SourceType.M3U, label = "M2")
        val lists = listOf(
            CatalogPart(
                first,
                M3uLibrary.buildCatalog(
                    sourceId = first.id,
                    entries = listOf(
                        M3uEntry(title = "Primo film", url = "http://server.esempio/1.mp4", group = "Azione"),
                        M3uEntry(title = "Film senza gruppo", url = "http://server.esempio/2.mp4"),
                    ),
                ),
            ),
            CatalogPart(
                second,
                M3uLibrary.buildCatalog(
                    sourceId = second.id,
                    entries = listOf(
                        // Nome con spazi e maiuscole diverse: stessa categoria.
                        M3uEntry(title = "Secondo film", url = "http://server.esempio/3.mp4", group = "  azione "),
                    ),
                ),
            ),
        )

        val merged = AggregatedCatalog.mergeM3u(lists)

        assertEquals(listOf("Azione", "Senza categoria"), merged.vodCategories.map { it.categoryName })
        assertEquals(2, merged.vodCategories.size)
        val azione = merged.vodCategories.first().categoryId
        assertEquals(
            listOf("Primo film", "Secondo film"),
            merged.vodStreams.filter { it.categoryId == azione }.map { it.name },
        )
        // Una sola "Senza categoria" per tutte le liste.
        assertEquals(1, merged.vodCategories.count { it.categoryName == "Senza categoria" })
    }

    @Test
    fun `le voci unite ricordano la lista di appartenenza`() {
        val first = Source(id = "s2", type = SourceType.M3U, label = "M1")
        val second = Source(id = "s3", type = SourceType.M3U, label = "M2")
        val merged = AggregatedCatalog.mergeM3u(
            listOf(first, second).map { source ->
                CatalogPart(
                    source,
                    M3uLibrary.buildCatalog(
                        sourceId = source.id,
                        entries = listOf(
                            M3uEntry(title = "Film", url = "http://server.esempio/${source.id}.mp4", group = "Azione"),
                        ),
                    ),
                )
            },
        )

        // L'etichetta non si vede, ma la provenienza resta nell'identificativo.
        assertEquals(listOf("s2", "s3"), merged.vodStreams.map { SourceIds.sourceOf(it.streamId) })
        assertEquals(listOf("Azione"), merged.vodCategories.map { it.categoryName })
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
