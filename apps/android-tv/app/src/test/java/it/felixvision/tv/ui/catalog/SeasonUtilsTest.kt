package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.EpisodeInfo
import it.felixvision.tv.data.catalog.Season
import org.junit.Assert.assertEquals
import org.junit.Test

class SeasonUtilsTest {

    private fun ep(id: String, epNum: String = "1"): Episode =
        Episode(id = id, episodeNum = epNum, title = "Titolo $id", containerExtension = "mp4", info = EpisodeInfo(duration = "10 min"))

    private fun season(number: Int, name: String? = null, episodeCount: Int? = null): Season =
        Season(seasonNumber = number, name = name, episodeCount = episodeCount, cover = null)

    @Test
    fun `episodes vuota ritorna lista vuota anche se seasons popolata`() {
        val seasons = listOf(season(1, "Stagione Uno"), season(2, "Stagione Due"))
        val episodes = emptyMap<String, List<Episode>>()
        val result = deriveSeasons(seasons, episodes)
        assertEquals(emptyList<SeasonDisplay>(), result)
    }

    @Test
    fun `stagione in seasons senza episodi esclusa`() {
        val seasons = listOf(season(1, "S1"), season(2, "S2"), season(3, "S3"))
        val episodes = mapOf(
            "1" to listOf(ep(1.toString())),
            "2" to listOf(ep(2.toString()))
            // 3 senza episodi -> non in mappa
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(2, result.size)
        assertEquals(listOf("1", "2"), result.map { it.seasonNumber })
    }

    @Test
    fun `chiave in episodes con lista vuota esclusa`() {
        val seasons = emptyList<Season>()
        val episodes = mapOf(
            "1" to listOf(ep("1")),
            "2" to emptyList(), // vuota -> esclusa
            "3" to listOf(ep("3a"), ep("3b"))
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(2, result.size)
        assertEquals(listOf("1", "3"), result.map { it.seasonNumber })
    }

    @Test
    fun `chiave in episodes assente da seasons inclusa come Stagione N`() {
        val seasons = listOf(season(1, "Prima"))
        val episodes = mapOf(
            "1" to listOf(ep("1")),
            "2" to listOf(ep("2a"), ep("2b"))
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(2, result.size)
        val s2 = result.first { it.seasonNumber == "2" }
        assertEquals("Stagione 2", s2.name)
        assertEquals(2, s2.episodeCount)
    }

    @Test
    fun `seasons con due voci stessa stagione una sola voce nel risultato`() {
        val seasons = listOf(
            season(1, "Stagione Uno"),
            season(1, "Duplicato Uno"),
            season(2, "Stagione Due")
        )
        val episodes = mapOf(
            "1" to listOf(ep("1")),
            "2" to listOf(ep("2"))
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(2, result.size)
        assertEquals(1, result.count { it.seasonNumber == "1" })
    }

    @Test
    fun `ordinamento numerico 1 2 10 e chiavi non numeriche in fondo alfabetico`() {
        val seasons = emptyList<Season>()
        val episodes = mapOf(
            "10" to listOf(ep("10")),
            "2" to listOf(ep("2")),
            "1" to listOf(ep("1")),
            "speciale" to listOf(ep("s1")),
            "extra" to listOf(ep("e1")),
            "20" to listOf(ep("20"))
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(listOf("1", "2", "10", "20", "extra", "speciale"), result.map { it.seasonNumber })
    }

    @Test
    fun `nome da seasons quando non vuoto altrimenti Stagione N`() {
        val seasons = listOf(
            season(1, "La Prima Stagione"),
            season(2, ""), // vuoto -> fallback
            season(3, null) // null -> fallback
        )
        val episodes = mapOf(
            "1" to listOf(ep("1")),
            "2" to listOf(ep("2")),
            "3" to listOf(ep("3")),
            "4" to listOf(ep("4")) // assente da seasons
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals("La Prima Stagione", result.first { it.seasonNumber == "1" }.name)
        assertEquals("Stagione 2", result.first { it.seasonNumber == "2" }.name)
        assertEquals("Stagione 3", result.first { it.seasonNumber == "3" }.name)
        assertEquals("Stagione 4", result.first { it.seasonNumber == "4" }.name)
    }

    @Test
    fun `episodeCount uguale agli episodi reali anche se provider dice altro`() {
        val seasons = listOf(
            season(1, "S1", episodeCount = 99),
            season(2, "S2", episodeCount = 5)
        )
        val episodes = mapOf(
            "1" to listOf(ep("1a"), ep("1b"), ep("1c")), // 3 reali, provider dice 99
            "2" to listOf(ep("2a")) // 1 reale, provider dice 5
        )
        val result = deriveSeasons(seasons, episodes)
        assertEquals(3, result.first { it.seasonNumber == "1" }.episodeCount)
        assertEquals(1, result.first { it.seasonNumber == "2" }.episodeCount)
    }

    @Test
    fun `seasons senza episodi corrispondenti non mostrate e duplicate gestite con nome preferito`() {
        val seasons = listOf(
            season(1, "Primo Nome"),
            season(1, ""), // duplicato con nome vuoto -> deve preferire primo non vuoto
            season(5, "S5 Senza Episodi")
        )
        val episodes = mapOf(
            "1" to listOf(ep("1a"), ep("1b")),
            "2" to listOf(ep("2a"))
        )
        val result = deriveSeasons(seasons, episodes)
        // 5 non ha episodi -> esclusa
        assertEquals(2, result.size)
        assertEquals("Primo Nome", result.first { it.seasonNumber == "1" }.name)
        assertEquals("Stagione 2", result.first { it.seasonNumber == "2" }.name)
    }
}
