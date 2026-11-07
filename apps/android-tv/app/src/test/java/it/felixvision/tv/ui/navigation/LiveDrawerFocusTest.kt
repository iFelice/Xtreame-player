package it.felixvision.tv.ui.navigation

import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.ui.catalog.LiveSection
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import kotlinx.coroutines.launch
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class LiveDrawerFocusTest {
    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val categories = listOf(Category(categoryId = "001", categoryName = "Notizie"))
    private val streams = listOf(LiveStream(streamId = "101", name = "Canale 1", categoryId = "001"))

    private fun isFocused(tag: String): Boolean = runCatching {
        rule.onNodeWithTag(tag).fetchSemanticsNode().config[SemanticsProperties.Focused]
    }.getOrDefault(false)

    @Test
    fun `dopo Back dalle categorie freccia destra dal drawer riporta al primo canale`() {
        rule.setContent {
            FvpTheme {
                val drawerState = rememberDrawerState(initialValue = DrawerValue.Open)
                val contentFocusRequester = remember { FocusRequester() }
                val drawerFocusHandle = remember { DrawerFocusHandle() }
                val scope = rememberCoroutineScope()

                BackHandler {
                    scope.launch { drawerState.setValue(DrawerValue.Open) }
                }

                FvpNavigationDrawer(
                    selected = DrawerSection.Live,
                    onSelect = {},
                    scale = scale,
                    drawerState = drawerState,
                    contentFocusRequester = contentFocusRequester,
                    drawerFocusHandle = drawerFocusHandle,
                ) {
                    LiveSection(
                        categories = categories,
                        streams = streams,
                        scale = scale,
                        onSelectChannel = {},
                        onLongPressCategory = {},
                        contentFocusRequester = contentFocusRequester,
                        // Il requester è assegnato alla prima riga da LiveSection;
                        // non va duplicato anche sul contenitore.
                        modifier = Modifier.fillMaxSize(),
                    )
                }
            }
        }
        rule.waitForIdle()

        // Entrata in Live dal drawer.
        rule.onNodeWithTag("drawer_Live").assertIsFocused()
        rule.onNodeWithTag("drawer_Live").performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitUntil(timeoutMillis = 5_000L) { isFocused("live_channel_101") }
        rule.onNodeWithTag("live_channel_101").assertIsFocused()

        // Canale -> categoria -> Indietro riapre il drawer sulla voce Live.
        rule.onNodeWithTag("live_channel_101").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.onNodeWithTag("live_category_001").assertIsFocused()
        rule.onNodeWithTag("live_category_001").performKeyInput { pressKey(Key.Back) }
        rule.waitUntil(timeoutMillis = 5_000L) { isFocused("drawer_Live") }
        rule.onNodeWithTag("drawer_Live").assertIsFocused()

        // La seconda entrata deve raggiungere il canale, non lasciare il focus nel drawer.
        rule.onNodeWithTag("drawer_Live").performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitUntil(timeoutMillis = 5_000L) { isFocused("live_channel_101") }
        rule.onNodeWithTag("live_channel_101").assertIsFocused()
    }
}
