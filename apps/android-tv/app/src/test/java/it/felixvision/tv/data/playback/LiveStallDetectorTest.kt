package it.felixvision.tv.data.playback

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Cane da guardia del Live: quando scatta e quando no. Tempo simulato, nessuna
 * attesa vera: ogni prova passa l'istante al rilevatore.
 */
class LiveStallDetectorTest {

    private val ready = LiveStallDetector.STATE_READY
    private val buffering = LiveStallDetector.STATE_BUFFERING
    private val ended = LiveStallDetector.STATE_ENDED

    @Test
    fun `pronto ma fermo scatta dopo cinque secondi`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 0L))
        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 4_000L))
        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 5_000L))
        assertTrue(detector.timedOut(ready, eligible = true, nowMillis = 5_500L))
    }

    @Test
    fun `in caricamento l'attesa e piu lunga`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 0L))
        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 24_000L))
        assertTrue(detector.timedOut(buffering, eligible = true, nowMillis = 25_500L))
    }

    @Test
    fun `dopo il segnale si riparte da capo`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 0L))
        assertTrue(detector.timedOut(buffering, eligible = true, nowMillis = 26_000L))
        // Il riavvio ricostruisce il player: la nuova attesa comincia dal nuovo stato.
        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 26_500L))
        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 30_000L))
        assertTrue(detector.timedOut(buffering, eligible = true, nowMillis = 52_000L))
    }

    @Test
    fun `un cambio di stato azzera l'attesa`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 0L))
        assertFalse(detector.timedOut(buffering, eligible = true, nowMillis = 20_000L))
        // Il flusso parte: il caricamento non era uno stallo.
        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 20_500L))
        // Il "pronto" ha la sua attesa corta, non quella già consumata.
        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 24_000L))
        assertTrue(detector.timedOut(ready, eligible = true, nowMillis = 26_000L))
    }

    @Test
    fun `in pausa o fuori dal live non scatta mai`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(ready, eligible = false, nowMillis = 0L))
        assertFalse(detector.timedOut(ready, eligible = false, nowMillis = 60_000L))
        assertFalse(detector.timedOut(buffering, eligible = false, nowMillis = 120_000L))
        // Alla prima occasione buona l'attesa parte da zero: la pausa non conta.
        assertFalse(detector.timedOut(ready, eligible = true, nowMillis = 121_000L))
        assertTrue(detector.timedOut(ready, eligible = true, nowMillis = 126_500L))
    }

    @Test
    fun `senza player o a fine stream non scatta`() {
        val detector = LiveStallDetector()

        assertFalse(detector.timedOut(null, eligible = true, nowMillis = 0L))
        assertFalse(detector.timedOut(null, eligible = true, nowMillis = 60_000L))
        assertFalse(detector.timedOut(ended, eligible = true, nowMillis = 0L))
        assertFalse(detector.timedOut(ended, eligible = true, nowMillis = 60_000L))
    }

    /**
     * Sul `.ts` la riapertura a metà può costare decine di secondi di download
     * scartato: la soglia di caricamento è più corta, così si ricostruisce da
     * zero (immediato) invece di aspettare.
     */
    @Test
    fun `il live progressivo ha la soglia di caricamento piu corta`() {
        val progressive = LiveStallDetector(progressiveLive = true)

        assertFalse(progressive.timedOut(buffering, eligible = true, nowMillis = 0L))
        assertFalse(progressive.timedOut(buffering, eligible = true, nowMillis = 7_500L))
        assertTrue(progressive.timedOut(buffering, eligible = true, nowMillis = 8_500L))
        // Il "pronto ma fermo" resta a 5 s, come per gli altri flussi.
        assertFalse(progressive.timedOut(ready, eligible = true, nowMillis = 9_000L))
        assertTrue(progressive.timedOut(ready, eligible = true, nowMillis = 14_500L))
    }

    @Test
    fun `le soglie stanno sotto il timeout di lettura della rete`() {
        // Un caricamento più lungo del read timeout arriva come errore vero:
        // il cane da guardia non deve sovrapporsi.
        assertTrue(LiveStallDetector.BUFFERING_TIMEOUT_MILLIS < 30_000L)
        assertTrue(LiveStallDetector.READY_TIMEOUT_MILLIS < LiveStallDetector.BUFFERING_TIMEOUT_MILLIS)
        // La soglia stretta resta sopra l'avvio normale del player (2,5 s).
        assertTrue(LiveStallDetector.PROGRESSIVE_LIVE_BUFFERING_TIMEOUT_MILLIS > 2_500L)
        assertTrue(
            LiveStallDetector.PROGRESSIVE_LIVE_BUFFERING_TIMEOUT_MILLIS <
                LiveStallDetector.BUFFERING_TIMEOUT_MILLIS,
        )
    }
}
