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
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
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
 * OK su una voce della colonna delle categorie: la categoria Film/Serie/Live
 * diventa subito quella scelta, senza i 300 ms di debounce che valgono per il
 * solo spostamento del focus, e il focus passa al primo elemento della sezione
 * (prima copertina o primo canale).
 *
 * Con una categoria vuota non c'è nessun elemento da focalizzare: la categoria
 * diventa quella scelta, il focus resta sulla voce e la colonna resta aperta.
 *
 * La prova dell'applicazione è il contenuto: la sezione si apre su Novità (che
 * nei dati di prova ha un contenuto recente), quindi vedere i film/serie/canali
 * della categoria del provider significa che OK l'ha applicata.
 *
 * Un solo `setContent` per test. Le voci e le card sono componenti tv-material:
 * OK si prova con l'azione semantica `SemanticsActions.OnClick`, il focus
 * iniziale sulla voce si chiede con `requestFocus`.
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
    private val recentFilm = VodStream(streamId = "202", name = "Film recente", categoryId = "001")

    private val serie = SeriesItem(seriesId = "301", name = "Serie di prova", categoryId = "001")
    private val recentSerie = SeriesItem(seriesId = "302", name = "Serie recente", categoryId = "001")

    private val liveChannel = LiveStream(streamId = "101", name = "Canale di prova", categoryId = "live1")
    private val otherLiveChannel = LiveStream(streamId = "102", name = "Altro canale", categoryId = "live2")

    private val liveCategories = listOf(
        Category(categoryId = "live1", categoryName = "Canali uno"),
        Category(categoryId = "live3", categoryName = "Canali vuota"),
    )

    /** OK sulla voce [tag] con l'orologio fermo: il debounce di 300 ms non scatta. */
    private fun pressOkWithinDebounce(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        // 100 ms: meno dei 300 ms del debounce del solo spostamento del focus.
        rule.mainClock.advanceTimeBy(100)
        rule.waitForIdle()
    }

    /** Ripristina il tempo automatico e attende il focus sul primo elemento. */
    private fun resumeClockAndAwaitFocus(tag: String) {
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused(tag) }
        rule.onNodeWithTag(tag).assertIsFocused()
    }

    private fun isFocused(tag: String): Boolean = runCatching {
        rule.onNodeWithTag(tag).fetchSemanticsNode().config.contains(SemanticsProperties.Focused)
    }.getOrDefault(false)

    @Test
    fun `Film OK su una categoria la seleziona subito e dà il focus alla prima copertina`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(film),
                    recentStreams = listOf(recentFilm),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        // La sezione si apre su Novità: si vede il film recente, non quello della
        // categoria del provider.
        rule.onNodeWithText("Film recente").assertIsDisplayed()
        rule.onNodeWithText("Film di prova").assertDoesNotExist()
        rule.onNodeWithTag("film_category_001").requestFocus()
        rule.waitForIdle()

        // OK con l'orologio fermo a 100 ms: la categoria è già quella scelta.
        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("film_category_001")
        rule.onNodeWithText("Film di prova").assertIsDisplayed()
        rule.onNodeWithText("Film recente").assertDoesNotExist()

        // Il focus passa alla copertina della categoria confermata.
        resumeClockAndAwaitFocus("film_201")
        rule.onNodeWithTag("film_category_001").assertIsSelected()
    }

    @Test
    fun `Film OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(film),
                    recentStreams = listOf(recentFilm),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Film recente").assertIsDisplayed()
        rule.onNodeWithTag("film_category_002").requestFocus()
        rule.waitForIdle()

        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("film_category_002")
        // Categoria vuota: la griglia passa al messaggio e non resta nessuna
        // copertina della categoria di partenza.
        rule.onNodeWithText("Nessun film").assertIsDisplayed()
        rule.onNodeWithText("Film recente").assertDoesNotExist()
        rule.onNodeWithText("Film di prova").assertDoesNotExist()

        // Nessun elemento da focalizzare: il focus resta sulla voce, la categoria
        // è quella scelta e la colonna resta aperta.
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.onNodeWithTag("film_category_002").assertIsSelected().assertIsFocused()
    }

    @Test
    fun `Serie OK su una categoria la seleziona subito e dà il focus alla prima copertina`() {
        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = listOf(serie),
                    recentSeries = listOf(recentSerie),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Serie recente").assertIsDisplayed()
        rule.onNodeWithText("Serie di prova").assertDoesNotExist()
        rule.onNodeWithTag("serie_category_001").requestFocus()
        rule.waitForIdle()

        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("serie_category_001")
        rule.onNodeWithText("Serie di prova").assertIsDisplayed()
        rule.onNodeWithText("Serie recente").assertDoesNotExist()

        resumeClockAndAwaitFocus("serie_301")
        rule.onNodeWithTag("serie_category_001").assertIsSelected()
    }

    @Test
    fun `Serie OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = listOf(serie),
                    recentSeries = listOf(recentSerie),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Serie recente").assertIsDisplayed()
        rule.onNodeWithTag("serie_category_002").requestFocus()
        rule.waitForIdle()

        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("serie_category_002")
        rule.onNodeWithText("Nessuna serie").assertIsDisplayed()
        rule.onNodeWithText("Serie recente").assertDoesNotExist()
        rule.onNodeWithText("Serie di prova").assertDoesNotExist()

        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.onNodeWithTag("serie_category_002").assertIsSelected().assertIsFocused()
    }

    @Test
    fun `Live OK su una categoria la seleziona subito e dà il focus al primo canale`() {
        rule.setContent {
            FvpTheme {
                LiveSection(
                    categories = liveCategories,
                    streams = listOf(liveChannel, otherLiveChannel),
                    scale = scale,
                    onSelectChannel = {},
                )
            }
        }
        rule.waitForIdle()

        // Live si apre sulla prima categoria: "Canali uno".
        rule.onNodeWithText("Canale di prova").assertIsDisplayed()
        rule.onNodeWithTag("live_category_live1").assertIsSelected()

        // OK su "Canali uno" (già scelta): il focus va al primo canale, senza
        // aspettare il debounce.
        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("live_category_live1")
        resumeClockAndAwaitFocus("live_channel_101")
        rule.onNodeWithTag("live_category_live1").assertIsSelected()
    }

    @Test
    fun `Live OK su una categoria vuota lascia il focus sulla voce e la colonna aperta`() {
        rule.setContent {
            FvpTheme {
                LiveSection(
                    categories = liveCategories,
                    streams = listOf(liveChannel, otherLiveChannel),
                    scale = scale,
                    onSelectChannel = {},
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Canale di prova").assertIsDisplayed()
        rule.onNodeWithTag("live_category_live3").requestFocus()
        rule.waitForIdle()

        rule.mainClock.autoAdvance = false
        pressOkWithinDebounce("live_category_live3")
        // Categoria vuota: l'elenco passa al messaggio.
        rule.onNodeWithText("Nessun canale").assertIsDisplayed()
        rule.onNodeWithText("Canale di prova").assertDoesNotExist()

        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.onNodeWithTag("live_category_live3").assertIsSelected().assertIsFocused()
    }
}
