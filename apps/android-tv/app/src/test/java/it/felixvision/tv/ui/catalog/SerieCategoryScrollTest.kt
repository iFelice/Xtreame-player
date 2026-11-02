@file:OptIn(androidx.compose.ui.test.ExperimentalTestApi::class)

package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Serie: la griglia della categoria scelta parte sempre dalla cima.
 *
 * Come per Film, la sezione tiene una sola griglia per tutte le categorie:
 * senza lo azzeramento della posizione al cambio categoria la nuova lista si
 * apriva all'altezza di scorrimento della precedente. Il test scende nella
 * prima categoria, cambia categoria con il focus (poi il debounce di 300 ms) e
 * controlla che la prima serie della seconda categoria sia in vista. Aprire e
 * chiudere una scheda nella stessa categoria non deve invece muovere la
 * griglia.
 *
 * Un solo `setContent` per test. Lo stato della griglia arriva dall'esterno,
 * come per le altre liste dell'app (`PlayerEpgOverlay` riceve `listState`): lo
 * scorrimento si guida con `scrollToItem` sullo stato, senza simulare il D-pad.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SerieCategoryScrollTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val categories = listOf(
        Category(categoryId = "001", categoryName = "Categoria uno"),
        Category(categoryId = "002", categoryName = "Categoria due"),
    )

    // Prima categoria: 60 serie. Seconda: 20 serie. I titoli continuano da
    // "Serie 1" a "Serie 80", così la prima serie della seconda categoria
    // ("Serie 61") esiste solo lì e non si confonde con la precedente.
    private val firstCategorySeries = (1..60).map { number ->
        SeriesItem(seriesId = (200 + number).toString(), name = "Serie $number", categoryId = "001")
    }
    private val secondCategorySeries = (61..80).map { number ->
        SeriesItem(seriesId = (200 + number).toString(), name = "Serie $number", categoryId = "002")
    }
    private val allSeries = firstCategorySeries + secondCategorySeries

    /** La serie al centro della prova: indice 30, la griglia è scesa oltre le prime righe. */
    private val scrolledSerie = firstCategorySeries[30]

    @Test
    fun `cambiando categoria la griglia riparte dalla cima`() {
        assertTrue(firstCategorySeries.size >= 60)
        assertTrue(secondCategorySeries.size >= 20)
        assertEquals("Serie 31", scrolledSerie.name)

        val gridStateRef = AtomicReference<LazyGridState?>(null)
        rule.setContent {
            val gridState = rememberLazyGridState()
            gridStateRef.set(gridState)
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = allSeries,
                    scale = scale,
                    gridState = gridState,
                )
            }
        }
        rule.waitForIdle()
        val gridState = requireNotNull(gridStateRef.get())

        // La sezione si apre su "Novità" (senza recenti, griglia vuota con il
        // solo messaggio): la prima categoria del provider si sceglie con il
        // focus, poi il debounce di 300 ms.
        showCategory("serie_category_001")
        rule.onNodeWithText("Serie 1").assertIsDisplayed()

        // Si scende fino alla 31ª serie: la cima non è più composta.
        scrollGridTo(gridState, 30)
        rule.onNodeWithText(scrolledSerie.name).assertIsDisplayed()
        rule.onNodeWithText("Serie 1").assertDoesNotExist()

        // Cambio categoria come l'utente: focus sulla voce della seconda
        // categoria, poi il debounce.
        showCategory("serie_category_002")

        // La nuova categoria parte dalla cima: la sua prima serie è in vista.
        rule.waitUntil(timeoutMillis = 2_000) { gridState.firstVisibleItemIndex == 0 }
        rule.onNodeWithText(secondCategorySeries.first().name).assertIsDisplayed()
        rule.onNodeWithText("Serie 1").assertDoesNotExist()
        // Il focus resta sulla colonna delle categorie, non va nella griglia.
        rule.onNodeWithTag("serie_category_002").assertIsFocused()
    }

    @Test
    fun `aprire e chiudere una scheda lascia la griglia dov'era`() {
        val gridStateRef = AtomicReference<LazyGridState?>(null)
        rule.setContent {
            val gridState = rememberLazyGridState()
            gridStateRef.set(gridState)
            FvpTheme {
                SerieSection(
                    categories = categories,
                    series = allSeries,
                    scale = scale,
                    gridState = gridState,
                )
            }
        }
        rule.waitForIdle()
        val gridState = requireNotNull(gridStateRef.get())
        showCategory("serie_category_001")

        // Griglia scorsa: si apre la scheda della 31ª serie con OK sulla copertina.
        scrollGridTo(gridState, 30)
        rule.onNodeWithTag("serie_${scrolledSerie.seriesId}")
            .performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag("serie_detail_root").assertIsDisplayed()

        // "Chiudi": si torna nella stessa categoria, la griglia resta dov'era.
        rule.onNodeWithTag("detail_close").performSemanticsAction(SemanticsActions.OnClick)
        settle()

        rule.onNodeWithTag("serie_detail_root").assertDoesNotExist()
        assertEquals(30, gridState.firstVisibleItemIndex)
        rule.onNodeWithText(scrolledSerie.name).assertIsDisplayed()
        rule.onNodeWithText("Serie 1").assertDoesNotExist()
    }

    /**
     * Lascia passare le animazioni e l'attesa del focus della finestra dopo la
     * chiusura della scheda (la scheda è una finestra separata).
     */
    private fun settle() {
        rule.waitForIdle()
        rule.mainClock.advanceTimeBy(1_000)
        rule.waitForIdle()
    }

    /** Sceglie una categoria con il focus, poi lascia passare il debounce. */
    private fun showCategory(tag: String) {
        rule.onNodeWithTag(tag).requestFocus()
        rule.waitForIdle()
        // Il debounce di 300 ms fa scattare la categoria scelta senza aprirla.
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
        rule.onNodeWithTag(tag).assertIsSelected()
    }

    /** Porta la griglia all'elemento [index], come farebbe il telecomando scendendo. */
    private fun scrollGridTo(gridState: LazyGridState, index: Int) {
        val completed = AtomicBoolean(false)
        val failure = AtomicReference<Throwable?>(null)
        rule.runOnIdle {
            CoroutineScope(Dispatchers.Main.immediate).launch {
                try {
                    gridState.scrollToItem(index)
                } catch (error: Throwable) {
                    failure.set(error)
                } finally {
                    completed.set(true)
                }
            }
        }
        rule.waitUntil(timeoutMillis = 5_000) { completed.get() }
        rule.waitForIdle()
        assertNull(failure.get())
        assertEquals(index, gridState.firstVisibleItemIndex)
    }
}
