package it.felixvision.tv.data.continuewatching

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ContinueWatchingRulesTest {

    private fun movie(id: String, title: String = "Film $id") = ContinueEntry.movie(
        streamId = id,
        title = title,
        poster = "http://server.esempio:8080/poster/$id.jpg",
        categoryId = "cat_$id",
        containerExtension = "mp4",
    )

    private fun series(episode: String, season: String = "2", num: String = "5") = ContinueEntry.series(
        seriesId = "301",
        title = "Serie di prova",
        poster = "http://server.esempio:8080/poster/301.jpg",
        categoryId = "cat_301",
        episode = ContinueEpisode(
            episodeId = episode,
            seasonNumber = season,
            episodeNum = num,
            title = "Episodio $num",
            containerExtension = "mkv",
        ),
    )

    @Test
    fun `archivio vuoto non ha voci visibili`() {
        assertTrue(ContinueWatchingRules.visible(emptyList()).isEmpty())
        assertEquals(emptyList<ContinueEntry>(), ContinueWatchingRules.remove(emptyList(), "vod_201"))
        assertEquals(emptyList<ContinueEntry>(), ContinueWatchingRules.hide(emptyList(), "vod_201"))
    }

    @Test
    fun `inserimento di un film con i campi della voce`() {
        val entries = ContinueWatchingRules.recordMovie(
            entries = emptyList(),
            movie = movie("201", "Il film"),
            positionMillis = 60_000L,
            durationMillis = 600_000L,
            nowMillis = 1_000L,
        )
        val entry = entries.single()
        assertEquals("vod_201", entry.key)
        assertEquals(ContinueEntry.KIND_MOVIE, entry.kind)
        assertEquals("Il film", entry.title)
        assertEquals("cat_201", entry.categoryId)
        assertEquals("mp4", entry.containerExtension)
        assertEquals(1_000L, entry.updatedAtMillis)
        assertFalse(entry.hidden)
        assertTrue(ContinueWatchingRules.visible(entries).contains(entry))
    }

    @Test
    fun `posizioni sotto i trenta secondi non entrano nell'archivio`() {
        val entries = ContinueWatchingRules.recordMovie(
            entries = emptyList(),
            movie = movie("201"),
            positionMillis = 29_000L,
            durationMillis = 600_000L,
            nowMillis = 1_000L,
        )
        assertTrue(entries.isEmpty())
    }

    @Test
    fun `ordine per ultimo aggiornamento decrescente`() {
        var entries = ContinueWatchingRules.recordMovie(
            emptyList(), movie("201"), 60_000L, 600_000L, nowMillis = 1_000L,
        )
        entries = ContinueWatchingRules.recordMovie(
            entries, movie("202"), 60_000L, 600_000L, nowMillis = 2_000L,
        )
        // Un nuovo avanzamento del primo film lo riporta in cima.
        entries = ContinueWatchingRules.recordMovie(
            entries, movie("201"), 120_000L, 600_000L, nowMillis = 3_000L,
        )
        assertEquals(listOf("vod_201", "vod_202"), ContinueWatchingRules.visible(entries).map { it.key })
        assertEquals(2, entries.size)
    }

    @Test
    fun `il film visto al novanta per cento esce dall'archivio`() {
        val entries = ContinueWatchingRules.recordMovie(
            emptyList(), movie("201"), 60_000L, 600_000L, nowMillis = 1_000L,
        )
        val after = ContinueWatchingRules.recordMovie(
            entries, movie("201"), 540_000L, 600_000L, nowMillis = 2_000L,
        )
        assertTrue(after.isEmpty())
    }

    @Test
    fun `durata sconosciuta non fa uscire il film dall'archivio`() {
        val entries = ContinueWatchingRules.recordMovie(
            emptyList(), movie("201"), 60_000L, 0L, nowMillis = 1_000L,
        )
        assertEquals(1, entries.size)
    }

    @Test
    fun `episodio al novanta per cento passa al successivo della serie`() {
        var entries = ContinueWatchingRules.recordEpisode(
            entries = emptyList(),
            series = series("ep_1"),
            nextEpisode = null,
            positionMillis = 60_000L,
            durationMillis = 600_000L,
            nowMillis = 1_000L,
        )
        assertEquals("ep_1", entries.single().episodeId)
        assertEquals("S2 E5", entries.single().episodeLabel)

        val next = ContinueEpisode(
            episodeId = "ep_2",
            seasonNumber = "2",
            episodeNum = "6",
            title = "Episodio 6",
            containerExtension = "mkv",
        )
        entries = ContinueWatchingRules.recordEpisode(
            entries = entries,
            series = series("ep_1"),
            nextEpisode = next,
            positionMillis = 590_000L,
            durationMillis = 600_000L,
            nowMillis = 2_000L,
        )
        val entry = entries.single()
        assertEquals("series_301", entry.key)
        assertEquals("ep_2", entry.episodeId)
        assertEquals("S2 E6", entry.episodeLabel)
        assertEquals(2_000L, entry.updatedAtMillis)
    }

    @Test
    fun `ultimo episodio al novanta per cento toglie la serie dall'archivio`() {
        val entries = ContinueWatchingRules.recordEpisode(
            entries = emptyList(),
            series = series("ep_9"),
            nextEpisode = null,
            positionMillis = 60_000L,
            durationMillis = 600_000L,
            nowMillis = 1_000L,
        )
        val after = ContinueWatchingRules.recordEpisode(
            entries = entries,
            series = series("ep_9"),
            nextEpisode = null,
            positionMillis = 600_000L,
            durationMillis = 600_000L,
            nowMillis = 2_000L,
        )
        assertTrue(after.isEmpty())
    }

    @Test
    fun `una sola voce per serie`() {
        var entries = ContinueWatchingRules.recordEpisode(
            emptyList(), series("ep_1"), null, 60_000L, 600_000L, nowMillis = 1_000L,
        )
        entries = ContinueWatchingRules.recordEpisode(
            entries, series("ep_2", num = "6"), null, 90_000L, 600_000L, nowMillis = 2_000L,
        )
        assertEquals(1, entries.size)
        assertEquals("ep_2", entries.single().episodeId)
    }

    @Test
    fun `nascosta con la pressione lunga e di nuovo visibile quando viene ripresa`() {
        val entries = ContinueWatchingRules.recordMovie(
            emptyList(), movie("201"), 60_000L, 600_000L, nowMillis = 1_000L,
        )
        val hidden = ContinueWatchingRules.hide(entries, "vod_201")
        assertEquals(1, hidden.size)
        assertTrue(hidden.single().hidden)
        assertTrue(ContinueWatchingRules.visible(hidden).isEmpty())

        val again = ContinueWatchingRules.recordMovie(
            hidden, movie("201", "Il film aggiornato"), 120_000L, 600_000L, nowMillis = 5_000L,
        )
        val entry = again.single()
        assertFalse(entry.hidden)
        assertTrue(ContinueWatchingRules.visible(again).isNotEmpty())
        assertEquals("Il film aggiornato", entry.title)
        assertEquals(5_000L, entry.updatedAtMillis)
    }

    @Test
    fun `segna come visto toglie la voce definitivamente`() {
        val entries = ContinueWatchingRules.recordMovie(
            emptyList(), movie("201"), 60_000L, 600_000L, nowMillis = 1_000L,
        )
        assertTrue(ContinueWatchingRules.remove(entries, ContinueEntry.movieKey("201")).isEmpty())
        // "Segna come non visto" non la ricrea: l'archivio resta vuoto.
        assertEquals(
            emptyList<ContinueEntry>(),
            ContinueWatchingRules.remove(emptyList(), ContinueEntry.movieKey("201")),
        )
    }

    @Test
    fun `massimo trenta voci, le piu recenti`() {
        var entries = emptyList<ContinueEntry>()
        for (index in 1..35) {
            entries = ContinueWatchingRules.recordMovie(
                entries = entries,
                movie = movie(index.toString()),
                positionMillis = 60_000L,
                durationMillis = 600_000L,
                nowMillis = index.toLong(),
            )
        }
        assertEquals(ContinueWatchingRules.MAX_ENTRIES, entries.size)
        assertEquals(30, entries.size)
        assertEquals("vod_35", entries.first().key)
        assertEquals("vod_6", entries.last().key)
        assertFalse(entries.any { it.key == "vod_5" })
    }

    @Test
    fun `voce incompleta non rompe l'archivio`() {
        // Archivio letto da dati parziali: chiave vuota e campi mancanti.
        val broken = ContinueEntry(key = "", kind = "series")
        assertTrue(ContinueWatchingRules.upsert(emptyList(), broken).isEmpty())
        assertEquals(null, broken.episodeLabel)
    }
}
