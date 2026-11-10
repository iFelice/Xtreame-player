package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.watch.StillWatchingTexts
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Avviso "Stai ancora guardando?": testo del motivo, focus iniziale su "Sì" e
 * due risposte distinte. Come gli altri pannelli del player, con la stessa
 * superficie sopra il video.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerStillWatchingPromptTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `il focus parte da si e i due pulsanti rispondono`() {
        var continued = 0
        var exited = 0
        rule.setContent {
            FvpTheme {
                PlayerStillWatchingPrompt(
                    autoEpisodes = 2,
                    scale = scale,
                    onContinue = { continued++ },
                    onExit = { exited++ },
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(PLAYER_STILL_WATCHING_TAG).assertIsDisplayed()
        rule.onNodeWithTag(PLAYER_STILL_WATCHING_CONTINUE_TAG)
            .assertIsDisplayed()
            .assertIsFocused()
            .assertTextEquals(StillWatchingTexts.CONTINUE)

        rule.onNodeWithTag(PLAYER_STILL_WATCHING_CONTINUE_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, continued)
        assertEquals(0, exited)

        rule.onNodeWithTag(PLAYER_STILL_WATCHING_EXIT_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, exited)
    }

    @Test
    fun `il motivo parla di episodi oppure di due ore`() {
        var shownEpisodes = -1
        rule.setContent {
            FvpTheme {
                PlayerStillWatchingPrompt(
                    autoEpisodes = 2,
                    scale = scale,
                    onContinue = {},
                    onExit = {},
                )
            }
        }
        shownEpisodes = 2
        rule.waitForIdle()
        assertTrue(StillWatchingTexts.reason(shownEpisodes).contains("2 episodi"))
        assertTrue(StillWatchingTexts.reason(0).contains("due ore"))
    }
}
