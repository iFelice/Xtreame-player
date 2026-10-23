package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NextEpisodeRulesTest {

    private val fortyFiveMinutes = 45L * 60L * 1_000L

    @Test
    fun `episodio lungo mostra il riquadro tre minuti prima`() {
        val at = NextEpisodeRules.promptAtMillis(fortyFiveMinutes)
        assertEquals(fortyFiveMinutes - 180_000L, at)
        assertFalse(NextEpisodeRules.shouldPrompt(at!! - 1_000L, fortyFiveMinutes))
        assertTrue(NextEpisodeRules.shouldPrompt(at, fortyFiveMinutes))
        assertTrue(NextEpisodeRules.shouldPrompt(at + 30_000L, fortyFiveMinutes))
    }

    @Test
    fun `esattamente dieci minuti usa i tre minuti`() {
        val duration = 10L * 60L * 1_000L
        assertEquals(duration - 180_000L, NextEpisodeRules.promptAtMillis(duration))
    }

    @Test
    fun `episodio corto mostra il riquadro all'ultimo dieci per cento`() {
        val duration = 8L * 60L * 1_000L
        val at = NextEpisodeRules.promptAtMillis(duration)
        assertEquals(duration - 48_000L, at)
        assertFalse(NextEpisodeRules.shouldPrompt(at!! - 1_000L, duration))
        assertTrue(NextEpisodeRules.shouldPrompt(at, duration))
    }

    @Test
    fun `durata sconosciuta non mostra nulla`() {
        assertNull(NextEpisodeRules.promptAtMillis(0L))
        assertNull(NextEpisodeRules.promptAtMillis(-5_000L))
        assertFalse(NextEpisodeRules.shouldPrompt(10_000L, 0L))
        assertFalse(NextEpisodeRules.shouldStartCountdown(10_000L, 0L))
    }

    @Test
    fun `dopo posticipa il conto alla rovescia parte negli ultimi quindici secondi`() {
        val duration = 45L * 60L * 1_000L
        val start = duration - 15_000L
        assertFalse(NextEpisodeRules.shouldStartCountdown(start - 1_000L, duration))
        assertTrue(NextEpisodeRules.shouldStartCountdown(start, duration))
        assertTrue(NextEpisodeRules.shouldStartCountdown(duration - 5_000L, duration))
    }

    @Test
    fun `secondi mancanti arrotondati per eccesso`() {
        val duration = 600_000L
        assertEquals(15, NextEpisodeRules.countdownSeconds(duration - 14_200L, duration))
        assertEquals(1, NextEpisodeRules.countdownSeconds(duration - 1L, duration))
        assertEquals(0, NextEpisodeRules.countdownSeconds(duration, duration))
        assertEquals(0, NextEpisodeRules.countdownSeconds(duration + 5_000L, duration))
    }

    @Test
    fun `il conto alla rovescia finisce a fine episodio`() {
        val duration = 600_000L
        assertFalse(NextEpisodeRules.countdownFinished(duration - 1L, duration))
        assertTrue(NextEpisodeRules.countdownFinished(duration, duration))
        assertTrue(NextEpisodeRules.countdownFinished(duration + 1_000L, duration))
    }
}
