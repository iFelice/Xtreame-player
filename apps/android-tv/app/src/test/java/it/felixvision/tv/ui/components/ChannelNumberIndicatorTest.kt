package it.felixvision.tv.ui.components

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.playback.ChannelNumberOverlay
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Verifica in Robolectric della composizione dell'indicatore numerico in alto a
 * destra (cifre grandi e messaggio "Canale N non trovato"), senza simulazione
 * del telecomando.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ChannelNumberIndicatorTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `indicatore assente a riposo e aggiornato tra cifre e canale non trovato`() {
        var overlay by mutableStateOf<ChannelNumberOverlay?>(null)

        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize()) {
                    ChannelNumberIndicator(
                        overlay = overlay,
                        scale = scale,
                        modifier = Modifier.align(Alignment.TopEnd),
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(CHANNEL_NUMBER_OVERLAY_TAG).assertDoesNotExist()

        overlay = ChannelNumberOverlay.Digits(digits = "248", updatedAtMillis = 1_000L)
        rule.waitForIdle()

        rule.onNodeWithTag(CHANNEL_NUMBER_OVERLAY_TAG).assertIsDisplayed()
        rule.onNodeWithTag(CHANNEL_NUMBER_DIGITS_TAG).assertIsDisplayed()
        rule.onNodeWithText("248").assertIsDisplayed()
        rule.onNodeWithTag(CHANNEL_NUMBER_NOT_FOUND_TAG).assertDoesNotExist()

        overlay = ChannelNumberOverlay.NotFound(number = 999, shownAtMillis = 3_000L)
        rule.waitForIdle()

        rule.onNodeWithTag(CHANNEL_NUMBER_OVERLAY_TAG).assertIsDisplayed()
        rule.onNodeWithTag(CHANNEL_NUMBER_NOT_FOUND_TAG).assertIsDisplayed()
        rule.onNodeWithText("Canale 999 non trovato").assertIsDisplayed()
        rule.onNodeWithTag(CHANNEL_NUMBER_DIGITS_TAG).assertDoesNotExist()

        overlay = null
        rule.waitForIdle()

        rule.onNodeWithTag(CHANNEL_NUMBER_OVERLAY_TAG).assertDoesNotExist()
    }
}
