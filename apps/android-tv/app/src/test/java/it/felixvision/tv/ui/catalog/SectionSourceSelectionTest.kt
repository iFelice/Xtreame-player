package it.felixvision.tv.ui.catalog

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Scelta della sorgente in Film: quali voci compaiono, quale si apre e cosa
 * succede quando la sorgente ricordata non è più disponibile.
 */
class SectionSourceSelectionTest {

    private val both = filmSourceOptionsFor(hasXtreamFilms = true, hasM3uFilms = true)

    @Test
    fun `con film da entrambe le parti ci sono due voci`() {
        assertEquals(listOf(SectionSourceKeys.XTREAM, SectionSourceKeys.M3U_LISTS), both.map { it.key })
        assertEquals(listOf("Xtream", "Liste M3U"), both.map { it.label })
    }

    @Test
    fun `una sorgente senza film non compare`() {
        assertEquals(
            listOf(SectionSourceKeys.XTREAM),
            filmSourceOptionsFor(hasXtreamFilms = true, hasM3uFilms = false).map { it.key },
        )
        assertEquals(
            listOf(SectionSourceKeys.M3U_LISTS),
            filmSourceOptionsFor(hasXtreamFilms = false, hasM3uFilms = true).map { it.key },
        )
        assertEquals(emptyList<FilmSourceOption>(), filmSourceOptionsFor(false, false))
    }

    @Test
    fun `si apre sull'ultima sorgente usata`() {
        assertEquals(
            SectionSourceKeys.M3U_LISTS,
            resolveFilmSource(both, SectionSourceKeys.M3U_LISTS)?.key,
        )
        assertEquals(
            SectionSourceKeys.XTREAM,
            resolveFilmSource(both, SectionSourceKeys.XTREAM)?.key,
        )
    }

    @Test
    fun `alla prima apertura si parte da Xtream`() {
        assertEquals(SectionSourceKeys.XTREAM, resolveFilmSource(both, null)?.key)
    }

    @Test
    fun `una sorgente disattivata apre la prima disponibile`() {
        val onlyXtream = filmSourceOptionsFor(hasXtreamFilms = true, hasM3uFilms = false)

        assertEquals(
            SectionSourceKeys.XTREAM,
            resolveFilmSource(onlyXtream, SectionSourceKeys.M3U_LISTS)?.key,
        )
    }

    @Test
    fun `senza sorgenti non c'e niente da mostrare`() {
        assertNull(resolveFilmSource(emptyList(), SectionSourceKeys.XTREAM))
    }

    @Test
    fun `la scelta e ricordata per sezione`() {
        val storage = InMemorySectionSourceStorage()

        storage.write(SectionKeys.FILM, SectionSourceKeys.M3U_LISTS)

        assertEquals(SectionSourceKeys.M3U_LISTS, storage.read(SectionKeys.FILM))
        assertNull(storage.read("serie"))
        assertEquals(SectionKeys.FILM, "film")
    }
}
