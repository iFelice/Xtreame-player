package it.felixvision.tv.ui.player

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.KeyEvent
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyPress
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
 * Menu della pressione lunga nel player Live: tre voci (guida del canale,
 * "I miei canali" e "Formato schermo"), con la voce giusta a seconda che il
 * canale sia già nella lista personale. Nel primo test lo stato osservato è
 * cambiato con `runOnIdle` e i pulsanti tv-material si attivano con l'azione di
 * click; il secondo invia eventi OK grezzi per provare il blocco del tasto
 * ancora premuto all'apertura.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerLongPressMenuTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `menu con guida e voce di I miei canali che cambia con la lista`() {
        var inMyChannels by mutableStateOf(false)
        var guideOpened by mutableStateOf(false)
        var formatOpened by mutableStateOf(false)
        var myChannelsOpened by mutableStateOf(false)

        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                    PlayerLongPressMenuContent(
                        channelName = "Nebbia TV",
                        inMyChannels = inMyChannels,
                        scale = scale,
                        onGuide = { guideOpened = true },
                        onFormat = { formatOpened = true },
                        onMyChannels = { myChannelsOpened = true },
                    )
                }
            }
        }
        rule.waitForIdle()

        // Focus iniziale sulla prima voce: la guida.
        rule.onNodeWithTag("player_long_press_guide").assertIsFocused()
        rule.onNodeWithText("Guida del canale").assertIsDisplayed()
        // Canale non ancora nella lista personale: la voce propone l'aggiunta.
        rule.onNodeWithText("Aggiungi a I miei canali").assertIsDisplayed()

        // Canale già in "I miei canali": la voce diventa la modifica.
        rule.runOnIdle { inMyChannels = true }
        rule.waitForIdle()
        rule.onNodeWithText("Modifica in I miei canali").assertIsDisplayed()

        // "Guida del canale" apre la guida, come GUIDE/INFO.
        rule.onNodeWithTag("player_long_press_guide")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertTrue(guideOpened)

        // La seconda voce apre la finestra di "I miei canali".
        rule.onNodeWithTag("player_long_press_my_channels")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertTrue(myChannelsOpened)

        // La terza voce, "Formato schermo", apre il pannello del formato.
        rule.onNodeWithText("Formato schermo").assertIsDisplayed()
        rule.onNodeWithTag("player_long_press_format")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertTrue(formatOpened)
    }

    @Test
    fun `OK tenuto premuto all apertura non attiva la guida e una nuova pressione si`() {
        var guideCalls = 0
        var formatCalls = 0
        var myChannelsCalls = 0

        rule.setContent {
            FvpTheme {
                PlayerLongPressMenu(
                    channelName = "Nebbia TV",
                    inMyChannels = false,
                    scale = scale,
                    onGuide = { guideCalls++ },
                    onFormat = { formatCalls++ },
                    onMyChannels = { myChannelsCalls++ },
                    onDismiss = {},
                )
            }
        }
        rule.waitForIdle()

        val guide = rule.onNodeWithTag("player_long_press_guide")
        guide.assertIsFocused()

        // Il menu si è aperto con OK ancora giù: le ripetizioni e il rilascio
        // arrivano alla finestra e vengono consumati senza attivare la guida.
        assertTrue(guide.performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN, repeatCount = 3)))
        assertTrue(guide.performKeyPress(okKey(AndroidKeyEvent.ACTION_UP)))
        rule.waitForIdle()
        assertEquals(0, guideCalls)
        guide.assertIsFocused()

        // Pressione completa successiva: la guida si apre.
        guide.performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        guide.performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        assertEquals(1, guideCalls)
        assertEquals(0, formatCalls)
        assertEquals(0, myChannelsCalls)
    }

    /** Evento OK del telecomando (DPAD_CENTER) con il conteggio di ripetizioni dato. */
    private fun okKey(action: Int, repeatCount: Int = 0): KeyEvent =
        KeyEvent(
            AndroidKeyEvent(0L, 0L, action, AndroidKeyEvent.KEYCODE_DPAD_CENTER, repeatCount),
        )
}
