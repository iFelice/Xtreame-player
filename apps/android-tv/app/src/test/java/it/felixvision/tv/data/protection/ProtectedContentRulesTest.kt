package it.felixvision.tv.data.protection

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProtectedContentRulesTest {

    private val data = ProtectedContentData()

    @Test
    fun `toggle categoria aggiunge e toglie senza duplicati`() {
        val hidden = ProtectedContentRules.toggleCategory(data, ProtectedKind.LIVE, "001", "News")
        assertEquals(1, hidden.hiddenCategories.size)
        assertTrue(ProtectedContentRules.isCategoryHidden(hidden, ProtectedKind.LIVE, "001"))
        // Un secondo toggle sulla stessa categoria la toglie: mai duplicati.
        val again = ProtectedContentRules.toggleCategory(hidden, ProtectedKind.LIVE, "001", "News")
        assertFalse(ProtectedContentRules.isCategoryHidden(again, ProtectedKind.LIVE, "001"))
        assertTrue(again.hiddenCategories.isEmpty())
        // Una categoria diversa si aggiunge in coda, ordine di inserimento.
        val two = ProtectedContentRules.toggleCategory(hidden, ProtectedKind.LIVE, "002", "Sport")
        assertEquals(listOf("001", "002"), two.hiddenCategories.map { it.categoryId })
        assertEquals(listOf("News", "Sport"), two.hiddenCategories.map { it.name })
        // Lo stesso id in un altro tipo non collide.
        val vod = ProtectedContentRules.toggleCategory(hidden, ProtectedKind.VOD, "001", "Azione")
        assertTrue(ProtectedContentRules.isCategoryHidden(vod, ProtectedKind.VOD, "001"))
        assertFalse(ProtectedContentRules.isCategoryHidden(vod, ProtectedKind.LIVE, "002"))
    }

    @Test
    fun `toggle contenuto singolo senza duplicati`() {
        val one = ProtectedContentRules.toggleItem(data, ProtectedKind.VOD, "201", "55", "Il film inventato")
        assertEquals(1, one.hiddenItems.size)
        assertTrue(ProtectedContentRules.isItemHidden(one, ProtectedKind.VOD, "201", "55"))
        val toggledOff = ProtectedContentRules.toggleItem(one, ProtectedKind.VOD, "201", "55", "Il film inventato")
        assertTrue(toggledOff.hiddenItems.isEmpty())
    }

    @Test
    fun `isItemHidden vero anche quando è nascosta la categoria`() {
        val hiddenCategory = ProtectedContentRules.toggleCategory(data, ProtectedKind.SERIES, "77", "Cartoni")
        // Il contenuto non è nell'elenco dei singoli: è nascosto lo stesso.
        assertTrue(ProtectedContentRules.isItemHidden(hiddenCategory, ProtectedKind.SERIES, "900", "77"))
        // Senza categoria nota non è coperto da nessuna parte.
        assertFalse(ProtectedContentRules.isItemHidden(hiddenCategory, ProtectedKind.SERIES, "900", null))
        // Categoria "77" nascosta solo per le serie: Live non è coperto.
        assertFalse(ProtectedContentRules.isItemHidden(hiddenCategory, ProtectedKind.LIVE, "900", "77"))
        // Il singolo contenuto nascosto vale anche senza categoria nascosta.
        val hiddenItem = ProtectedContentRules.toggleItem(data, ProtectedKind.LIVE, "101", "77", "Nebbia TV")
        assertTrue(ProtectedContentRules.isItemHidden(hiddenItem, ProtectedKind.LIVE, "101", "77"))
        assertFalse(ProtectedContentRules.isItemHidden(hiddenItem, ProtectedKind.LIVE, "102", "77"))
    }

    @Test
    fun `conteggio dei singoli nascosti nella categoria`() {
        var d = data
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "101", "77", "uno")
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "102", "77", "due")
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "103", "88", "tre")
        // Solo i singoli di 77; il conteggio non conta la categoria intera.
        assertEquals(2, ProtectedContentRules.hiddenCountInCategory(d, ProtectedKind.LIVE, "77"))
        assertEquals(1, ProtectedContentRules.hiddenCountInCategory(d, ProtectedKind.LIVE, "88"))
        assertEquals(0, ProtectedContentRules.hiddenCountInCategory(d, ProtectedKind.LIVE, "99"))
        assertEquals(0, ProtectedContentRules.hiddenCountInCategory(d, ProtectedKind.VOD, "77"))
        // Togliendo un singolo il conteggio scende.
        val unhidden = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "101", "77", "uno")
        assertEquals(1, ProtectedContentRules.hiddenCountInCategory(unhidden, ProtectedKind.LIVE, "77"))
    }

    @Test
    fun `rimozioni per l elenco Nascosti`() {
        var d = ProtectedContentRules.toggleCategory(data, ProtectedKind.VOD, "55", "Azione")
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.VOD, "201", "55", "Film X")
        assertEquals(1, ProtectedContentRules.hiddenCountInCategory(d, ProtectedKind.VOD, "55"))

        val removedItem = ProtectedContentRules.removeItem(d, ProtectedKind.VOD, "201")
        assertTrue(removedItem.hiddenItems.isEmpty())
        // La categoria resta nascosta: il contenuto è coperto lo stesso.
        assertTrue(ProtectedContentRules.isCategoryHidden(removedItem, ProtectedKind.VOD, "55"))
        assertTrue(ProtectedContentRules.isItemHidden(removedItem, ProtectedKind.VOD, "201", "55"))

        val removedCategory = ProtectedContentRules.removeCategory(removedItem, ProtectedKind.VOD, "55")
        assertTrue(removedCategory.hiddenCategories.isEmpty())
        assertFalse(ProtectedContentRules.isItemHidden(removedCategory, ProtectedKind.VOD, "201", "55"))

        // Rimuovere ciò che non c'è lascia tutto invariato.
        assertEquals(removedCategory, ProtectedContentRules.removeCategory(removedCategory, ProtectedKind.LIVE, "zzz"))
        assertEquals(removedCategory, ProtectedContentRules.removeItem(removedCategory, ProtectedKind.LIVE, "zzz"))
    }

    @Test
    fun `ordine di inserimento conservato e conteggio totale`() {
        var d = data
        assertFalse(d.hasPin)
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "a", "c1", "A")
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "b", "c1", "B")
        d = ProtectedContentRules.toggleItem(d, ProtectedKind.LIVE, "c", null, "C")
        assertEquals(listOf("a", "b", "c"), d.hiddenItems.map { it.itemId })
        assertEquals(3, d.hiddenCount)
        val withCategory = ProtectedContentRules.toggleCategory(d, ProtectedKind.SERIES, "z", "Z")
        assertEquals(4, withCategory.hiddenCount)
    }
}
