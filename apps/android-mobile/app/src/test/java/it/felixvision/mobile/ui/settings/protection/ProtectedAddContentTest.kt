@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.settings.protection

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertExists
import androidx.compose.ui.test.assertIsNotSelected
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.ui.theme.FvpTheme
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.protection.ProtectedContentRules
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Compose (Robolectric) del flusso "Aggiungi" della pagina "Contenuti
 * protetti", collegato al catalogo reale del `CatalogViewModel`:
 * - categorie del tipo con "nascosta" / "N nascosti";
 * - "Tutta la categoria" e un singolo contenuto, con il salvataggio immediato;
 * - contenuto multi-categoria nascosto in entrambe le categorie a cui
 *   appartiene (`category_id` + `category_ids`);
 * - rimozione dalla voce dall'elenco "Nascosti";
 * - ritorno all'ultima categoria aperta, con la stessa posizione di scorrimento;
 * - catalogo assente: "Catalogo non disponibile" con "Aggiorna catalogo".
 *
 * Regole del progetto: un solo `setContent` per test; funzioni di supporto
 * membro di questa classe e non importate; API di kotlinx-coroutines-test
 * importate con l'OptIn su [ExperimentalCoroutinesApi]; stati di UI solo su
 * [Dispatchers.Main], sostituito da un dispatcher di test con lo stesso
 * [TestCoroutineScheduler] dell'orologio iniettato; chiavi lazy uniche; nessun
 * `FocusRequester()`; `useUnmergedTree = true` per i tag interni agli elementi
 * cliccabili. Dati di esempio: http://server.esempio:8080, demo/demo, codice
 * "001", PIN "1234" e nomi inventati.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
class ProtectedAddContentTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scheduler = TestCoroutineScheduler()
    private val testDispatcher = StandardTestDispatcher(scheduler)
    private val virtualClock = Clock { scheduler.currentTime }

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private val server = SERVER
    private val username = "demo"
    private val pin = "1234"

    private lateinit var store: ProtectedContentStore
    private lateinit var session: ProtectedSession

    private class FakeCredentialStore : CredentialStore {
        override suspend fun load(): StoredCredentials? = null
        override suspend fun save(credentials: StoredCredentials) {}
        override suspend fun clear() {}
    }

    // --- Catalogo di prova: nomi inventati, id a tre cifre ---

    /** 30 categorie Live: le prime 8 con un canale, per scorrere sul serio. */
    private val liveCategories = (1..30).map { number ->
        Category(
            categoryId = number.toString().padStart(3, '0'),
            categoryName = "Categoria $number",
        )
    }

    /**
     * Film "201" presente in due categorie ("v1" principale e "v2" in
     * `category_ids`): nascondendolo da una categoria deve risultare nascosto
     * in entrambe.
     */
    private val catalog = Catalog(
        liveCategories = liveCategories,
        liveStreams = listOf(
            LiveStream(num = 1, name = "Canale Uno", streamId = "101", categoryId = "001"),
            LiveStream(num = 2, name = "Canale Due", streamId = "102", categoryId = "002"),
        ),
        vodCategories = listOf(
            Category(categoryId = "v1", categoryName = "Film Azione"),
            Category(categoryId = "v2", categoryName = "Film Novità"),
        ),
        vodStreams = listOf(
            VodStream(
                streamId = "201",
                name = "Film Condiviso",
                categoryId = "v1",
                categoryIds = listOf("v1", "v2"),
            ),
            VodStream(streamId = "202", name = "Film Solo Azione", categoryId = "v1"),
        ),
        seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie Demo")),
        series = listOf(SeriesItem(seriesId = "301", name = "Serie Demo Uno", categoryId = "s1")),
    )

    @Before
    fun createCollaborators() {
        store = ProtectedContentStore(context = context)
        session = ProtectedSession(clock = virtualClock)
        // PIN già impostato e sessione sbloccata: si entra direttamente nella
        // pagina principale (la verifica del PIN ha i suoi test dedicati).
        runBlocking { store.setPin(server, username, pin) }
        session.unlock()
    }

    // --- Montaggio ---

    private var mounted = false

    private fun mount(catalogOverride: Catalog? = catalog) {
        check(!mounted) { "un solo setContent per test" }
        mounted = true
        rule.setContent {
            FvpTheme {
                ProtectedContentScreen(
                    store = store,
                    session = session,
                    credentialStore = FakeCredentialStore(),
                    clock = virtualClock,
                    server = server,
                    username = username,
                    catalog = catalogOverride,
                    onRefreshCatalog = { refreshes += 1 },
                )
            }
        }
        rule.waitUntil(timeoutMillis = 5_000L) { exists("protected_title") }
        settle()
    }

    private var refreshes = 0

    private fun settle() {
        scheduler.runCurrent()
        rule.waitForIdle()
    }

    private fun exists(tag: String): Boolean =
        rule.onAllNodesWithTag(tag).fetchSemanticsNodes().isNotEmpty()

    private fun textOf(tag: String): String =
        rule.onAllNodesWithTag(tag)
            .fetchSemanticsNodes()
            .firstOrNull()
            ?.config
            ?.get(SemanticsProperties.Text)
            ?.joinToString("") { it.text }
            .orEmpty()

    /** Le righe cliccabili rispondono a OnClick (tag sul contenitore). */
    private fun click(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        settle()
    }

    private fun awaitTag(tag: String) {
        rule.waitUntil(timeoutMillis = 5_000L) { exists(tag) }
        settle()
    }

    private fun storedData() = runBlocking { store.get(server, username) }

    /**
     * Testo della voce con [tag] nell'albero unito: le righe fondono nome e
     * stato a destra in una sola voce (come le legge chi usa lo schermo).
     */
    private fun rowText(tag: String): String = textOf(tag)

    /** Vero se la voce con [tag] contiene tutti i [parts]. */
    private fun rowContains(tag: String, vararg parts: String): Boolean {
        val text = rowText(tag)
        return parts.all { text.contains(it) }
    }

    private fun categoryRow(kind: ProtectedKind, categoryId: String): String =
        "protected_catrow_${kind.storageKey}_$categoryId"

    // --- Categorie ---

    @Test
    fun `categorie - nascosta e N nascosti a destra del nome`() {
        runBlocking {
            store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "Categoria 1")
            store.toggleItem(server, username, ProtectedKind.LIVE, "102", "002", "Canale Due")
        }
        mount()
        click("protected_add")
        click("protected_kind_live")
        awaitTag(categoryRow(ProtectedKind.LIVE, "001"))

        // "Categoria 1" è nascosta per intero, "Categoria 2" ha un contenuto.
        assertTrue(
            "nome e stato della categoria nascosta",
            rowContains(categoryRow(ProtectedKind.LIVE, "001"), "Categoria 1", "nascosta"),
        )
        assertTrue(
            "conteggio dei contenuti nascosti della categoria",
            rowContains(categoryRow(ProtectedKind.LIVE, "002"), "Categoria 2", "1 nascosti"),
        )
        // Le categorie vengono dal catalogo reale del ViewModel.
        assertTrue(rowContains(categoryRow(ProtectedKind.LIVE, "003"), "Categoria 3"))
        assertFalse(rowContains(categoryRow(ProtectedKind.LIVE, "003"), "nascosta"))
    }

    // --- Tutta la categoria e contenuto singolo ---

    @Test
    fun `aggiungi - tutta la categoria e singolo contenuto salvano subito`() {
        mount()
        click("protected_add")
        click("protected_kind_vod")
        click(categoryRow(ProtectedKind.VOD, "v1"))
        awaitTag("protected_all_category")

        // "Tutta la categoria" in testa e la spunta per riga.
        assertEquals(PROTECTED_ALL_CATEGORY, rowText("protected_all_category"))
        // Nessun contenuto nascosto: la riga c'è e la spunta è spenta.
        rule.onNodeWithTag("protected_all_category").assertIsNotSelected()
        click("protected_all_category")
        var data = storedData()
        assertTrue(ProtectedContentRules.isCategoryHidden(data, ProtectedKind.VOD, "v1"))

        // Un singolo contenuto: spunta e salvataggio immediato.
        awaitTag("protected_itemrow_vod_202")
        click("protected_itemrow_vod_202")
        data = storedData()
        assertEquals(ProtectedKind.VOD.storageKey, data.hiddenItems.last().kind)
        assertEquals("202", data.hiddenItems.last().itemId)
        rule.onNodeWithTag("protected_itemrow_vod_202")
            .assertIsSelected()
    }

    @Test
    fun `aggiungi - contenuto multi categoria risulta nascosto in entrambe`() {
        mount()
        click("protected_add")
        click("protected_kind_vod")
        click(categoryRow(ProtectedKind.VOD, "v1"))
        awaitTag("protected_itemrow_vod_201")

        // "201" appartiene a "v1" (principale) e a "v2" (`category_ids`).
        assertTrue(itemsForCategory(catalog, ProtectedKind.VOD, "v1").any { it.itemId == "201" })
        assertTrue(itemsForCategory(catalog, ProtectedKind.VOD, "v2").any { it.itemId == "201" })

        click("protected_itemrow_vod_201")
        val data = storedData()
        // Nascosto pur partendo da "v1": entrambe lo nascondono.
        assertTrue(ProtectedContentRules.isItemHidden(data, ProtectedKind.VOD, "201", "v1"))
        assertTrue(ProtectedContentRules.isItemHidden(data, ProtectedKind.VOD, "201", "v2"))

        // Tornando alle categorie e aprendo l'altra, la riga è già spuntata.
        pressBack()
        click(categoryRow(ProtectedKind.VOD, "v2"))
        awaitTag("protected_itemrow_vod_201")
        rule.onNodeWithTag("protected_itemrow_vod_201").assertIsSelected()
    }

    // --- Elenco "Nascosti" ---

    @Test
    fun `nascosti - la rimozione toglie la voce dall'elenco`() {
        runBlocking {
            store.toggleCategory(server, username, ProtectedKind.SERIES, "s1", "Serie Demo")
        }
        mount()
        rule.onNodeWithTag("protected_hidden_cat_series_s1").assertExists()
        click("protected_remove_cat_series_s1")

        rule.waitUntil(timeoutMillis = 5_000L) { !exists("protected_hidden_cat_series_s1") }
        settle()
        assertTrue(storedData().hiddenCategories.isEmpty())
        rule.onNodeWithTag("protected_hidden_empty").assertTextEquals(PROTECTED_EMPTY_HIDDEN)
    }

    // --- Ritorno all'ultima categoria ---

    @Test
    fun `aggiungi - tornando indietro si riparte dalla categoria aperta`() {
        mount()
        click("protected_add")
        click("protected_kind_live")

        // Si scorre fino a una categoria lontana e la si apre.
        val farCategory = "020"
        rule.onNodeWithTag(categoryRow(ProtectedKind.LIVE, farCategory)).performScrollTo()
        settle()
        click(categoryRow(ProtectedKind.LIVE, farCategory))
        awaitTag("protected_all_category")

        // Indietro: la lista delle categorie torna sulla riga aperta l'ultima
        // volta — già scorsa fin lì, non alla prima riga.
        pressBack()
        awaitTag(categoryRow(ProtectedKind.LIVE, farCategory))
        assertEquals("Categoria 20", rowText(categoryRow(ProtectedKind.LIVE, farCategory)))
        assertFalse(
            "la lista deve essere ancora scorsa in fondo",
            exists(categoryRow(ProtectedKind.LIVE, "001")),
        )
    }

    // --- Catalogo assente ---

    @Test
    fun `catalogo assente - messaggio e Aggiorna catalogo`() {
        mount(catalogOverride = null)
        click("protected_add")
        click("protected_kind_live")

        awaitTag("protected_catalog_missing")
        rule.onNodeWithTag("protected_catalog_missing")
            .assertTextEquals(PROTECTED_CATALOG_MISSING)
        click("protected_catalog_refresh")
        assertEquals(1, refreshes)
        // Nessuna categoria e nessun elenco: l'archivio resta vuoto.
        assertNull(storedData().hiddenCategories.firstOrNull())
    }

    /** Indietro dal livello corrente, come il tasto del sistema. */
    private fun pressBack() {
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        settle()
    }

    private companion object {
        private const val SERVER = "http://server.esempio:8080"
    }
}
