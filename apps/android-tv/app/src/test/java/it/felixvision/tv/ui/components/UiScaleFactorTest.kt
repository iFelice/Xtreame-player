package it.felixvision.tv.ui.components

import it.felixvision.tv.ui.settings.InterfaceSize
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Scala dell'interfaccia: funzione pura, senza composizione né dispositivo.
 *
 * Ogni atteso è `min(widthDp / 960, heightDp / 600).coerceIn(0.75, 2.0) × sizeFactor`.
 * Il limite di progetto si applica prima del moltiplicatore della dimensione:
 * "Compatta" su un 960×540 resta 0,63 invece di essere riportata a 0,75.
 */
class UiScaleFactorTest {

    private fun assertFactor(expected: Float, actual: Float) {
        assertEquals(expected, actual, 0.0001f)
    }

    @Test
    fun `960x540 scala di progetto e tre dimensioni`() {
        // min(960 / 960, 540 / 600) = min(1, 0.9) = 0.9.
        assertFactor(0.9f, designScaleFactor(widthDp = 960f, heightDp = 540f))
        // Grande: 0.9 × 1.0 = 0.9.
        assertFactor(0.9f, uiScaleFactor(960f, 540f, InterfaceSize.LARGE.factor))
        // Media: 0.9 × 0.85 = 0.765.
        assertFactor(0.765f, uiScaleFactor(960f, 540f, InterfaceSize.MEDIUM.factor))
        // Compatta: 0.9 × 0.70 = 0.63, non il minimo di progetto 0.75.
        assertFactor(0.63f, uiScaleFactor(960f, 540f, InterfaceSize.COMPACT.factor))
    }

    @Test
    fun `1920x1080 e limitato dall altezza`() {
        // min(1920 / 960, 1080 / 600) = min(2.0, 1.8) = 1.8.
        assertFactor(1.8f, designScaleFactor(widthDp = 1920f, heightDp = 1080f))
        // Grande: 1.8 × 1.0 = 1.8.
        assertFactor(1.8f, uiScaleFactor(1920f, 1080f, InterfaceSize.LARGE.factor))
        // Media: 1.8 × 0.85 = 1.53.
        assertFactor(1.53f, uiScaleFactor(1920f, 1080f, InterfaceSize.MEDIUM.factor))
        // Compatta: 1.8 × 0.70 = 1.26.
        assertFactor(1.26f, uiScaleFactor(1920f, 1080f, InterfaceSize.COMPACT.factor))
    }

    @Test
    fun `2400x1500 arriva al massimo di progetto`() {
        // min(2400 / 960, 1500 / 600) = min(2.5, 2.5) = 2.5 → 2.0.
        assertFactor(2.0f, designScaleFactor(widthDp = 2400f, heightDp = 1500f))
        // Grande: 2.0 × 1.0 = 2.0.
        assertFactor(2.0f, uiScaleFactor(2400f, 1500f, InterfaceSize.LARGE.factor))
        // Media: 2.0 × 0.85 = 1.7.
        assertFactor(1.7f, uiScaleFactor(2400f, 1500f, InterfaceSize.MEDIUM.factor))
        // Compatta: 2.0 × 0.70 = 1.4, dopo il limite di progetto.
        assertFactor(1.4f, uiScaleFactor(2400f, 1500f, InterfaceSize.COMPACT.factor))
    }

    @Test
    fun `640x360 resta al minimo di progetto prima della dimensione`() {
        // min(640 / 960, 360 / 600) = min(0.666…, 0.6) = 0.6 → 0.75.
        assertFactor(0.75f, designScaleFactor(widthDp = 640f, heightDp = 360f))
        // Grande: 0.75 × 1.0 = 0.75.
        assertFactor(0.75f, uiScaleFactor(640f, 360f, InterfaceSize.LARGE.factor))
        // Media: 0.75 × 0.85 = 0.6375.
        assertFactor(0.6375f, uiScaleFactor(640f, 360f, InterfaceSize.MEDIUM.factor))
        // Compatta: 0.75 × 0.70 = 0.525.
        assertFactor(0.525f, uiScaleFactor(640f, 360f, InterfaceSize.COMPACT.factor))
    }
}
