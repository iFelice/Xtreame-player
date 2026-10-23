package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Titoli con il marquee su focus.
 *
 * Il test gira in Robolectric, senza telecomando: verifica il caso a riposo
 * (ellissi, nessuno scorrimento) e le regole che decidono quando il marquee
 * deve partire. L'animazione vera e propria con il focus si vede sul
 * dispositivo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class FocusMarqueeTextTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val longTitle = "Un titolo molto lungo che non entra nella card del catalogo"

    @Test
    fun `senza focus il titolo usa l'ellissi`() {
        assertEquals(TextOverflow.Ellipsis, focusMarqueeOverflow(focused = false, maxLines = 1))
        assertEquals(TextOverflow.Ellipsis, focusMarqueeOverflow(focused = false, maxLines = 2))
        assertFalse(shouldRunFocusMarquee(focused = false, maxLines = 1))
    }

    @Test
    fun `con il focus il marquee gira solo su una riga`() {
        assertTrue(shouldRunFocusMarquee(focused = true, maxLines = 1))
        assertEquals(TextOverflow.Clip, focusMarqueeOverflow(focused = true, maxLines = 1))
        // Un testo su più righe non deve scorrere.
        assertFalse(shouldRunFocusMarquee(focused = true, maxLines = 2))
        assertEquals(TextOverflow.Ellipsis, focusMarqueeOverflow(focused = true, maxLines = 2))
    }

    @Test
    fun `senza focus il titolo resta fermo e non scorre`() {
        rule.setContent {
            Box(modifier = Modifier.width(120.dp).background(Color.Black)) {
                FocusMarqueeText(
                    text = longTitle,
                    focused = false,
                    modifier = Modifier.padding(2.dp).testTag("marquee_title"),
                )
            }
        }
        rule.waitForIdle()

        val title = rule.onNodeWithTag("marquee_title")
        title.assertTextEquals(longTitle)
        title.assertIsDisplayed()
        val before = title.fetchSemanticsNode().boundsInRoot

        // Oltre l'attesa del marquee (2 s) e oltre la durata dell'animazione:
        // senza focus il testo non deve muoversi di un pixel.
        rule.mainClock.advanceTimeBy(FOCUS_MARQUEE_INITIAL_DELAY_MILLIS + 3_000L)
        rule.waitForIdle()

        val after = rule.onNodeWithTag("marquee_title").fetchSemanticsNode().boundsInRoot
        assertEquals(before, after)
    }
}
