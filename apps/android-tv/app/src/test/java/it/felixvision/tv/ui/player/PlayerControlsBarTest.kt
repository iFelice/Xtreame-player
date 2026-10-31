package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
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
        var positionMillis by mutableStateOf(0L)

        rule.setContent {
            val progressFocus = remember { FocusRequester() }
            val audioFocus = remember { FocusRequester() }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                progressFocus.requestFocus()
            }
            FvpTheme {
                PlayerControlsBar(
                    state = PlayerUiState(isPlaying = true, positionMillis = positionMillis, durationMillis = 120_000L),
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
        rule.onNodeWithTag("player_progress_knob").assertExists()
        rule.onNodeWithTag("player_play_state").assertTextEquals("▶")

        // Qualifier mdpi: 1 px = 1 dp. Il pallino resta centrato in altezza e
        // non esce dalla barra all'inizio, a metà e alla fine della riproduzione.
        fun trackBounds() = rule.onNodeWithTag("player_progress_track").fetchSemanticsNode().boundsInRoot
        fun knobBounds() = rule.onNodeWithTag("player_progress_knob").fetchSemanticsNode().boundsInRoot
        var track = trackBounds()
        var knob = knobBounds()
        assertEquals(8f, track.height, 0.5f)
        assertEquals(14f, knob.width, 0.5f)
        assertEquals(14f, knob.height, 0.5f)
        assertEquals(track.center.y, knob.center.y, 0.5f)
        assertEquals(track.left, knob.left, 0.5f)

        rule.runOnIdle { positionMillis = 60_000L }
        track = trackBounds()
        knob = knobBounds()
        assertEquals(track.center.x, knob.center.x, 1f)
        rule.runOnIdle { positionMillis = 120_000L }
        track = trackBounds()
        knob = knobBounds()
        assertEquals(track.right, knob.right, 0.5f)

        progress.performKeyInput { pressKey(Key.DirectionCenter) }
        progress.performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        assertEquals(1, toggleCalls)
        assertEquals(listOf(1), seekCalls)

        progress.performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        val audio = rule.onNodeWithTag("player_audio_button")
        audio.assertIsFocused()
        rule.onNodeWithTag("player_progress_knob").assertDoesNotExist()
        assertEquals(4f, trackBounds().height, 0.5f)
        audio.performKeyInput { pressKey(Key.DirectionUp) }
        rule.waitForIdle()
        progress.assertIsFocused()
        rule.onNodeWithTag("player_progress_knob").assertExists()
    }
}
