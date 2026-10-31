package it.felixvision.tv.ui.settings.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.protection.ProtectedKind
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Gli elenchi mostrati dalla schermata "Aggiungi" finiscono in LazyColumn con
 * chiavi derivate dagli id: se il provider ripete uno `stream_id` nella stessa
 * categoria o una `category_id`, la lista deve contenere una sola voce per id,
 * nell'ordine della prima comparsa (la seconda occorrenza viene ignorata).
 */
class ProtectableListsTest {

    private val catalog = Catalog(
        liveCategories = listOf(
            Category(categoryId = "001", categoryName = "News"),
            Category(categoryId = "002", categoryName = "Sport"),
            Category(categoryId = "001", categoryName = "News ripetuta"),
            Category(categoryId = "002", categoryName = "Sport ripetuto"),
        ),
        liveStreams = listOf(
            LiveStream(name = "Nebbia TV", streamId = "101", categoryId = "001"),
            LiveStream(name = "Bosco TV", streamId = "102", categoryId = "001"),
            LiveStream(name = "Nebbia TV bis", streamId = "101", categoryId = "001"),
            LiveStream(name = "Fuori categoria", streamId = "103", categoryId = "002"),
        ),
        vodStreams = listOf(
            VodStream(name = "Il film inventato", streamId = "201", categoryId = "007"),
        ),
    )

    @Test
    fun `categorie ripetute restano una sola volta nell ordine della prima`() {
        val categories = categoriesForKind(catalog, ProtectedKind.LIVE)
        assertEquals(listOf("001", "002"), categories.map { it.categoryId })
        // Vale la prima comparsa: il nome duplicato di coda è scartato.
        assertEquals("News", categories.first().categoryName)
    }

    @Test
    fun `streamId ripetuto nella stessa categoria compare una sola volta`() {
        val items = itemsForCategory(catalog, ProtectedKind.LIVE, "001")
        assertEquals(listOf("101", "102"), items.map { it.itemId })
        // Vale la prima occorrenza del canale.
        assertEquals("Nebbia TV", items.first().name)
        // Gli altri canali della categoria restano nell'ordine del catalogo.
        assertEquals("Fuori categoria", itemsForCategory(catalog, ProtectedKind.LIVE, "002").single().name)
    }

    @Test
    fun `catalogo assente o categoria senza voci danno liste vuote`() {
        assertEquals(emptyList<String>(), categoriesForKind(null, ProtectedKind.LIVE).map { it.categoryId })
        assertEquals(emptyList<String>(), itemsForCategory(catalog, ProtectedKind.LIVE, "999").map { it.itemId })
        // Un tipo diverso non vede gli stream Live.
        assertEquals(emptyList<String>(), itemsForCategory(catalog, ProtectedKind.VOD, "001").map { it.itemId })
        assertEquals(
            listOf("201"),
            itemsForCategory(catalog, ProtectedKind.VOD, "007").map { it.itemId },
        )
    }
}
