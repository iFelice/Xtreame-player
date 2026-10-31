package it.felixvision.tv.data.protection

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Blocco anti-brute-force e interruttore di sessione, con orologio finto:
 * valori attesi calcolati a mano (5 errori di fila → 30 s, poi si riprova).
 */
class ProtectedSessionTest {

    private class FakeClock(var now: Long = 0L) : Clock {
        override fun nowMillis(): Long = now
    }

    @Test
    fun `all avvio i contenuti restano nascosti`() {
        val session = ProtectedSession(clock = FakeClock())
        assertFalse(session.unlocked.value)
        assertFalse(session.isLocked())
        assertNull(session.lockedUntilMillis())
    }

    @Test
    fun `unlock e lock cambiano lo stato di sessione`() {
        val session = ProtectedSession(clock = FakeClock())
        session.unlock()
        assertTrue(session.unlocked.value)
        session.lock()
        assertFalse(session.unlocked.value)
    }

    @Test
    fun `quattro errori non bloccano al quinto blocco di trenta secondi`() {
        val clock = FakeClock(10_000L)
        val session = ProtectedSession(clock = clock)
        repeat(4) { session.registerFailure() }
        assertNull(session.lockedUntilMillis())
        assertFalse(session.isLocked())
        session.registerFailure()
        // 10 000 + 30 000 = 40 000 il momento in cui il blocco scade.
        assertEquals(40_000L, session.lockedUntilMillis())
        assertTrue(session.isLocked())
    }

    @Test
    fun `dopo trenta secondi si puo riprovare e il conteggio riparte`() {
        val clock = FakeClock()
        val session = ProtectedSession(clock = clock)
        repeat(5) { session.registerFailure() }
        assertEquals(30_000L, session.lockedUntilMillis())
        clock.now = 29_999L
        assertTrue(session.isLocked())
        clock.now = 30_000L
        assertNull(session.lockedUntilMillis())
        assertFalse(session.isLocked())
        // Dopo il blocco servono di nuovo cinque errori consecutivi.
        repeat(4) { session.registerFailure() }
        assertNull(session.lockedUntilMillis())
        session.registerFailure()
        assertEquals(60_000L, session.lockedUntilMillis())
    }

    @Test
    fun `un successo azzera il conteggio`() {
        val clock = FakeClock()
        val session = ProtectedSession(clock = clock)
        repeat(4) { session.registerFailure() }
        session.registerSuccess()
        repeat(4) { session.registerFailure() }
        assertNull(session.lockedUntilMillis())
        session.registerFailure()
        assertEquals(30_000L, session.lockedUntilMillis())
    }

    @Test
    fun `errori durante il blocco non lo allungano`() {
        val clock = FakeClock()
        val session = ProtectedSession(clock = clock)
        repeat(5) { session.registerFailure() }
        clock.now = 10_000L
        session.registerFailure()
        // Il blocco resta quello di prima: fine a 30 000, non 40 000.
        assertEquals(30_000L, session.lockedUntilMillis())
    }

    @Test
    fun `unlock revoca il blocco in corso`() {
        val clock = FakeClock()
        val session = ProtectedSession(clock = clock)
        repeat(5) { session.registerFailure() }
        assertTrue(session.isLocked())
        session.unlock()
        assertFalse(session.isLocked())
        assertTrue(session.unlocked.value)
    }
}
