package it.felixvision.mobile.ui.access

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performImeAction
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.performTextInput
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.ui.components.FvpPasswordVisibleKey
import it.felixvision.mobile.ui.components.fvpFieldEditorTag
import it.felixvision.mobile.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Compose della schermata di login touch: invio con "Fatto",
 * mostra/nascondi password e messaggio d'errore visibile.
 *
 * Un solo setContent per test; nessuna simulazione di telecomando: i campi
 * ricevono focus con OnClick del contenitore e le azioni IME arrivano dal
 * testo modificabile (tag [fvpFieldEditorTag]). Dati di esempio:
 * http://server.esempio:8080, demo/demo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w411dp-h891dp-port-mdpi")
class LoginScreenTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `invio con Fatto - Avanti cambia campo e Fatto invia il modulo`() {
        var submitted = 0
        var state by mutableStateOf(AccessUiState(screen = Screen.Access))
        rule.setContent {
            FvpTheme {
                AccessScreen(
                    state = state,
                    onSubmit = { submitted += 1 },
                    onServerChange = { state = state.copy(server = it) },
                    onUsernameChange = { state = state.copy(username = it) },
                    onPasswordChange = { state = state.copy(password = it) },
                    onTogglePasswordVisible = {
                        state = state.copy(passwordVisible = !state.passwordVisible)
                    },
                    onPairingVisible = {},
                    onPairingHidden = {},
                    onRenewCode = {},
                )
            }
        }
        rule.waitForIdle()

        // OK sul contenitore: il focus va al testo del campo Server.
        rule.onNodeWithTag(LOGIN_SERVER_FIELD_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_SERVER_FIELD_TAG)).assertIsFocused()

        // "Avanti": dal server al campo Utente.
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_SERVER_FIELD_TAG)).performImeAction()
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_USERNAME_FIELD_TAG)).assertIsFocused()

        // Password: OK, poi "Fatto" invia il modulo.
        rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_PASSWORD_FIELD_TAG)).assertIsFocused()
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_PASSWORD_FIELD_TAG)).performImeAction()
        assertEquals(1, submitted)

        // Anche il pulsante Accedi invia.
        rule.onNodeWithTag(LOGIN_SUBMIT_BUTTON_TAG).performClick()
        assertEquals(2, submitted)
    }

    @Test
    fun `mostra e nascondi password - il pulsante cambia stato del campo`() {
        var state by mutableStateOf(AccessUiState(screen = Screen.Access))
        rule.setContent {
            FvpTheme {
                AccessScreen(
                    state = state,
                    onSubmit = {},
                    onServerChange = { state = state.copy(server = it) },
                    onUsernameChange = { state = state.copy(username = it) },
                    onPasswordChange = { state = state.copy(password = it) },
                    onTogglePasswordVisible = {
                        state = state.copy(passwordVisible = !state.passwordVisible)
                    },
                    onPairingVisible = {},
                    onPairingHidden = {},
                    onRenewCode = {},
                )
            }
        }
        rule.waitForIdle()

        // All'inizio la password è oscurata.
        rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG)
            .assert(SemanticsMatcher.expectValue(FvpPasswordVisibleKey, false))

        // Digitazione demo/demo: OK sul contenitore, poi testo; con "Mostra"
        // il campo passa in chiaro.
        rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_PASSWORD_FIELD_TAG)).performTextInput("demo")
        rule.onNodeWithText("Mostra").performClick()
        rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG)
            .assert(SemanticsMatcher.expectValue(FvpPasswordVisibleKey, true))
        rule.onNodeWithText("Nascondi").assertExists()

        // E torna oscurata con "Nascondi".
        rule.onNodeWithText("Nascondi").performClick()
        rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG)
            .assert(SemanticsMatcher.expectValue(FvpPasswordVisibleKey, false))
        rule.onNodeWithText("Mostra").assertExists()
        assertEquals("demo", state.password)
    }

    @Test
    fun `messaggio d'errore visibile - il campo errori mostra il testo rosso`() {
        val state = AccessUiState(
            screen = Screen.Access,
            errorMessage = "Utente o password non validi.",
        )
        rule.setContent {
            FvpTheme {
                AccessScreen(
                    state = state,
                    onSubmit = {},
                    onServerChange = {},
                    onUsernameChange = {},
                    onPasswordChange = {},
                    onTogglePasswordVisible = {},
                    onPairingVisible = {},
                    onPairingHidden = {},
                    onRenewCode = {},
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(LOGIN_ERROR_TAG).assertIsDisplayed()
        rule.onNodeWithText("Utente o password non validi.").assertIsDisplayed()
    }
}
