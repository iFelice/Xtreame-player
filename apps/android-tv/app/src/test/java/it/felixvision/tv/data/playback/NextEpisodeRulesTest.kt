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
    fun `posticipa rinvia di sessanta secondi di riproduzione`() {
        val duration = 45L * 60L * 1_000L
        val plan = NextEpisodeRules.postponePlan(600_000L, duration)
        assertEquals(PostponeMode.DELAYED, plan.mode)
        assertEquals(660_000L, plan.showAtMillis)
        assertFalse(NextEpisodeRules.shouldShowPostponed(plan, 659_999L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 660_000L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 661_000L))
    }

    @Test
    fun `posticipa ripetuto sposta ogni volta il riferimento`() {
        val duration = 45L * 60L * 1_000L
        val first = NextEpisodeRules.postponePlan(600_000L, duration)
        assertEquals(660_000L, first.showAtMillis)

        val second = NextEpisodeRules.postponePlan(660_000L, duration)
        assertEquals(PostponeMode.DELAYED, second.mode)
        assertEquals(720_000L, second.showAtMillis)
        assertFalse(NextEpisodeRules.shouldShowPostponed(second, 719_999L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(second, 720_000L))
    }

    @Test
    fun `meno di settantacinque secondi alla fine usa il conto alla rovescia`() {
        val duration = 600_000L
        val plan = NextEpisodeRules.postponePlan(540_000L, duration)
        assertEquals(PostponeMode.COUNTDOWN, plan.mode)
        assertEquals(duration - 15_000L, plan.showAtMillis)

        val tooLate = NextEpisodeRules.postponePlan(599_000L, duration)
        assertEquals(PostponeMode.COUNTDOWN, tooLate.mode)
        assertEquals(duration - 15_000L, tooLate.showAtMillis)
    }

    @Test
    fun `settantacinque secondi esatti restano un rinvio normale`() {
        val duration = 600_000L
        val plan = NextEpisodeRules.postponePlan(525_000L, duration)
        assertEquals(PostponeMode.DELAYED, plan.mode)
        assertEquals(585_000L, plan.showAtMillis)

        val justUnder = NextEpisodeRules.postponePlan(525_001L, duration)
        assertEquals(PostponeMode.COUNTDOWN, justUnder.mode)
    }

    @Test
    fun `durata ignota al momento del rinvio resta un rinvio normale`() {
        val plan = NextEpisodeRules.postponePlan(120_000L, 0L)
        assertEquals(PostponeMode.DELAYED, plan.mode)
        assertEquals(180_000L, plan.showAtMillis)
    }

    @Test
    fun `salto indietro dopo il rinvio nasconde di nuovo il riquadro`() {
        val duration = 45L * 60L * 1_000L
        val plan = NextEpisodeRules.postponePlan(600_000L, duration)
        // Saltando avanti il riquadro torna prima...
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 700_000L))
        // ...e saltando indietro si nasconde di nuovo.
        assertFalse(NextEpisodeRules.shouldShowPostponed(plan, 500_000L))
        assertFalse(NextEpisodeRules.shouldShowPostponed(plan, 659_999L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 660_000L))
    }

    @Test
    fun `salto indietro nel conto alla rovescia lo nasconde`() {
        val duration = 600_000L
        val plan = NextEpisodeRules.postponePlan(560_000L, duration)
        assertEquals(PostponeMode.COUNTDOWN, plan.mode)
        assertEquals(585_000L, plan.showAtMillis)
        assertFalse(NextEpisodeRules.shouldShowPostponed(plan, 540_000L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 585_000L))
        assertTrue(NextEpisodeRules.shouldShowPostponed(plan, 599_000L))
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
