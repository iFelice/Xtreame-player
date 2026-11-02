@file:OptIn(androidx.compose.ui.test.ExperimentalTestApi::class)

package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pulsante di ordinamento sopra la griglia di Film e Serie.
 *
 * Controlla dove sta, cosa fa OK (passa all'ordine successivo, a ciclo, senza
 * spostare il focus dal pulsante), che la scelta resti uscendo e rientrando
 * nella categoria e che valga per la sola categoria scelta: un'altra categoria
 * resta su "Aggiunti di recente". Nella categoria locale NOVITÀ il pulsante non
 * c'è.
 *
 * Un solo `setContent` per test. Il pulsante e le card sono componenti
 * tv-material: OK si prova con l'azione semantica `SemanticsActions.OnClick`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class CatalogSortButtonTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val storage = InMemoryCategorySortStore()

    private val categories = listOf(
        Category(categoryId = "001", categoryName = "Categoria uno"),
        Category(categoryId = "002", categoryName = "Categoria due"),
    )

    // Il primo film della categoria per data di aggiunta è "Zeta recente":
    // passando ad A-Z la prima copertina diventa "Alfa".
    private val zeta = VodStream(streamId = "201", name = "Zeta recente", added = "1730000000", categoryId = "001")
    private val alfa = VodStream(streamId = "202", name = "Alfa", added = "1700000000", categoryId = "001")
    private val other = VodStream(streamId = "301", name = "Altro film", added = "1710000000", categoryId = "002")
    private val recent = VodStream(streamId = "401", name = "Film recente", categoryId = "001")

    private fun openCategory(tag: String) {
        rule.onNodeWithTag(tag).requestFocus()
        rule.waitForIdle()
        // Il debounce di 300 ms applica la categoria scelta con il solo focus.
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
    }

    /** Bordo sinistro del nodo [tag]: in griglia l'ordine si legge da sinistra a destra. */
    private fun leftOf(tag: String): Float =
        rule.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot.left

    /** Vero se la card [first] sta prima della card [second] nella griglia. */
    private fun assertBefore(first: String, second: String) {
        rule.waitForIdle()
        assertTrue(
            "la card $first dovrebbe stare prima di $second",
            leftOf(first) < leftOf(second),
        )
    }

    /** Etichetta del pulsante di ordinamento: il testo unito del pulsante. */
    private fun assertSortLabel(tag: String, label: String) {
        rule.waitForIdle()
        rule.onNodeWithTag(tag).assertTextEquals(label)
    }

    private fun isFocused(tag: String): Boolean = runCatching {
        rule.onNodeWithTag(tag).fetchSemanticsNode().config.contains(SemanticsProperties.Focused)
    }.getOrDefault(false)

    @Test
    fun `il pulsante compare in una categoria di film e non in NOVITA`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(zeta, alfa, other),
                    recentStreams = listOf(recent),
                    scale = scale,
                    sortStorage = storage,
                )
            }
        }
        rule.waitForIdle()

        // All'apertura la sezione è su NOVITÀ: niente pulsante, ordine dei recenti.
        rule.onNodeWithTag("film_${recent.streamId}").assertIsDisplayed()
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).assertDoesNotExist()

        // Categoria del provider: il pulsante c'è e parte da "Aggiunti di recente".
        openCategory("film_category_001")
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).assertIsDisplayed()
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: Aggiunti di recente")
        // Ordine predefinito: prima il film aggiunto per ultimo.
        assertBefore("film_${zeta.streamId}", "film_${alfa.streamId}")
    }

    @Test
    fun `OK passa ad A-Z e il primo titolo cambia`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(zeta, alfa, other),
                    recentStreams = listOf(recent),
                    scale = scale,
                    sortStorage = storage,
                )
            }
        }
        rule.waitForIdle()
        openCategory("film_category_001")
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).requestFocus()
        rule.waitForIdle()

        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        // Etichetta del nuovo ordine e focus che resta sul pulsante.
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: A-Z")
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).assertIsFocused()
        // A-Z: "Alfa" ora sta prima di "Zeta recente".
        assertBefore("film_${alfa.streamId}", "film_${zeta.streamId}")
        assertEquals(CatalogSort.AZ, storage.sort(CategorySortStore.SECTION_VOD, "001"))

        // Secondo OK: "Anno" (qui nessun film ha l'anno, resta la data).
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: Anno")

        // Terzo OK: si torna ad "Aggiunti di recente", a ciclo.
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: Aggiunti di recente")
        assertEquals(CatalogSort.ADDED, storage.sort(CategorySortStore.SECTION_VOD, "001"))
    }

    @Test
    fun `la scelta resta uscendo e rientrando e non tocca le altre categorie`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(zeta, alfa, other),
                    recentStreams = listOf(recent),
                    scale = scale,
                    sortStorage = storage,
                )
            }
        }
        rule.waitForIdle()

        // Categoria "001": OK sul pulsante porta ad A-Z.
        openCategory("film_category_001")
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).requestFocus()
        rule.waitForIdle()
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: A-Z")

        // Un'altra categoria ha ancora l'ordine predefinito.
        openCategory("film_category_002")
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).assertIsDisplayed()
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: Aggiunti di recente")
        rule.onNodeWithTag("film_${other.streamId}").assertIsDisplayed()

        // Si rientra nella prima: resta A-Z, e la prima copertina è "Alfa".
        openCategory("film_category_001")
        assertSortLabel(FILM_SORT_BUTTON_TAG, "Ordina: A-Z")
        assertBefore("film_${alfa.streamId}", "film_${zeta.streamId}")
        assertEquals(CatalogSort.AZ, storage.sort(CategorySortStore.SECTION_VOD, "001"))
        assertEquals(CatalogSort.ADDED, storage.sort(CategorySortStore.SECTION_VOD, "002"))
    }

    @Test
    fun `Freccia su dalla prima riga porta al pulsante e Freccia giu torna alla griglia`() {
        rule.setContent {
            FvpTheme {
                FilmSection(
                    categories = categories,
                    streams = listOf(zeta, alfa, other),
                    recentStreams = listOf(recent),
                    scale = scale,
                    sortStorage = storage,
                )
            }
        }
        rule.waitForIdle()
        openCategory("film_category_001")

        // Focus sulla prima copertina della griglia.
        rule.onNodeWithTag("film_${zeta.streamId}").requestFocus()
        rule.waitForIdle()

        // Freccia su dalla prima riga: il focus va al pulsante di ordinamento.
        rule.onNodeWithTag("film_${zeta.streamId}").performKeyInput { pressKey(Key.DirectionUp) }
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused(FILM_SORT_BUTTON_TAG) }
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).assertIsFocused()

        // Freccia giù dal pulsante: si torna sulla prima copertina.
        rule.onNodeWithTag(FILM_SORT_BUTTON_TAG).performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused("film_${zeta.streamId}") }
        rule.onNodeWithTag("film_${zeta.streamId}").assertIsFocused()
    }

    @Test
    fun `le serie hanno il proprio pulsante e la propria preferenza`() {
        val seriesCategories = listOf(Category(categoryId = "001", categoryName = "Serie uno"))
        val oldSerie = SeriesItem(seriesId = "301", name = "Zeta serie", lastModified = "1600000000", categoryId = "001")
        val recentSerie = SeriesItem(seriesId = "302", name = "Alfa serie", lastModified = "1730000000", categoryId = "001")

        rule.setContent {
            FvpTheme {
                SerieSection(
                    categories = seriesCategories,
                    series = listOf(oldSerie, recentSerie),
                    scale = scale,
                    sortStorage = storage,
                )
            }
        }
        rule.waitForIdle()
        openCategory("serie_category_001")

        rule.onNodeWithTag(SERIES_SORT_BUTTON_TAG).assertIsDisplayed()
        assertSortLabel(SERIES_SORT_BUTTON_TAG, "Ordina: Aggiunti di recente")
        // Per data di aggiunta (lastModified) la serie più recente viene prima.
        assertBefore("serie_${recentSerie.seriesId}", "serie_${oldSerie.seriesId}")

        rule.onNodeWithTag(SERIES_SORT_BUTTON_TAG).requestFocus()
        rule.waitForIdle()
        rule.onNodeWithTag(SERIES_SORT_BUTTON_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertSortLabel(SERIES_SORT_BUTTON_TAG, "Ordina: A-Z")
        rule.onNodeWithTag(SERIES_SORT_BUTTON_TAG).assertIsFocused()
        // Con A-Z "Alfa serie" resta prima ("Alfa" < "Zeta"): la prova della
        // preferenza è il valore salvato, non la posizione.
        assertEquals(CatalogSort.AZ, storage.sort(CategorySortStore.SECTION_SERIES, "001"))
        // La preferenza dei film resta distinta da quella delle serie.
        assertEquals(CatalogSort.ADDED, storage.sort(CategorySortStore.SECTION_VOD, "001"))
    }
}
