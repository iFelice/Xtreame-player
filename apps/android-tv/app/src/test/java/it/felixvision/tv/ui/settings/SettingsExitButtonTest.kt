package it.felixvision.tv.ui.settings

import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.performSemanticsAction
import androidx.activity.ComponentActivity
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.hasScrollAction
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
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
 * Pulsante di uscita dall'account nelle Impostazioni.
 *
 * La schermata si compone senza ViewModel né rete ([SettingsContent]): si
 * verifica che il pulsante esista, che stia nella stessa riga di "Aggiorna
 * catalogo" subito dopo, che la schermata scorra e che il tocco chiami
 * l'uscita. Nessuna simulazione del telecomando.
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

    @Test
    fun `il pulsante di uscita dall'account esiste`() {
        rule.setContent {
            FvpTheme {
                SettingsContent(state = settingsState(), scale = scale)
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText(SETTINGS_EXIT_LABEL).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertHasClickAction()
        // Il vecchio testo, troncato, non deve restare.
        rule.onNodeWithText("Esci").assertDoesNotExist()
    }

    @Test
    fun `l'uscita sta nella riga dell'aggiornamento, subito dopo`() {
        rule.setContent {
            FvpTheme {
                SettingsContent(state = settingsState(), scale = scale)
            }
        }
        rule.waitForIdle()

        val refresh = rule.onNodeWithTag("settings_refresh").fetchSemanticsNode().boundsInRoot
        val exit = rule.onNodeWithTag(SETTINGS_EXIT_TAG).fetchSemanticsNode().boundsInRoot

        // Stessa riga: si sovrappongono in verticale.
        assertTrue("pulsanti su righe diverse", exit.top < refresh.bottom && refresh.top < exit.bottom)
        // L'uscita viene dopo l'aggiornamento.
        assertTrue("l'uscita non sta dopo l'aggiornamento", exit.left >= refresh.right - 1f)
    }

    @Test
    fun `la schermata scorre e l'uscita chiama l'azione`() {
        var exitClicks = 0
        rule.setContent {
            FvpTheme {
                SettingsContent(
                    state = settingsState(),
                    scale = scale,
                    onExitClicked = { exitClicks++ },
                )
            }
        }
        rule.waitForIdle()

        // Contenuto scorrevole: così anche gli ultimi pulsanti restano raggiungibili.
        rule.onNode(hasScrollAction()).assertExists()

        rule.onNodeWithTag(SETTINGS_EXIT_TAG).performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, exitClicks)
    }
}
