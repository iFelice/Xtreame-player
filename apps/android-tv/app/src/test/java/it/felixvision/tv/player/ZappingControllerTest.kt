package it.felixvision.tv.player

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Zapping automatico con orologio finto: nessuna attesa reale, ogni passo
 * sposta l'orologio del tempo che serve. Le liste sono di tre canali, come la
 * lista corrente del player (categoria di partenza o "I miei canali", con i
 * contenuti protetti già esclusi a monte).
 */
class ZappingControllerTest {

    /** Orologio finto in millisecondi, pilotato dai test. */
    private class FakeClock(var now: Long = 0L) : Clock {
        override fun nowMillis(): Long = now

        fun advanceSeconds(seconds: Int) {
            now += seconds * 1_000L
        }
    }

    private val clock = FakeClock()
    private val controller = ZappingController(clock = clock)

    @Test
    fun `dopo l intervallo passa al canale successivo e il conto riparte`() {
        val started = controller.start(seconds = 10, index = 0, size = 3)
        assertEquals(0, started?.startIndex)
        assertEquals(10, started?.remainingSeconds)
        assertEquals(ZappingCommand.None, controller.tick())

        clock.advanceSeconds(5)
        assertEquals(ZappingCommand.None, controller.tick())
        assertEquals(5, controller.state?.remainingSeconds)

        clock.advanceSeconds(5)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(),
        )
        assertEquals(1, controller.state?.currentIndex)
        assertEquals(10, controller.state?.remainingSeconds)

        // Il conto riparte dal canale nuovo: altri 10 secondi per il terzo.
        clock.advanceSeconds(9)
        assertEquals(ZappingCommand.None, controller.tick())
        clock.advanceSeconds(1)
        assertEquals(
            ZappingCommand.SwitchTo(2, ZappingReason.TIMER),
            controller.tick(),
        )
        assertEquals(2, controller.state?.currentIndex)
    }

    @Test
    fun `un canale in errore o in caricamento dopo cinque secondi si salta subito`() {
        controller.start(seconds = 30, index = 0, size = 3)

        // Prima dei 5 secondi si aspetta, anche con il canale in errore.
        clock.advanceSeconds(4)
        assertEquals(ZappingCommand.None, controller.tick(status = ZappingChannelStatus.ERROR))

        // Al quinto secondo il canale non è partito: si passa subito, senza
        // aspettare i 30 secondi dell'intervallo.
        clock.advanceSeconds(1)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.CHANNEL_NOT_STARTED),
            controller.tick(status = ZappingChannelStatus.ERROR),
        )
        assertEquals(30, controller.state?.remainingSeconds)

        // Canale nuovo ancora in caricamento: dopo 5 secondi si salta di nuovo.
        clock.advanceSeconds(5)
        assertEquals(
            ZappingCommand.SwitchTo(2, ZappingReason.CHANNEL_NOT_STARTED),
            controller.tick(status = ZappingChannelStatus.LOADING),
        )
    }

    @Test
    fun `un buffering a meta visione non fa saltare il canale`() {
        controller.start(seconds = 10, index = 0, size = 3)
        clock.advanceSeconds(5)
        // Canale in visione: si aspetta l'intervallo, il salto per errore non c'è.
        assertEquals(ZappingCommand.None, controller.tick(status = ZappingChannelStatus.PLAYING))
        clock.advanceSeconds(4)
        assertEquals(ZappingCommand.None, controller.tick(status = ZappingChannelStatus.PLAYING))
        clock.advanceSeconds(1)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(status = ZappingChannelStatus.PLAYING),
        )
    }

    @Test
    fun `alla fine della lista chiede conferma invece di proseguire`() {
        controller.start(seconds = 10, index = 2, size = 3)
        clock.advanceSeconds(10)

        assertEquals(ZappingCommand.AskEndOfList, controller.tick())
        assertTrue(controller.isAwaitingEndOfList)
        assertFalse(controller.isRunning)
        assertEquals(15, controller.state?.endOfListSecondsLeft)
    }

    @Test
    fun `si riparte dal primo canale e il conto ricomincia`() {
        controller.start(seconds = 10, index = 2, size = 3)
        clock.advanceSeconds(10)
        assertEquals(ZappingCommand.AskEndOfList, controller.tick())

        assertEquals(ZappingCommand.RestartFromFirst(0), controller.answer(restart = true))
        assertTrue(controller.isRunning)
        assertEquals(0, controller.state?.currentIndex)
        assertEquals(10, controller.state?.remainingSeconds)

        clock.advanceSeconds(10)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(),
        )
    }

    @Test
    fun `no torna al canale da cui era partito lo zapping`() {
        // Lo zapping parte dal primo canale, poi arriva in fondo alla lista:
        // la risposta "No" riporta al primo, non all'ultimo.
        controller.start(seconds = 10, index = 0, size = 2)
        clock.advanceSeconds(10)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(),
        )
        clock.advanceSeconds(10)
        assertEquals(ZappingCommand.AskEndOfList, controller.tick())

        assertEquals(ZappingCommand.BackToStart(0), controller.answer(restart = false))
        assertNull(controller.state)
        assertFalse(controller.isRunning)
    }

    @Test
    fun `nessuna risposta entro quindici secondi vale come no`() {
        controller.start(seconds = 10, index = 1, size = 2)
        clock.advanceSeconds(10)
        assertEquals(ZappingCommand.AskEndOfList, controller.tick())
        assertEquals(15, controller.state?.endOfListSecondsLeft)

        clock.advanceSeconds(14)
        assertEquals(ZappingCommand.None, controller.tick())
        assertTrue(controller.isAwaitingEndOfList)

        clock.advanceSeconds(1)
        assertEquals(ZappingCommand.BackToStart(1), controller.tick())
        assertNull(controller.state)
    }

    @Test
    fun `l arresto ferma lo zapping e nessun altro canale cambia`() {
        controller.start(seconds = 10, index = 0, size = 3)
        controller.stop()
        assertNull(controller.state)
        assertFalse(controller.isRunning)

        clock.advanceSeconds(30)
        assertEquals(ZappingCommand.None, controller.tick())
        assertNull(controller.state)
        // Anche una risposta arrivata dopo l'arresto non fa nulla.
        assertEquals(ZappingCommand.None, controller.answer(restart = false))
    }

    @Test
    fun `valori di durata non ammessi tornano a dieci`() {
        assertEquals(10, ZappingSeconds.normalize(null))
        assertEquals(10, ZappingSeconds.normalize(0))
        assertEquals(10, ZappingSeconds.normalize(7))
        assertEquals(10, ZappingSeconds.normalize(20))
        assertEquals(10, ZappingSeconds.normalize(-5))
        assertEquals(5, ZappingSeconds.normalize(5))
        assertEquals(10, ZappingSeconds.normalize(10))
        assertEquals(15, ZappingSeconds.normalize(15))
        assertEquals(30, ZappingSeconds.normalize(30))

        assertEquals(10, controller.start(seconds = 7, index = 0, size = 3)?.seconds)
        assertEquals(30, controller.start(seconds = 30, index = 0, size = 3)?.seconds)
    }

    @Test
    fun `una lista vuota non avvia lo zapping`() {
        assertNull(controller.start(seconds = 10, index = 0, size = 0))
        assertNull(controller.state)
        assertFalse(controller.isRunning)
        assertEquals(ZappingCommand.None, controller.tick())
    }

    @Test
    fun `l indice di partenza resta nei limiti della lista`() {
        val started = controller.start(seconds = 10, index = 7, size = 3)
        assertEquals(2, started?.startIndex)
        assertEquals(2, started?.currentIndex)
    }
}
