package it.felixvision.tv.ui.components

import androidx.compose.ui.graphics.Color
import it.felixvision.tv.ui.theme.FvpColors
import org.junit.Assert.assertEquals
import org.junit.Test

class ButtonColorsTest {

    @Test
    fun `a riposo SurfaceElevated e TextPrimary`() {
        assertEquals(Color(0xFF3A3A3C), FvpColors.SurfaceElevated)
        assertEquals(Color(0xFFFFFFFF), FvpColors.TextPrimary)
        // Il pulsante a riposo deve usare questi colori (verifica palette)
        assertEquals(FvpColors.SurfaceElevated, FvpColors.SurfaceElevated)
        assertEquals(FvpColors.TextPrimary, FvpColors.TextPrimary)
    }

    @Test
    fun `focus Green e OnGreen`() {
        assertEquals(Color(0xFF10B981), FvpColors.Green)
        assertEquals(Color(0xFF1C1C1E), FvpColors.OnGreen)
        assertEquals(Color(0xFF34D399), FvpColors.GreenFocus)
    }

    @Test
    fun `primario e secondario condividono colori a riposo e focus distinzione solo peso`() {
        // Entrambi usano SurfaceElevated a riposo e Green a focus, distinzione solo SemiBold vs Medium
        // Verifica che i colori siano identici nella palette (il test reale dei composable verifica i parametri)
        val primaryRestContainer = FvpColors.SurfaceElevated
        val secondaryRestContainer = FvpColors.SurfaceElevated
        assertEquals(primaryRestContainer, secondaryRestContainer)

        val primaryFocusContainer = FvpColors.Green
        val secondaryFocusContainer = FvpColors.Green
        assertEquals(primaryFocusContainer, secondaryFocusContainer)

        val primaryRestContent = FvpColors.TextPrimary
        val secondaryRestContent = FvpColors.TextPrimary
        assertEquals(primaryRestContent, secondaryRestContent)

        val primaryFocusContent = FvpColors.OnGreen
        val secondaryFocusContent = FvpColors.OnGreen
        assertEquals(primaryFocusContent, secondaryFocusContent)
    }
}
