package it.felixvision.tv.ui.components

import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Logica del tasto OK dei campi "tastiera su OK", senza simulare il
 * telecomando: quali tasti valgono come OK e quando la pressione apre la
 * tastiera (al rilascio, una sola volta, mai per un rilascio orfano).
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class FvpFieldOkKeyTest {

    @Test
    fun `OK, Invio e Invio del tastierino valgono come OK, frecce e Indietro no`() {
        assertTrue(isFieldOkKey(Key.DirectionCenter))
        assertTrue(isFieldOkKey(Key.Enter))
        assertTrue(isFieldOkKey(Key.NumPadEnter))
        assertFalse(isFieldOkKey(Key.DirectionUp))
        assertFalse(isFieldOkKey(Key.DirectionDown))
        assertFalse(isFieldOkKey(Key.DirectionLeft))
        assertFalse(isFieldOkKey(Key.DirectionRight))
        assertFalse(isFieldOkKey(Key.Back))
    }

    @Test
    fun `OK apre la tastiera al rilascio e una sola volta`() {
        val gate = KeyPressGate(::isFieldOkKey)
        var opened = 0

        assertTrue(gate.onKeyEvent(Key.DirectionCenter, KeyEventType.KeyDown) { opened++ })
        assertEquals(0, opened)
        // Ripetizione della pressione lunga: consumata, ancora nessuna apertura.
        assertTrue(gate.onKeyEvent(Key.DirectionCenter, KeyEventType.KeyDown) { opened++ })
        assertEquals(0, opened)
        assertTrue(gate.onKeyEvent(Key.DirectionCenter, KeyEventType.KeyUp) { opened++ })
        assertEquals(1, opened)
        // Un altro rilascio senza pressione non riapre.
        assertFalse(gate.onKeyEvent(Key.DirectionCenter, KeyEventType.KeyUp) { opened++ })
        assertEquals(1, opened)
    }

    @Test
    fun `frecce alla navigazione, rilascio orfano e pressione interrotta ignorati`() {
        val gate = KeyPressGate(::isFieldOkKey)
        var opened = 0

        // Le frecce non vengono consumate: il focus si sposta come sempre.
        assertFalse(gate.onKeyEvent(Key.DirectionDown, KeyEventType.KeyDown) { opened++ })
        assertFalse(gate.onKeyEvent(Key.DirectionDown, KeyEventType.KeyUp) { opened++ })
        // OK premuto su un'altra schermata: qui arriva solo il rilascio.
        assertFalse(gate.onKeyEvent(Key.Enter, KeyEventType.KeyUp) { opened++ })
        // Pressione interrotta dal cambio di focus.
        assertTrue(gate.onKeyEvent(Key.NumPadEnter, KeyEventType.KeyDown) { opened++ })
        gate.reset()
        assertFalse(gate.onKeyEvent(Key.NumPadEnter, KeyEventType.KeyUp) { opened++ })

        assertEquals(0, opened)
    }

    @Test
    fun `Indietro durante la scrittura chiude al rilascio`() {
        val gate = KeyPressGate { it == Key.Back }
        var closed = 0

        assertFalse(gate.onKeyEvent(Key.DirectionCenter, KeyEventType.KeyDown) { closed++ })
        assertTrue(gate.onKeyEvent(Key.Back, KeyEventType.KeyDown) { closed++ })
        assertEquals(0, closed)
        assertTrue(gate.onKeyEvent(Key.Back, KeyEventType.KeyUp) { closed++ })
        assertEquals(1, closed)
    }
}
