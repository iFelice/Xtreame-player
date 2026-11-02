package it.felixvision.tv.data.playback

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Zapping del cambio canale numerico con un canale assegnato a più categorie:
 * la lista di zapping della categoria principale contiene anche i canali che
 * vi appartengono tramite `category_ids`. Dati inventati.
 */
class ChannelZappingMultiCategoryTest {

    private val categories = listOf(
        Category(categoryId = "001", categoryName = "News"),
        Category(categoryId = "002", categoryName = "Sport"),
    )

    private val streams = listOf(
        LiveStream(streamId = "101", num = 1, name = "Uno", categoryId = "001"),
        LiveStream(streamId = "102", num = 2, name = "Due", categoryId = "002", categoryIds = listOf("001")),
        LiveStream(streamId = "103", num = 3, name = "Tre", categoryId = "001"),
        LiveStream(streamId = "104", num = 4, name = "Quattro", categoryId = "002"),
    )

    @Test
    fun `lo zapping della categoria include i canali che vi appartengono per category_ids`() {
        val target = ChannelNumberInput.resolveZappingTarget(streams.first(), streams, categories)

        assertEquals("001", target.categoryId)
        assertEquals("News", target.categoryName)
        assertEquals(listOf("101", "102", "103"), target.channels.map { it.streamId })
        assertEquals(0, target.startIndex)
    }

    @Test
    fun `il canale trovato per numero usa la lista della sua categoria principale`() {
        val found = ChannelNumberInput.lookup(2, streams, categories)
        assertTrue(found is ChannelLookupResult.Found)
        val zapping = (found as ChannelLookupResult.Found).zapping

        assertEquals("002", zapping.categoryId)
        assertEquals(listOf("102", "104"), zapping.channels.map { it.streamId })
        assertEquals(0, zapping.startIndex)
    }
}
