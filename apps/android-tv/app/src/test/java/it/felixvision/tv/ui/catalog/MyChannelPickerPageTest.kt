package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
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
        var closed = false
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
                    onBack = { closed = true },
                )
            }
        }
        rule.waitForIdle()

        // All'apertura il focus è sulla prima categoria.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).assertIsFocused()

        // OK entra nella categoria: si apre il livello 2 con il focus sul
        // primo canale (non su "Tutta la categoria", che con un OK darebbe
        // subito tutto il gruppo). La selezione resta vuota.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).assertIsFocused()
        rule.onNodeWithTag(myChannelPickerWholeCategoryTag("1")).assertExists()
        assertTrue(selection.isEmpty())
        // Le categorie non aperte non sono più nell'albero: solo i canali di
        // questa categoria, così non si attraversano centinaia di righe.
        rule.onNodeWithTag(myChannelPickerCategoryTag("2")).assertDoesNotExist()
        rule.onNodeWithTag(myChannelPickerStreamTag("s")).assertDoesNotExist()

        // OK sul canale lo spunta.
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        assertEquals(listOf("a"), selection)
        // Il tasto di conferma compare solo con una scelta e dice quanti sono.
        rule.onNodeWithTag(MY_CHANNEL_PICKER_CONFIRM_TAG).assertIsDisplayed()
        rule.onNodeWithText(MyChannelPickerTexts.confirmLabel(adding = true, count = 1))
            .assertIsDisplayed()

        // Indietro dentro la categoria non chiude la pagina: si torna
        // all'elenco con il focus sulla categoria aperta, e la scelta resta.
        rule.onNodeWithTag(MY_CHANNEL_PICKER_BACK_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).assertIsFocused()
        rule.onNodeWithTag(myChannelPickerCategoryTag("2")).assertExists()
        assertEquals(listOf("a"), selection)

        // Il secondo Indietro chiude davvero la pagina.
        rule.onNodeWithTag(MY_CHANNEL_PICKER_BACK_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertTrue(closed)
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
        // La pressione lunga non apre la categoria: si resta sull'elenco.
        rule.onNodeWithTag(myChannelPickerCategoryTag("2")).assertExists()

        // Con la pressione lunga ancora una volta il gruppo si svuota: è un
        // interruttore, come nei Contenuti protetti.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).performKeyInput { pressKey(Key.Menu) }
        rule.waitForIdle()
        assertTrue(selection.isEmpty())
    }

    @Test
    fun `il tasto Indietro del telecomando esce dalla categoria e non chiude la pagina`() {
        val groups = myChannelPickerGroups(categories, streams)
        var selection by mutableStateOf(emptyList<String>())
        var closed = false
        rule.setContent {
            FvpTheme {
                MyChannelPickerPage(
                    adding = true,
                    groups = groups,
                    checkedIds = selection,
                    scale = scale,
                    onToggleStream = { selection = MyChannelSelection.toggle(selection, it) },
                    onToggleGroup = { selection = MyChannelSelection.toggleAll(selection, it.streamIds) },
                    onToggleAll = {},
                    onConfirm = {},
                    onBack = { closed = true },
                )
            }
        }
        rule.waitForIdle()

        // Scende sulla seconda categoria (il focus parte dalla prima) ed entra,
        // poi sceglie un canale.
        rule.onNodeWithTag(myChannelPickerCategoryTag("1"))
            .performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag(myChannelPickerCategoryTag("2")).assertIsFocused()
        rule.onNodeWithTag(myChannelPickerCategoryTag("2"))
            .performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag(myChannelPickerStreamTag("s"))
            .performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        assertEquals(listOf("s"), selection)

        // Indietro del telecomando: si esce dalla categoria, la pagina resta.
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        rule.waitForIdle()
        assertFalse(closed)
        rule.onNodeWithTag(myChannelPickerCategoryTag("1")).assertExists()
        // Il focus torna sulla categoria da cui si è usciti, non sulla prima.
        rule.onNodeWithTag(myChannelPickerCategoryTag("2")).assertIsFocused()
        assertEquals(listOf("s"), selection)

        // Dall'elenco, Indietro chiude la pagina.
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        rule.waitForIdle()
        assertTrue(closed)
    }

    @Test
    fun `i canali già miei si vedono con la TV e non si possono scegliere`() {
        val groups = myChannelPickerGroups(categories, streams, mine = setOf("b"))
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
                    onToggleAll = {},
                    onConfirm = {},
                    onBack = {},
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(myChannelPickerCategoryTag("1"))
            .performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()

        // Il canale è già mio: riga presente con il simbolo della TV, ma non è
        // un canale da spuntare (quindi niente tag della riga selezionabile).
        rule.onNodeWithTag(myChannelPickerAlreadyMineTag("b")).assertExists()
        rule.onNodeWithTag(myChannelPickerStreamTag("b")).assertDoesNotExist()
        rule.onNodeWithContentDescription(MyChannelPickerTexts.ALREADY_MINE).assertExists()

        // Il focus resta sui canali scegliibili: il primo è "a".
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).assertIsFocused()
        assertTrue(selection.isEmpty())
    }

    @Test
    fun `dentro la categoria solo i suoi canali e Tutta la categoria`() {
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
                    onToggleAll = { selection = MyChannelSelection.toggleEvery(selection, groups.flatMap { g -> g.streamIds }) },
                    onConfirm = {},
                    onBack = { },
                )
            }
        }
        rule.waitForIdle()

        // Entra nella categoria "Serie A" (canali a e b).
        rule.onNodeWithTag(myChannelPickerCategoryTag("1"))
            .performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()

        // Solo i canali di questa categoria, più la riga "Tutta la categoria".
        rule.onNodeWithTag(myChannelPickerWholeCategoryTag("1")).assertExists()
        rule.onNodeWithTag(myChannelPickerStreamTag("a")).assertExists()
        rule.onNodeWithTag(myChannelPickerStreamTag("b")).assertExists()
        rule.onNodeWithTag(myChannelPickerStreamTag("s")).assertDoesNotExist()

        // "Tutta la categoria" è la riga sopra i canali e sceglie solo questo
        // gruppo, non gli altri.
        rule.onNodeWithTag(myChannelPickerWholeCategoryTag("1"))
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(listOf("a", "b"), selection)

        // Il canale singolo si toglie e si rimette.
        rule.onNodeWithTag(myChannelPickerStreamTag("a"))
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(listOf("b"), selection)
    }
}
