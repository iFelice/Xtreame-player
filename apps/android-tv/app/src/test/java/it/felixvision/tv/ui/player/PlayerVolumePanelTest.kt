package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.volume.PlayerVolume
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerVolumePanelTest {
    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `barra proporzionale conserva livelli icona e valore visualizzato`() {
        val level = mutableIntStateOf(6)
        rule.setContent {
            FvpTheme {
                PlayerVolumePanel(level = level.intValue, scale = UiScale(1f))
            }
        }
        rule.waitForIdle()

        val track = rule.onNodeWithTag("player_volume_bar_track").fetchSemanticsNode().boundsInRoot
        val fill = rule.onNodeWithTag("player_volume_bar_fill").fetchSemanticsNode().boundsInRoot
        assertEquals(track.height * PlayerVolume.levelFraction(6), fill.height, 1f)
        assertEquals(track.bottom, fill.bottom, 1f)
        rule.onNodeWithTag("player_volume_level").assertTextEquals("6")
        rule.onNodeWithTag("player_volume_icon").assertExists()

        rule.runOnIdle { level.intValue = PlayerVolume.MAX_LEVEL }
        rule.waitForIdle()
        val fullTrack = rule.onNodeWithTag("player_volume_bar_track").fetchSemanticsNode().boundsInRoot
        val fullFill = rule.onNodeWithTag("player_volume_bar_fill").fetchSemanticsNode().boundsInRoot
        assertEquals(fullTrack.height, fullFill.height, 1f)
        rule.onNodeWithTag("player_volume_level").assertTextEquals("${PlayerVolume.MAX_LEVEL}")

        rule.runOnIdle { level.intValue = PlayerVolume.MIN_LEVEL }
        rule.waitForIdle()
        rule.onNodeWithTag("player_volume_level").assertTextEquals("0")
        rule.onNodeWithTag("player_volume_icon_muted").assertExists()
    }
}
