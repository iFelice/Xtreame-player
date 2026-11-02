package it.felixvision.tv.ui.settings.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.protection.ProtectedKind
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Elenchi della schermata "Aggiungi" con contenuti assegnati a più categorie:
 * il contenuto compare sotto ognuna delle sue categorie (una sola volta per
 * elenco), così lo si può nascondere partendo da quella che si sta guardando.
 */
class ProtectableListsMultiCategoryTest {

    private val catalog = Catalog(
        liveCategories = listOf(
            Category(categoryId = "001", categoryName = "News"),
            Category(categoryId = "002", categoryName = "Sport"),
        ),
        liveStreams = listOf(
            LiveStream(
                streamId = "101",
                name = "Canale in due categorie",
                categoryId = "001",
                categoryIds = listOf("001", "002"),
            ),
            LiveStream(streamId = "102", name = "Canale in due", categoryId = "002"),
        ),
        vodCategories = listOf(
            Category(categoryId = "001", categoryName = "Azione"),
            Category(categoryId = "002", categoryName = "Ultimi usciti"),
        ),
        vodStreams = listOf(
            VodStream(
                streamId = "201",
                name = "Film in due categorie",
                categoryId = "001",
                categoryIds = listOf("002"),
            ),
        ),
        seriesCategories = listOf(
            Category(categoryId = "001", categoryName = "Dramma"),
            Category(categoryId = "002", categoryName = "Serie recenti"),
        ),
        series = listOf(
            SeriesItem(
                seriesId = "301",
                name = "Serie in due categorie",
                categoryId = "002",
                categoryIds = listOf("001"),
            ),
        ),
    )

    @Test
    fun `lo stesso contenuto compare sotto ognuna delle sue categorie una volta sola`() {
        assertEquals(
            listOf("101"),
            itemsForCategory(catalog, ProtectedKind.LIVE, "001").map { it.itemId },
        )
        assertEquals(
            listOf("101", "102"),
            itemsForCategory(catalog, ProtectedKind.LIVE, "002").map { it.itemId },
        )
        assertEquals(
            listOf("201"),
            itemsForCategory(catalog, ProtectedKind.VOD, "002").map { it.itemId },
        )
        assertEquals(
            listOf("201"),
            itemsForCategory(catalog, ProtectedKind.VOD, "001").map { it.itemId },
        )
        assertEquals(
            listOf("301"),
            itemsForCategory(catalog, ProtectedKind.SERIES, "001").map { it.itemId },
        )
        assertEquals(
            emptyList<String>(),
            itemsForCategory(catalog, ProtectedKind.SERIES, "999").map { it.itemId },
        )
    }
}
