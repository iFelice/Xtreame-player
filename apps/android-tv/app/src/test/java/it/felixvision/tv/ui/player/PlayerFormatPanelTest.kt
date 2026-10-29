package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pannello del formato dello schermo: le quattro voci nell'ordine di
 * [VideoFormat], il formato in vigore che prende il focus all'apertura e OK su
 * una voce che riporta la scelta. Un solo `setContent` per test e pulsanti
 * tv-material attivati con l'azione di click.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerFormatPanelTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `quattro voci con lo zoom in uso che prende il focus e scelta del quattro terzi`() {
        var chosen: VideoFormat? = null

        rule.setContent {
            FvpTheme {
                PlayerFormatPanel(
                    current = VideoFormat.ZOOM,
                    scale = scale,
                    onSelect = { chosen = it },
                )
            }
        }
        rule.waitForIdle()

        // Le quattro voci, con il tag fatto sulla chiave del formato.
        VideoFormat.entries.forEach { format ->
            rule.onNodeWithTag("player_format_option_${format.storageKey}").assertExists()
        }

        // Il formato in vigore ha il focus: le frecce partono da lì.
        rule.onNodeWithTag("player_format_option_zoom").assertIsFocused()
        assertNull(chosen)

        // OK su "4:3": la scelta esce dal pannello.
        rule.onNodeWithTag("player_format_option_4_3")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(VideoFormat.RATIO_4_3, chosen)
    }
}
