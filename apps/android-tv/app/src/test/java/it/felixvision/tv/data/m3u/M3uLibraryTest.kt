package it.felixvision.tv.data.m3u

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.sources.SourceIds
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Da voci M3U a catalogo Film: categorie nell'ordine del file, "Senza
 * categoria", identificativi stabili e disambiguati, indirizzi diretti.
 */
class M3uLibraryTest {

    private val sourceId = "s2"

    private fun entry(
        title: String,
        url: String = "http://server.esempio/$title.mp4",
        group: String? = null,
        tvgId: String? = null,
        logo: String? = null,
    ) = M3uEntry(title = title, url = url, group = group, tvgId = tvgId, logo = logo)

    @Test
    fun `le categorie seguono l'ordine di prima comparsa`() {
        val entries = listOf(
            entry("Uno", group = "Film"),
            entry("Due", group = "Serie TV"),
            entry("Tre", group = "Film"),
            entry("Quattro"),
        )

        assertEquals(listOf("Film", "Serie TV", M3uLibrary.UNCATEGORIZED), M3uLibrary.categoryNames(entries))
    }

    @Test
    fun `senza gruppo la categoria e Senza categoria`() {
        val entry = entry("Senza gruppo", group = null)

        assertEquals(M3uLibrary.UNCATEGORIZED, M3uLibrary.categoryNameOf(entry))
        // Anche un gruppo fatto di soli spazi vale "Senza categoria".
        assertEquals(M3uLibrary.UNCATEGORIZED, M3uLibrary.categoryNameOf(entry.copy(group = "   ")))
    }

    @Test
    fun `il catalogo usa identificativi legati alla sorgente`() {
        val catalog: Catalog = M3uLibrary.buildCatalog(sourceId, listOf(entry("Uno", group = "Film")))

        val category = catalog.vodCategories.single()
        val stream = catalog.vodStreams.single()
        assertEquals(SourceIds.scoped(sourceId, M3uLibrary.categoryId(0)), category.categoryId)
        assertEquals("Film", category.categoryName)
        assertEquals(category.categoryId, stream.categoryId)
        assertEquals(sourceId, SourceIds.sourceOf(stream.streamId))
        // Tutte le voci sono film: nessuna serie, nessun canale.
        assertTrue(catalog.series.isEmpty())
        assertTrue(catalog.liveStreams.isEmpty())
        // Nessuna data di aggiunta: le voci non entrano in Novità.
        assertNull(stream.added)
    }

    @Test
    fun `l'identificativo viene dal tvg-id quando c'e`() {
        val withTvgId = entry("Uno", url = "http://server.esempio/uno.mp4", tvgId = "canale-1")
        val otherForSameId = entry("Altro", url = "http://server.esempio/altro.mp4", tvgId = "canale-1")
        val withoutTvgId = entry("Due", url = "http://server.esempio/due.mp4", tvgId = null)

        assertEquals(M3uLibrary.stableId(withTvgId), M3uLibrary.stableId(otherForSameId))
        assertNotEquals(M3uLibrary.stableId(withTvgId), M3uLibrary.stableId(withoutTvgId))
        // L'identificativo non dipende dalla posizione nel file.
        assertEquals(
            M3uLibrary.stableId(withoutTvgId),
            M3uLibrary.stableId(withoutTvgId.copy(title = "Titolo cambiato")),
        )
    }

    @Test
    fun `le voci duplicate sono disambiguate con un indice`() {
        val entries = listOf(
            entry("Prima", url = "http://server.esempio/uguale.mp4"),
            entry("Seconda", url = "http://server.esempio/uguale.mp4"),
            entry("Terza", url = "http://server.esempio/uguale.mp4"),
        )

        val catalog = M3uLibrary.buildCatalog(sourceId, entries)

        val ids = catalog.vodStreams.map { it.streamId }
        assertEquals(3, ids.distinct().size)
        val base = SourceIds.scoped(sourceId, M3uLibrary.stableId(entries[0]))
        assertEquals(base, ids[0])
        assertEquals("$base-2", ids[1])
        assertEquals("$base-3", ids[2])
        assertEquals(listOf("Prima", "Seconda", "Terza"), catalog.vodStreams.map { it.name })
    }

    @Test
    fun `la copertina viene da tvg-logo`() {
        val catalog = M3uLibrary.buildCatalog(
            sourceId,
            listOf(entry("Con logo", group = "Film", logo = "http://server.esempio/logo.png")),
        )

        assertEquals("http://server.esempio/logo.png", catalog.vodStreams.single().streamIcon)
    }

    @Test
    fun `l'estensione arriva dall'indirizzo`() {
        assertEquals("m3u8", M3uLibrary.containerExtension("http://server.esempio/film.m3u8?token=1"))
        assertEquals("mkv", M3uLibrary.containerExtension("http://server.esempio/film.MKV"))
        assertNull(M3uLibrary.containerExtension("http://server.esempio/senza-estensione"))
    }

    @Test
    fun `l'indirizzo diretto si ritrova dall'identificativo`() {
        val entries = listOf(
            entry("Uno", url = "http://server.esempio/uno.mp4", tvgId = "a"),
            entry("Due", url = "http://server.esempio/due.mkv", tvgId = "b"),
        )

        val urls = M3uLibrary.urlsById(entries, sourceId)
        val catalog = M3uLibrary.buildCatalog(sourceId, entries)

        assertEquals(2, urls.size)
        catalog.vodStreams.forEach { stream ->
            assertEquals(1, urls.keys.count { it == stream.streamId })
        }
        assertEquals("http://server.esempio/due.mkv", urls[catalog.vodStreams[1].streamId])
        assertEquals(
            "http://server.esempio/uno.mp4",
            M3uLibrary.entryFor(entries, sourceId, catalog.vodStreams[0].streamId)?.url,
        )
    }

    @Test
    fun `la coda della categoria resta nell'ordine del file`() {
        val entries = listOf(
            entry("Uno", group = "Film"),
            entry("Fuori", group = "Altro"),
            entry("Due", group = "Film"),
            entry("Tre", group = "Film"),
        )
        val catalog = M3uLibrary.buildCatalog(sourceId, entries)
        val filmCategory = catalog.vodCategories.first { it.categoryName == "Film" }

        val queue = M3uLibrary.entriesInCategory(entries, sourceId, filmCategory.categoryId)

        assertEquals(listOf("Uno", "Due", "Tre"), queue.map { it.first.name })
        assertEquals("http://server.esempio/Uno.mp4", queue.first().second)
    }
}
