package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.unit.dp
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Contatore "N / Totale" e barra di scorrimento verticale.
 *
 * I calcoli sono provati come funzioni pure; due test Robolectric verificano
 * che il componente si componga e che contatore e barra compaiano solo quando
 * servono. Nessuna simulazione del telecomando.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PositionIndicatorTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    // --- Calcoli ---------------------------------------------------------

    @Test
    fun `contatore con indice valido`() {
        assertEquals("1 / 40", PositionMath.counterText(0, 40))
        assertEquals("40 / 40", PositionMath.counterText(39, 40))
    }

    @Test
    fun `contatore assente senza focus o con totale non valido`() {
        assertNull(PositionMath.counterText(null, 40))
        assertNull(PositionMath.counterText(0, 0))
        assertNull(PositionMath.counterText(-1, 40))
        assertNull(PositionMath.counterText(40, 40))
    }

    @Test
    fun `barra solo quando gli elementi non stanno in una schermata`() {
        assertFalse(PositionMath.isScrollable(0, 0))
        assertFalse(PositionMath.isScrollable(10, 0))
        assertFalse(PositionMath.isScrollable(10, 10))
        assertFalse(PositionMath.isScrollable(8, 12))
        assertTrue(PositionMath.isScrollable(40, 9))
    }

    @Test
    fun `cursore proporzionale al visibile`() {
        assertEquals(1f, PositionMath.thumbFraction(0, 0), 0.0001f)
        assertEquals(0.25f, PositionMath.thumbFraction(40, 10), 0.0001f)
        assertEquals(1f, PositionMath.thumbFraction(10, 40), 0.0001f)
    }

    @Test
    fun `posizione del cursore dall'inizio alla fine`() {
        assertEquals(0f, PositionMath.offsetFraction(0, 40, 10), 0.0001f)
        assertEquals(0.5f, PositionMath.offsetFraction(15, 40, 10), 0.0001f)
        assertEquals(1f, PositionMath.offsetFraction(30, 40, 10), 0.0001f)
        // Tutto visibile: nessuno scorrimento, cursore fermo in cima.
        assertEquals(0f, PositionMath.offsetFraction(3, 10, 10), 0.0001f)
    }

    @Test
    fun `altezza e spostamento del cursore non escono dall'area`() {
        val area = 400f
        val thumb = PositionMath.thumbHeightPx(area, 40, 10, 18f)
        assertEquals(100f, thumb, 0.0001f)
        assertEquals(150f, PositionMath.thumbOffsetPx(area, thumb, 15, 40, 10), 0.0001f)
        assertEquals(300f, PositionMath.thumbOffsetPx(area, thumb, 30, 40, 10), 0.0001f)

        // Con pochissimi elementi il cursore resta almeno dell'altezza minima.
        val tiny = PositionMath.thumbHeightPx(area, 40, 1, 18f)
        assertEquals(18f, tiny, 0.0001f)

        // Area nulla: nessun disegno.
        assertEquals(0f, PositionMath.thumbHeightPx(0f, 40, 10, 18f), 0.0001f)
        assertEquals(0f, PositionMath.thumbOffsetPx(0f, 10f, 5, 40, 10), 0.0001f)
    }

    // --- Composizione ----------------------------------------------------

    @Test
    fun `mostra contatore e barra quando la lista e lunga`() {
        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.size(width = 800.dp, height = 400.dp)) {
                    PositionIndicator(
                        position = ListPosition(
                            focusedIndex = 2,
                            totalItems = 40,
                            firstVisibleIndex = 0,
                            visibleItems = 9,
                        ),
                        scale = scale,
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(POSITION_COUNTER_TAG).assertIsDisplayed()
        rule.onNodeWithText("3 / 40").assertIsDisplayed()
        rule.onNodeWithTag(POSITION_SCROLLBAR_TAG).assertIsDisplayed()
    }

    @Test
    fun `non mostra nulla quando tutto sta in una schermata`() {
        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.size(width = 800.dp, height = 400.dp)) {
                    PositionIndicator(
                        position = ListPosition(
                            focusedIndex = null,
                            totalItems = 5,
                            firstVisibleIndex = 0,
                            visibleItems = 5,
                        ),
                        scale = scale,
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(POSITION_COUNTER_TAG).assertDoesNotExist()
        rule.onNodeWithTag(POSITION_SCROLLBAR_TAG).assertDoesNotExist()
    }

    @Test
    fun `senza focus il contatore manca ma la barra resta`() {
        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize()) {
                    PositionIndicator(
                        position = ListPosition(
                            focusedIndex = null,
                            totalItems = 40,
                            firstVisibleIndex = 12,
                            visibleItems = 9,
                        ),
                        scale = scale,
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(POSITION_COUNTER_TAG).assertDoesNotExist()
        rule.onNodeWithTag(POSITION_SCROLLBAR_TAG).assertIsDisplayed()
    }
}
