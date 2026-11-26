package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onFirst
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pagina "Impostazioni › Connessione remota": il QR con il codice spostato qui
 * dal riquadro Account, e "Mostra un nuovo codice" come unico pulsante (quindi
 * sempre focalizzabile e con il tasto Indietro che resta nella pagina).
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsRemotePageTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun showPage(
        state: PairingPanelState = PairingPanelState(),
        onRenewCode: () -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                SettingsRemotePage(
                    pairing = state,
                    scale = scale,
                    onRenewCode = onRenewCode,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `la pagina mostra il pannello del QR e il pulsante per un codice nuovo`() {
        showPage()

        rule.onNodeWithTag(SETTINGS_PAGE_REMOTE_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Connessione remota")
        rule.onNodeWithTag(SETTINGS_REMOTE_SECTION_TAG).assertIsDisplayed()
        rule.onNodeWithText("Abbinamento da telefono").assertIsDisplayed()
        // "Mostra un nuovo codice" riceve il focus d'ingresso.
        rule.onNodeWithTag(SETTINGS_REMOTE_RENEW_TAG)
            .assertTextEquals(SETTINGS_REMOTE_RENEW_LABEL)
        rule.onNodeWithTag(SETTINGS_REMOTE_RENEW_TAG).assertIsFocused()
    }

    @Test
    fun `Mostra un nuovo codice chiede un codice nuovo`() {
        var renews = 0
        showPage(onRenewCode = { renews++ })

        rule.onNodeWithTag(SETTINGS_REMOTE_RENEW_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)

        assertEquals(1, renews)
    }

    @Test
    fun `con il codice scaduto il pulsante resta e il pannello lo dice`() {
        showPage(state = PairingPanelState(isExpired = true))

        rule.onAllNodesWithText("Codice scaduto").onFirst().assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_REMOTE_RENEW_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_REMOTE_RENEW_TAG).assertIsFocused()
    }
}
