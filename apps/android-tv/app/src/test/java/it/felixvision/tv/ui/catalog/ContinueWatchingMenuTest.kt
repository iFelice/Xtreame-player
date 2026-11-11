package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
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
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Menu della pressione lunga nella riga "Continua a guardare": non toglie più la
 * voce subito, apre "Apri scheda" e "Rimuovi da Continua a guardare".
 * La pressione lunga è quella del test Dpad: keyDown di OK, orologio fermo
 * per 700 ms, keyUp.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ContinueWatchingMenuTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val seriesEntry = ContinueEntry(
        key = "series_301",
        kind = ContinueEntry.KIND_SERIES,
        title = "La serie inventata",
        categoryId = "008",
        seriesId = "301",
        episodeId = "ep-2-3",
        seasonNumber = "2",
        episodeNum = "3",
    )

    private val filmEntry = ContinueEntry(
        key = "vod_201",
        kind = ContinueEntry.KIND_MOVIE,
        title = "Il film inventato",
        categoryId = "007",
        streamId = "201",
    )

    /** Una voce serie (prima, con il focus) e una film; un solo setContent per test. */
    private fun showSection(
        removeCalls: MutableList<String> = mutableListOf(),
        playCalls: MutableList<String> = mutableListOf(),
    ) {
        rule.setContent {
            val contentFocus = remember { FocusRequester() }
            FvpTheme {
                ContinueWatchingRow(
                    entries = listOf(seriesEntry, filmEntry),
                    scale = scale,
                    onPlayEntry = { entry -> playCalls.add(entry.key) },
                    onRemoveEntry = { entry -> removeCalls.add(entry.key) },
                    contentFocusRequester = contentFocus,
                )
                LaunchedEffect(Unit) {
                    withFrameNanos { }
                    runCatching { contentFocus.requestFocus() }
                }
            }
        }
        rule.waitForIdle()
    }

    /** Pressione lunga sul tag dato: OK giù, 700 ms di orologio fermo, OK su. */
    private fun longPressOn(tag: String) {
        rule.mainClock.autoAdvance = false
        rule.onNodeWithTag(tag).performKeyInput { keyDown(Key.Enter) }
        rule.mainClock.advanceTimeBy(700)
        rule.onNodeWithTag(tag).performKeyInput { keyUp(Key.Enter) }
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
    }

    @Test
    fun `OK sulla riga inoltra la ripresa sia del film sia della serie`() {
        val playCalls = mutableListOf<String>()
        showSection(playCalls = playCalls)

        rule.onNodeWithTag("continua_series_301")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag("continua_vod_201")
            .performSemanticsAction(SemanticsActions.OnClick)

        assertEquals(listOf("series_301", "vod_201"), playCalls)
    }

    @Test
    fun `la pressione lunga apre il menu con apri scheda e rimuovi`() {
        val removeCalls = mutableListOf<String>()
        val playCalls = mutableListOf<String>()
        showSection(removeCalls, playCalls)
        // Il focus è sulla prima voce, la serie.
        rule.onNodeWithTag("continua_series_301").assertIsDisplayed()

        longPressOn("continua_series_301")

        rule.onNodeWithTag("continue_menu").assertIsDisplayed()
        rule.onNodeWithText("Apri scheda").assertIsDisplayed()
        rule.onNodeWithText("Rimuovi da Continua a guardare").assertIsDisplayed()
        rule.onNodeWithTag("continue_menu_open").assertIsFocused()
        // Nessuna azione ancora: la pressione lunga non rimuove più da sola.
        assertTrue(removeCalls.isEmpty())
        assertTrue(playCalls.isEmpty())
    }

    @Test
    fun `rimuovi dal menu chiama onRemoveEntry con la voce giusta`() {
        val removeCalls = mutableListOf<String>()
        val playCalls = mutableListOf<String>()
        showSection(removeCalls, playCalls)

        longPressOn("continua_series_301")
        rule.onNodeWithTag("continue_menu_remove")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(listOf("series_301"), removeCalls)
        assertTrue(playCalls.isEmpty())
        rule.onNodeWithTag("continue_menu").assertDoesNotExist()
    }

    @Test
    fun `indietro chiude il menu senza chiamare nulla`() {
        val removeCalls = mutableListOf<String>()
        val playCalls = mutableListOf<String>()
        showSection(removeCalls, playCalls)

        longPressOn("continua_series_301")
        rule.onNodeWithTag("continue_menu").assertIsDisplayed()
        rule.onNodeWithTag("continue_menu").performKeyInput { pressKey(Key.Back) }
        rule.waitForIdle()

        rule.onNodeWithTag("continue_menu").assertDoesNotExist()
        assertTrue(removeCalls.isEmpty())
        assertTrue(playCalls.isEmpty())
    }
}
