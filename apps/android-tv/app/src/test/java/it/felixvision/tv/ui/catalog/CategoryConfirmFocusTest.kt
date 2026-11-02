@file:OptIn(androidx.compose.ui.test.ExperimentalTestApi::class)

package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
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
 * mentre il focus iniziale sulla voce si chiede con `requestFocus`.
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

        // OK senza lasciar passare i 300 ms del debounce: la categoria cambia
        // comunque, e il focus va sulla prima (qui unica) copertina.
        rule.mainClock.autoAdvance = false
        category.performSemanticsAction(SemanticsActions.OnClick)
        rule.mainClock.advanceTimeBy(100)
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()

        rule.onNodeWithTag("film_category_001").assertIsSelected()
        rule.onNodeWithTag("film_201").assertIsDisplayed().assertIsFocused()
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
        emptyCategory.performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        // Nessuna copertina da focalizzare: il focus resta sulla voce, la
        // categoria è quella scelta e la colonna resta aperta.
        rule.onNodeWithTag("film_category_002").assertIsSelected().assertIsFocused()
        rule.onNodeWithTag("film_category_column_expanded").assertIsDisplayed()
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

        rule.mainClock.autoAdvance = false
        category.performSemanticsAction(SemanticsActions.OnClick)
        rule.mainClock.advanceTimeBy(100)
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()

        rule.onNodeWithTag("serie_category_001").assertIsSelected()
        rule.onNodeWithTag("serie_301").assertIsDisplayed().assertIsFocused()
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
        emptyCategory.performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithTag("serie_category_002").assertIsSelected().assertIsFocused()
        rule.onNodeWithTag("serie_category_column_expanded").assertIsDisplayed()
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

        rule.mainClock.autoAdvance = false
        category.performSemanticsAction(SemanticsActions.OnClick)
        rule.mainClock.advanceTimeBy(100)
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()

        rule.onNodeWithTag("live_category_live1").assertIsSelected()
        rule.onNodeWithTag("live_channel_101").assertIsDisplayed().assertIsFocused()
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
        emptyCategory.performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithTag("live_category_live3").assertIsSelected().assertIsFocused()
        rule.onNodeWithTag("live_category_column_expanded").assertIsDisplayed()
        rule.onNodeWithText("Nessun canale").assertIsDisplayed()
        rule.onNodeWithTag("live_channel_101").assertDoesNotExist()
    }
}
