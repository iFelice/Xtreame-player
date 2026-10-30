package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotFocused
import androidx.compose.ui.test.assertTextContains
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerNextEpisodePromptTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `riquadro mostra il conto e attiva tutte le azioni`() {
        var watchCalls by mutableIntStateOf(0)
        var postponeCalls by mutableIntStateOf(0)
        var cancelCalls by mutableIntStateOf(0)

        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize()) {
                    PlayerNextEpisodePrompt(
                        prompt = NextEpisodePrompt(title = "Episodio successivo", countdownSeconds = 119),
                        scale = scale,
                        onWatchNow = { watchCalls++ },
                        onPostpone = { postponeCalls++ },
                        onCancel = { cancelCalls++ },
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("player_next_title").assertTextContains("1:59")
        rule.onNodeWithTag("player_next_watch").assertIsFocused()
        rule.onNodeWithTag("player_next_postpone").performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag("player_next_cancel").performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag("player_next_watch").performSemanticsAction(SemanticsActions.OnClick)
        rule.runOnIdle {
            assertEquals(1, watchCalls)
            assertEquals(1, postponeCalls)
            assertEquals(1, cancelCalls)
        }
    }

    @Test
    fun `etichetta ridotta mostra il conto senza ricevere il focus`() {
        rule.setContent {
            FvpTheme {
                Box(modifier = Modifier.fillMaxSize()) {
                    PlayerNextEpisodeLabel(
                        prompt = NextEpisodePrompt(
                            title = "Episodio successivo",
                            countdownSeconds = 42,
                            minimized = true,
                        ),
                        scale = scale,
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("player_next_label")
            .assertTextContains("Prossimo episodio tra 0:42")
            .assertIsNotFocused()
    }
}
