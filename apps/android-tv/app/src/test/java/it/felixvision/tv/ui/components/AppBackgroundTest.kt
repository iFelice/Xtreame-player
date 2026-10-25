package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onRoot
import androidx.compose.ui.unit.dp
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Sfondo unico dell'area a destra del menu laterale.
 *
 * Verifica che il componente si componga, che il contenuto resti visibile e
 * che gli aloni si adattino a risoluzioni e rapporti d'aspetto diversi.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class AppBackgroundTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `lo sfondo si compone e mostra il contenuto`() {
        rule.setContent {
            FvpTheme {
                AppBackground(modifier = Modifier.fillMaxSize()) {
                    Box(modifier = Modifier.size(120.dp).testTag("app_background_content"))
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(APP_BACKGROUND_TAG).assertIsDisplayed()
        rule.onNodeWithTag("app_background_content").assertIsDisplayed()
    }

    @Test
    fun `lo sfondo occupa tutto lo schermo`() {
        rule.setContent {
            FvpTheme {
                AppBackground(modifier = Modifier.fillMaxSize()) {
                    EmptyState(title = "Nessun contenuto", description = "Niente da mostrare.", scale = scale)
                }
            }
        }
        rule.waitForIdle()

        val root = rule.onRoot().fetchSemanticsNode().boundsInRoot
        val background = rule.onNodeWithTag(APP_BACKGROUND_TAG).fetchSemanticsNode().boundsInRoot

        assertEquals(root.width.toDouble(), background.width.toDouble(), 0.5)
        assertEquals(root.height.toDouble(), background.height.toDouble(), 0.5)
    }

    // --- Geometria degli aloni -------------------------------------------

    @Test
    fun `gli aloni seguono la larghezza dell'area`() {
        val fullHd = AppBackgroundGeometry.forSize(1920f, 1080f)
        assertEquals(1920f * GLOW_LARGE_RADIUS_FACTOR, fullHd.largeRadius, 0.01f)
        assertEquals(1920f * GLOW_SMALL_RADIUS_FACTOR, fullHd.smallRadius, 0.01f)
        // L'alone ampio sta in basso a destra, il piccolo in alto a sinistra.
        assertTrue(fullHd.largeCenter.x > 1920f / 2f)
        assertTrue(fullHd.largeCenter.y > 1080f / 2f)
        assertTrue(fullHd.smallCenter.x < 1920f / 2f)
        assertTrue(fullHd.smallCenter.y < 1080f / 2f)
    }

    @Test
    fun `gli aloni si adattano al rapporto d'aspetto`() {
        val wide = AppBackgroundGeometry.forSize(2560f, 1080f)
        val tall = AppBackgroundGeometry.forSize(1080f, 1920f)

        assertEquals(2560f * GLOW_LARGE_RADIUS_FACTOR, wide.largeRadius, 0.01f)
        assertEquals(1080f * GLOW_LARGE_RADIUS_FACTOR, tall.largeRadius, 0.01f)
        // Il centro segue anche l'altezza: nessun valore fisso in pixel.
        assertEquals(1080f * GLOW_LARGE_CENTER_Y, wide.largeCenter.y, 0.01f)
        assertEquals(1920f * GLOW_LARGE_CENTER_Y, tall.largeCenter.y, 0.01f)
    }

    @Test
    fun `misure non valide non producono aloni negativi`() {
        val empty = AppBackgroundGeometry.forSize(0f, 0f)
        assertEquals(0f, empty.largeRadius, 0.01f)
        assertEquals(0f, empty.smallRadius, 0.01f)
        assertEquals(0f, empty.largeCenter.x, 0.01f)
        assertEquals(0f, empty.smallCenter.y, 0.01f)
    }
}
