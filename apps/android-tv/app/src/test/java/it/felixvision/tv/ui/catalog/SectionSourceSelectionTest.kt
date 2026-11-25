package it.felixvision.tv.ui.catalog

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Scelta della sorgente in Film: quali voci compaiono, quale si apre, cosa
 * succede quando la sorgente scelta non è più disponibile e perché alla
 * riapertura dell'app si riparte da Xtream.
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
    fun `alla riapertura dell'app si parte da Xtream`() {
        // Nessuna scelta salvata: si riparte sempre da Xtream, non dall'ultima
        // sorgente usata nella sessione precedente.
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
}
