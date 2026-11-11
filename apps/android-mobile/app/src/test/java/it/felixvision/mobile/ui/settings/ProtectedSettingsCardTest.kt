@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.settings

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.mobile.ui.catalog.CatalogCacheGateway
import it.felixvision.mobile.ui.catalog.CatalogGateway
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.ContinueWatchingGateway
import it.felixvision.mobile.ui.catalog.FavoritesGateway
import it.felixvision.mobile.ui.catalog.MyChannelsGateway
import it.felixvision.mobile.ui.catalog.ProgressGateway
import it.felixvision.mobile.ui.settings.protection.PROTECTED_PAGE_COLUMN_TAG
import it.felixvision.mobile.ui.settings.protection.PROTECTED_PAGE_MAX_WIDTH
import it.felixvision.mobile.ui.settings.protection.PROTECTED_PAGE_TAG
import it.felixvision.mobile.ui.settings.protection.PROTECTED_TITLE
import it.felixvision.mobile.ui.settings.protection.MOBILE_PIN_ENTRY_TAG
import it.felixvision.mobile.ui.settings.protection.MOBILE_PIN_OK_TAG
import it.felixvision.mobile.ui.settings.protection.mobilePinKeyTag
import it.felixvision.mobile.ui.theme.FvpTheme
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.CachedCatalog
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogResult
import it.felixvision.tv.data.catalog.CatalogSection
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import it.felixvision.tv.data.catalog.CatalogStage
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesInfoResult
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResult
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.xtream.LoginResult
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

/**
 * Test Compose (Robolectric) del riquadro "Contenuti protetti" delle
 * Impostazioni del tablet:
 * - la riga di riepilogo usa lo stesso testo della TV ([protectedSettingsLine])
 *   e si aggiorna quando il PIN viene creato dalla pagina;
 * - "Gestisci" apre la pagina al posto del contenuto delle Impostazioni e
 *   Indietro torna ai riquadri;
 * - dopo un'aggiunta nell'archivio il riquadro resta coerente e la pagina
 *   riapre con l'elenco aggiornato;
 * - in orizzontale la pagina non supera 720dp di larghezza ed è centrata.
 *
 * Regole del progetto: un solo `setContent` per test; funzioni di supporto
 * membro di questa classe e non importate; API di kotlinx-coroutines-test
 * importate con l'OptIn su [ExperimentalCoroutinesApi]; stati di UI su
 * [Dispatchers.Main] (dispatcher di test con lo stesso
 * [TestCoroutineScheduler] dell'orologio iniettato); chiavi lazy uniche;
 * nessun `FocusRequester()`; `useUnmergedTree = true` per i tag interni agli
 * elementi cliccabili. Dati di esempio: http://server.esempio:8080, demo/demo,
 * codice "001", PIN "1234" e nomi inventati.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
class ProtectedSettingsCardTest {

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

    // --- Catalogo di prova (nomi inventati) ---

    private val sampleCatalog = Catalog(
        liveCategories = listOf(Category(categoryId = "001", categoryName = "Categoria 1")),
        liveStreams = listOf(
            LiveStream(num = 1, name = "Canale Uno", streamId = "101", categoryId = "001"),
        ),
        vodCategories = listOf(Category(categoryId = "v1", categoryName = "Film Azione")),
        vodStreams = listOf(VodStream(streamId = "201", name = "Film Demo", categoryId = "v1")),
        seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie Demo")),
        series = listOf(SeriesItem(seriesId = "301", name = "Serie Demo Uno", categoryId = "s1")),
        updatedAtMillis = 5_000L,
    )

    private class FakeCatalogGateway(private val catalog: Catalog) : CatalogGateway {
        override suspend fun loadCatalog(
            server: String,
            username: String,
            password: String,
            onStage: suspend (CatalogStage) -> Unit,
        ): CatalogResult {
            onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 1))
            onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.COMPLETED, 1))
            onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.COMPLETED, 1))
            return CatalogResult.Success(catalog)
        }

        override suspend fun loadVodInfo(
            server: String,
            username: String,
            password: String,
            vodId: String,
        ): VodInfoResult = VodInfoResult.Error("assente nel test")

        override suspend fun loadSeriesInfo(
            server: String,
            username: String,
            password: String,
            seriesId: String,
        ): SeriesInfoResult = SeriesInfoResult.Error("assente nel test")
    }

    private class FakeCatalogCache(private val catalog: Catalog) : CatalogCacheGateway {
        override suspend fun load(server: String, username: String): CachedCatalog =
            CachedCatalog(
                server = server,
                username = username,
                updatedAtMillis = 1_000L,
                catalog = catalog,
            )

        override suspend fun save(server: String, username: String, catalog: Catalog) {}

        override suspend fun clear(server: String, username: String) {}

        override suspend fun lastUpdateMillis(server: String, username: String): Long? = 1_000L

        override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean = false
    }

    private fun createCatalogViewModel(): CatalogViewModel = CatalogViewModel(
        server = SERVER,
        username = "demo",
        password = "demo",
        catalogGateway = FakeCatalogGateway(sampleCatalog),
        cacheGateway = FakeCatalogCache(sampleCatalog),
        favoritesGateway = object : FavoritesGateway {
            override suspend fun getFavorites(server: String, username: String): List<FavoriteItem> =
                emptyList()

            override suspend fun toggleFavorite(
                server: String,
                username: String,
                item: FavoriteItem,
            ): Boolean = true
        },
        myChannelsGateway = object : MyChannelsGateway {
            private val revisionFlow = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = revisionFlow.asStateFlow()

            override suspend fun getChannels(server: String, username: String): List<MyChannel> =
                emptyList()

            override suspend fun add(
                server: String,
                username: String,
                channel: MyChannel,
            ): List<MyChannel> = emptyList()

            override suspend fun insertAt(
                server: String,
                username: String,
                channel: MyChannel,
                position: Int,
            ): List<MyChannel> = emptyList()

            override suspend fun moveTo(
                server: String,
                username: String,
                streamId: String,
                position: Int,
            ): List<MyChannel> = emptyList()

            override suspend fun remove(
                server: String,
                username: String,
                streamId: String,
            ): List<MyChannel> = emptyList()

            override suspend fun migrateLegacyLiveFavorites(
                server: String,
                username: String,
            ): Int = 0
        },
        continueGateway = object : ContinueWatchingGateway {
            private val revisionFlow = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = revisionFlow.asStateFlow()

            override suspend fun getAll(server: String, username: String): List<ContinueEntry> =
                emptyList()

            override suspend fun hide(server: String, username: String, key: String) {}
        },
        progressGateway = object : ProgressGateway {
            private val revisionFlow = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = revisionFlow.asStateFlow()

            override suspend fun getAll(
                server: String,
                username: String,
            ): Map<String, WatchProgress> = emptyMap()
        },
    )

    private fun createSettingsViewModel(): SettingsViewModel = SettingsViewModel(
        server = SERVER,
        username = "demo",
        password = "demo",
        expiresAtEpochSeconds = null,
        status = "Attivo",
        maxConnections = 2,
        activeConnections = 1,
        onSignOut = {},
        performLogin = { _, _, _ -> LoginResult.Unreachable(timedOut = false) },
        credentialStore = object : CredentialStore {
            override suspend fun load(): StoredCredentials = StoredCredentials(
                server = SERVER,
                username = "demo",
                password = "demo",
                serverCode = "001",
            )

            override suspend fun save(credentials: StoredCredentials) {}

            override suspend fun clear() {}
        },
        readLastCatalogUpdate = { _, _ -> 1_000L },
        clearCatalogCache = { _, _ -> },
        userDataStore = object : SettingsUserDataStore {
            override suspend fun clearFavorites(server: String, username: String) {}
            override suspend fun clearMyChannels(server: String, username: String) {}
            override suspend fun clearProgress(server: String, username: String) {}
            override suspend fun clearContinueWatching(server: String, username: String) {}
        },
        isPlaybackActive = { false },
        clock = virtualClock,
    )

    // --- Montaggio ---

    private var mounted = false
    private lateinit var container: AppContainer

    /**
     * Monta le Impostazioni con il container dell'app. Con [withPin] falso
     * l'archivio dei contenuti protetti è ancora vuoto, come al primo avvio.
     */
    private fun mount(withPin: Boolean = true) {
        check(!mounted) { "un solo setContent per test" }
        mounted = true
        val container = createContainer(withPin)
        this.container = container
        val settingsViewModel = createSettingsViewModel()
        val catalogViewModel = createCatalogViewModel()
        rule.setContent {
            FvpTheme {
                SettingsScreen(
                    settingsViewModel = settingsViewModel,
                    catalogViewModel = catalogViewModel,
                    downloadMonitor = CatalogDownloadMonitor(),
                    container = container,
                )
            }
        }
        rule.waitUntil(timeoutMillis = 5_000L) { exists(SETTINGS_LIST_TAG) }
        settle()
        // La riga di riepilogo legge l'archivio: si attende il primo valore.
        rule.waitUntil(timeoutMillis = 5_000L) {
            textOf("settings_protected_summary") == protectedSettingsLine(hasPin = withPin)
        }
        settle()
    }

    /**
     * Container dell'app con l'archivio dei contenuti protetti pronto: con
     * [withPin] vero il PIN esiste e la sessione è già sbloccata, così la
     * pagina si apre sulla gestione degli elenchi (i livelli con PIN hanno i
     * test dedicati in [it.felixvision.mobile.ui.settings.protection]).
     */
    private fun createContainer(withPin: Boolean): AppContainer {
        val created = AppContainer(context)
        if (withPin) {
            runBlocking { created.protectedContentStore.setPin(SERVER, "demo", PIN) }
            created.protectedSession.unlock()
        }
        return created
    }

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

    private fun awaitTag(tag: String) {
        rule.waitUntil(timeoutMillis = 5_000L) { exists(tag) }
        settle()
    }

    private fun awaitSummary(hasPin: Boolean) {
        rule.waitUntil(timeoutMillis = 5_000L) {
            textOf("settings_protected_summary") == protectedSettingsLine(hasPin)
        }
        settle()
    }

    /** Le righe e i pulsanti cliccabili rispondono a OnClick. */
    private fun click(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        settle()
    }

    private fun pressBack() {
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        settle()
    }

    /** Digita il PIN sul tastierino touch e conferma con "OK". */
    private fun typePin(value: String) {
        value.forEach { character -> click(mobilePinKeyTag(character.digitToInt())) }
        click(MOBILE_PIN_OK_TAG)
        settle()
    }

    // --- Riepilogo ---

    @Test
    fun `riquadro - la riga di riepilogo usa il testo della TV`() {
        mount(withPin = true)
        // Stesso testo e stessa logica di protectedSettingsLine della TV.
        assertEquals("PIN impostato", protectedSettingsLine(hasPin = true))
        assertEquals("PIN non impostato", protectedSettingsLine(hasPin = false))
        rule.onNodeWithTag("settings_protected_summary").performScrollTo()
            .assertTextEquals(protectedSettingsLine(hasPin = true))
        rule.onNodeWithTag("settings_protected_manage").performScrollTo()
            .assertTextEquals(PROTECTED_MANAGE_LABEL)
    }

    @Test
    fun `riquadro - senza PIN la riga dice PIN non impostato`() {
        mount(withPin = false)
        rule.onNodeWithTag("settings_protected_summary").performScrollTo()
            .assertTextEquals(protectedSettingsLine(hasPin = false))
    }

    @Test
    fun `riquadro - il riepilogo si aggiorna dopo l'aggiunta del PIN e di un elenco`() {
        mount(withPin = false)
        rule.onNodeWithTag("settings_protected_summary").performScrollTo()
            .assertTextEquals(protectedSettingsLine(hasPin = false))

        // "Gestisci" apre la creazione del PIN (nessun PIN nell'archivio).
        click("settings_protected_manage")
        awaitTag("pin_entry")
        typePin(PIN)
        typePin(PIN)
        awaitTag("protected_title")

        // Aggiunta di una categoria nascosta con il catalogo reale del
        // CatalogViewModel: si attende che l'aggiornamento automatico sia
        // concluso, così le categorie sono quelle vere.
        settle()
        click("protected_add")
        click("protected_kind_live")
        awaitTag("protected_catrow_live_001")
        click("protected_catrow_live_001")
        awaitTag("protected_all_category")
        click("protected_all_category")
        rule.waitUntil(timeoutMillis = 5_000L) {
            runBlocking { container.protectedContentStore.get(SERVER, "demo").hiddenCount } == 1
        }
        settle()

        // Indietro dalla radice della pagina: si torna ai riquadri e la riga
        // di riepilogo è aggiornata con il PIN appena creato.
        pressBack()
        awaitTag(SETTINGS_LIST_TAG)
        awaitSummary(hasPin = true)
        rule.onNodeWithTag("settings_protected_summary").performScrollTo()
            .assertTextEquals(protectedSettingsLine(hasPin = true))
    }

    // --- "Gestisci" apre la pagina e Indietro la chiude ---

    @Test
    fun `gestisci - apre la pagina al posto delle Impostazioni e Indietro torna`() {
        mount(withPin = true)
        rule.onNodeWithTag("settings_protected_manage").performScrollTo().performClick()
        awaitTag(PROTECTED_PAGE_TAG)

        // Sessione già sbloccata: si apre la pagina di gestione, non la verifica.
        awaitTag("protected_title")
        assertTrue(!exists(MOBILE_PIN_ENTRY_TAG))

        pressBack()
        rule.waitUntil(timeoutMillis = 5_000L) { !exists(PROTECTED_PAGE_TAG) }
        settle()
        // Si torna ai riquadri, con lo stesso stato di prima.
        assertTrue(exists(SETTINGS_LIST_TAG))
        rule.onNodeWithTag("settings_protected_summary").performScrollTo()
            .assertTextEquals(protectedSettingsLine(hasPin = true))
    }

    @Test
    fun `aggiungi - Indietro dalla scelta del tipo torna a Contenuti protetti`() {
        mount(withPin = true)
        click("settings_protected_manage")
        awaitTag("protected_title")
        click("protected_add")
        awaitTag("protected_kind_live")
        click("protected_back")
        awaitTag("protected_title")
        assertTrue(exists("protected_add"))
    }

    @Test
    fun `indietro - pagina inserisci PIN torna alle Impostazioni`() {
        mount(withPin = false)
        click("settings_protected_manage")
        awaitTag(MOBILE_PIN_ENTRY_TAG)
        click("protected_back")
        awaitTag(SETTINGS_LIST_TAG)
    }

    @Test
    fun `indietro - pagina Contenuti protetti torna alle Impostazioni`() {
        mount(withPin = true)
        click("settings_protected_manage")
        awaitTag("protected_title")
        click("protected_back")
        awaitTag(SETTINGS_LIST_TAG)
    }

    @Test
    fun `gestisci - in orizzontale la pagina non supera i 720dp ed e centrata`() {
        // Qualificatori orizzontali (1280x800) applicati prima del montaggio:
        // la configurazione dello schermo non si cambia a composizione avviata.
        RuntimeEnvironment.setQualifiers("+w1280dp-h800dp-land-mdpi")
        mount(withPin = true)
        click("settings_protected_manage")
        awaitTag("protected_title")

        // La colonna della pagina non supera i 720dp e resta centrata nello
        // schermo, che qui è largo 1280dp.
        val column = rule.onNodeWithTag(PROTECTED_PAGE_COLUMN_TAG).getUnclippedBoundsInRoot()
        val root = rule.onNodeWithTag(PROTECTED_PAGE_TAG).getUnclippedBoundsInRoot()
        // DpRect espone i bordi: larghezza e centro si ricavano da quelli.
        val columnWidth = (column.right - column.left).value
        val rootWidth = (root.right - root.left).value
        assertTrue(
            "la colonna non deve superare ${PROTECTED_PAGE_MAX_WIDTH.value}dp",
            columnWidth <= PROTECTED_PAGE_MAX_WIDTH.value + 1f,
        )
        assertTrue("lo schermo è più largo della colonna", rootWidth > columnWidth)
        val centerOfColumn = column.left.value + columnWidth / 2f
        val centerOfRoot = root.left.value + rootWidth / 2f
        assertEquals("colonna centrata", centerOfRoot, centerOfColumn, 2f)
        assertEquals(PROTECTED_TITLE, textOf("protected_title"))
    }

    private companion object {
        private const val SERVER = "http://server.esempio:8080"
        private const val PIN = "1234"
    }
}
