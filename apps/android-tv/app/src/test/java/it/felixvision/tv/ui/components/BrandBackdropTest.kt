package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.onRoot
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Sfondo delle schermate di caricamento a schermo intero.
 *
 * Test Robolectric, senza telecomando: verifica che il componente si componga,
 * che logo e nome siano presenti e che il contenuto passato dal chiamante
 * (indicatore di caricamento o messaggio di stato) finisca sotto al logo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class BrandBackdropTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `mostra logo nome e messaggio di stato`() {
        rule.setContent {
            FvpTheme {
                BrandBackdrop(scale = scale) {
                    LoadingState(message = "Caricamento catalogo in corso…", scale = scale)
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(BRAND_BACKDROP_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BRAND_LOGO_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BRAND_TITLE_TAG).assertIsDisplayed()
        rule.onNodeWithText("FelixVP").assertIsDisplayed()
        rule.onNodeWithText("Caricamento catalogo in corso…").assertIsDisplayed()
    }

    @Test
    fun `il messaggio di stato sta sotto al nome`() {
        rule.setContent {
            FvpTheme {
                BrandBackdrop(scale = scale) {
                    LoadingState(message = "Verifica delle credenziali salvate…", scale = scale)
                }
            }
        }
        rule.waitForIdle()

        val logo = rule.onNodeWithTag(BRAND_LOGO_TAG).fetchSemanticsNode().boundsInRoot
        val title = rule.onNodeWithTag(BRAND_TITLE_TAG).fetchSemanticsNode().boundsInRoot
        val message = rule.onNodeWithText("Verifica delle credenziali salvate…")
            .fetchSemanticsNode().boundsInRoot

        // Logo, poi "FelixVP", poi l'indicatore di caricamento: ordine verticale.
        assertTrue(logo.bottom <= title.top)
        assertTrue(title.bottom <= message.top)
    }

    @Test
    fun `lo sfondo occupa tutto lo schermo`() {
        rule.setContent {
            FvpTheme {
                BrandBackdrop(scale = scale) { }
            }
        }
        rule.waitForIdle()

        val root = rule.onRoot().fetchSemanticsNode().boundsInRoot
        val backdrop = rule.onNodeWithTag(BRAND_BACKDROP_TAG).fetchSemanticsNode().boundsInRoot

        assertEquals(root.width.toDouble(), backdrop.width.toDouble(), 0.5)
        assertEquals(root.height.toDouble(), backdrop.height.toDouble(), 0.5)
    }
}
