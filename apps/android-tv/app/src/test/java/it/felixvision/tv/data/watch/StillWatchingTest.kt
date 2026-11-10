package it.felixvision.tv.data.watch

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * "Stai ancora guardando?": scatta al via del terzo episodio automatico, o
 * dopo due ore di riproduzione effettiva su Live e film. Qualsiasi tasto azzera
 * il conto degli episodi e la pausa non avanza il tempo.
 */
class StillWatchingTest {

    @Test
    fun `fresh monitor never asks`() {
        val monitor = StillWatchingMonitor()
        assertFalse(monitor.shouldPrompt())
        assertEquals(0, monitor.autoEpisodes)
        assertEquals(0L, monitor.watchedMillis)
    }

    @Test
    fun `the third automatic episode asks`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        // Primo episodio automatico: in onda l'episodio 2, nessun avviso.
        monitor.onAutoEpisodeStarted()
        assertFalse("un episodio automatico non basta", monitor.shouldPrompt())
        // Secondo episodio automatico: in onda l'episodio 3, due già visti.
        monitor.onAutoEpisodeStarted()
        assertTrue("al via del terzo episodio si chiede", monitor.shouldPrompt())
        assertEquals(2, monitor.autoEpisodes)
    }

    @Test
    fun `any key restarts the episode count`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onAutoEpisodeStarted()
        monitor.onAutoEpisodeStarted()
        monitor.onUserInput()
        assertEquals(0, monitor.autoEpisodes)
        assertFalse(monitor.shouldPrompt())
        // Dopo il tasto servono di nuovo due episodi automatici.
        monitor.onAutoEpisodeStarted()
        assertFalse(monitor.shouldPrompt())
        monitor.onAutoEpisodeStarted()
        assertTrue(monitor.shouldPrompt())
    }

    @Test
    fun `time limit asks once and only while playing`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onPlayback(true)
        // Mezz'ora di passi da 500 ms: sotto la soglia.
        repeat(60 * 60 * 2) { monitor.onTimeAdvanced(500L) }
        assertFalse(monitor.shouldPrompt())
        repeat(60 * 60 * 2) { monitor.onTimeAdvanced(500L) }
        assertTrue("due ore esatte: chiede", monitor.shouldPrompt())
        // L'avviso è già stato mostrato: non si ripete e il tempo non cresce più.
        assertFalse(monitor.onTimeAdvanced(500L))
        assertEquals(StillWatchingMonitor.LIVE_LIMIT_MILLIS, monitor.watchedMillis)
    }

    @Test
    fun `pause does not advance the time`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onPlayback(false)
        repeat(1000) { monitor.onTimeAdvanced(1_000L) }
        assertEquals(0L, monitor.watchedMillis)
        assertFalse(monitor.shouldPrompt())
    }

    @Test
    fun `after the answer the timer restarts`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onPlayback(true)
        repeat(4 * 3600) { monitor.onTimeAdvanced(500L) } // due ore
        assertTrue(monitor.shouldPrompt())
        // Allo scadere l'avviso non si ripete finché non si risponde o cambia il contenuto.
        assertFalse(monitor.onTimeAdvanced(500L))
        // "Sì, sto guardando": si riparte puliti, con il conto del tempo a zero.
        monitor.onPromptAnswered()
        assertFalse(monitor.shouldPrompt())
        assertEquals(0L, monitor.watchedMillis)
        assertEquals(0, monitor.autoEpisodes)
    }

    @Test
    fun `pressing keys does not reset the two hours`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onPlayback(true)
        // Un'ora di visione con un tasto ogni dieci minuti: chi cambia canale o
        // apre i sottotitoli sta guardando, il tempo non deve ripartire.
        repeat(60 * 60 * 2) { step ->
            if (step % 1200 == 0) monitor.onUserInput()
            monitor.onTimeAdvanced(500L)
        }
        assertFalse("un'ora di visione non basta", monitor.shouldPrompt())
        repeat(60 * 60 * 2) { step ->
            if (step % 1200 == 0) monitor.onUserInput()
            monitor.onTimeAdvanced(500L)
        }
        assertTrue("due ore di visione: chiede anche con tasti sparsi", monitor.shouldPrompt())
    }

    @Test
    fun `a new content resets everything`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onAutoEpisodeStarted()
        monitor.onAutoEpisodeStarted()
        monitor.onTimeAdvanced(1_000L)
        monitor.onContentStarted()
        assertEquals(0, monitor.autoEpisodes)
        assertEquals(0L, monitor.watchedMillis)
        assertFalse(monitor.shouldPrompt())
    }

    @Test
    fun `closing the player stops the counters`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onAutoEpisodeStarted()
        monitor.reset()
        assertEquals(0, monitor.autoEpisodes)
        assertFalse(monitor.onTimeAdvanced(10_000L))
    }

    @Test
    fun `negative advances are ignored`() {
        val monitor = StillWatchingMonitor()
        monitor.onContentStarted()
        monitor.onPlayback(true)
        monitor.onTimeAdvanced(-5_000L)
        assertEquals(0L, monitor.watchedMillis)
    }

    @Test
    fun `reason text names the episodes or the two hours`() {
        assertTrue(StillWatchingTexts.reason(3).contains("3 episodi"))
        assertTrue(StillWatchingTexts.reason(0).contains("due ore"))
    }
}
