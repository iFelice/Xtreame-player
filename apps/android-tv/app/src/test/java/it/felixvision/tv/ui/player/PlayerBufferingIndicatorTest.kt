package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Indicatore di caricamento del player: un anello con l'arco verde che gira,
 * al posto della scritta "Caricamento…". I due test compongono l'indicatore
 * da solo (un solo setContent ciascuno); il terzo verifica la funzione pura
 * da cui [PlayerScreen] ricava la richiesta, con il ritardo di comparsa.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerBufferingIndicatorTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `indicatore espone il tag player_buffering`() {
        // Con l'animazione infinita l'orologio va tenuto a mano, altrimenti
        // il waitForIdle non si stabilizza mai.
        rule.mainClock.autoAdvance = false
        rule.setContent {
            FvpTheme {
                PlayerBufferingIndicator(scale = scale, modifier = Modifier)
            }
        }
        rule.mainClock.advanceTimeBy(16)
        rule.onNodeWithTag("player_buffering").assertExists()
    }

    @Test
    fun `lanimazione avanza per due secondi senza errori`() {
        rule.mainClock.autoAdvance = false
        rule.setContent {
            FvpTheme {
                PlayerBufferingIndicator(scale = scale, modifier = Modifier)
            }
        }
        // Due secondi a 16 ms per frame: più giri completi dell'arco, che
        // con RepeatMode.Restart riparte da zero senza inversioni né NaN.
        rule.mainClock.advanceTimeBy(2_000)
        rule.onNodeWithTag("player_buffering").assertExists()
    }

    @Test
    fun `la richiesta vale solo con buffering senza errore ne modale`() {
        assertTrue(
            PlayerBufferingIndicatorDefaults.isRequested(
                isBuffering = true,
                hasError = false,
                hasModalOverlay = false,
            ),
        )
        assertFalse(
            PlayerBufferingIndicatorDefaults.isRequested(
                isBuffering = false,
                hasError = false,
                hasModalOverlay = false,
            ),
        )
        assertFalse(
            PlayerBufferingIndicatorDefaults.isRequested(
                isBuffering = true,
                hasError = true,
                hasModalOverlay = false,
            ),
        )
        assertFalse(
            PlayerBufferingIndicatorDefaults.isRequested(
                isBuffering = true,
                hasError = false,
                hasModalOverlay = true,
            ),
        )
        // L'indicatore compare dopo 300 ms di buffering, non prima.
        assertEquals(300L, PlayerBufferingIndicatorDefaults.SHOW_DELAY_MILLIS)
    }
}
