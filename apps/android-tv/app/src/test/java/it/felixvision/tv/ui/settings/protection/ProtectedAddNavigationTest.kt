package it.felixvision.tv.ui.settings.protection

import androidx.activity.ComponentActivity
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Ritorno nell'elenco delle categorie di "Aggiungi": con una categoria aperta
 * l'ultima volta la lista torna su quella riga (già scorsa fin lì) e ci mette
 * il focus; se la categoria non è più nel catalogo si riparte dalla prima
 * riga, senza errori.
 *
 * Un solo `setContent` per test. La lista è quella vera della schermata, con
 * lo stato di scorrimento passato dall'esterno come fa
 * [ProtectedContentScreen].
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ProtectedAddNavigationTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    // Catalogo di prova: 30 categorie Live con id "001".."030".
    private val liveCategories = (1..30).map { number ->
        Category(
            categoryId = number.toString().padStart(3, '0'),
            categoryName = "Categoria $number",
        )
    }
    private val catalog = Catalog(liveCategories = liveCategories)

    /** Riga della categoria nella pagina "Aggiungi · Live". */
    private fun rowTag(categoryId: String): String =
        "protected_catrow_${ProtectedKind.LIVE.storageKey}_$categoryId"

    @Test
    fun `ritorno sulla categoria aperta ritrova la riga in fondo e le dà il focus`() {
        // Valori attesi ricontrollati sui dati di prova: 30 categorie, la 25ª
        // è "025" ("Categoria 25").
        assertEquals(30, liveCategories.size)
        val restoredCategoryId = liveCategories[24].categoryId
        assertEquals("025", restoredCategoryId)
        assertEquals("Categoria 25", liveCategories[24].categoryName)

        rule.setContent {
            val listState = rememberLazyListState()
            FvpTheme {
                ProtectedAddCategoriesPage(
                    catalog = catalog,
                    data = ProtectedContentData(),
                    kind = ProtectedKind.LIVE,
                    scale = scale,
                    restoreCategoryId = restoredCategoryId,
                    listState = listState,
                    onOpenCategory = { _, _ -> },
                )
            }
        }
        rule.waitForIdle()

        // La riga della 25ª categoria è in lista, è scesa in vista (senza
        // scrollToItem la LazyColumn comporrebbe solo le prime) e ha il focus.
        val restoredRow = rule.onNodeWithTag(rowTag("025"))
        restoredRow.assertExists()
        restoredRow.assertIsDisplayed()
        restoredRow.assertIsFocused()
        // È quella riga, non un'altra con lo stesso tag per errore.
        rule.onNodeWithText("Categoria 25").assertIsDisplayed().assertIsFocused()
        // La lista è scorsa fin lì: la prima categoria non è composta.
        rule.onNodeWithTag(rowTag("001")).assertDoesNotExist()

        // Nessun doppione: le 30 categorie di prova hanno 30 id distinti, quindi
        // le chiavi "cat_<id>" della lista restano uniche.
        assertEquals(30, liveCategories.map { it.categoryId }.distinct().size)
    }

    @Test
    fun `categoria non più nel catalogo riparte dalla prima riga`() {
        val missingCategoryId = "031"
        assertTrue(liveCategories.none { it.categoryId == missingCategoryId })

        rule.setContent {
            val listState = rememberLazyListState()
            FvpTheme {
                ProtectedAddCategoriesPage(
                    catalog = catalog,
                    data = ProtectedContentData(),
                    kind = ProtectedKind.LIVE,
                    scale = scale,
                    restoreCategoryId = missingCategoryId,
                    listState = listState,
                    onOpenCategory = { _, _ -> },
                )
            }
        }
        rule.waitForIdle()

        // La categoria sparita non ha riga; il focus va sulla prima come oggi.
        rule.onNodeWithTag(rowTag(missingCategoryId)).assertDoesNotExist()
        rule.onNodeWithTag(rowTag("001")).assertExists()
        rule.onNodeWithTag(rowTag("001")).assertIsFocused()
    }
}
