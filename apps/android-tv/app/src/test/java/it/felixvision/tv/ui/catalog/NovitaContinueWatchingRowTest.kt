package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class NovitaContinueWatchingRowTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val film = VodStream(streamId = "001", name = "Film recente")
    private val series = SeriesItem(seriesId = "002", name = "Serie recente")
    private val continueFilm = ContinueEntry.movie(
        streamId = "101",
        title = "Film da continuare",
        poster = null,
        categoryId = "001",
        containerExtension = null,
    )

    private fun longPressOn(tag: String) {
        rule.mainClock.autoAdvance = false
        rule.onNodeWithTag(tag).performKeyInput { keyDown(Key.Enter) }
        rule.mainClock.advanceTimeBy(700)
        rule.onNodeWithTag(tag).performKeyInput { keyUp(Key.Enter) }
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
    }

    @Test
    fun `la riga compare prima dei film e delle serie e il D-pad scende ai film`() {
        rule.setContent {
            val contentFocusRequester = remember { FocusRequester() }
            FvpTheme {
                NovitaSection(
                    recentFilms = listOf(film),
                    recentSeries = listOf(series),
                    continueEntries = listOf(continueFilm),
                    scale = UiScale(1f),
                    contentFocusRequester = contentFocusRequester,
                    modifier = Modifier.fillMaxSize(),
                )
            }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                runCatching { contentFocusRequester.requestFocus() }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("Continua a guardare").assertIsDisplayed()
        rule.onNodeWithTag("continua_vod_101").assertIsFocused()
        rule.onNodeWithTag("novita_films_row").assertIsDisplayed()
        rule.onNodeWithTag("novita_series_row").assertIsDisplayed()

        val continueTop = rule.onNodeWithTag("continua_row").fetchSemanticsNode().boundsInRoot.top
        val filmsTop = rule.onNodeWithTag("novita_films_row").fetchSemanticsNode().boundsInRoot.top
        val seriesTop = rule.onNodeWithTag("novita_series_row").fetchSemanticsNode().boundsInRoot.top
        assertTrue(continueTop < filmsTop)
        assertTrue(filmsTop < seriesTop)

        rule.onNodeWithTag("continua_vod_101").performKeyInput { pressKey(Key.DirectionDown) }
        rule.onNodeWithTag("novita_film_001").assertIsFocused()
    }

    @Test
    fun `senza voci continua la riga scompare e restano le righe correnti di novita`() {
        rule.setContent {
            FvpTheme {
                NovitaSection(
                    recentFilms = listOf(film),
                    recentSeries = listOf(series),
                    continueEntries = emptyList(),
                    scale = UiScale(1f),
                    modifier = Modifier.fillMaxSize(),
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("continua_row").assertDoesNotExist()
        rule.onNodeWithText("Continua a guardare").assertDoesNotExist()
        rule.onNodeWithTag("novita_films_row").assertIsDisplayed()
        rule.onNodeWithTag("novita_series_row").assertIsDisplayed()
    }

    @Test
    fun `rimuovendo lultima voce la riga sparisce e il focus torna ai film`() {
        rule.setContent {
            val contentFocusRequester = remember { FocusRequester() }
            var continueEntries by remember { mutableStateOf(listOf(continueFilm)) }
            FvpTheme {
                NovitaSection(
                    recentFilms = listOf(film),
                    recentSeries = listOf(series),
                    continueEntries = continueEntries,
                    onRemoveContinueEntry = { continueEntries = emptyList() },
                    scale = UiScale(1f),
                    contentFocusRequester = contentFocusRequester,
                    modifier = Modifier.fillMaxSize(),
                )
            }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                runCatching { contentFocusRequester.requestFocus() }
            }
        }
        rule.waitForIdle()

        longPressOn("continua_vod_101")
        rule.onNodeWithTag("continue_menu_remove")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithTag("continua_row").assertDoesNotExist()
        rule.onNodeWithText("Continua a guardare").assertDoesNotExist()
        rule.onNodeWithTag("novita_film_001").assertIsFocused()
    }

    @Test
    fun `OK sulla scheda della riga richiama la callback della voce`() {
        val played = mutableListOf<String>()
        rule.setContent {
            FvpTheme {
                NovitaSection(
                    recentFilms = emptyList(),
                    recentSeries = emptyList(),
                    continueEntries = listOf(continueFilm),
                    onPlayContinueEntry = { played += it.key },
                    scale = UiScale(1f),
                    modifier = Modifier.fillMaxSize(),
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("continua_vod_101")
            .performSemanticsAction(SemanticsActions.OnClick)

        assertTrue(played == listOf("vod_101"))
    }
}
