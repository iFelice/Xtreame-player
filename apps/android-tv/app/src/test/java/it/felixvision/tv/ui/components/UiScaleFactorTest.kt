package it.felixvision.tv.ui.components

import it.felixvision.tv.ui.settings.InterfaceSize
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Scala dell'interfaccia: funzione pura, senza composizione né dispositivo.
 *
 * Ogni atteso è `min(widthDp / 960, heightDp / 600).coerceIn(0.75, 2.0) × sizeFactor`.
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
    fun `1920x1080 e limitato dall altezza`() {
        // min(1920 / 960, 1080 / 600) = min(2.0, 1.8) = 1.8: limita l'altezza,
        // il massimo 2.0 non viene raggiunto.
        assertFactor(1.8f, uiScaleFactor(widthDp = 1920f, heightDp = 1080f, sizeFactor = 1.0f))
        // Con "Media": 1.8 × 0.9 = 1.62.
        assertFactor(1.62f, uiScaleFactor(widthDp = 1920f, heightDp = 1080f, sizeFactor = 0.9f))
        // Il limite resta applicato prima del moltiplicatore: "Compatta" vale
        // 1.8 × 0.8 = 1.44, non 1.6.
        assertFactor(1.44f, uiScaleFactor(widthDp = 1920f, heightDp = 1080f, sizeFactor = 0.8f))
    }

    @Test
    fun `2400x1500 arriva al massimo di progetto`() {
        // min(2400 / 960, 1500 / 600) = min(2.5, 2.5) = 2.5 → 2.0 (massimo).
        assertFactor(2.0f, uiScaleFactor(widthDp = 2400f, heightDp = 1500f, sizeFactor = 1.0f))
        // Con "Compatta": 2.0 × 0.8 = 1.6, il moltiplicatore si applica dopo
        // il limite, quindi non viene riportato al massimo.
        assertFactor(1.6f, uiScaleFactor(widthDp = 2400f, heightDp = 1500f, sizeFactor = 0.8f))
    }

    @Test
    fun `640x360 resta al minimo di progetto`() {
        // min(0.667, 0.6) = 0.6 → 0.75 (minimo).
        assertFactor(0.75f, uiScaleFactor(widthDp = 640f, heightDp = 360f, sizeFactor = 1.0f))
    }
}
