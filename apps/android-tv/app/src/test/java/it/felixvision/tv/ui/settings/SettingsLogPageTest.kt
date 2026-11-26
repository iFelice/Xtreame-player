package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.log.IssueEntry
import it.felixvision.tv.data.log.IssueLog
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.time.ZoneId
import java.time.ZonedDateTime
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pagina "Impostazioni › Log": le righe dei problemi permanenti con data e ora,
 * il pulsante "Svuota log" e, a Log vuoto, il solo "Torna alle card".
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsLogPageTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun millis(day: Int, hour: Int, minute: Int): Long = ZonedDateTime.of(
        2026, 11, day, hour, minute, 0, 0, ZoneId.systemDefault(),
    ).toInstant().toEpochMilli()

    private val entries = listOf(
        IssueEntry(
            key = IssueLog.outOfIndexKey("m2"),
            message = "lista.m3u: non presente nell'indice",
            sinceMillis = millis(23, 18, 42),
        ),
        IssueEntry(
            key = IssueLog.KEY_INDEX,
            message = "Indice delle liste: non raggiungibile",
            sinceMillis = millis(24, 9, 5),
        ),
    )

    private fun showPage(
        entries: List<IssueEntry>,
        onClear: () -> Unit = {},
        onBack: () -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                SettingsLogPage(
                    entries = entries,
                    scale = scale,
                    onClear = onClear,
                    onBack = onBack,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `le righe hanno data, ora e messaggio, dalla più vecchia`() {
        showPage(entries)

        rule.onNodeWithTag(SETTINGS_PAGE_LOG_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Log")
        rule.onNodeWithTag(logRowTag(0))
            .assertTextEquals("23/11 18:42 — lista.m3u: non presente nell'indice")
        rule.onNodeWithTag(logRowTag(1))
            .assertTextEquals("24/11 09:05 — Indice delle liste: non raggiungibile")
        // A Log pieno non c'è "Torna alle card": il ritorno è il tasto Indietro.
        rule.onNodeWithTag(SETTINGS_LOG_BACK_TAG).assertDoesNotExist()
    }

    @Test
    fun `Svuota log è il primo elemento e chiama l'azione`() {
        var cleared = 0
        showPage(entries, onClear = { cleared++ })

        rule.onNodeWithTag(SETTINGS_LOG_CLEAR_TAG).assertTextEquals(SETTINGS_LOG_CLEAR_LABEL)
        rule.onNodeWithTag(SETTINGS_LOG_CLEAR_TAG).assertIsFocused()

        rule.onNodeWithTag(SETTINGS_LOG_CLEAR_TAG).performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, cleared)
    }

    @Test
    fun `a Log vuoto resta solo Torna alle card`() {
        var back = 0
        showPage(emptyList(), onBack = { back++ })

        rule.onNodeWithText(SETTINGS_LOG_EMPTY_TEXT).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_LOG_CLEAR_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_LOG_LIST_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_LOG_BACK_TAG).assertTextEquals(SETTINGS_LOG_BACK_LABEL)
        rule.onNodeWithTag(SETTINGS_LOG_BACK_TAG).assertIsFocused()

        rule.onNodeWithTag(SETTINGS_LOG_BACK_TAG).performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, back)
    }
}
