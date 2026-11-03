package it.felixvision.tv.data.protection

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Rimozione multipla: una sola trasformazione dell'archivio (poi una sola
 * scrittura/ revisione nello store). Categorie e contenuti usano chiavi
 * distinte: una chiave categoria non tocca un contenuto con lo stesso id.
 */
class ProtectedContentRulesRemoveAllTest {

    private val liveCategory = HiddenCategory(ProtectedKind.LIVE.storageKey, "001", "Categoria uno")
    private val vodCategory = HiddenCategory(ProtectedKind.VOD.storageKey, "001", "Categoria due")
    private val liveItem = HiddenItem(ProtectedKind.LIVE.storageKey, "001", "001", "Canale uno")
    private val vodItem = HiddenItem(ProtectedKind.VOD.storageKey, "201", "001", "Film uno")

    private fun archive() = ProtectedContentData(
        hiddenCategories = listOf(liveCategory, vodCategory),
        hiddenItems = listOf(liveItem, vodItem),
    )

    @Test
    fun `nessuna chiave non cambia l archivio`() {
        val data = archive()
        assertSame(data, ProtectedContentRules.removeAll(data, emptyList()))
    }

    @Test
    fun `categoria e contenuto tolti insieme in una sola trasformazione`() {
        val keys = listOf(
            ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true),
            ProtectedEntryKey(ProtectedKind.VOD, "201", isCategory = false),
        )
        val updated = ProtectedContentRules.removeAll(archive(), keys)
        assertEquals(listOf(vodCategory), updated.hiddenCategories)
        assertEquals(listOf(liveItem), updated.hiddenItems)
        assertEquals(2, updated.hiddenCount)
    }

    @Test
    fun `la chiave di una categoria non rimuove il contenuto con lo stesso id`() {
        val data = archive()
        val updated = ProtectedContentRules.removeAll(
            data,
            listOf(ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true)),
        )
        assertEquals(listOf(vodCategory), updated.hiddenCategories)
        // L'id "001" esiste anche come contenuto Live: resta, perché la chiave
        // scelta è quella di una categoria.
        assertEquals(listOf(liveItem, vodItem), updated.hiddenItems)
    }

    @Test
    fun `il tipo fa parte della chiave`() {
        val updated = ProtectedContentRules.removeAll(
            archive(),
            listOf(ProtectedEntryKey(ProtectedKind.SERIES, "001", isCategory = true)),
        )
        assertEquals(archive(), updated)
    }

    @Test
    fun `chiavi duplicate e inesistenti non cambiano il risultato`() {
        val keys = listOf(
            ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true),
            ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true),
            ProtectedEntryKey(ProtectedKind.LIVE, "999", isCategory = true),
        )
        val updated = ProtectedContentRules.removeAll(archive(), keys)
        assertEquals(listOf(vodCategory), updated.hiddenCategories)
        assertTrue(updated.hiddenItems.containsAll(listOf(liveItem, vodItem)))
    }

    @Test
    fun `rimuovendo tutte le voci l elenco resta vuoto`() {
        val updated = ProtectedContentRules.removeAll(
            archive(),
            listOf(
                ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true),
                ProtectedEntryKey(ProtectedKind.VOD, "001", isCategory = true),
                ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = false),
                ProtectedEntryKey(ProtectedKind.VOD, "201", isCategory = false),
            ),
        )
        assertEquals(ProtectedContentData(), updated)
        assertFalse(updated.hasPin)
        assertEquals(0, updated.hiddenCount)
    }
}
