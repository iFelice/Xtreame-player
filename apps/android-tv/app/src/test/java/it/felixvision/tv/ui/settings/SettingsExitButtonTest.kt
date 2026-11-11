package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.hasScrollAction
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pulsante di uscita dall'account nella pagina "Impostazioni › Account", aperta
 * dalla card Account della griglia.
 *
 * La pagina si compone senza ViewModel né rete ([SettingsAccountPage]): si
 * verifica che il pulsante esista, che stia nel riquadro Account subito dopo la
 * riga "Server", che la pagina scorra e che il pulsante venga attivato. Il
 * riquadro della configurazione da remoto, che sostituisce le credenziali
 * dell'account, sta nella stessa pagina dopo il pulsante di uscita.
 *
 * I pulsanti tv-material non rispondono a `performClick` in Robolectric: si
 * usano le azioni semantiche (`SemanticsActions.OnClick`). Nessuna simulazione
 * del telecomando.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsExitButtonTest {

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

    private fun showPage(onExitClicked: () -> Unit = {}) {
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = settingsState(),
                    scale = scale,
                    onExitClicked = onExitClicked,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `il pulsante di uscita dall'account esiste`() {
        showPage()

        rule.onNodeWithTag(SETTINGS_PAGE_ACCOUNT_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Account")
        rule.onNodeWithText(SETTINGS_EXIT_LABEL).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertHasClickAction()
        // Il vecchio testo, troncato, non deve restare.
        rule.onNodeWithText("Esci").assertDoesNotExist()
        // Il focus d'ingresso dalla card va sul pulsante di uscita.
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertIsFocused()
    }

    @Test
    fun `l'uscita sta nel riquadro Account dopo la riga Server`() {
        showPage()

        val server = rule.onNodeWithTag("settings_server_row").fetchSemanticsNode().boundsInRoot
        val exit = rule.onNodeWithTag(SETTINGS_EXIT_TAG).fetchSemanticsNode().boundsInRoot
        val accountSection = rule.onNodeWithTag(SETTINGS_ACCOUNT_SECTION_TAG).fetchSemanticsNode().boundsInRoot
        val pairingSection = rule.onNodeWithTag(SETTINGS_PAIRING_SECTION_TAG).fetchSemanticsNode().boundsInRoot

        // Subito dopo la riga "Server", dentro il riquadro Account.
        assertTrue("l'uscita non sta sotto la riga Server", exit.top >= server.bottom - 1f)
        // Allineata a sinistra come le righe del riquadro.
        assertTrue("l'uscita non è allineata a sinistra", exit.left <= server.left + 2f)
        // Dentro il riquadro Account, che finisce prima di "Configura da remoto".
        assertTrue("l'uscita non sta nel riquadro Account", exit.bottom <= accountSection.bottom + 1f)
        assertTrue(
            "il riquadro Account non sta sopra la configurazione da remoto",
            accountSection.bottom <= pairingSection.top + 1f,
        )
    }

    @Test
    fun `la pagina scorre e l'uscita chiama l'azione`() {
        var exitClicks = 0
        showPage(onExitClicked = { exitClicks++ })

        // Contenuto scorrevole: così anche gli ultimi pulsanti restano raggiungibili.
        rule.onNodeWithTag(SETTINGS_PAGE_ACCOUNT_TAG).assert(hasScrollAction())

        rule.onNodeWithTag(SETTINGS_EXIT_TAG).performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, exitClicks)
    }
}
