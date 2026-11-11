package it.felixvision.tv.ui.components

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class UiScaleTextFloorTest {

    @Test
    fun `i testi piccoli mantengono la scala di progetto`() {
        val scale = UiScale(factor = 0.63f, designFactor = 0.9f)

        // max(11 × 0.63, 11 × 0.9) = max(6.93, 9.9) = 9.9.
        assertEquals(9.9f, scale.sp(11f).value, 0.01f)
        // max(13 × 0.63, 13 × 0.9) = max(8.19, 11.7) = 11.7.
        assertEquals(11.7f, scale.sp(13f).value, 0.01f)
        // max(16 × 0.63, 13 × 0.9) = max(10.08, 11.7) = 11.7.
        assertEquals(11.7f, scale.sp(16f).value, 0.01f)
        // max(22 × 0.63, 13 × 0.9) = max(13.86, 11.7) = 13.86.
        assertEquals(13.86f, scale.sp(22f).value, 0.01f)
        // I dp continuano a usare soltanto la dimensione scelta.
        assertEquals(10.08f, scale.dp(16f).value, 0.01f)
    }

    @Test
    fun `il fattore predefinito mantiene il valore originale`() {
        val scale = UiScale(1f)
        listOf(0f, 11f, 13f, 16f, 22f, 50f).forEach { base ->
            assertEquals(base, scale.sp(base).value, 0.01f)
        }
    }

    @Test
    fun `il testo non diminuisce quando cresce la base`() {
        val scale = UiScale(factor = 0.63f, designFactor = 0.9f)
        val sizes = (0..100).map { scale.sp(it / 2f).value }
        assertTrue(sizes.zipWithNext().all { (previous, next) -> next >= previous })
    }
}
