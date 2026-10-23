package it.felixvision.tv.data.playback

import it.felixvision.tv.data.catalog.Episode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class EpisodeQueueTest {

    private fun episode(id: String, num: String, title: String = "Episodio $num") =
        Episode(id = id, episodeNum = num, title = title)

    private val seasonOne = listOf(episode("101", "1"), episode("102", "2"), episode("103", "10"))
    private val seasonTwo = listOf(episode("201", "1"), episode("202", "2"))
    private val episodes = mapOf("1" to seasonOne, "2" to seasonTwo)

    @Test
    fun `coda ordinata per stagione e numero episodio numerico`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        assertEquals(
            listOf("101", "102", "103", "201", "202"),
            queue.map { it.episode.id },
        )
    }

    @Test
    fun `episodio successivo nella stessa stagione`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        assertEquals("102", nextEpisode(queue, "101")?.episode?.id)
    }

    @Test
    fun `episodio successivo passa alla stagione seguente`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        assertEquals("201", nextEpisode(queue, "103")?.episode?.id)
    }

    @Test
    fun `ultimo episodio non ha successivo`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        assertNull(nextEpisode(queue, "202"))
    }

    @Test
    fun `episodio sconosciuto non ha successivo`() {
        val queue = buildEpisodeQueue(listOf("1"), episodes)
        assertNull(nextEpisode(queue, "999"))
    }

    @Test
    fun `titolo mostrato usa fallback quando il titolo è vuoto`() {
        val queue = buildEpisodeQueue(listOf("1"), mapOf("1" to listOf(episode("101", "1", ""))))
        assertEquals("Episodio 1", queue.single().displayTitle)
    }

    @Test
    fun `indice dell'episodio nella coda`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        assertEquals(3, indexOfEpisode(queue, "201"))
        assertEquals(-1, indexOfEpisode(queue, "999"))
    }

    @Test
    fun `la coda di una serie espone l'episodio corrente`() {
        val queue = buildEpisodeQueue(listOf("1", "2"), episodes)
        val playback = SeriesPlayback(
            seriesId = "10",
            title = "Serie demo",
            categoryId = "1",
            queue = queue,
            startIndex = 1,
        )
        assertEquals("102", playback.current?.episode?.id)
        assertNull(playback.copy(startIndex = 99).current)
    }
}
