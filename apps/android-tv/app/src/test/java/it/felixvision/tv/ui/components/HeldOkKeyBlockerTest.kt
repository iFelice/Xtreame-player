package it.felixvision.tv.ui.components

import android.view.KeyEvent as AndroidKeyEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Blocco del tasto OK ancora premuto all'apertura di una finestra aperta con
 * la pressione lunga: ripetizioni e primo rilascio consumati, nuova pressione
 * lasciata passare, frecce e Indietro mai bloccati.
 */
class HeldOkKeyBlockerTest {

    private val down = AndroidKeyEvent.ACTION_DOWN
    private val up = AndroidKeyEvent.ACTION_UP

    @Test
    fun `ripetizioni e primo rilascio del tasto tenuto premuto sono consumati`() {
        val blocker = HeldOkKeyBlocker()

        // OK ancora premuto all'apertura: arrivano solo ripetizioni.
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 1))
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 2))
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 3))
        // Rilascio del tasto: consumato anche questo.
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        assertEquals(4, blocker.consumedCount)
        assertFalse(blocker.unlocked)
    }

    @Test
    fun `una nuova pressione dopo il rilascio passa e da li in poi passa tutto`() {
        val blocker = HeldOkKeyBlocker()
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 1))
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        // Nuova pressione completa: KeyDown con repeatCount 0 e rilascio passano.
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 0))
        assertTrue(blocker.unlocked)
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        // Una pressione lunga voluta dentro la finestra non è più bloccata.
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 0))
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 1))
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        // Solo le due voci della pressione iniziale sono state consumate.
        assertEquals(2, blocker.consumedCount)
    }

    @Test
    fun `ENTER e NUMPAD_ENTER sono trattati come OK`() {
        val enter = HeldOkKeyBlocker()
        assertTrue(enter.handle(AndroidKeyEvent.KEYCODE_ENTER, down, 1))
        assertTrue(enter.handle(AndroidKeyEvent.KEYCODE_ENTER, up, 0))
        assertFalse(enter.handle(AndroidKeyEvent.KEYCODE_ENTER, down, 0))

        val numpad = HeldOkKeyBlocker()
        assertTrue(numpad.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, down, 1))
        assertTrue(numpad.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, up, 0))
        assertFalse(numpad.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, down, 0))
    }

    @Test
    fun `frecce e Indietro non sono mai bloccati`() {
        val blocker = HeldOkKeyBlocker()
        val alwaysFree = listOf(
            AndroidKeyEvent.KEYCODE_DPAD_UP,
            AndroidKeyEvent.KEYCODE_DPAD_DOWN,
            AndroidKeyEvent.KEYCODE_DPAD_LEFT,
            AndroidKeyEvent.KEYCODE_DPAD_RIGHT,
            AndroidKeyEvent.KEYCODE_BACK,
        )

        // Finestra ancora bloccata (OK tenuto premuto): le altre chiavi passano,
        // comprese le loro ripetizioni.
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 1))
        alwaysFree.forEach { keyCode ->
            assertFalse(blocker.handle(keyCode, down, 0))
            assertFalse(blocker.handle(keyCode, down, 1))
            assertFalse(blocker.handle(keyCode, up, 0))
        }
        // Le frecce non sbloccano: il rilascio di OK resta consumato.
        assertFalse(blocker.unlocked)
        assertTrue(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        // Dopo lo sblocco passano ancora.
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 0))
        alwaysFree.forEach { keyCode ->
            assertFalse(blocker.handle(keyCode, down, 0))
            assertFalse(blocker.handle(keyCode, up, 0))
        }
        assertEquals(2, blocker.consumedCount)
    }

    @Test
    fun `nessun blocco se la finestra si apre senza OK premuto`() {
        val blocker = HeldOkKeyBlocker()

        // Primo evento: KeyDown nuovo (repeatCount 0), poi il suo rilascio.
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, down, 0))
        assertFalse(blocker.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, up, 0))

        assertTrue(blocker.unlocked)
        assertEquals(0, blocker.consumedCount)
    }
}
