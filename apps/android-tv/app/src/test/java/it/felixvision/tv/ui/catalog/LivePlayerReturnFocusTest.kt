package it.felixvision.tv.ui.catalog

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.exists
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Ritorno dal player nella sezione Live dopo aver scelto un canale digitando
 * il numero col telecomando.
 *
 * Il ritorno è simulato come in [it.felixvision.tv.ui.main.FvpMainScreen]:
 * `focusChannelId` (il canale guardato) + `focusChannelTick`, con
 * `onChannelFocusRestored` che azzera il segnaposto. Dati inventati.
 *
 * Un solo `setContent` per test. I clic tv-material si fanno con
 * `performSemanticsAction(SemanticsActions.OnClick)`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class LivePlayerReturnFocusTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    // Tre categorie live; i canali hanno la numerazione del provider (num),
    // come quando si sceglie un canale digitando il numero col telecomando.
    private val categories = listOf(
        Category(categoryId = "001", categoryName = "Notizie"),
        Category(categoryId = "002", categoryName = "Sport"),
        Category(categoryId = "003", categoryName = "Cinema"),
    )
    private val streams = listOf(
        LiveStream(num = 1, name = "Canale 1", streamId = "101", categoryId = "001"),
        LiveStream(num = 2, name = "Canale 2", streamId = "102", categoryId = "001"),
        LiveStream(num = 11, name = "Canale 11", streamId = "201", categoryId = "002"),
        LiveStream(num = 12, name = "Canale 12", streamId = "202", categoryId = "002"),
        LiveStream(num = 21, name = "Canale 21", streamId = "301", categoryId = "003"),
        // In due categorie: principale "003", presente anche in "001".
        LiveStream(num = 31, name = "Canale 31", streamId = "302", categoryId = "003", categoryIds = listOf("001", "003")),
        // Categoria principale "099" non presente nel catalogo: il canale
        // appartiene a "002" tramite category_ids.
        LiveStream(num = 41, name = "Canale 41", streamId = "401", categoryId = "099", categoryIds = listOf("099", "002")),
        // Senza categoria principale: appartiene a "002" tramite category_ids.
        LiveStream(num = 51, name = "Canale 51", streamId = "501", categoryId = null, categoryIds = listOf("002")),
    )

    // Stato del ritorno dal player, come in FvpMainScreen: canale guardato
    // (returnLiveChannelId) e tick (playerReturnTick); onChannelFocusRestored
    // azzera il segnaposto.
    private val returnChannelId = mutableStateOf<String?>(null)
    private val returnTick = mutableIntStateOf(0)
    // Ultimo canale aperto dalla lista: il player parte da onSelectChannel.
    private val lastPlayedChannelId = mutableStateOf<String?>(null)

    /** Un solo `setContent` per test: la sezione Live con lo stato di ritorno. */
    private fun showLiveSection() {
        rule.setContent {
            FvpTheme {
                LiveSection(
                    categories = categories,
                    streams = streams,
                    scale = scale,
                    onSelectChannel = { channel -> lastPlayedChannelId.value = channel.streamId },
                    focusChannelId = returnChannelId.value,
                    focusChannelTick = returnTick.value,
                    onChannelFocusRestored = { returnChannelId.value = null },
                    modifier = Modifier.fillMaxSize(),
                )
            }
        }
        rule.waitForIdle()
        // Si entra nel contenuto dal menu laterale: focus sul primo canale
        // della prima categoria.
        rule.onNodeWithTag("live_channel_101").requestFocus()
        rule.waitForIdle()
        rule.onNodeWithTag("live_channel_101").assertIsFocused()
        assertCategorySelected("001")
    }

    /**
     * La categoria corrente (debounced) è esposta dal tag della colonna:
     * `live_category_column_<id>_expanded` oppure `_collapsed` a seconda che
     * la colonna sia espansa (focus su una categoria) o collassata (focus sui
     * canali). La voce collassata non ha semantica "selected".
     */
    private fun assertCategorySelected(categoryId: String) {
        val found = listOf("_expanded", "_collapsed").any { suffix ->
            rule.onNodeWithTag("live_category_column_${categoryId}$suffix").exists()
        }
        assertTrue("Categoria $categoryId non selezionata (tag colonna)", found)
    }

    /** Uscita dal player dopo aver digitato il numero: torna il canale guardato. */
    private fun returnFromPlayer(channelId: String) {
        rule.runOnIdle {
            returnChannelId.value = channelId
            returnTick.value += 1
        }
        settleAfterReturn()
    }

    /** Uscita dal player dopo aver scelto il canale toccando la lista. */
    private fun closePlayerAfterListClick() {
        rule.runOnIdle {
            returnChannelId.value = lastPlayedChannelId.value
            returnTick.value += 1
        }
        settleAfterReturn()
    }

    /**
     * Lascia terminare il ripristino: debounce della categoria (300 ms) e
     * timeout del segnaposto (2 s) scorrono con l'avanzamento del clock.
     */
    private fun settleAfterReturn() {
        rule.waitForIdle()
        rule.mainClock.advanceTimeBy(2_600)
        rule.waitForIdle()
    }

    @Test
    fun `ritorno dal player con canale in un'altra categoria apre la sua categoria e mette il focus sul canale`() {
        showLiveSection()

        // Canale 11 (num 11) in "002", mentre è aperta "001".
        returnFromPlayer("201")

        assertCategorySelected("002")
        rule.onNodeWithTag("live_channel_201").assertIsFocused()
        // Il segnaposto è stato consumato: non può più guidare il focus.
        assertNull(returnChannelId.value)
    }

    @Test
    fun `ritorno dal player con canale nella categoria già aperta mette il focus sul canale`() {
        showLiveSection()

        // Canale 2 (num 2), stessa categoria "001" già aperta.
        returnFromPlayer("102")

        assertCategorySelected("001")
        rule.onNodeWithTag("live_channel_102").assertIsFocused()
        assertNull(returnChannelId.value)
    }

    @Test
    fun `ritorno con canale la cui categoria principale non è nel catalogo apre la prima sua categoria presente`() {
        showLiveSection()

        // Canale 41: principale "099" assente dalle categorie, appartiene a "002".
        returnFromPlayer("401")

        assertCategorySelected("002")
        rule.onNodeWithTag("live_channel_401").assertIsFocused()
        assertNull(returnChannelId.value)
    }

    @Test
    fun `ritorno con canale senza categoria principale apre la sua categoria presente e mette il focus sul canale`() {
        showLiveSection()

        // Canale 51: categoryId null, appartiene a "002" tramite category_ids.
        returnFromPlayer("501")

        assertCategorySelected("002")
        rule.onNodeWithTag("live_channel_501").assertIsFocused()
        assertNull(returnChannelId.value)
    }

    @Test
    fun `ritorno con canale in più categorie apre la categoria principale e mette il focus sul canale`() {
        showLiveSection()

        // Canale 31: principale "003", presente anche in "001" (aperta ora).
        returnFromPlayer("302")

        assertCategorySelected("003")
        rule.onNodeWithTag("live_channel_302").assertIsFocused()
        assertNull(returnChannelId.value)
    }

    @Test
    fun `dopo il ritorno i tasti si muovono normalmente e la categoria non cambia da sola`() {
        showLiveSection()
        returnFromPlayer("201")
        rule.onNodeWithTag("live_channel_201").assertIsFocused()
        assertCategorySelected("002")

        // Giù: focus sul canale successivo della stessa categoria.
        rule.onNodeWithTag("live_channel_201").performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("live_channel_202").assertIsFocused()
        assertCategorySelected("002")

        // Sinistra: focus sulla voce della categoria aperta, a menu espanso.
        rule.onNodeWithTag("live_channel_202").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.waitForIdle()
        rule.onNodeWithTag("live_category_002").assertIsFocused()

        // Cambio di categoria a mano (come col telecomando): il ripristino
        // del player non deve più partire.
        rule.onNodeWithTag("live_category_002").performKeyInput { pressKey(Key.DirectionDown) }
        rule.mainClock.advanceTimeBy(400) // debounce della categoria
        rule.waitForIdle()
        rule.onNodeWithTag("live_category_003").assertIsFocused()
        assertCategorySelected("003")

        // Dopo qualche secondo la categoria resta quella scelta dall'utente
        // e il focus non salta da solo tra menu e lista.
        rule.mainClock.advanceTimeBy(3_000)
        rule.waitForIdle()
        assertCategorySelected("003")
        rule.onNodeWithTag("live_category_003").assertIsFocused()
        assertNull(returnChannelId.value)
    }

    @Test
    fun `ritorno dal player dopo aver scelto il canale toccando la lista mette il focus sul canale`() {
        showLiveSection()

        // Scelta dalla lista (click), non col numero: il player parte da qui.
        rule.onNodeWithTag("live_channel_102").performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals("102", lastPlayedChannelId.value)

        closePlayerAfterListClick()

        rule.onNodeWithTag("live_channel_102").assertIsFocused()
        assertCategorySelected("001")
        assertNull(returnChannelId.value)
    }
}
