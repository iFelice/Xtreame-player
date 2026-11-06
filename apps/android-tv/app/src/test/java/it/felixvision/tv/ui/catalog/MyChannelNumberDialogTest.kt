package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class MyChannelNumberDialogTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `frecce regolano la posizione proposta durante l'aggiunta`() {
        val channels = (1..49).map { position ->
            val id = position.toString().padStart(3, '0')
            MyChannel(streamId = id, name = "Canale $id")
        }
        val newChannel = MyChannel(streamId = "new", name = "Canale nuovo")
        var confirmedPosition: Int? = null

        rule.setContent {
            FvpTheme {
                Box(Modifier.fillMaxSize()) {
                    MyChannelDialog(
                        channel = newChannel,
                        channels = channels,
                        scale = scale,
                        onInsertAt = { confirmedPosition = it },
                        onMoveUp = {},
                        onMoveDown = {},
                        onRemove = {},
                        onDismiss = {},
                    )
                }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("my_channel_number_dialog").assertIsDisplayed()
        rule.onNodeWithTag("channel_number_hint").assertTextEquals("OK conferma · Indietro annulla")
        rule.onNodeWithTag("channel_number_step_up").assertIsDisplayed()
        rule.onNodeWithTag("channel_number_step_down").assertIsDisplayed()
        rule.onNodeWithTag("channel_number_field").assertIsFocused()
        rule.onNodeWithTag("channel_number_value").assertTextEquals("50")

        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionUp) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("51")
        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionDown) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("50")
        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionDown) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("49")

        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.Enter) }
        assertEquals(49, confirmedPosition)
    }

    @Test
    fun `frecce regolano la posizione durante il cambio numero`() {
        val channels = (1..50).map { position ->
            val id = position.toString().padStart(3, '0')
            MyChannel(streamId = id, name = "Canale $id")
        }
        val channel = channels.last()
        var confirmedPosition: Int? = null

        rule.setContent {
            FvpTheme {
                Box(Modifier.fillMaxSize()) {
                    MyChannelDialog(
                        channel = channel,
                        channels = channels,
                        scale = scale,
                        onInsertAt = { confirmedPosition = it },
                        onMoveUp = {},
                        onMoveDown = {},
                        onRemove = {},
                        onDismiss = {},
                    )
                }
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_change_number")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithTag("channel_number_hint").assertTextEquals("OK conferma · Indietro annulla")
        rule.onNodeWithTag("channel_number_field").assertIsFocused()
        rule.onNodeWithTag("channel_number_value").assertTextEquals("50")
        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionDown) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("49")
        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionUp) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("50")
        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.DirectionUp) }
        rule.onNodeWithTag("channel_number_value").assertTextEquals("51")

        rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.Enter) }
        assertEquals(51, confirmedPosition)
    }
}
