package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import it.felixvision.tv.vpn.VpnState
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pagina "Impostazioni › VPN", aperta dalla card VPN della griglia: il riquadro
 * [VpnSettingsSection] invariato, con uno stato finto (nessun controller e nessun
 * backend WireGuard).
 *
 * I pulsanti tv-material si premono con l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class VpnSettingsSectionTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun show(
        vpnState: VpnState,
        onToggle: () -> Unit = {},
        onConfigure: () -> Unit = {},
        onRemove: () -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                SettingsVpnPage(
                    vpnState = vpnState,
                    scale = scale,
                    onVpnToggle = onToggle,
                    onVpnConfigure = onConfigure,
                    onVpnRemove = onRemove,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `senza configurazione c'è solo Configura`() {
        show(VpnState.NoConfig)

        rule.onNodeWithTag(SETTINGS_PAGE_VPN_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › VPN")
        rule.onNodeWithTag(SETTINGS_VPN_SECTION_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("Nessuna configurazione")
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertTextEquals("Configura")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_VPN_REMOVE_TAG).assertDoesNotExist()
        // Il focus d'ingresso dalla card va su "Configura".
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertIsFocused()
    }

    @Test
    fun `connessa mostra il server e i tre pulsanti`() {
        show(VpnState.Connected("server-prova"))

        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("Connessa · server-prova")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).assertTextEquals("Spegni")
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertTextEquals("Cambia configurazione")
        rule.onNodeWithTag(SETTINGS_VPN_REMOVE_TAG).assertTextEquals("Rimuovi")
    }

    @Test
    fun `spenta propone Accendi e il pulsante chiama il callback`() {
        var toggles = 0
        show(VpnState.Off, onToggle = { toggles++ })

        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("Spenta")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).assertTextEquals("Accendi")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, toggles)
    }

    @Test
    fun `non connessa mostra il motivo e propone Spegni`() {
        show(VpnState.NotConnected("VPN non connessa"))

        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("VPN non connessa")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).assertTextEquals("Spegni")
    }

    @Test
    fun `Cambia configurazione e Rimuovi chiamano i loro callback`() {
        var configures = 0
        var removes = 0
        show(VpnState.Off, onConfigure = { configures++ }, onRemove = { removes++ })

        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag(SETTINGS_VPN_REMOVE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, configures)
        assertEquals(1, removes)
    }

    @Test
    fun `la riga di stato copre tutti gli stati`() {
        assertEquals("Nessuna configurazione", vpnStatusLine(VpnState.NoConfig))
        assertEquals("Spenta", vpnStatusLine(VpnState.Off))
        assertEquals("Connessione…", vpnStatusLine(VpnState.Connecting))
        assertEquals("Connessa · server-prova", vpnStatusLine(VpnState.Connected("server-prova")))
        assertEquals("VPN non connessa", vpnStatusLine(VpnState.NotConnected("VPN non connessa")))
    }
}
