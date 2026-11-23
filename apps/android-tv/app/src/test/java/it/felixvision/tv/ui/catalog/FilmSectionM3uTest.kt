package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Voci della Lista M3U nella griglia Film: OK avvia subito la riproduzione,
 * senza scheda di dettaglio, e la stella dei preferiti si vede sulla card.
 *
 * Un solo `setContent` per test; identificativi dimostrativi.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class FilmSectionM3uTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Categoria e voce come le costruisce `M3uLibrary` per la sorgente `m3u_1a2b`. */
    private val categoryId = "m3u_1a2b:m3u_cat_0"
    private val stream = VodStream(
        name = "Puntata 1",
        streamId = "m3u_1a2b:cafe",
        categoryId = categoryId,
    )

    private fun confirmCategory() {
        rule.onNodeWithTag("film_category_$categoryId")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }

    @Test
    fun `OK su una voce M3U avvia la riproduzione senza dettaglio`() {
        var played: VodStream? = null
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = listOf(Category(categoryId = categoryId, categoryName = "Scaletta")),
                    streams = listOf(stream),
                    scale = scale,
                    onPlayFilm = { film -> played = film },
                )
            }
        }
        rule.waitForIdle()
        confirmCategory()
        rule.onNodeWithTag("film_${stream.streamId}").assertIsDisplayed()

        rule.onNodeWithTag("film_${stream.streamId}")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(stream.streamId, played?.streamId)
        // Nessuna scheda di dettaglio: il pulsante "Riproduci" della scheda non
        // esiste, l'azione è già partita.
        rule.onNodeWithTag("detail_play").assertDoesNotExist()
    }

    @Test
    fun `una voce M3U nei preferiti mostra la stella`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = listOf(Category(categoryId = categoryId, categoryName = "Scaletta")),
                    streams = listOf(stream),
                    scale = scale,
                    favorites = listOf(
                        FavoriteItem(
                            id = "vod_${stream.streamId}",
                            type = "vod",
                            title = stream.name,
                            categoryId = categoryId,
                        ),
                    ),
                )
            }
        }
        rule.waitForIdle()
        confirmCategory()

        rule.onNodeWithTag("film_${stream.streamId}", useUnmergedTree = true).assertExists()
        rule.onNodeWithTag("film_${stream.streamId}_fav_star", useUnmergedTree = true)
            .assertExists()
    }
}
