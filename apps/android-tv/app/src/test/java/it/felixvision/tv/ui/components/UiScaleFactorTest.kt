package it.felixvision.tv.ui.components

import it.felixvision.tv.ui.settings.InterfaceSize
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Scala dell'interfaccia: funzione pura, senza composizione né dispositivo.
 *
 * La regola che conta è l'ordine: il limite di progetto (0,75–2,0) si applica
 * prima del moltiplicatore della dimensione interfaccia. Invertendoli,
 * "Compatta" su un 960×540 verrebbe riportata al minimo 0,75 invece di 0,72.
 */
class UiScaleFactorTest {

    private fun assertFactor(expected: Float, actual: Float) {
        assertEquals(expected, actual, 0.0001f)
    }

    @Test
    fun `960x540 con la dimensione di progetto vale 0_9`() {
        // min(960 / 960, 540 / 600) = min(1, 0.9) = 0.9
        assertFactor(0.9f, uiScaleFactor(widthDp = 960f, heightDp = 540f, sizeFactor = 1.0f))
    }

    @Test
    fun `960x540 compatta scende a 0_72 e non viene riportata al minimo`() {
        // 0.9 × 0.8 = 0.72, sotto il minimo di progetto (0.75): il
        // moltiplicatore si applica dopo il limite, quindi resta 0.72.
        assertFactor(0.72f, uiScaleFactor(widthDp = 960f, heightDp = 540f, sizeFactor = 0.8f))
        // Lo stesso valore arriva dalla dimensione "Compatta" delle Impostazioni.
        assertFactor(
            0.72f,
            uiScaleFactor(widthDp = 960f, heightDp = 540f, sizeFactor = InterfaceSize.COMPACT.factor),
        )
    }

    @Test
    fun `1920x1080 arriva al massimo di progetto`() {
        // min(2, 1.8) = 1.8 → 2.0 (massimo).
        assertFactor(2.0f, uiScaleFactor(widthDp = 1920f, heightDp = 1080f, sizeFactor = 1.0f))
        // Il massimo resta applicato prima del moltiplicatore: "Compatta" su
        // 1080p vale 1.6, non 2.0.
        assertFactor(1.6f, uiScaleFactor(widthDp = 1920f, heightDp = 1080f, sizeFactor = 0.8f))
    }

    @Test
    fun `640x360 resta al minimo di progetto`() {
        // min(0.667, 0.6) = 0.6 → 0.75 (minimo).
        assertFactor(0.75f, uiScaleFactor(widthDp = 640f, heightDp = 360f, sizeFactor = 1.0f))
    }
}
