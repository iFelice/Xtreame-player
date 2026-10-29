package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertDoesNotExist
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Schede di Preferiti: sono tre ("I miei canali", "Film e Serie" e
 * "Categorie Live") e si cambiano solo con OK; Sinistra/Destra spostano
 * soltanto il focus tra le schede, senza cambiare il contenuto sotto.
 * I componenti tv-material si attivano con l'azione di click delle semantics.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class FavoritesTabsNavigationTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    // Due canali in "I miei canali", un film e due categorie Live preferite:
    // "001" è ancora nel catalogo (disponibile), "002" no.
    private val myChannels = listOf(
        MyChannel(streamId = "101", name = "Canale 101"),
        MyChannel(streamId = "102", name = "Canale 102"),
    )
    private val filmFavorite = FavoriteItem(
        id = "vod_201",
        type = FavoriteItem.VOD,
        title = "Film 201",
        categoryId = "vod1",
    )
    private val availableCategoryFavorite = FavoriteItem.liveCategory("001", "Notizie")
    private val unavailableCategoryFavorite = FavoriteItem.liveCategory("002", "Sport")
    private val favorites = listOf(filmFavorite, availableCategoryFavorite, unavailableCategoryFavorite)
    private val liveCategories = listOf(Category(categoryId = "001", categoryName = "Notizie"))
    private val liveStreams = listOf(
        LiveStream(streamId = "101", name = "Canale 101", categoryId = "001"),
        LiveStream(streamId = "102", name = "Canale 102", categoryId = "001"),
    )

    /** Un solo setContent per test: Preferiti con i dati fissi sopra. */
    private fun showFavorites(
        contentFocusRequester: FocusRequester,
        onSelectFavorite: (FavoriteItem) -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                FavoritesSection(
                    favorites = favorites,
                    scale = scale,
                    onSelectFavorite = onSelectFavorite,
                    onToggleFavorite = {},
                    contentFocusRequester = contentFocusRequester,
                    liveCategories = liveCategories,
                    liveStreams = liveStreams,
                    myChannels = myChannels,
                    modifier = Modifier.fillMaxSize(),
                )
            }
        }
        rule.waitForIdle()
        // Entrando in Preferiti, come dal menu laterale: focus sulla scheda
        // selezionata, mai dentro un elenco.
        rule.runOnIdle { contentFocusRequester.requestFocus() }
        rule.waitForIdle()
    }

    /** Dalla scheda "I miei canali" a "Categorie Live" con due Destra. */
    private fun focusLiveCategoriesTab() {
        rule.onNodeWithTag("favorites_tab_my_channels")
            .performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_tab_film_series").assertIsFocused()
        rule.onNodeWithTag("favorites_tab_film_series")
            .performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_tab_live_categories").assertIsFocused()
    }

    @Test
    fun `focus iniziale sulla scheda selezionata e Destra sposta solo il focus`() {
        showFavorites(contentFocusRequester = FocusRequester())

        // All'avvio il focus è sulla scheda selezionata, "I miei canali", con
        // il suo elenco mostrato.
        rule.onNodeWithTag("favorites_tab_my_channels").assertIsFocused()
        rule.onNodeWithTag("my_channels_list").assertIsDisplayed()

        // Destra due volte: il focus arriva su "Categorie Live" ma la scheda
        // selezionata e il contenuto sotto non cambiano.
        focusLiveCategoriesTab()
        rule.onNodeWithTag("my_channels_list").assertIsDisplayed()
        rule.onNodeWithTag("favorites_live_categories_list").assertDoesNotExist()
    }

    @Test
    fun `Giu su una scheda non selezionata consuma il tasto senza muovere il focus`() {
        showFavorites(contentFocusRequester = FocusRequester())
        focusLiveCategoriesTab()

        // "Categorie Live" non è ancora selezionata: Giù non entra in nessun
        // contenuto e il focus resta sulla scheda.
        rule.onNodeWithTag("favorites_tab_live_categories")
            .performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_tab_live_categories").assertIsFocused()
        rule.onNodeWithTag("favorites_live_categories_list").assertDoesNotExist()
        rule.onNodeWithTag("my_channels_list").assertIsDisplayed()
    }

    @Test
    fun `OK seleziona la scheda e porta il focus sulla prima categoria, Su torna alla scheda`() {
        showFavorites(contentFocusRequester = FocusRequester())
        focusLiveCategoriesTab()

        // OK su "Categorie Live": la scheda diventa quella selezionata e il
        // focus va sulla prima categoria del suo elenco.
        rule.onNodeWithTag("favorites_tab_live_categories")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_live_categories_list").assertIsDisplayed()
        rule.onNodeWithTag("favorite_livecat_001").assertIsFocused()

        // Su dalla prima riga riporta il focus sulla scheda selezionata.
        rule.onNodeWithTag("favorite_livecat_001")
            .performKeyInput { pressKey(Key.DirectionUp) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_tab_live_categories").assertIsFocused()
    }

    @Test
    fun `OK apre solo la categoria disponibile`() {
        val selected = mutableListOf<FavoriteItem>()
        showFavorites(
            contentFocusRequester = FocusRequester(),
            onSelectFavorite = { selected.add(it) },
        )
        focusLiveCategoriesTab()
        rule.onNodeWithTag("favorites_tab_live_categories")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        // OK sulla categoria disponibile: onSelectFavorite riceve quel preferito.
        rule.onNodeWithTag("favorite_livecat_001").assertIsFocused()
        rule.onNodeWithTag("favorite_livecat_001")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(listOf(availableCategoryFavorite), selected)

        // OK sulla categoria non disponibile: nessuna chiamata.
        rule.onNodeWithTag("favorite_livecat_001")
            .performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("favorite_livecat_002").assertIsFocused()
        rule.onNodeWithTag("favorite_livecat_002")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(listOf(availableCategoryFavorite), selected)
    }
}
