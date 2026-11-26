package it.felixvision.tv.data.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.m3u.M3uEntry
import it.felixvision.tv.data.m3u.M3uLibrary
import it.felixvision.tv.data.sources.AggregatedCatalog
import it.felixvision.tv.data.sources.CatalogPart
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.SourceIds
import it.felixvision.tv.data.sources.SourceType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Contenuti protetti delle liste M3U in Film.
 *
 * Nella vista "Liste M3U" i film hanno l'identificativo della categoria **fusa**
 * (`m3u_all:…`), mentre i Contenuti protetti si scelgono sulle categorie delle
 * **singole liste** (`s2:m3u_cat_0`): senza la categoria della lista fra quelle
 * della voce, nascondere una categoria non aveva effetto in Film (e il film
 * spariva solo da Preferiti e Continua a guardare). Qui si verifica che la
 * regola valga anche nella vista unita e che una categoria rimasta senza film
 * sparisca invece di restare come colonna vuota.
 */
class M3uProtectedContentTest {

    private val first = Source(id = "s2", type = SourceType.M3U, label = "M1")
    private val second = Source(id = "s3", type = SourceType.M3U, label = "M2")

    private fun m3uView(): Catalog = AggregatedCatalog.mergeM3u(
        listOf(
            CatalogPart(
                first,
                M3uLibrary.buildCatalog(
                    sourceId = first.id,
                    entries = listOf(
                        M3uEntry(title = "Azione uno", url = "http://server.esempio/1.mp4", group = "Azione"),
                        M3uEntry(title = "Commedia uno", url = "http://server.esempio/2.mp4", group = "Commedia"),
                    ),
                ),
            ),
            CatalogPart(
                second,
                M3uLibrary.buildCatalog(
                    sourceId = second.id,
                    entries = listOf(
                        M3uEntry(title = "Azione due", url = "http://server.esempio/3.mp4", group = "Azione"),
                    ),
                ),
            ),
        ),
    )

    /** Nascosta la categoria "Azione" della PRIMA lista (id `s2:m3u_cat_0`). */
    private fun hiddenFirstListAction(): ProtectedContentData = ProtectedContentData(
        hiddenCategories = listOf(
            HiddenCategory(
                kind = ProtectedKind.VOD.storageKey,
                categoryId = SourceIds.scoped("s2", M3uLibrary.categoryId(0)),
                name = "Azione",
            ),
        ),
    )

    @Test
    fun `nascondere la categoria di una lista toglie i suoi film anche in Film`() {
        val filtered = ProtectedFilter.filterCatalog(
            catalog = m3uView(),
            data = hiddenFirstListAction(),
            emptyCategorySourceId = AggregatedCatalog.M3U_MERGED_ID,
        )

        // Il film della lista nascosta non c'è più; quello dell'altra lista resta.
        assertEquals(listOf("Azione due", "Commedia uno"), filtered.vodStreams.map { it.name }.sorted())
        // La categoria fusa "Azione" resta comunque: contiene un film visibile.
        assertEquals(listOf("Azione", "Commedia"), filtered.vodCategories.map { it.categoryName }.sorted())
    }

    @Test
    fun `una categoria fusa rimasta senza film sparisce`() {
        // Nascosta "Commedia" (l'unico film della categoria) della prima lista.
        val data = ProtectedContentData(
            hiddenCategories = listOf(
                HiddenCategory(
                    kind = ProtectedKind.VOD.storageKey,
                    categoryId = SourceIds.scoped("s2", M3uLibrary.categoryId(1)),
                    name = "Commedia",
                ),
            ),
        )

        val filtered = ProtectedFilter.filterCatalog(
            catalog = m3uView(),
            data = data,
            emptyCategorySourceId = AggregatedCatalog.M3U_MERGED_ID,
        )

        assertEquals(listOf("Azione"), filtered.vodCategories.map { it.categoryName })
        assertTrue("il film della categoria sparita non deve restare", filtered.vodStreams.none { it.name == "Commedia uno" })
    }

    @Test
    fun `senza la richiesta esplicita le categorie non spariscono`() {
        val data = ProtectedContentData(
            hiddenCategories = listOf(
                HiddenCategory(
                    kind = ProtectedKind.VOD.storageKey,
                    categoryId = SourceIds.scoped("s2", M3uLibrary.categoryId(1)),
                    name = "Commedia",
                ),
            ),
        )

        val filtered = ProtectedFilter.filterCatalog(catalog = m3uView(), data = data)

        // Comportamento di prima per chi non lo chiede (per esempio il catalogo
        // dell'account, dove le categorie hanno già il loro identificativo).
        assertEquals(listOf("Azione", "Commedia"), filtered.vodCategories.map { it.categoryName }.sorted())
    }

    @Test
    fun `un film nascosto singolarmente sparisce dalla vista unita`() {
        val view = m3uView()
        val hiddenFilm = view.vodStreams.first { it.name == "Azione due" }
        val data = ProtectedContentData(
            hiddenItems = listOf(
                HiddenItem(
                    kind = ProtectedKind.VOD.storageKey,
                    itemId = hiddenFilm.streamId,
                    categoryId = hiddenFilm.categoryId,
                    name = "Azione due",
                ),
            ),
        )

        val filtered = ProtectedFilter.filterCatalog(
            catalog = view,
            data = data,
            emptyCategorySourceId = AggregatedCatalog.M3U_MERGED_ID,
        )

        assertTrue(filtered.vodStreams.none { it.streamId == hiddenFilm.streamId })
        assertEquals(listOf("Azione uno", "Commedia uno"), filtered.vodStreams.map { it.name }.sorted())
        // La categoria "Azione" resta: c'è ancora il film della prima lista.
        assertEquals(listOf("Azione", "Commedia"), filtered.vodCategories.map { it.categoryName }.sorted())
    }

    @Test
    fun `un film senza categoria resta fra i visibili`() {
        val view = Catalog(
            vodCategories = listOf(Category(categoryId = "m3u_all:m3u_cat_0", categoryName = "Azione")),
            vodStreams = listOf(
                VodStream(name = "Orfano", streamId = "s2:orfano", categoryId = null),
            ),
        )

        val filtered = ProtectedFilter.filterCatalog(
            catalog = view,
            data = ProtectedContentData(
                hiddenItems = emptyList(),
                hiddenCategories = listOf(
                    HiddenCategory(ProtectedKind.VOD.storageKey, "m3u_all:m3u_cat_0", "Azione"),
                ),
            ),
            emptyCategorySourceId = AggregatedCatalog.M3U_MERGED_ID,
        )

        assertTrue(filtered.vodCategories.isEmpty())
        assertEquals(listOf("Orfano"), filtered.vodStreams.map { it.name })
    }
}
