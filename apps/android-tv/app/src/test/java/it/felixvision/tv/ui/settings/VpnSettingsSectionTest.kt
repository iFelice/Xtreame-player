package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performScrollTo
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
 * Riquadro "VPN" delle Impostazioni con uno stato finto: nessun controller e
 * nessun backend WireGuard. I pulsanti tv-material si premono con l'azione
 * semantica `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class VpnSettingsSectionTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Stato di esempio: nessun dato reale, solo valori dimostrativi. */
    private fun settingsState() = SettingsUiState(
        username = "demo",
        serverLabel = "http://server.esempio:8080",
        status = "Attivo",
        expiresAtEpochSeconds = null,
        maxConnections = 2,
        activeConnections = 1,
    )

    private fun show(
        vpnState: VpnState,
        onToggle: () -> Unit = {},
        onConfigure: () -> Unit = {},
        onRemove: () -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                SettingsContent(
                    state = settingsState(),
                    scale = scale,
                    vpnState = vpnState,
                    onVpnToggle = onToggle,
                    onVpnConfigure = onConfigure,
                    onVpnRemove = onRemove,
                )
            }
        }
        rule.waitForIdle()
        // Le Impostazioni scorrono: il riquadro VPN sta più in basso.
        rule.onNodeWithTag(SETTINGS_VPN_SECTION_TAG).performScrollTo()
    }

    @Test
    fun `senza configurazione c'è solo Configura`() {
        show(VpnState.NoConfig)

        rule.onNodeWithTag(SETTINGS_VPN_SECTION_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("Nessuna configurazione")
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertTextEquals("Configura")
        rule.onNodeWithTag(SETTINGS_VPN_TOGGLE_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_VPN_REMOVE_TAG).assertDoesNotExist()
    }

    @Test
    fun `connessa mostra il server e i tre pulsanti`() {
        show(VpnState.Connected("NL-FREE#1"))

        rule.onNodeWithTag(SETTINGS_VPN_STATUS_TAG).assertTextEquals("Connessa · NL-FREE#1")
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
        assertEquals("Connessa · NL-FREE#1", vpnStatusLine(VpnState.Connected("NL-FREE#1")))
        assertEquals("VPN non connessa", vpnStatusLine(VpnState.NotConnected("VPN non connessa")))
    }
}
