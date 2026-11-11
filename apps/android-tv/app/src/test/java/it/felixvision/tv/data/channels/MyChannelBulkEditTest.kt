package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Selezione multipla di "I miei canali": aggiunta in fondo senza duplicati,
 * rimozione in blocco e raggruppamento per categoria della pagina di scelta.
 */
class MyChannelBulkEditTest {

    private fun channel(id: String, name: String = "Canale $id") = MyChannel(
        streamId = id,
        name = name,
        logo = "http://server.esempio:8080/logo/$id.png",
    )

    private fun stream(id: String, categoryId: String?, name: String = "Canale $id") =
        LiveStream(num = null, name = name, streamId = id, categoryId = categoryId)

    private fun category(id: String, name: String) =
        Category(categoryId = id, categoryName = name)

    @Test
    fun `aggiunta in blocco va in fondo nell ordine di scelta e non duplica`() {
        val current = listOf(channel("1"), channel("2"))
        val result = MyChannelBulk.addAll(
            current,
            listOf(channel("3"), channel("1"), channel("5")),
        )
        assertEquals(listOf("1", "2", "3", "5"), result.channels.map { it.streamId })
        // "1" c'era già: non viene toccato e non entra fra gli aggiunti.
        assertEquals(listOf("3", "5"), result.added)
        // La numerazione continua dopo l'ultimo: 1,2,3,4.
        assertEquals(3, MyChannels.numberOf(result.channels, "3"))
        assertEquals(4, MyChannels.numberOf(result.channels, "5"))
    }

    @Test
    fun `aggiunta a lista vuota numera da uno`() {
        val result = MyChannelBulk.addAll(emptyList(), listOf(channel("10"), channel("11")))
        assertEquals(1, MyChannels.numberOf(result.channels, "10"))
        assertEquals(2, MyChannels.numberOf(result.channels, "11"))
        assertEquals(2, result.added.size)
    }

    @Test
    fun `rimozione in blocco toglie solo i presenti e non tocca gli altri`() {
        val current = listOf(channel("1"), channel("2"), channel("3"))
        val result = MyChannelBulk.removeAll(current, listOf("2", "99"))
        assertEquals(listOf("1", "3"), result.channels.map { it.streamId })
        assertEquals(listOf("2"), result.removed)
        // Dopo la rimozione i numeri si ricompattano: nessun buco.
        assertEquals(1, MyChannels.numberOf(result.channels, "1"))
        assertEquals(2, MyChannels.numberOf(result.channels, "3"))
    }

    @Test
    fun `rimozione senza corrispondenze lascia la lista com'era`() {
        val current = listOf(channel("1"))
        val result = MyChannelBulk.removeAll(current, listOf("8"))
        assertEquals(current, result.channels)
        assertTrue(result.removed.isEmpty())
    }

    @Test
    fun `toggle mantiene l ordine di scelta`() {
        var selected = emptyList<String>()
        selected = MyChannelSelection.toggle(selected, "a")
        selected = MyChannelSelection.toggle(selected, "b")
        selected = MyChannelSelection.toggle(selected, "c")
        assertEquals(listOf("a", "b", "c"), selected)
        selected = MyChannelSelection.toggle(selected, "b")
        assertEquals(listOf("a", "c"), selected)
        // Un id vuoto non entra nella selezione.
        assertEquals(selected, MyChannelSelection.toggle(selected, "  "))
    }

    @Test
    fun `toggleAll spunta tutto e poi svuota`() {
        val group = listOf("a", "b", "c")
        var selected = MyChannelSelection.toggleAll(emptyList(), group)
        assertEquals(group, selected)
        assertTrue(MyChannelSelection.containsAll(selected, group))
        selected = MyChannelSelection.toggleAll(selected, group)
        assertTrue(selected.isEmpty())
        assertFalse(MyChannelSelection.containsAll(emptyList(), group))
        // Un gruppo senza canali non è mai "tutto scelto".
        assertFalse(MyChannelSelection.containsAll(emptyList(), emptyList()))
        assertEquals(emptyList<String>(), MyChannelSelection.toggleAll(emptyList(), emptyList()))
    }

    @Test
    fun `toggleAll aggiunge solo i mancanti in coda`() {
        var selected = MyChannelSelection.toggle(emptyList(), "a")
        selected = MyChannelSelection.toggleAll(selected, listOf("a", "b"))
        assertEquals(listOf("a", "b"), selected)
    }

    @Test
    fun `toggleEvery è tutto o niente`() {
        val all = listOf("a", "b")
        assertEquals(all, MyChannelSelection.toggleEvery(emptyList(), all))
        assertEquals(emptyList<String>(), MyChannelSelection.toggleEvery(listOf("a", "b"), all))
        // Parziale: si completa, come ci si aspetta da "Tutti i canali".
        assertEquals(all, MyChannelSelection.toggleEvery(listOf("a"), all))
    }

    @Test
    fun `i gruppi seguono l ordine del catalogo e saltano le categorie vuote`() {
        val categories = listOf(category("1", "Serie A"), category("2", "Vuota"), category("3", "Sport"))
        val streams = listOf(stream("a", "3"), stream("b", "1"), stream("c", "1"))
        val groups = myChannelPickerGroups(categories, streams)
        assertEquals(listOf("Serie A", "Sport"), groups.map { it.name })
        assertEquals(listOf("b", "c"), groups[0].streamIds)
        assertEquals(listOf("a"), groups[1].streamIds)
    }

    @Test
    fun `i canali già miei restano nel gruppo ma non sono selezionabili`() {
        val categories = listOf(category("1", "Serie A"), category("2", "Sport"))
        val streams = listOf(stream("a", "1"), stream("b", "1"), stream("s", "2"))
        val groups = myChannelPickerGroups(categories, streams, mine = setOf("b", "s"))
        // Tutti i canali del catalogo restano visibili: nessuno sparisce.
        assertEquals(listOf("a"), groups[0].streamIds)
        assertEquals(listOf("b"), groups[0].alreadyMineIds)
        assertEquals(2, groups[0].visibleTotal)
        // La categoria con soli canali già miei resta, così si vede dove sono.
        assertEquals(emptyList<String>(), groups[1].streamIds)
        assertEquals(listOf("s"), groups[1].alreadyMineIds)
        assertTrue(groups[0].isAlreadyMine("b"))
        assertFalse(groups[0].isAlreadyMine("a"))
    }

    @Test
    fun `senza canali già miei i gruppi sono come prima`() {
        val categories = listOf(category("1", "Serie A"))
        val streams = listOf(stream("a", "1"), stream("b", "1"))
        val groups = myChannelPickerGroups(categories, streams)
        assertEquals(listOf("a", "b"), groups[0].streamIds)
        assertTrue(groups[0].alreadyMine.isEmpty())
        assertEquals(2, groups[0].visibleTotal)
    }

    @Test
    fun `i canali senza categoria finiscono in Altri canali`() {
        val categories = listOf(category("1", "Serie A"))
        val streams = listOf(stream("a", "1"), stream("x", null), stream("y", "sconosciuta"))
        val groups = myChannelPickerGroups(categories, streams)
        assertEquals(2, groups.size)
        assertEquals(MY_CHANNEL_NO_CATEGORY, groups[1].name)
        assertNull(groups[1].categoryId)
        assertEquals(listOf("x", "y"), groups[1].streamIds)
    }
}

/**
 * Spunte delle righe: piena quando tutto il gruppo è scelto, parziale quando
 * solo una parte, e conteggio sempre allineato alla selezione corrente.
 */
class MyChannelPickerGroupTest {

    private fun stream(id: String) = LiveStream(
        num = null,
        name = "Canale $id",
        streamId = id,
        categoryId = "1",
    )

    private val group = MyChannelPickerGroup(
        categoryId = "1",
        name = "Serie A",
        streams = listOf(stream("a"), stream("b"), stream("c")),
    )

    @Test
    fun `gruppo vuoto non è mai spuntato`() {
        val empty = MyChannelPickerGroup(categoryId = "2", name = "Vuota", streams = emptyList())
        assertFalse(empty.allChecked(emptyList()))
        assertFalse(empty.someChecked(emptyList()))
        assertEquals(0, empty.checkedCount(emptyList()))
    }

    @Test
    fun `spunta piena solo con tutti i canali scelti`() {
        assertTrue(group.allChecked(listOf("a", "b", "c")))
        assertFalse(group.allChecked(listOf("a", "b")))
        assertEquals(3, group.checkedCount(listOf("a", "b", "c")))
    }

    @Test
    fun `spunta parziale con una parte scelta`() {
        assertTrue(group.someChecked(listOf("a")))
        assertTrue(group.someChecked(listOf("b", "c")))
        assertFalse(group.someChecked(emptyList()))
        assertFalse(group.someChecked(listOf("a", "b", "c")))
        assertFalse(group.someChecked(listOf("z")))
    }

    @Test
    fun `la selezione può contenere canali di altri gruppi senza falsare le spunte`() {
        assertEquals(1, group.checkedCount(listOf("a", "di-un-altro-gruppo")))
        assertFalse(group.allChecked(listOf("a", "di-un-altro-gruppo")))
    }
}

/**
 * Pagina "Rimuovi canali": i canali personali restano raggiungibili anche
 * quando il catalogo non li conosce più, e l'ordine è quello personale.
 */
class MyChannelRemovalGroupsTest {

    private fun channel(id: String) = MyChannel(streamId = id, name = "Canale $id")

    private fun stream(id: String, categoryId: String?) = LiveStream(
        num = null,
        name = "Canale $id",
        streamId = id,
        categoryId = categoryId,
    )

    private val categories = listOf(
        Category(categoryId = "1", categoryName = "Serie A"),
        Category(categoryId = "2", categoryName = "Sport"),
    )

    @Test
    fun `raggruppa per categoria del catalogo mantenendo l ordine personale`() {
        val channels = listOf(channel("b"), channel("a"), channel("s"))
        val streams = listOf(stream("a", "1"), stream("b", "1"), stream("s", "2"))
        val groups = myChannelRemovalGroups(channels, categories, streams)
        assertEquals(listOf("Serie A", "Sport"), groups.map { it.name })
        // Ordine personale, non del catalogo: è la numerazione che si vede.
        assertEquals(listOf("b", "a"), groups[0].streamIds)
        assertEquals(listOf("s"), groups[1].streamIds)
    }

    @Test
    fun `canale sparito dal catalogo resta rimovibile in Altri canali`() {
        val channels = listOf(channel("a"), channel("fantasma"))
        val streams = listOf(stream("a", "1"))
        val groups = myChannelRemovalGroups(channels, categories, streams)
        assertEquals(2, groups.size)
        assertEquals(MY_CHANNEL_NO_CATEGORY, groups[1].name)
        assertEquals(listOf("fantasma"), groups[1].streamIds)
    }

    @Test
    fun `lista vuota non produce gruppi`() {
        assertTrue(myChannelRemovalGroups(emptyList(), categories, emptyList()).isEmpty())
    }
}
