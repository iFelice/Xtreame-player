package it.felixvision.tv.data.progress

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WatchRulesTest {

    @Test
    fun `posizioni sotto i 30 secondi non vengono salvate`() {
        assertFalse(WatchRules.shouldPersist(0L))
        assertFalse(WatchRules.shouldPersist(29_999L))
        assertTrue(WatchRules.shouldPersist(30_000L))
        assertTrue(WatchRules.shouldPersist(45_000L))
    }

    @Test
    fun `visto esattamente al 90 per cento della durata`() {
        assertFalse(WatchRules.isWatched(89_999L, 100_000L))
        assertTrue(WatchRules.isWatched(90_000L, 100_000L))
        assertTrue(WatchRules.isWatched(95_000L, 100_000L))
    }

    @Test
    fun `durata sconosciuta o posizione nulla non sono viste`() {
        assertFalse(WatchRules.isWatched(0L, 0L))
        assertFalse(WatchRules.isWatched(10_000L, 0L))
        assertFalse(WatchRules.isWatched(0L, 10_000L))
    }

    @Test
    fun `ripresa solo tra 30 secondi e 90 per cento`() {
        assertFalse(WatchRules.canResume(null))
        assertFalse(WatchRules.canResume(WatchProgress(positionMillis = 20_000L, durationMillis = 600_000L)))
        assertTrue(WatchRules.canResume(WatchProgress(positionMillis = 30_000L, durationMillis = 600_000L)))
        assertFalse(WatchRules.canResume(WatchProgress(positionMillis = 590_000L, durationMillis = 600_000L)))
    }

    @Test
    fun `frazione limitata tra zero e uno`() {
        assertEquals(0f, WatchRules.fraction(0L, 0L), 0.0001f)
        assertEquals(0f, WatchRules.fraction(-5_000L, 100_000L), 0.0001f)
        assertEquals(0.5f, WatchRules.fraction(50_000L, 100_000L), 0.0001f)
        assertEquals(1f, WatchRules.fraction(150_000L, 100_000L), 0.0001f)
    }

    @Test
    fun `chiavi archivio per film ed episodio`() {
        assertEquals("vod_201", ProgressKeys.movie("201"))
        assertEquals("ep_301", ProgressKeys.episode("301"))
    }
}
