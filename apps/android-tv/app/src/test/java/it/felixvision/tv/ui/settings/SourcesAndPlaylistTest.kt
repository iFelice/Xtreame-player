package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.tv.material3.Text
import it.felixvision.tv.data.sources.M3uErrorRow
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.SourceType
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.player.MoviePlaylist
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Sorgenti nella pagina "Impostazioni › Account" e Successivo/Precedente nella
 * coda di una categoria della Lista M3U.
 *
 * - la riga M3U porta il nome del file dell'indirizzo e non l'indirizzo
 *   della lista;
 * - l'interruttore "Mostra" è un pulsante tv-material: si attiva con
 *   `SemanticsActions.OnClick`;
 * - Successivo scorre la coda nell'ordine del file e oltre l'ultima voce non
 *   ricomincia da capo, Precedente non salta all'ultima dalla prima.
 *
 * Un solo `setContent` per test; valori dimostrativi, nessun dato reale.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SourcesAndPlaylistTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val xtreamSource = Source(
        id = "src1",
        type = SourceType.XTREAM,
        label = "S1",
        xtream = StoredCredentials(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo-password",
        ),
    )

    private val m3uSource = Source(
        id = "s2",
        type = SourceType.M3U,
        label = "M1",
        m3uUrl = "http://server.esempio:8080/lista.m3u8",
    )

    @Test
    fun `la riga della Lista M3U mostra il nome del file e non l'indirizzo`() {
        var toggled: Pair<String, Boolean>? = null
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = SettingsUiState(
                        username = "demo",
                        status = "Attivo",
                        sources = listOf(xtreamSource, m3uSource),
                    ),
                    scale = scale,
                    onSourceToggle = { sourceId, enabled -> toggled = sourceId to enabled },
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(SETTINGS_SOURCES_SECTION_TAG).assertExists()
        rule.onNodeWithTag("settings_source_title_S1").assertTextEquals("Account Xtream")
        rule.onNodeWithTag("settings_source_title_M1").assertTextEquals("lista")
        rule.onNodeWithTag("settings_source_row_M1").assertIsDisplayed()

        // L'interruttore spegne la sorgente: la riga resta, l'etichetta pure.
        rule.onNodeWithTag("settings_source_toggle_M1").performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals("s2" to false, toggled)
    }

    @Test
    fun `con una sola sorgente non c'e nessuna etichetta di sorgente`() {
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = SettingsUiState(
                        username = "demo",
                        status = "Attivo",
                        sources = listOf(xtreamSource),
                    ),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("settings_source_title_S1").assertTextEquals("Account Xtream")
        rule.onNodeWithTag("settings_source_title_M1").assertDoesNotExist()
    }

    @Test
    fun `successivo e precedente scorrono la coda del file`() {
        val titles = listOf("Prima", "Seconda", "Terza")
        rule.setContent {
            FvpTheme {
                MovieQueueHarness(titles = titles, scale = scale)
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("queue_title").assertTextEquals("Prima")
        rule.onNodeWithTag("queue_counter").assertTextEquals("1 / 3")

        repeat(2) {
            rule.onNodeWithTag("queue_next").performSemanticsAction(SemanticsActions.OnClick)
            rule.waitForIdle()
        }
        rule.onNodeWithTag("queue_title").assertTextEquals("Terza")
        rule.onNodeWithTag("queue_counter").assertTextEquals("3 / 3")
        // Oltre l'ultima voce non c'è una successiva: il player torna alla
        // schermata precedente, senza ricominciare da capo.
        assertFalse(MoviePlaylist.hasNext(2, titles.size))
        assertEquals(-1, MoviePlaylist.nextIndex(2, titles.size))

        // Precedente torna indietro; sulla prima voce resta la prima.
        rule.onNodeWithTag("queue_previous").performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("queue_title").assertTextEquals("Seconda")

        repeat(2) {
            rule.onNodeWithTag("queue_previous").performSemanticsAction(SemanticsActions.OnClick)
            rule.waitForIdle()
        }
        rule.onNodeWithTag("queue_title").assertTextEquals("Prima")
        assertEquals(0, MoviePlaylist.previousIndex(0, titles.size))
        assertTrue(MoviePlaylist.hasNext(0, titles.size))
    }

    @Test
    fun `una riga di errore per ogni lista in errore`() {
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = SettingsUiState(
                        username = "demo",
                        status = "Attivo",
                        sources = listOf(
                            xtreamSource,
                            m3uSource,
                            Source(id = "s3", type = SourceType.M3U, label = "M2"),
                        ),
                        m3uErrors = listOf(
                            M3uErrorRow(
                                sourceId = "s2",
                                title = "lista",
                                message = "Lista non raggiungibile",
                            ),
                            M3uErrorRow(
                                sourceId = "s3",
                                title = "serie",
                                message = "Lista non trovata (404)",
                            ),
                        ),
                    ),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("settings_sources_error_s2").assertTextEquals(
            "lista: Lista non raggiungibile. Le altre sorgenti restano disponibili.",
        )
        rule.onNodeWithTag("settings_sources_error_s3").assertTextEquals(
            "serie: Lista non trovata (404). Le altre sorgenti restano disponibili.",
        )
    }

    @Test
    fun `il riquadro Sorgenti mostra tutte le liste`() {
        val lists = (1..6).map { index ->
            Source(
                id = "s$index",
                type = SourceType.M3U,
                label = "M$index",
                m3uUrl = "http://server.esempio:8080/lista$index.m3u8",
            )
        }
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = SettingsUiState(
                        username = "demo",
                        status = "Attivo",
                        sources = listOf(xtreamSource) + lists,
                    ),
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(SETTINGS_SOURCES_SECTION_TAG).assertExists()
        rule.onNodeWithTag("settings_source_title_S1").assertTextEquals("Account Xtream")
        lists.forEach { source ->
            rule.onNodeWithTag("settings_source_title_${source.label}")
                .assertTextEquals("lista${source.label.removePrefix("M")}")
            rule.onNodeWithTag("settings_source_toggle_${source.label}").assertExists()
        }
    }
}

/**
 * Banco di prova della coda: due pulsanti che chiamano [MoviePlaylist] come fa
 * il player e il titolo della voce in onda.
 */
@Composable
private fun MovieQueueHarness(titles: List<String>, scale: UiScale) {
    var index by remember { mutableStateOf(0) }
    Column {
        Text(
            text = MoviePlaylist.counter(index, titles.size),
            modifier = Modifier.testTag("queue_counter"),
        )
        Text(
            text = titles[index.coerceIn(0, titles.lastIndex)],
            modifier = Modifier.testTag("queue_title"),
        )
        FvpCompactButton(
            text = "Successivo",
            onClick = {
                val next = MoviePlaylist.nextIndex(index, titles.size)
                if (next >= 0) index = next
            },
            scale = scale,
            modifier = Modifier.testTag("queue_next"),
        )
        FvpCompactButton(
            text = "Precedente",
            onClick = { index = MoviePlaylist.previousIndex(index, titles.size) },
            scale = scale,
            modifier = Modifier.testTag("queue_previous"),
        )
    }

}
