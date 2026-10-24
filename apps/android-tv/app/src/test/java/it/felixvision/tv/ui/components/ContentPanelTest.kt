package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.onRoot
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Text
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pannello che delimita l'area dei contenuti.
 *
 * Test Robolectric, senza telecomando: il componente si compone con il suo
 * contenuto e, soprattutto, il pannello resta uno sfondo. Il margine è solo del
 * pannello, quindi le griglie non perdono spazio (le 5 colonne restano) e la
 * cornice del focus non viene tagliata.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ContentPanelTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `pannello e contenuto si compongono`() {
        rule.setContent {
            FvpTheme {
                ContentPanel(scale = scale, modifier = Modifier.fillMaxSize()) {
                    Box(modifier = Modifier.fillMaxSize().testTag("contenuto_griglia"))
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(CONTENT_PANEL_TAG).assertIsDisplayed()
        rule.onNodeWithTag("contenuto_griglia").assertIsDisplayed()
    }

    @Test
    fun `il testo del contenuto resta sopra al pannello`() {
        rule.setContent {
            FvpTheme {
                ContentPanel(scale = scale, modifier = Modifier.fillMaxSize()) {
                    Text(
                        text = "Ultimi film",
                        modifier = Modifier.testTag("contenuto_testo"),
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Ultimi film").assertIsDisplayed()
        rule.onNodeWithTag("contenuto_testo").assertIsDisplayed()
    }

    @Test
    fun `il pannello non riduce lo spazio del contenuto`() {
        rule.setContent {
            FvpTheme {
                ContentPanel(scale = scale, modifier = Modifier.fillMaxSize()) {
                    Box(modifier = Modifier.fillMaxSize().testTag("contenuto_pieno"))
                }
            }
        }
        rule.waitForIdle()

        val root = rule.onRoot().fetchSemanticsNode().boundsInRoot
        val content = rule.onNodeWithTag("contenuto_pieno").fetchSemanticsNode().boundsInRoot
        val panel = rule.onNodeWithTag(CONTENT_PANEL_TAG).fetchSemanticsNode().boundsInRoot

        // Il contenuto occupa tutta l'area: il pannello non applica padding.
        assertEquals(root.width.toDouble(), content.width.toDouble(), 0.5)
        assertEquals(root.height.toDouble(), content.height.toDouble(), 0.5)

        // Il margine è solo del pannello, coerente con focusSafePadding.
        val density = rule.onRoot().fetchSemanticsNode().layoutInfo.density
        val expectedInset = with(density) { 12.dp.toPx() }.toDouble()
        assertEquals(expectedInset, (panel.left - content.left).toDouble(), 1.0)
        assertEquals(expectedInset, (panel.top - content.top).toDouble(), 1.0)
        assertEquals(expectedInset, (content.right - panel.right).toDouble(), 1.0)
        assertEquals(expectedInset, (content.bottom - panel.bottom).toDouble(), 1.0)
        assertTrue(panel.width < content.width)
        assertTrue(panel.height < content.height)
    }
}
