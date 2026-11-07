package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.vpn.VpnActionCard
import it.felixvision.tv.ui.settings.vpn.VpnActionCardIconTintKey
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class VpnActionCardTest {
    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private fun iconTint(iconTag: String) = rule
        .onNodeWithTag(iconTag, useUnmergedTree = true)
        .fetchSemanticsNode()
        .config[VpnActionCardIconTintKey]

    @Test
    fun `icona del server attivo resta arancione anche con il focus`() {
        rule.setContent {
            FvpTheme {
                VpnActionCard(
                    text = "Server attivo",
                    onClick = {},
                    scale = UiScale(1f),
                    modifier = Modifier.testTag("vpn_active_server_card"),
                    iconOrange = true,
                    iconTag = "vpn_active_server_icon",
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("vpn_active_server_card").requestFocus()
        rule.onNodeWithTag("vpn_active_server_card").assertIsFocused()
        assertEquals(FvpColors.Orange, iconTint("vpn_active_server_icon"))
    }

    @Test
    fun `icona delle altre card mantiene il verde quando ha il focus`() {
        rule.setContent {
            FvpTheme {
                VpnActionCard(
                    text = "Altro server",
                    onClick = {},
                    scale = UiScale(1f),
                    modifier = Modifier.testTag("vpn_other_server_card"),
                    iconTag = "vpn_other_server_icon",
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("vpn_other_server_card").requestFocus()
        rule.onNodeWithTag("vpn_other_server_card").assertIsFocused()
        assertEquals(FvpColors.GreenFocus, iconTint("vpn_other_server_icon"))
    }
}
