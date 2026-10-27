package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Menu della pressione lunga nel player Live: due voci (guida del canale e
 * "I miei canali"), con la voce giusta a seconda che il canale sia già nella
 * lista personale. Niente simulazione del telecomando: lo stato osservato è
 * cambiato con `runOnIdle` e i pulsanti tv-material si attivano con l'azione
 * di click.
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
        var myChannelsOpened by mutableStateOf(false)

        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                    PlayerLongPressMenuContent(
                        channelName = "Nebbia TV",
                        inMyChannels = inMyChannels,
                        scale = scale,
                        onGuide = { guideOpened = true },
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
    }
}
