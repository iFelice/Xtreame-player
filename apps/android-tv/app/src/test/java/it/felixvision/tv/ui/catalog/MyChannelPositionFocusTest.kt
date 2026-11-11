package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class MyChannelPositionFocusTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `spostando un canale verso l'alto il focus resta sullo slot originale`() {
        val initialChannels = (1..20).map { position ->
            val id = position.toString().padStart(3, '0')
            MyChannel(streamId = id, name = "Canale $id")
        }
        val channels = mutableStateOf(initialChannels)
        val focusChannelId = mutableStateOf<String?>("018")
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
                        focusMyChannelId = focusChannelId.value,
                        focusMyChannelTick = focusChannelTick.intValue,
                        onMyChannelFocusRestored = { focusChannelId.value = null },
                    )
                }
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag("my_channel_018").assertIsDisplayed().assertIsFocused()

        val reordered = MyChannels.moveTo(initialChannels, "018", 12)
        val focusTarget = myChannelFocusTargetAtOriginalPosition(initialChannels, reordered, "018")
        val focusTargetId = checkNotNull(focusTarget).streamId
        assertEquals("017", focusTargetId)
        assertEquals(18, MyChannels.numberOf(reordered, "017"))

        channels.value = reordered
        focusChannelId.value = focusTargetId
        focusChannelTick.intValue += 1
        rule.waitForIdle()

        rule.onNodeWithTag("my_channel_017").assertIsDisplayed().assertIsFocused()
        rule.onNodeWithTag("my_channel_number_017", useUnmergedTree = true).assertTextEquals("18")
    }

    @Test
    fun `spostando un canale verso il basso il focus resta sullo slot originale`() {
        val initialChannels = (1..20).map { position ->
            val id = position.toString().padStart(3, '0')
            MyChannel(streamId = id, name = "Canale $id")
        }
        val reordered = MyChannels.moveTo(initialChannels, "012", 18)

        val focusTarget = myChannelFocusTargetAtOriginalPosition(initialChannels, reordered, "012")

        assertEquals("013", focusTarget?.streamId)
        assertEquals(12, MyChannels.numberOf(reordered, "013"))
    }
}
