package it.felixvision.tv.ui.access

import androidx.activity.ComponentActivity
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.ui.focus.FocusDirection
import androidx.compose.ui.focus.FocusManager
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performImeAction
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.FvpKeyboardRequestedKey
import it.felixvision.tv.ui.components.FvpTextField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpFieldEditorTag
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Campi del login con la tastiera "su OK".
 *
 * Si compone la vera [LoginScreen] (stato senza dati, abbinamento in
 * preparazione: niente rete) e si osservano due cose: la proprietà semantica
 * [FvpKeyboardRequestedKey] di ogni campo e il focus del testo modificabile.
 * La tastiera si apre solo quando il testo riceve il focus, quindi "testo con
 * il focus" vuol dire "tastiera richiesta"; nessuna tastiera reale.
 *
 * Nessuna simulazione del telecomando: Su/Giù passano dal [FocusManager], OK
 * dall'azione semantica OnClick del campo (la stessa funzione del tasto OK) e i
 * tasti "Avanti"/"Fine" dall'azione IME del testo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class LoginKeyboardOnOkTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun keyboardRequested(expected: Boolean) =
        SemanticsMatcher.expectValue(FvpKeyboardRequestedKey, expected)

    @Test
    fun `i campi del login chiedono la tastiera solo con OK`() {
        lateinit var focusManager: FocusManager
        rule.setContent {
            focusManager = LocalFocusManager.current
            FvpTheme {
                LoginScreen(
                    state = AccessUiState(screen = Screen.Access),
                    scale = scale,
                    onSubmit = {},
                    onServerChange = {},
                    onUsernameChange = {},
                    onPasswordChange = {},
                    onTogglePasswordVisible = {},
                    onPairingVisible = {},
                    onPairingHidden = {},
                )
            }
        }
        rule.waitForIdle()

        val server = rule.onNodeWithTag(LOGIN_SERVER_FIELD_TAG)
        val serverText = rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_SERVER_FIELD_TAG))
        val username = rule.onNodeWithTag(LOGIN_USERNAME_FIELD_TAG)
        val usernameText = rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_USERNAME_FIELD_TAG))
        val password = rule.onNodeWithTag(LOGIN_PASSWORD_FIELD_TAG)
        val passwordText = rule.onNodeWithTag(fvpFieldEditorTag(LOGIN_PASSWORD_FIELD_TAG))

        // Apertura: focus su "Server o codice" e nessuna tastiera.
        server.assertIsFocused()
        server.assert(keyboardRequested(false))
        serverText.assertIsNotFocused()
        username.assert(keyboardRequested(false))
        password.assert(keyboardRequested(false))

        // Giù e Su spostano il focus tra i campi senza chiedere la tastiera.
        rule.runOnIdle { assertTrue(focusManager.moveFocus(FocusDirection.Down)) }
        username.assertIsFocused()
        username.assert(keyboardRequested(false))
        usernameText.assertIsNotFocused()
        rule.runOnIdle { assertTrue(focusManager.moveFocus(FocusDirection.Up)) }
        server.assertIsFocused()
        server.assert(keyboardRequested(false))
        serverText.assertIsNotFocused()

        // OK: il campo chiede la tastiera e il testo riceve il focus.
        server.performSemanticsAction(SemanticsActions.OnClick)
        server.assert(keyboardRequested(true))
        serverText.assertIsFocused()

        // "Avanti": tastiera chiusa, focus sul campo successivo che aspetta OK.
        serverText.performImeAction()
        username.assertIsFocused()
        username.assert(keyboardRequested(false))
        usernameText.assertIsNotFocused()
        server.assert(keyboardRequested(false))
        serverText.assertIsNotFocused()

        // Utente: OK e poi "Avanti" portano alla password, ancora senza tastiera.
        username.performSemanticsAction(SemanticsActions.OnClick)
        username.assert(keyboardRequested(true))
        usernameText.assertIsFocused()
        usernameText.performImeAction()
        password.assertIsFocused()
        password.assert(keyboardRequested(false))
        passwordText.assertIsNotFocused()
        username.assert(keyboardRequested(false))

        // Password: OK apre, "Fine" chiude e il focus resta sulla password.
        password.performSemanticsAction(SemanticsActions.OnClick)
        password.assert(keyboardRequested(true))
        passwordText.assertIsFocused()
        passwordText.performImeAction()
        password.assertIsFocused()
        password.assert(keyboardRequested(false))
        passwordText.assertIsNotFocused()
    }

    @Test
    fun `senza openKeyboardOnOk il campo resta come prima`() {
        val focus = FocusRequester()
        rule.setContent {
            FvpTheme {
                FvpTextField(
                    label = "Cerca nel catalogo",
                    state = rememberTextFieldState(),
                    placeholder = "Canale, film o serie",
                    scale = scale,
                    focusRequester = focus,
                    fieldTag = PLAIN_FIELD_TAG,
                )
            }
        }
        rule.waitForIdle()

        rule.runOnIdle { focus.requestFocus() }

        // Il focus va direttamente al testo (tastiera al solo focus, come la
        // ricerca): nessun contenitore in attesa di OK.
        rule.onNodeWithTag(PLAIN_FIELD_TAG).assertIsFocused()
        rule.onNodeWithTag(PLAIN_FIELD_TAG).assert(SemanticsMatcher.keyNotDefined(FvpKeyboardRequestedKey))
        rule.onNodeWithTag(fvpFieldEditorTag(PLAIN_FIELD_TAG)).assertDoesNotExist()
    }

    private companion object {
        const val PLAIN_FIELD_TAG = "plain_field"
    }
}
