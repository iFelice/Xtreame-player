package it.felixvision.tv.ui.components

import androidx.compose.foundation.shape.CircleShape
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Outline
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.LayoutDirection
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Il pulsante compatto ha una sola forma, [FvpCompactButtonStyle.shape], e la
 * stessa forma va al fondo (Button di tv-material) e ai bordi a riposo, con il
 * focus e premuto. Prima il fondo usava la pillola predefinita di tv-material e
 * i bordi un raggio di 18 unità: agli estremi il contorno non coincideva.
 *
 * Qui si verifica la forma esposta dallo stile. Che i composable la passino sia
 * al Button sia ai Border si legge nel codice di [FvpCompactButton] e
 * [FvpCheckboxButton], dove non restano altre forme scritte a mano.
 *
 * Test JUnit semplice: niente Robolectric, niente composizione.
 */
class CompactButtonShapeTest {

    @Test
    fun `lo stile espone una sola forma a pillola`() {
        // CircleShape è una costante (non un tipo): il confronto è per valore.
        assertEquals(CircleShape, FvpCompactButtonStyle.shape)
    }

    @Test
    fun `la forma e la pillola con gli estremi semicircolari`() {
        // Un pulsante largo e basso: la pillola arrotonda gli estremi di metà
        // altezza, quindi il contorno del fondo e quello del bordo coincidono.
        val outline = outlineOf(FvpCompactButtonStyle.shape, width = 200f, height = 48f)

        assertTrue(outline is Outline.Rounded)
        val roundRect = (outline as Outline.Rounded).roundRect
        assertEquals(200f, roundRect.width, 0.5f)
        assertEquals(48f, roundRect.height, 0.5f)
        val pill = CornerRadius(24f, 24f)
        assertEquals(pill, roundRect.topLeftCornerRadius)
        assertEquals(pill, roundRect.topRightCornerRadius)
        assertEquals(pill, roundRect.bottomRightCornerRadius)
        assertEquals(pill, roundRect.bottomLeftCornerRadius)
    }

    private fun outlineOf(shape: Shape, width: Float, height: Float) =
        shape.createOutline(Size(width, height), LayoutDirection.Ltr, Density(1f))
}
