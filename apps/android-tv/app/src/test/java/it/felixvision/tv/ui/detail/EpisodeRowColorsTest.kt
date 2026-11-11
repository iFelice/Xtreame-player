package it.felixvision.tv.ui.detail

import androidx.activity.ComponentActivity
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.tv.material3.ListItemColors
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Colori della riga episodio nel dettaglio serie: con il focus il fondo resta
 * quello a riposo ([FvpColors.SurfaceElevated]) e il testo resta bianco, invece
 * del riempimento chiaro predefinito di tv-material. Si controllano i colori
 * passati al ListItem, non i pixel disegnati.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class EpisodeRowColorsTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `con il focus la riga episodio resta scura sotto il testo bianco`() {
        var colors: ListItemColors? = null
        rule.setContent {
            FvpTheme {
                colors = episodeRowColors()
            }
        }
        rule.waitForIdle()

        val c = requireNotNull(colors)
        assertEquals(c.containerColor, c.focusedContainerColor)
        assertEquals(FvpColors.SurfaceElevated, c.containerColor)
        assertEquals(FvpColors.TextPrimary, c.contentColor)
        assertEquals(FvpColors.TextPrimary, c.focusedContentColor)
        assertEquals(FvpColors.SurfaceElevated, c.selectedContainerColor)
        assertEquals(FvpColors.TextPrimary, c.selectedContentColor)
        assertEquals(FvpColors.SurfaceElevated, c.focusedSelectedContainerColor)
        assertEquals(FvpColors.TextPrimary, c.focusedSelectedContentColor)
    }
}
