package it.felixvision.tv.ui.settings.protection

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.ComponentActivity
import androidx.compose.ui.input.key.KeyEvent
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertTextContains
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyPress
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Tastierino PIN a 4 cifre: pallini che si riempiono, conferma con OK dal
 * tastierino a schermo, "⌫" che toglie una cifra e tasti numerici del
 * telecomando accettati (con conferma automatica alla quarta cifra).
 *
 * Un solo `setContent` per test, pulsanti tv-material attivati con l'azione
 * di click dalla semantica.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PinEntryTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `tastierino riempie i pallini e OK consegna il PIN`() {
        var submitted: String? = null
        rule.setContent {
            FvpTheme {
                PinEntry(title = "Inserisci il PIN", scale = scale, onConfirm = { submitted = it })
            }
        }
        rule.waitForIdle()

        // Focus iniziale sul tasto "1".
        rule.onNodeWithTag("pin_key_1").assertIsFocused()

        for (tag in listOf("pin_key_1", "pin_key_2", "pin_key_3", "pin_key_4")) {
            rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
            rule.waitForIdle()
        }
        for (index in 0..3) {
            rule.onNodeWithTag("pin_dot_$index").assertTextContains("●")
        }
        // Dal tastierino a schermo la conferma non è automatica: OK resta da premere.
        assertNull(submitted)

        rule.onNodeWithTag("pin_key_ok").performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals("1234", submitted)
    }

    @Test
    fun `backspace toglie una cifra`() {
        var submitted: String? = null
        rule.setContent {
            FvpTheme {
                PinEntry(title = "Crea il PIN", scale = scale, onConfirm = { submitted = it })
            }
        }
        rule.waitForIdle()

        for (tag in listOf("pin_key_1", "pin_key_2", "pin_key_3", "pin_key_4")) {
            rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
            rule.waitForIdle()
        }
        rule.onNodeWithTag("pin_dot_3").assertTextContains("●")

        rule.onNodeWithTag("pin_key_back").performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("pin_dot_3").assertTextContains("○")
        rule.onNodeWithTag("pin_dot_2").assertTextContains("●")
        // Nessun invio: le cifre non sono quattro.
        assertNull(submitted)
    }

    @Test
    fun `tasti numerici del telecomando riempiono i pallini e confermano da soli`() {
        var submitted: String? = null
        rule.setContent {
            FvpTheme {
                PinEntry(title = "Inserisci il PIN", scale = scale, onConfirm = { submitted = it })
            }
        }
        rule.waitForIdle()

        // Il tasto remoto arriva attraverso il focus (primo elemento: "1").
        val target = rule.onNodeWithTag("pin_key_1")

        fun remoteKey(code: Int) {
            target.performKeyPress(
                KeyEvent(AndroidKeyEvent(0L, 0L, AndroidKeyEvent.ACTION_DOWN, code, 0)),
            )
            target.performKeyPress(
                KeyEvent(AndroidKeyEvent(0L, 0L, AndroidKeyEvent.ACTION_UP, code, 0)),
            )
            rule.waitForIdle()
        }

        remoteKey(AndroidKeyEvent.KEYCODE_7)
        remoteKey(AndroidKeyEvent.KEYCODE_3)
        remoteKey(AndroidKeyEvent.KEYCODE_9)
        rule.onNodeWithTag("pin_dot_2").assertTextContains("●")
        rule.onNodeWithTag("pin_dot_3").assertTextContains("○")
        assertNull(submitted)

        remoteKey(AndroidKeyEvent.KEYCODE_5)
        // Quarta cifra dal telecomando: conferma immediata, senza OK.
        assertEquals("7395", submitted)
        // Dopo la conferma i pallini ripartono vuoti.
        rule.onNodeWithTag("pin_dot_0").assertTextContains("○")
    }
}
