package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/** Focus dopo la conferma di rimozione e rientro dalla scheda nella lista Lazy. */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class MyChannelRemovalFocusTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `rimuovi mette focus su annulla, poi sul canale vicino e giu torna alla lista`() {
        val initialChannels = (1..40).map { position ->
            val id = position.toString().padStart(3, '0')
            MyChannel(streamId = id, name = "Canale $id")
        }
        val channels = mutableStateOf(initialChannels)
        val editing = mutableStateOf<MyChannel?>(null)
        val focusChannelId = mutableStateOf<String?>(initialChannels[19].streamId)
        val focusChannelTick = mutableIntStateOf(1)

        rule.setContent {
            FvpTheme {
                Box(Modifier.fillMaxSize()) {
                    FavoritesSection(
                        favorites = emptyList(),
                        scale = scale,
                        onSelectFavorite = {},
                        modifier = Modifier.fillMaxSize(),
                        myChannels = channels.value,
                        onLongPressMyChannel = { editing.value = it },
                        focusMyChannelId = focusChannelId.value,
                        focusMyChannelTick = focusChannelTick.intValue,
                        onMyChannelFocusRestored = { focusChannelId.value = null },
                    )
                    editing.value?.let { channel ->
                        MyChannelDialog(
                            channel = channel,
                            channels = channels.value,
                            scale = scale,
                            onInsertAt = {},
                            onMoveUp = {},
                            onMoveDown = {},
                            onRemove = {
                                val target = myChannelFocusTargetAfterRemoval(
                                    channels = channels.value,
                                    removedStreamId = channel.streamId,
                                )
                                channels.value = MyChannels.remove(channels.value, channel.streamId)
                                focusChannelId.value = target?.streamId ?: channel.streamId
                                focusChannelTick.intValue += 1
                                editing.value = null
                            },
                            onDismiss = { editing.value = null },
                        )
                    }
                }
            }
        }
        rule.waitForIdle()

        // Il ritorno iniziale è al canale 020, già scrolled in vista.
        rule.onNodeWithTag("my_channel_020").assertIsDisplayed().assertIsFocused()
        longPressOn("my_channel_020")
        rule.onNodeWithTag("my_channel_dialog").assertIsDisplayed()
        rule.onNodeWithTag("my_channel_change_number").assertIsFocused()

        // Entrando nella conferma il focus sicuro è subito su Annulla.
        rule.onNodeWithTag("my_channel_remove")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_remove_cancel").assertIsFocused()

        // Destra porta al pulsante distruttivo; confermando la riga sparisce e
        // il focus segue il canale che ne prende il posto, anche nella LazyList.
        rule.onNodeWithTag("my_channel_remove_cancel")
            .performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_remove_confirm").assertIsFocused()
        rule.onNodeWithTag("my_channel_remove_confirm")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_020").assertDoesNotExist()
        rule.onNodeWithTag("my_channel_021").assertIsDisplayed().assertIsFocused()

        // La lista è ancora scorsa: dalla scheda Giù deve prima riportare in
        // vista la prima riga e poi darle il focus.
        rule.onNodeWithTag("my_channel_021")
            .performKeyInput { pressKey(Key.DirectionLeft) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_tab_my_channels").assertIsFocused()
        rule.onNodeWithTag("favorites_tab_my_channels")
            .performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_001").assertIsDisplayed().assertIsFocused()
    }

    @Test
    fun `focus dopo la rimozione sceglie il successivo o il precedente se era lultimo`() {
        val first = MyChannel(streamId = "001", name = "Canale 001")
        val second = MyChannel(streamId = "002", name = "Canale 002")
        val third = MyChannel(streamId = "003", name = "Canale 003")
        val channels = listOf(first, second, third)

        assertEquals(third, myChannelFocusTargetAfterRemoval(channels, second.streamId))
        assertEquals(second, myChannelFocusTargetAfterRemoval(channels, third.streamId))
        assertNull(myChannelFocusTargetAfterRemoval(listOf(first), first.streamId))
        assertNull(myChannelFocusTargetAfterRemoval(channels, "999"))
    }

    private fun longPressOn(tag: String) {
        rule.mainClock.autoAdvance = false
        rule.onNodeWithTag(tag).performKeyInput { keyDown(Key.Enter) }
        rule.mainClock.advanceTimeBy(700)
        rule.onNodeWithTag(tag).performKeyInput { keyUp(Key.Enter) }
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
    }
}
