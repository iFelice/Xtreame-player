package it.felixvision.tv.data.continuewatching

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * "Continua a guardare" mostra solo le voci che si possono riaprire: quelle
 * della cui sorgente è ancora accesa. Una lista spenta, uscita dall'indice o
 * nascosta dall'interruttore generale non lascia card morte; i dati restano
 * archiviati, quindi se la lista torna la card torna con il suo punto.
 */
class PlayableContinueEntriesTest {

    private fun movie(streamId: String, title: String = "Film") = ContinueEntry(
        key = ContinueEntry.movieKey(streamId),
        kind = ContinueEntry.KIND_MOVIE,
        title = title,
        streamId = streamId,
        categoryId = null,
        updatedAtMillis = 1_000L,
    )

    private fun episode(seriesId: String) = ContinueEntry(
        key = "series_$seriesId",
        kind = ContinueEntry.KIND_SERIES,
        title = "Serie",
        seriesId = seriesId,
        episodeId = "$seriesId-1",
        seasonNumber = "1",
        episodeNum = "1",
        updatedAtMillis = 2_000L,
    )

    @Test
    fun `una voce di lista accesa resta`() {
        val entries = listOf(movie("s2:film"))

        val playable = PlayableContinueEntries.playable(entries, setOf("src1", "s2"))

        assertEquals(entries, playable)
    }

    @Test
    fun `una voce di lista spenta non compare`() {
        val entries = listOf(movie("s2:film"), movie("src1-unused"))

        val playable = PlayableContinueEntries.playable(entries, enabledSourceIds = emptySet())

        assertTrue("la voce della lista spenta non deve comparire", playable.none { it.streamId == "s2:film" })
    }

    @Test
    fun `una voce di lista sparita dall'indice non compare`() {
        val entries = listOf(movie("s2:film"), movie("s3:altro"))

        val playable = PlayableContinueEntries.playable(entries, setOf("s3"))

        assertEquals(listOf("s3:altro"), playable.map { it.streamId })
    }

    @Test
    fun `le voci dell'account Xtream restano sempre`() {
        // Gli identificativi Xtream non portano la sorgente: nessun filtro.
        val entries = listOf(movie("101"), episode("55"))

        val playable = PlayableContinueEntries.playable(entries, enabledSourceIds = emptySet())

        assertEquals(entries, playable)
    }

    @Test
    fun `l'ordine resta quello dell'archivio`() {
        val entries = listOf(
            movie("s2:primo", "Primo"),
            movie("s3:secondo", "Secondo"),
            movie("s2:terzo", "Terzo"),
        )

        val playable = PlayableContinueEntries.playable(entries, setOf("s2"))

        assertEquals(listOf("Primo", "Terzo"), playable.map { it.title })
    }

    @Test
    fun `una serie di lista si filtra con la sua lista`() {
        val entries = listOf(episode("s2:serie"))

        assertTrue(PlayableContinueEntries.playable(entries, setOf("s3")).isEmpty())
        assertEquals(entries, PlayableContinueEntries.playable(entries, setOf("s2")))
    }

    @Test
    fun `senza voci non cambia niente`() {
        assertTrue(PlayableContinueEntries.playable(emptyList(), emptySet()).isEmpty())
    }
}
