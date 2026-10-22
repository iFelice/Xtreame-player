package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Test

class LiveZappingTest {

    @Test
    fun `canale successivo circolare`() {
        assertEquals(1, LiveZapping.next(0, 3))
        assertEquals(2, LiveZapping.next(1, 3))
        assertEquals(0, LiveZapping.next(2, 3))
    }

    @Test
    fun `canale precedente circolare`() {
        assertEquals(2, LiveZapping.previous(0, 3))
        assertEquals(0, LiveZapping.previous(1, 3))
        assertEquals(1, LiveZapping.previous(2, 3))
    }

    @Test
    fun `indice limitato per zapping manuale`() {
        assertEquals(0, LiveZapping.clamp(-4, 3))
        assertEquals(0, LiveZapping.clamp(0, 3))
        assertEquals(2, LiveZapping.clamp(9, 3))
    }

    @Test
    fun `lista vuota non produce indici negativi`() {
        assertEquals(0, LiveZapping.next(2, 0))
        assertEquals(0, LiveZapping.previous(2, 0))
        assertEquals(0, LiveZapping.clamp(2, 0))
    }

    @Test
    fun `accelerazione del salto con il tasto tenuto`() {
        assertEquals(10, SeekAcceleration.secondsForHold(0L))
        assertEquals(10, SeekAcceleration.secondsForHold(599L))
        assertEquals(30, SeekAcceleration.secondsForHold(600L))
        assertEquals(30, SeekAcceleration.secondsForHold(1_599L))
        assertEquals(60, SeekAcceleration.secondsForHold(1_600L))
        assertEquals(60, SeekAcceleration.secondsForHold(5_000L))
    }
}
