@file:OptIn(androidx.compose.ui.test.ExperimentalTestApi::class)

package it.felixvision.tv.ui.detail

import androidx.activity.ComponentActivity
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotFocused
import androidx.compose.ui.test.assertIsNotSelected
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.isFocused
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.EpisodeInfo
import it.felixvision.tv.data.catalog.Season
import it.felixvision.tv.data.catalog.SeriesInfoDetails
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.continuewatching.ContinueEpisode
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.util.concurrent.atomic.AtomicInteger
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Nuova disposizione del dettaglio serie: stagioni sotto la copertina, episodi
 * sempre visibili. Nessuna simulazione del D-pad: OK è l'azione semantica dei
 * controlli tv-material, il focus si chiede con [requestFocus], Indietro è il
 * tasto Back (come gli altri test del dettaglio), non una freccia.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SeriesDetailOverlayTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val dismissCalls = AtomicInteger(0)

    @Test
    fun `senza episodio iniziato seleziona la prima stagione e mostra i suoi episodi`() {
        var open by mutableStateOf(true)
        rule.setContent {
            if (open) {
                Host(
                    info = twoSeasons(),
                    onDismiss = { open = false },
                    // Posizione zero: non è un episodio iniziato.
                    progress = mapOf(
                        ProgressKeys.episode("s2e2") to WatchProgress(
                            positionMillis = 0L,
                            durationMillis = 0L,
                            updatedAtMillis = 9_000L,
                            markedWatched = true,
                        ),
                    ),
                )
            }
        }
        settle()

        rule.onNodeWithTag("serie_detail_root").assertIsDisplayed()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        rule.onNodeWithTag("detail_season_1").assertIsSelected()
        rule.onNodeWithTag("detail_season_2").assertIsNotSelected()
        assertFocusedTag("detail_season_1")
        rule.onNodeWithTag("serie_seasons_list").assertExists()
        rule.onNodeWithTag("serie_episodes_list").assertExists()
        rule.onNodeWithTag("detail_episode_s1e1").assertExists()
        rule.onNodeWithTag("detail_episode_s1e2").assertExists()
        rule.onNodeWithTag("detail_episode_s1e3").assertExists()
        rule.onNodeWithTag("detail_episode_s2e1").assertDoesNotExist()
        rule.onNodeWithTag("detail_episode_s2e2").assertDoesNotExist()
        rule.onNodeWithText("La lanterna").assertExists()
        rule.onNodeWithText("Il molo").assertDoesNotExist()
        rule.onNodeWithText("3 episodi").assertExists()
        rule.onNodeWithText("2 episodi").assertExists()
        rule.onNodeWithText("Anno: 2024").assertExists()
        rule.onNodeWithText("Valutazione: 8.1").assertExists()
        rule.onNodeWithTag("detail_plot").assertExists()
        rule.onNodeWithTag("detail_favorite").assertExists()
        rule.onNodeWithTag("detail_close").assertExists()
        assertLayout()

        // Indietro dalle stagioni chiude il dettaglio.
        pressBack()
        rule.onNodeWithTag("serie_detail_root").assertDoesNotExist()
        assertTrue(!open)
    }

    @Test
    fun `lepisode di continua a guardare seleziona la sua stagione e prende il focus`() {
        rule.setContent {
            Host(
                info = twoSeasons(),
                resumeEpisodeId = "s2e2",
                // Avanzamento più recente su un'altra stagione: non deve vincere.
                progress = mapOf(
                    ProgressKeys.episode("s1e1") to WatchProgress(
                        positionMillis = 180_000L,
                        durationMillis = 2_400_000L,
                        updatedAtMillis = 99_000L,
                    ),
                ),
            )
        }
        settle()

        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        rule.onNodeWithTag("detail_season_1").assertIsNotSelected()
        assertFocusedTag("detail_episode_s2e2")
        rule.onNodeWithTag("detail_season_2").assertIsNotFocused()
        rule.onNodeWithTag("detail_episode_s2e1").assertExists()
        rule.onNodeWithTag("detail_episode_s1e1").assertDoesNotExist()
        rule.onNodeWithText("L'alta marea").assertExists()
        rule.onNodeWithText("La lanterna").assertDoesNotExist()
    }

    @Test
    fun `larchivio continua a guardare della serie batte un'altra serie e l'avanzamento`() {
        val entries = listOf(
            continueEntry(seriesId = "901", episodeId = "altro", updatedAt = 9_000L),
            continueEntry(seriesId = "900", episodeId = "s2e2", updatedAt = 4_000L),
        )
        rule.setContent {
            FvpTheme {
                CompositionLocalProvider(LocalContinueEntries provides entries) {
                    Overlay(info = twoSeasons())
                }
            }
        }
        settle()

        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        assertFocusedTag("detail_episode_s2e2")
        rule.onNodeWithTag("detail_episode_s1e1").assertDoesNotExist()
    }

    @Test
    fun `senza archivio lepisode iniziato piu di recente viene dall'avanzamento`() {
        rule.setContent {
            Host(
                info = twoSeasons(),
                progress = mapOf(
                    ProgressKeys.episode("s1e3") to WatchProgress(
                        positionMillis = 40_000L,
                        durationMillis = 2_000_000L,
                        updatedAtMillis = 100L,
                    ),
                    ProgressKeys.episode("s2e1") to WatchProgress(
                        positionMillis = 80_000L,
                        durationMillis = 2_000_000L,
                        updatedAtMillis = 800L,
                    ),
                    ProgressKeys.episode("s2e2") to WatchProgress(
                        positionMillis = 0L,
                        updatedAtMillis = 9_999L,
                        markedWatched = true,
                    ),
                ),
            )
        }
        settle()

        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        assertFocusedTag("detail_episode_s2e1")
        rule.onNodeWithTag("detail_episode_s2e2").assertExists()
        rule.onNodeWithTag("detail_episode_s1e3").assertDoesNotExist()
        rule.onNodeWithText("Il molo").assertExists()
        rule.onNodeWithText("La carta").assertDoesNotExist()
    }

    @Test
    fun `il focus su una stagione senza OK non cambia gli episodi e OK li cambia`() {
        rule.setContent { Host(info = twoSeasons()) }
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        rule.onNodeWithTag("detail_episode_s1e1").assertExists()

        rule.onNodeWithTag("detail_season_2").requestFocus()
        settle()
        assertFocusedTag("detail_season_2")
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        rule.onNodeWithTag("detail_season_1").assertIsSelected()
        rule.onNodeWithTag("detail_season_2").assertIsNotSelected()
        rule.onNodeWithTag("detail_episode_s1e1").assertExists()
        rule.onNodeWithTag("detail_episode_s1e3").assertExists()
        rule.onNodeWithTag("detail_episode_s2e1").assertDoesNotExist()
        rule.onNodeWithText("La lanterna").assertExists()
        rule.onNodeWithText("Il molo").assertDoesNotExist()

        rule.onNodeWithTag("detail_season_2").performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        rule.onNodeWithTag("detail_season_1").assertIsNotSelected()
        rule.onNodeWithTag("detail_episode_s2e1").assertExists()
        rule.onNodeWithTag("detail_episode_s2e2").assertExists()
        rule.onNodeWithTag("detail_episode_s1e1").assertDoesNotExist()
        assertFocusedTag("detail_episode_s2e1")
        rule.onNodeWithText("Il molo").assertExists()
        rule.onNodeWithText("La lanterna").assertDoesNotExist()
    }

    @Test
    fun `OK sulla stagione da continuare mette il focus su quell'episodio non sul primo`() {
        rule.setContent { Host(info = twoSeasons(), resumeEpisodeId = "s2e2") }
        settle()
        assertFocusedTag("detail_episode_s2e2")

        rule.onNodeWithTag("detail_season_1").performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        rule.onNodeWithTag("detail_season_1").assertIsSelected()
        assertFocusedTag("detail_episode_s1e1")
        rule.onNodeWithTag("detail_episode_s1e2").assertExists()
        rule.onNodeWithTag("detail_episode_s1e3").assertExists()
        rule.onNodeWithTag("detail_episode_s2e2").assertDoesNotExist()

        rule.onNodeWithTag("detail_season_2").performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        rule.onNodeWithTag("detail_episode_s2e1").assertExists()
        assertFocusedTag("detail_episode_s2e2")
        rule.onNodeWithTag("detail_episode_s1e1").assertDoesNotExist()
    }

    @Test
    fun `Indietro dagli episodi torna sulla stagione e Indietro dalle stagioni chiude`() {
        var open by mutableStateOf(true)
        rule.setContent {
            if (open) {
                Host(
                    info = twoSeasons(),
                    resumeEpisodeId = "s2e2",
                    onDismiss = { open = false },
                )
            }
        }
        settle()
        assertFocusedTag("detail_episode_s2e2")
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")

        pressBack()
        rule.onNodeWithTag("serie_detail_root").assertIsDisplayed()
        assertFocusedTag("detail_season_2")
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        rule.onNodeWithTag("detail_episode_s2e2").assertExists()
        rule.onNodeWithText("L'alta marea").assertExists()
        assertTrue(open)

        pressBack()
        rule.onNodeWithTag("serie_detail_root").assertDoesNotExist()
        assertTrue(!open)
    }

    @Test
    fun `una sola stagione resta in elenco con gli episodi gia visibili`() {
        rule.setContent { Host(info = oneSeason()) }
        settle()

        rule.onNodeWithTag("detail_season_1").assertExists()
        rule.onNodeWithTag("detail_season_2").assertDoesNotExist()
        rule.onNodeWithTag("detail_season_1").assertIsSelected()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        rule.onNodeWithTag("detail_episode_only1").assertExists()
        rule.onNodeWithText("1 episodi").assertExists()
        rule.onNodeWithText("Unico faro").assertExists()
        rule.onNodeWithTag("detail_no_seasons").assertDoesNotExist()
        rule.onNodeWithTag("serie_seasons_list").assertExists()
        rule.onNodeWithTag("serie_episodes_list").assertExists()
    }

    @Test
    fun `caricamento errore riprova e serie senza stagioni restano disponibili`() {
        var loading by mutableStateOf(true)
        var error by mutableStateOf<String?>(null)
        var info by mutableStateOf<SeriesInfoResponse?>(null)
        val retries = AtomicInteger(0)
        rule.setContent {
            Host(
                info = info,
                isLoading = loading,
                error = error,
                onRetry = { retries.incrementAndGet() },
            )
        }
        settle()
        rule.onNodeWithTag("detail_loading").assertIsDisplayed()
        rule.onNodeWithText("Caricamento...").assertExists()
        rule.onNodeWithTag("serie_seasons_list").assertDoesNotExist()
        rule.onNodeWithTag("serie_episodes_list").assertDoesNotExist()
        rule.onNodeWithTag("detail_poster").assertExists()

        rule.runOnIdle {
            loading = false
            error = "rete"
        }
        settle()
        rule.onNodeWithTag("detail_loading").assertDoesNotExist()
        rule.onNodeWithTag("detail_error").assertIsDisplayed()
        rule.onNodeWithText("Informazioni non disponibili").assertExists()
        rule.onNodeWithTag("detail_retry").assertIsDisplayed()
        rule.onNodeWithText("Riprova").assertExists()
        rule.onNodeWithTag("detail_retry").performSemanticsAction(SemanticsActions.OnClick)
        settle()
        assertEquals(1, retries.get())

        rule.runOnIdle {
            error = null
            info = SeriesInfoResponse(
                info = SeriesInfoDetails(name = "Il faro di carta", releaseDate = "2020-05-01", rating = "6.0"),
                episodes = emptyMap(),
            )
        }
        settle()
        rule.onNodeWithTag("detail_error").assertDoesNotExist()
        rule.onNodeWithTag("detail_retry").assertDoesNotExist()
        rule.onNodeWithTag("detail_no_seasons").assertExists()
        rule.onNodeWithText("Nessuna stagione disponibile").assertExists()
        rule.onNodeWithTag("serie_seasons_list").assertDoesNotExist()
        rule.onNodeWithTag("serie_episodes_list").assertDoesNotExist()
        rule.onNodeWithText("Anno: 2020").assertExists()
        rule.onNodeWithText("Valutazione: 6.0").assertExists()

        rule.runOnIdle { info = oneSeason() }
        settle()
        rule.onNodeWithTag("detail_no_seasons").assertDoesNotExist()
        rule.onNodeWithTag("detail_season_1").assertExists()
        rule.onNodeWithTag("detail_episode_only1").assertExists()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
    }

    @Test
    fun `uscita dal player rimette il focus sull'episodio appena visto`() {
        var tick by mutableIntStateOf(0)
        var episodeId by mutableStateOf<String?>(null)
        rule.setContent {
            Host(
                info = twoSeasons(),
                refocusTick = tick,
                focusEpisodeId = episodeId,
            )
        }
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 1")
        assertFocusedTag("detail_season_1")

        rule.runOnIdle {
            episodeId = "s2e2"
            tick = 1
        }
        settle()
        rule.onNodeWithTag("detail_episodes_heading").assertTextEquals("Episodi · Stagione 2")
        rule.onNodeWithTag("detail_season_2").assertIsSelected()
        rule.onNodeWithTag("detail_season_1").assertIsNotSelected()
        assertFocusedTag("detail_episode_s2e2")
        rule.onNodeWithTag("detail_episode_s2e1").assertExists()
        rule.onNodeWithTag("detail_episode_s1e1").assertDoesNotExist()
        rule.onNodeWithText("L'alta marea").assertExists()
        rule.onNodeWithText("La lanterna").assertDoesNotExist()
    }

    @Test
    fun `le regole di selezione ignorano posizione zero e serie diverse`() {
        val episodes = twoSeasons().episodes
        assertNull(mostRecentlyStartedEpisodeId(episodes, emptyMap()))
        assertNull(
            mostRecentlyStartedEpisodeId(
                episodes,
                mapOf(ProgressKeys.episode("s2e2") to WatchProgress(positionMillis = 0L, updatedAtMillis = 50L)),
            ),
        )
        assertEquals(
            "s2e1",
            mostRecentlyStartedEpisodeId(
                episodes,
                mapOf(
                    ProgressKeys.episode("s1e1") to WatchProgress(positionMillis = 30_000L, updatedAtMillis = 10L),
                    ProgressKeys.episode("s2e1") to WatchProgress(positionMillis = 30_000L, updatedAtMillis = 20L),
                ),
            ),
        )
        assertEquals("2", seasonNumberOf(episodes, "s2e2"))
        assertNull(seasonNumberOf(episodes, "assente"))
        assertEquals(
            "s2e2",
            continueEpisodeIdForSeries(
                listOf(
                    continueEntry("901", "altro", 99L),
                    continueEntry("900", "s2e2", 10L),
                ),
                "900",
            ),
        )
        assertNull(continueEpisodeIdForSeries(emptyList(), "900"))
    }

    private fun settle() {
        rule.waitForIdle()
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
    }

    private fun assertFocusedTag(expected: String) {
        val expectedIsFocused = try {
            rule.onNodeWithTag(expected).assertIsFocused()
            true
        } catch (_: AssertionError) {
            false
        }
        if (expectedIsFocused) return

        val focusedNodes = rule.onAllNodes(isFocused(), useUnmergedTree = true).fetchSemanticsNodes()
        val actualFocus = focusedNodes.joinToString(separator = "; ") { node ->
            val tag = node.config.getOrElse(SemanticsProperties.TestTag) { "" }
            val text = node.config.getOrElse(SemanticsProperties.Text) { emptyList() }
                .joinToString(separator = " ") { it.text }
            listOfNotNull(
                tag.takeIf { it.isNotBlank() }?.let { "testTag=$it" },
                text.takeIf { it.isNotBlank() }?.let { "text=$it" },
            ).joinToString(", ").ifBlank { node.config.toString() }
        }.ifBlank { "<nessun nodo focalizzato>" }
        val detailVisible = rule.onAllNodesWithTag("serie_detail_root").fetchSemanticsNodes().isNotEmpty()

        assertTrue(
            "Atteso focus su testTag=$expected; focus effettivo: $actualFocus; " +
                "onDismiss chiamato ${dismissCalls.get()} volte; dettaglio visibile=$detailVisible",
            expectedIsFocused,
        )
    }

    private fun pressBack() {
        rule.onNodeWithTag("serie_detail_root").performKeyInput { pressKey(Key.Back) }
        settle()
    }

    private fun assertLayout() {
        val poster = rule.onNodeWithTag("detail_poster").fetchSemanticsNode().boundsInRoot
        val seasons = rule.onNodeWithTag("serie_seasons_list").fetchSemanticsNode().boundsInRoot
        val episodes = rule.onNodeWithTag("serie_episodes_list").fetchSemanticsNode().boundsInRoot
        val heading = rule.onNodeWithTag("detail_episodes_heading").fetchSemanticsNode().boundsInRoot
        val meta = rule.onNodeWithTag("detail_meta").fetchSemanticsNode().boundsInRoot
        val plot = rule.onNodeWithTag("detail_plot").fetchSemanticsNode().boundsInRoot
        assertEquals(poster.left, seasons.left, 2f)
        assertEquals(poster.width, seasons.width, 2f)
        assertTrue(seasons.top >= poster.bottom - 2f)
        assertTrue(episodes.left >= seasons.right - 2f)
        assertTrue(meta.left >= poster.right - 2f)
        assertTrue(plot.top >= meta.top)
        assertTrue(heading.top >= plot.top)
        assertTrue(episodes.top >= heading.top)
    }

    @androidx.compose.runtime.Composable
    private fun Host(
        info: SeriesInfoResponse?,
        isLoading: Boolean = false,
        error: String? = null,
        onDismiss: () -> Unit = {},
        onRetry: () -> Unit = {},
        resumeEpisodeId: String? = null,
        progress: Map<String, WatchProgress> = emptyMap(),
        refocusTick: Int = 0,
        focusEpisodeId: String? = null,
    ) {
        FvpTheme {
            Overlay(
                info = info,
                isLoading = isLoading,
                error = error,
                onDismiss = onDismiss,
                onRetry = onRetry,
                resumeEpisodeId = resumeEpisodeId,
                progress = progress,
                refocusTick = refocusTick,
                focusEpisodeId = focusEpisodeId,
            )
        }
    }

    @androidx.compose.runtime.Composable
    private fun Overlay(
        info: SeriesInfoResponse?,
        isLoading: Boolean = false,
        error: String? = null,
        onDismiss: () -> Unit = {},
        onRetry: () -> Unit = {},
        resumeEpisodeId: String? = null,
        progress: Map<String, WatchProgress> = emptyMap(),
        refocusTick: Int = 0,
        focusEpisodeId: String? = null,
    ) {
        val contentFocus = remember { FocusRequester() }
        SeriesDetailOverlay(
            serie = series(),
            info = info,
            isLoading = isLoading,
            error = error,
            scale = scale,
            isFavorite = false,
            contentFocusRequester = contentFocus,
            onDismiss = {
                dismissCalls.incrementAndGet()
                onDismiss()
            },
            onToggleFavorite = {},
            onPlayEpisode = { _, _ -> },
            onRetry = onRetry,
            refocusTick = refocusTick,
            focusEpisodeId = focusEpisodeId,
            progress = progress,
            resumeEpisodeId = resumeEpisodeId,
        )
    }

    private fun series() = SeriesItem(
        name = "Il faro di carta",
        seriesId = "900",
        plot = "Una storia inventata sul faro di carta.",
        releaseDate = "2024-03-12",
        rating = "8.1",
        categoryId = "001",
    )

    private fun episode(id: String, num: String, title: String) = Episode(
        id = id,
        episodeNum = num,
        title = title,
        containerExtension = "mp4",
        info = EpisodeInfo(plot = "Trama inventata.", duration = "42 min"),
    )

    private fun twoSeasons() = SeriesInfoResponse(
        seasons = listOf(
            Season(seasonNumber = 1, name = "Stagione 1"),
            Season(seasonNumber = 2, name = "Stagione 2"),
        ),
        info = SeriesInfoDetails(
            name = "Il faro di carta",
            plot = "Una storia inventata sul faro di carta.",
            releaseDate = "2024-03-12",
            rating = "8.1",
        ),
        episodes = mapOf(
            "1" to listOf(
                episode("s1e1", "1", "La lanterna"),
                episode("s1e2", "2", "La nebbia"),
                episode("s1e3", "3", "La carta"),
            ),
            "2" to listOf(
                episode("s2e1", "1", "Il molo"),
                episode("s2e2", "2", "L'alta marea"),
            ),
        ),
    )

    private fun oneSeason() = SeriesInfoResponse(
        seasons = listOf(Season(seasonNumber = 1, name = "Stagione 1")),
        info = SeriesInfoDetails(
            name = "Il faro di carta",
            plot = "Una storia inventata sul faro di carta.",
            releaseDate = "2024-03-12",
            rating = "8.1",
        ),
        episodes = mapOf(
            "1" to listOf(episode("only1", "1", "Unico faro")),
        ),
    )

    private fun continueEntry(seriesId: String, episodeId: String, updatedAt: Long) = ContinueEntry.series(
        seriesId = seriesId,
        title = "Titolo inventato",
        poster = null,
        categoryId = "001",
        episode = ContinueEpisode(
            episodeId = episodeId,
            seasonNumber = "2",
            episodeNum = "2",
            title = "Episodio inventato",
            containerExtension = "mp4",
        ),
    ).copy(updatedAtMillis = updatedAt)
}
