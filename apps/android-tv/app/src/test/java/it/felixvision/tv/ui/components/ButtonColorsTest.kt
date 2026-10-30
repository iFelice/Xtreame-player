package it.felixvision.tv.ui.components

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import it.felixvision.tv.ui.theme.FvpColors
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

/**
 * Un solo stile di pulsante compatto: [FvpCompactButton], usato direttamente dal
 * player e dalle Impostazioni e, per intero, da [FvpPrimaryButton] e
 * [FvpSecondaryButton].
 *
 * I colori tv-material di un pulsante non si leggono in Robolectric: lo stile
 * atteso vive in [FvpCompactButtonStyle], che i composable usano davvero, e qui
 * si verificano i suoi valori.
 */
class ButtonColorsTest {

    @Test
    fun `a riposo fondo trasparente e testo primario`() {
        assertEquals(Color.Transparent, FvpCompactButtonStyle.restContainer)
        assertEquals(0f, FvpCompactButtonStyle.restContainer.alpha, 0.0001f)

        assertEquals(Color(0xFFFFFFFF), FvpColors.TextPrimary)
        assertEquals(FvpColors.TextPrimary, FvpCompactButtonStyle.restContent)

        // Bordo a riposo: la linea sottile dei contenitori a vetro, non un grigio.
        assertEquals(FvpColors.GlassBorder, FvpCompactButtonStyle.restBorderColor)
        assertEquals(Color.White.copy(alpha = 0.10f), FvpCompactButtonStyle.restBorderColor)
        assertEquals(1f, FvpCompactButtonStyle.REST_BORDER_BASE, 0.0001f)
    }

    @Test
    fun `focus Green, bordo GreenFocus e ingrandimento`() {
        assertEquals(Color(0xFF10B981), FvpColors.Green)
        assertEquals(FvpColors.Green, FvpCompactButtonStyle.focusContainer)

        assertEquals(Color(0xFF1C1C1E), FvpColors.OnGreen)
        assertEquals(FvpColors.OnGreen, FvpCompactButtonStyle.focusContent)

        assertEquals(Color(0xFF34D399), FvpColors.GreenFocus)
        assertEquals(FvpColors.GreenFocus, FvpCompactButtonStyle.focusBorderColor)
        assertEquals(2f, FvpCompactButtonStyle.FOCUS_BORDER_BASE, 0.0001f)

        assertEquals(1.05f, FvpCompactButtonStyle.FOCUSED_SCALE, 0.0001f)
        assertEquals(18f, FvpCompactButtonStyle.CORNER_BASE, 0.0001f)
        assertEquals(14f, FvpCompactButtonStyle.TEXT_BASE, 0.0001f)
        assertEquals(14f, FvpCompactButtonStyle.HORIZONTAL_PADDING_BASE, 0.0001f)
        assertEquals(6f, FvpCompactButtonStyle.VERTICAL_PADDING_BASE, 0.0001f)
    }

    @Test
    fun `primario e secondario condividono lo stile e differiscono solo nel peso`() {
        // Lo stile è uno solo: entrambi partono da fondo trasparente e verde.
        assertEquals(Color.Transparent, FvpCompactButtonStyle.restContainer)
        assertEquals(FvpColors.Green, FvpCompactButtonStyle.focusContainer)

        // L'unica distinzione: SemiBold per il primario, Medium per il secondario.
        assertEquals(FontWeight.SemiBold, FvpCompactButtonStyle.PRIMARY_WEIGHT)
        assertEquals(FontWeight.Medium, FvpCompactButtonStyle.SECONDARY_WEIGHT)
        assertNotEquals(FvpCompactButtonStyle.PRIMARY_WEIGHT, FvpCompactButtonStyle.SECONDARY_WEIGHT)
    }

    @Test
    fun `disabilitato trasparente con testo secondario`() {
        assertEquals(Color.Transparent, FvpCompactButtonStyle.disabledContainer)
        assertEquals(Color(0xFFAEAEB2), FvpColors.TextSecondary)
        assertEquals(FvpColors.TextSecondary, FvpCompactButtonStyle.disabledContent)
        // A riposo il testo è pieno: disabilitato si distingue dal secondario del colore.
        assertNotEquals(FvpCompactButtonStyle.restContent, FvpCompactButtonStyle.disabledContent)
    }
}
