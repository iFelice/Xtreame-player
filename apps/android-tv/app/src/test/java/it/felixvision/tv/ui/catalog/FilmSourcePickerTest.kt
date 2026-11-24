package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pulsante della sorgente nella sezione Film: compare solo con due sorgenti con
 * contenuti, mostra quale è in uso e passa all'altra. Le categorie e le card non
 * portano etichette di sorgente.
 *
 * Un solo `setContent` per test; identificativi e nomi dimostrativi.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class FilmSourcePickerTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val categoryId = "m3u_all:m3u_cat_0"
    private val stream = VodStream(
        name = "Puntata 1",
        streamId = "s2:cafe",
        categoryId = categoryId,
    )

    private val bothOptions = listOf(
        FilmSourceOption(SectionSourceKeys.XTREAM, "Xtream"),
        FilmSourceOption(SectionSourceKeys.M3U_LISTS, "Liste M3U"),
    )

    private fun confirmCategory() {
        rule.onNodeWithTag("film_category_$categoryId")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }

    @Test
    fun `con due sorgenti la riga apre la finestra e la scelta cambia sorgente`() {
        var chosen: String? = null
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = listOf(Category(categoryId = categoryId, categoryName = "Azione")),
                    streams = listOf(stream),
                    scale = scale,
                    filmSourceOptions = bothOptions,
                    selectedFilmSource = SectionSourceKeys.XTREAM,
                    onSelectFilmSource = { key -> chosen = key },
                )
            }
        }
        rule.waitForIdle()

        // La finestra non c'è finché non si preme OK sulla riga.
        rule.onNodeWithTag(FILM_SOURCE_DIALOG_TAG).assertDoesNotExist()

        rule.onNodeWithTag(FILM_SOURCE_ENTRY_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithTag(FILM_SOURCE_DIALOG_TAG).assertExists()
        // Spunta sulla sorgente in uso, niente sull'altra.
        rule.onNodeWithTag(filmSourceCheckTag(SectionSourceKeys.XTREAM)).assertExists()
        rule.onNodeWithTag(filmSourceCheckTag(SectionSourceKeys.M3U_LISTS)).assertDoesNotExist()

        rule.onNodeWithTag(filmSourceRowTag(SectionSourceKeys.M3U_LISTS))
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(SectionSourceKeys.M3U_LISTS, chosen)
        // Scelta fatta: la finestra si chiude.
        rule.onNodeWithTag(FILM_SOURCE_DIALOG_TAG).assertDoesNotExist()
    }

    @Test
    fun `il testo della sorgente in uso non prende il focus`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = listOf(Category(categoryId = categoryId, categoryName = "Azione")),
                    streams = listOf(stream),
                    scale = scale,
                    filmSourceOptions = bothOptions,
                    selectedFilmSource = SectionSourceKeys.M3U_LISTS,
                )
            }
        }
        rule.waitForIdle()
        confirmCategory()

        rule.onNodeWithTag(FILM_SOURCE_LABEL_TAG).assertTextEquals("Sorgente · Liste M3U")
        // Le card non portano etichette di sorgente.
        rule.onNodeWithTag("film_${stream.streamId}_source").assertDoesNotExist()
    }

    @Test
    fun `con una sola sorgente non c'e la riga e nessun testo di sorgente`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = listOf(Category(categoryId = categoryId, categoryName = "Azione")),
                    streams = listOf(stream),
                    scale = scale,
                    filmSourceOptions = listOf(bothOptions.first()),
                    selectedFilmSource = SectionSourceKeys.XTREAM,
                )
            }
        }
        rule.waitForIdle()
        confirmCategory()

        // Nessun comando: si entra direttamente nell'unica sorgente.
        rule.onNodeWithTag(FILM_SOURCE_ENTRY_TAG).assertDoesNotExist()
        rule.onNodeWithTag(FILM_SOURCE_LABEL_TAG).assertDoesNotExist()
        rule.onNodeWithTag("film_${stream.streamId}").assertIsDisplayed()
    }
}
