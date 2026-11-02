@file:OptIn(androidx.compose.ui.test.ExperimentalTestApi::class)

package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.onRoot
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.printToString
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * OK su una voce della colonna delle categorie: la categoria film/serie/live
 * diventa subito quella scelta, senza i 300 ms del debounce che valgono per il
 * solo spostamento del focus, e il focus passa al primo elemento della sezione
 * (prima copertina per Film e Serie, primo canale per Live).
 *
 * Con una categoria vuota non c'è nessun elemento da focalizzare: il focus resta
 * sulla voce della colonna, che resta aperta.
 *
 * Un solo `setContent` per test. Le voci della colonna sono `DenseListItem` di
 * tv-material: OK si prova con l'azione semantica `SemanticsActions.OnClick`,
 * mentre il focus iniziale sulla voce si chiede con `requestFocus`. Il focus
 * sul primo elemento si attende (la griglia si ricompone con la nuova
 * categoria): l'attesa è limitata a 2 s e il messaggio nomina il passo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class CategoryConfirmFocusTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    // Categorie di prova: la "001" ha un contenuto, la "002" è vuota.
    private val categories = listOf(
        Category(categoryId = "001", categoryName = "Categoria uno"),
        Category(categoryId = "002", categoryName = "Categoria vuota"),
    )

    private val film = VodStream(streamId = "201", name = "Film di prova", categoryId = "001")

    private val serie = SeriesItem(seriesId = "301", name = "Serie di prova", categoryId = "001")

    private val liveChannel = LiveStream(streamId = "101", name = "Canale di prova", categoryId = "live1")

    private val liveCategories = listOf(
        Category(categoryId = "live1", categoryName = "Canali uno"),
        Category(categoryId = "live3", categoryName = "Canali vuota"),
    )

    /**
     * OK su una voce, come il telecomando: la categoria deve cambiare subito,
     * senza i 300 ms del debounce che valgono per il solo spostamento del focus.
     *
     * La voce è un `DenseListItem` di tv-material: l'azione semantica
     * `SemanticsActions.OnClick` è la via principale. Se l'evento non viene
     * consegnato, il tasto OK (DPad center) sulla voce fa la stessa cosa.
     */
    private fun pressOk(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }

    /** OK con il tasto del telecomando, come riserva del click. */
    private fun pressOkKey(tag: String) {
        rule.onNodeWithTag(tag).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
    }

    private fun tagExists(tag: String): Boolean =
        rule.onAllNodesWithTag(tag, useUnmergedTree = true).fetchSemanticsNodes().isNotEmpty()

    /** Tag presenti nell'albero, in ordine: rende leggibile un errore della CI. */
    private fun tagsInTree(): String = runCatching {
        val printed: String = rule.onRoot(useUnmergedTree = true).printToString()
        printed.lines()
            .filter { "Tag:" in it }
            .map { it.substringAfter("Tag:").trim().removeSurrounding("'") }
            .joinToString(", ")
    }.getOrElse { "albero non leggibile: ${it.message}" }

    /** La categoria [categoryId] è quella applicata alla colonna. */
    private fun isApplied(prefix: String, categoryId: String): Boolean =
        tagExists("${prefix}_category_column_${categoryId}_expanded") ||
            tagExists("${prefix}_category_column_${categoryId}_collapsed")

    /**
     * Applica OK sulla voce [tag] e verifica che la categoria cambi: prima con
     * il click, poi, se non arriva, con il tasto OK del telecomando.
     */
    private fun confirmUntilApplied(step: String, tag: String, prefix: String, categoryId: String) {
        pressOk(tag)
        if (isApplied(prefix, categoryId)) return
        pressOkKey(tag)
        if (isApplied(prefix, categoryId)) return
        throw AssertionError(
            "[$step] la categoria $categoryId non è stata applicata. Tag nell'albero: ${tagsInTree()}",
        )
    }

    private fun assertFocus(step: String, tag: String) {
        try {
            rule.onNodeWithTag(tag).assertIsFocused()
        } catch (error: AssertionError) {
            throw AssertionError("[$step] $tag non ha il focus", error)
        }
    }

    @Test
    fun `Film OK su una categoria la seleziona subito e dà il focus alla prima copertina`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(film),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        // La sezione si apre su Novità, senza recenti: griglia vuota.
        rule.onNodeWithText("Nessun film").assertIsDisplayed()
        val category = rule.onNodeWithTag("film_category_001")
        category.requestFocus()
        rule.waitForIdle()

        // OK: la categoria cambia subito, senza i 300 ms del debounce che
        // valgono per il solo spostamento del focus.
        confirmUntilApplied("dopo OK", "film_category_001", "film", "001")
        rule.onNodeWithTag("film_category_001").assertIsSelected()
        rule.onNodeWithText("Nessun film").assertDoesNotExist()

        // Il focus passa alla prima (qui unica) copertina.
        rule.waitUntil(timeoutMillis = 2_000) {
            rule.onNodeWithTag("film_201").fetchSemanticsNode()
                .config.contains(SemanticsProperties.Focused)
        }
        assertFocus("dopo OK", "film_201")
        // Con il focus nella griglia la colonna si compatta, come sempre.
        rule.onNodeWithTag("film_category_column_collapsed").assertExists()
    }

    @Test
    fun `Film OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(film),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        val emptyCategory = rule.onNodeWithTag("film_category_002")
        emptyCategory.requestFocus()
        rule.waitForIdle()
        // Nessuna copertina da focalizzare: il focus resta sulla voce, la
        // categoria è quella scelta e la colonna resta aperta.
        confirmUntilApplied("categoria vuota", "film_category_002", "film", "002")
        rule.onNodeWithTag("film_category_002").assertIsSelected()
        assertFocus("categoria vuota", "film_category_002")
        rule.onNodeWithTag("film_category_column_collapsed").assertDoesNotExist()
        rule.onNodeWithText("Nessun film").assertIsDisplayed()
        rule.onNodeWithTag("film_201").assertDoesNotExist()
    }

    @Test
    fun `Serie OK su una categoria la seleziona subito e dà il focus alla prima copertina`() {
        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = listOf(serie),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Nessuna serie").assertIsDisplayed()
        val category = rule.onNodeWithTag("serie_category_001")
        category.requestFocus()
        rule.waitForIdle()

        confirmUntilApplied("dopo OK", "serie_category_001", "serie", "001")
        rule.onNodeWithTag("serie_category_001").assertIsSelected()
        rule.onNodeWithText("Nessuna serie").assertDoesNotExist()

        rule.waitUntil(timeoutMillis = 2_000) {
            rule.onNodeWithTag("serie_301").fetchSemanticsNode()
                .config.contains(SemanticsProperties.Focused)
        }
        assertFocus("dopo OK", "serie_301")
        rule.onNodeWithTag("serie_category_column_collapsed").assertExists()
    }

    @Test
    fun `Serie OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = listOf(serie),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        val emptyCategory = rule.onNodeWithTag("serie_category_002")
        emptyCategory.requestFocus()
        rule.waitForIdle()
        confirmUntilApplied("categoria vuota", "serie_category_002", "serie", "002")
        rule.onNodeWithTag("serie_category_002").assertIsSelected()
        assertFocus("categoria vuota", "serie_category_002")
        rule.onNodeWithTag("serie_category_column_collapsed").assertDoesNotExist()
        rule.onNodeWithText("Nessuna serie").assertIsDisplayed()
        rule.onNodeWithTag("serie_301").assertDoesNotExist()
    }

    @Test
    fun `Live OK su una categoria la seleziona subito e dà il focus al primo canale`() {
        rule.setContent {
            FvpTheme {
                LiveSection(
                    categories = liveCategories,
                    streams = listOf(liveChannel),
                    scale = scale,
                    onSelectChannel = {},
                )
            }
        }
        rule.waitForIdle()

        val category = rule.onNodeWithTag("live_category_live1")
        category.requestFocus()
        rule.waitForIdle()

        confirmUntilApplied("dopo OK", "live_category_live1", "live", "live1")
        rule.onNodeWithTag("live_category_live1").assertIsSelected()
        rule.onNodeWithText("Nessun canale").assertDoesNotExist()

        rule.waitUntil(timeoutMillis = 2_000) {
            rule.onNodeWithTag("live_channel_101").fetchSemanticsNode()
                .config.contains(SemanticsProperties.Focused)
        }
        assertFocus("dopo OK", "live_channel_101")
        rule.onNodeWithTag("live_category_column_collapsed").assertExists()
    }

    @Test
    fun `Live OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                LiveSection(
                    categories = liveCategories,
                    streams = listOf(liveChannel),
                    scale = scale,
                    onSelectChannel = {},
                )
            }
        }
        rule.waitForIdle()

        val emptyCategory = rule.onNodeWithTag("live_category_live3")
        emptyCategory.requestFocus()
        rule.waitForIdle()
        confirmUntilApplied("categoria vuota", "live_category_live3", "live", "live3")
        rule.onNodeWithTag("live_category_live3").assertIsSelected()
        assertFocus("categoria vuota", "live_category_live3")
        rule.onNodeWithTag("live_category_column_collapsed").assertDoesNotExist()
        rule.onNodeWithText("Nessun canale").assertIsDisplayed()
        rule.onNodeWithTag("live_channel_101").assertDoesNotExist()
    }
}
