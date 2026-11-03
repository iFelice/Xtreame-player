package it.felixvision.mobile.ui.player

import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Test

class PlayerSessionFactoryTest {
    @Test
    fun zapping_include_canali_della_categoria_secondaria_del_canale_multi_categoria() {
        val chosen = LiveStream(streamId = "10", name = "Canale Multi", categoryId = "prima", categoryIds = listOf("seconda"))
        val other = LiveStream(streamId = "11", name = "Altro canale", categoryId = "seconda")
        val unrelated = LiveStream(streamId = "12", name = "Canale diverso", categoryId = "terza")

        assertEquals(listOf("10", "11"), zappingChannelsFor(chosen, listOf(chosen, other, unrelated)).map { it.streamId })
    }
}
