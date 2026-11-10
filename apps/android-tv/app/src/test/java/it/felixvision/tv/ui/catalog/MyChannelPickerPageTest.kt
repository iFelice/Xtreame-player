package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.channels.MyChannelSelection
import it.felixvision.tv.data.channels.myChannelPickerGroups
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
 * Pagina di scelta multipla dei canali con la selezione vera: OK su una
 * categoria **entra** nei suoi canali senza spuntare nulla, OK su un canale lo
 * spunta, la pressione lunga sulla categoria spunta tutto il gruppo. La
 * selezione è quella del chiamante, come in `FvpMainScreen`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class MyChannelPickerPageTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun stream(id: String, categoryId: String?, name: String = "Canale $id") = LiveStream(
        num = null,
        name = name,
        streamId = id,
        categoryId = categoryId,
    )

    private val categories = listOf(
        Category(categoryId = "1", categoryName = "Serie A"),
        Category(categoryId = "2", categoryName = "Sport"),
    )

    private val streams = listOf(
        stream("a", "1"),
        stream("b", "1"),
        stream("s", "2"),
    )

    @Test
    fun `OK sulla categoria entra nei canali senza spuntare niente`() {
        val groups = myChannelPickerGroups(categories, streams)
        var selection by mutableStateOf(emptyList<String>())
        rule.setContent {
            FvpTheme {
                MyChannelPickerPage(
                    adding = true,
                    groups = groups,
                    checkedIds = selection,
                    scale = scale,
                    onToggleStream = { selection = MyChannelSelection.toggle(selection, it) },
                    onToggleGroup = { selection = MyChannelSelection.toggleAll(selection, it.streamIds) },
                    onToggleAll = {
                        selection = MyChannelSelection.toggleEvery(
                            selection,
                            groups.flatMap { group -> group.streamIds },
                        )
                    },
                    onConfirm = {},
                    onBack = {},
                )
            }
        }
        rule.waitForIdle()

        // All'apertura il focus è sulla prima categoria.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).assertIsFocused()

        // OK entra: il focus va al primo canale, la selezione resta vuota.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).assertIsFocused()
        assertTrue(selection.isEmpty())

        // OK sul canale lo spunta.
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        assertEquals(listOf("a"), selection)
        // Il tasto di conferma compare solo con una scelta e dice quanti sono.
        rule.onNodeWithTag(MY_CHANNEL_PICKER_CONFIRM_TAG).assertIsDisplayed()
        rule.onNodeWithText(MyChannelPickerTexts.confirmLabel(adding = true, count = 1))
            .assertIsDisplayed()
    }

    @Test
    fun `la pressione lunga sulla categoria spunta tutto il gruppo`() {
        val groups = myChannelPickerGroups(categories, streams)
        var selection by mutableStateOf(emptyList<String>())
        rule.setContent {
            FvpTheme {
                MyChannelPickerPage(
                    adding = true,
                    groups = groups,
                    checkedIds = selection,
                    scale = scale,
                    onToggleStream = { selection = MyChannelSelection.toggle(selection, it) },
                    onToggleGroup = { selection = MyChannelSelection.toggleAll(selection, it.streamIds) },
                    onToggleAll = {
                        selection = MyChannelSelection.toggleEvery(
                            selection,
                            groups.flatMap { group -> group.streamIds },
                        )
                    },
                    onConfirm = {},
                    onBack = {},
                )
            }
        }
        rule.waitForIdle()

        // La pressione lunga è il tasto menu/OK tenuto premuto: l'handler del
        // progetto la riconosce dal tasto Menu, che qui è il modo stabile.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).performKeyInput { pressKey(Key.Menu) }
        rule.waitForIdle()

        assertEquals(listOf("a", "b"), selection)
        assertFalse(selection.contains("s"))

        // Con la pressione lunga ancora una volta il gruppo si svuota: è un
        // interruttore, come nei Contenuti protetti.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).performKeyInput { pressKey(Key.Menu) }
        rule.waitForIdle()
        assertTrue(selection.isEmpty())
    }
}
