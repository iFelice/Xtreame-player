package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/** Integrazione delle categorie locali con le due sezioni e il telecomando. */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class NovitaCategoryNavigationTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val categories = listOf(Category(categoryId = "001", categoryName = "Categoria uno"))
    private val film = VodStream(streamId = "001", name = "Film uno", categoryId = "001")
    private val recentFilm = VodStream(streamId = "002", name = "Film recente", categoryId = "002")
    private val serie = SeriesItem(seriesId = "001", name = "Serie uno", categoryId = "001")
    private val recentSerie = SeriesItem(seriesId = "002", name = "Serie recente", categoryId = "002")

    /**
     * OK su una categoria, come il telecomando: la categoria diventa subito
     * quella scelta e il focus passa alla prima copertina.
     */
    private fun confirmCategory(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }

    @Test
    fun `Film apre Novita con preferiti e visto poi passa alla categoria del provider`() {
        val focus = FocusRequester()
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(film, recentFilm),
                    recentStreams = listOf(recentFilm),
                    scale = scale,
                    contentFocusRequester = focus,
                    favorites = listOf(FavoriteItem(id = "vod_002", type = "vod", title = "Film recente", categoryId = "002")),
                    progress = mapOf(ProgressKeys.movie("002") to WatchProgress(markedWatched = true)),
                )
            }
        }
        rule.waitForIdle()
        val novita = rule.onNodeWithTag("film_category_$NOVITA_CATEGORY_ID")
        val provider = rule.onNodeWithTag("film_category_001")
        novita.assertIsSelected()
        assertTrue(novita.fetchSemanticsNode().boundsInRoot.top < provider.fetchSemanticsNode().boundsInRoot.top)
        rule.onNodeWithTag("film_002").assertIsDisplayed()
        rule.onNodeWithTag("film_001").assertDoesNotExist()
        rule.onNodeWithTag("film_002_fav_star", useUnmergedTree = true).assertExists()
        rule.onNodeWithTag("film_002_seen", useUnmergedTree = true).assertExists()

        // OK sulla categoria del provider: il focus va sulla sua prima
        // copertina, che si vede e si può confermare con il telecomando.
        confirmCategory("film_category_001")
        provider.assertIsSelected()
        rule.onNodeWithTag("film_001").assertIsDisplayed().assertIsFocused()
        rule.onNodeWithTag("film_002").assertDoesNotExist()

        // OK su Novità: torna il film recente, con il focus.
        confirmCategory("film_category_$NOVITA_CATEGORY_ID")
        novita.assertIsSelected()
        rule.onNodeWithTag("film_002").assertIsFocused()
        rule.onNodeWithTag("film_002").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.waitForIdle()
        novita.assertIsFocused()
    }

    @Test
    fun `Serie apre Novita con preferiti poi passa alla categoria del provider`() {
        val focus = FocusRequester()
        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = listOf(serie, recentSerie),
                    recentSeries = listOf(recentSerie),
                    scale = scale,
                    contentFocusRequester = focus,
                    favorites = listOf(FavoriteItem(id = "series_002", type = "series", title = "Serie recente", categoryId = "002")),
                )
            }
        }
        rule.waitForIdle()
        val novita = rule.onNodeWithTag("serie_category_$NOVITA_CATEGORY_ID")
        val provider = rule.onNodeWithTag("serie_category_001")
        novita.assertIsSelected()
        assertTrue(novita.fetchSemanticsNode().boundsInRoot.top < provider.fetchSemanticsNode().boundsInRoot.top)
        rule.onNodeWithTag("serie_002").assertIsDisplayed()
        rule.onNodeWithTag("serie_001").assertDoesNotExist()
        rule.onNodeWithTag("serie_002_fav_star", useUnmergedTree = true).assertExists()

        // OK sulla categoria del provider: il focus va sulla sua prima
        // copertina, che si vede e si può confermare con il telecomando.
        confirmCategory("serie_category_001")
        provider.assertIsSelected()
        rule.onNodeWithTag("serie_001").assertIsDisplayed().assertIsFocused()
        rule.onNodeWithTag("serie_002").assertDoesNotExist()

        // OK su Novità: torna la serie recente, con il focus.
        confirmCategory("serie_category_$NOVITA_CATEGORY_ID")
        novita.assertIsSelected()
        rule.onNodeWithTag("serie_002").assertIsFocused()
        rule.onNodeWithTag("serie_002").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.waitForIdle()
        novita.assertIsFocused()
    }

    @Test
    fun `Film con Novita vuota permette di raggiungere una categoria del provider`() {
        val focus = FocusRequester()
        rule.setContent {
            FvpTheme {
                FilmSection(categories = categories, streams = listOf(film), scale = scale, contentFocusRequester = focus)
            }
        }
        rule.waitForIdle()
        rule.onNodeWithText("Nessun film").assertIsDisplayed()
        rule.runOnIdle { focus.requestFocus() }
        rule.waitForIdle()
        val novita = rule.onNodeWithTag("film_category_$NOVITA_CATEGORY_ID")
        novita.assertIsFocused()
        novita.performKeyInput { pressKey(Key.DirectionDown) }
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
        rule.onNodeWithTag("film_category_001").assertIsFocused()
        rule.onNodeWithTag("film_001").assertIsDisplayed()
    }

    @Test
    fun `Serie con Novita vuota permette di raggiungere una categoria del provider`() {
        val focus = FocusRequester()
        rule.setContent {
            FvpTheme {
                SerieSection(categories = categories, series = listOf(serie), scale = scale, contentFocusRequester = focus)
            }
        }
        rule.waitForIdle()
        rule.onNodeWithText("Nessuna serie").assertIsDisplayed()
        rule.runOnIdle { focus.requestFocus() }
        rule.waitForIdle()
        val novita = rule.onNodeWithTag("serie_category_$NOVITA_CATEGORY_ID")
        novita.assertIsFocused()
        novita.performKeyInput { pressKey(Key.DirectionDown) }
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
        rule.onNodeWithTag("serie_category_001").assertIsFocused()
        rule.onNodeWithTag("serie_001").assertIsDisplayed()
    }
}
