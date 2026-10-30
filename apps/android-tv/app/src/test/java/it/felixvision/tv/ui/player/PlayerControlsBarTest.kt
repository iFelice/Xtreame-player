package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.pressKey
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
class PlayerControlsBarTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `progress toggles seeks and navigates to audio and play state`() {
        var toggleCalls = 0
        val seekCalls = mutableListOf<Int>()

        rule.setContent {
            val progressFocus = remember { FocusRequester() }
            val audioFocus = remember { FocusRequester() }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                progressFocus.requestFocus()
            }
            FvpTheme {
                PlayerControlsBar(
                    state = PlayerUiState(isPlaying = true, durationMillis = 120_000L),
                    scale = UiScale(1f),
                    audioFocusRequester = audioFocus,
                    progressFocusRequester = progressFocus,
                    onTogglePlay = { toggleCalls++ },
                    onSeek = { seekCalls += it },
                    onAudio = {},
                    onSubtitles = {},
                    onVolume = {},
                    onFormat = {},
                )
            }
        }
        rule.waitForIdle()

        val progress = rule.onNodeWithTag("player_progress")
        progress.assertIsFocused()
        rule.onNodeWithTag("player_play_state").assertTextEquals("▶")

        progress.performKeyInput { pressKey(Key.DirectionCenter) }
        progress.performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        assertEquals(1, toggleCalls)
        assertEquals(listOf(1), seekCalls)

        progress.performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        val audio = rule.onNodeWithTag("player_audio_button")
        audio.assertIsFocused()
        audio.performKeyInput { pressKey(Key.DirectionUp) }
        rule.waitForIdle()
        progress.assertIsFocused()
    }
}
