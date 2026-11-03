@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.test.assertIsOff
import androidx.compose.ui.test.assertIsOn
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.getOrNull
import androidx.lifecycle.Lifecycle
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.BuildConfig
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.mobile.ui.catalog.CatalogCacheGateway
import it.felixvision.mobile.ui.catalog.CatalogGateway
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.ContinueWatchingGateway
import it.felixvision.mobile.ui.catalog.FavoritesGateway
import it.felixvision.mobile.ui.catalog.MyChannelsGateway
import it.felixvision.mobile.ui.catalog.ProgressGateway
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
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.pairing.PairingApi
import it.felixvision.tv.data.pairing.PairingSession
import it.felixvision.tv.data.pairing.PairingStatus
import it.felixvision.tv.data.pairing.RemoteCredentials
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.xtream.AccountStatus
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.XtreamAccount
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.StandardTestDispatcher
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
 * Test Compose (Robolectric) delle Impostazioni del tablet a riquadri.
 *
 * Copre: ordine dei cinque riquadri in una e due colonne (qualifier
 * w1280dp-h800dp-land e w800dp-h1280dp-port), conferma di uscita (Annulla,
 * Conferma senza casella, Conferma con casella, con store finti), riquadro
 * "Configura da remoto" (polling solo con il riquadro visibile, credenziali
 * ricevute che aggiornano l'account, credenziali errate che lasciano l'account
 * invariato) e riquadro App con "versionName (versionCode)".
 *
 * Regole del progetto: un solo `setContent` per test; le funzioni di supporto
 * sono membri di questa classe e non vengono importate; le API di
 * kotlinx-coroutines-test sono importate con l'OptIn su
 * [ExperimentalCoroutinesApi]; lo stato di UI cambia solo su [Dispatchers.Main],
 * sostituito da un dispatcher di test con lo stesso [TestCoroutineScheduler]
 * dell'orologio iniettato (tempo virtuale); chiavi lazy uniche; nessun
 * FocusRequester; `useUnmergedTree = true` per i tag interni a elementi
 * cliccabili. Dati di esempio solo http://server.esempio:8080, demo/demo e
 * codice rubrica "001".
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
class SettingsLayoutTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    // --- Tempo virtuale e Dispatchers.Main ---

    private val scheduler = TestCoroutineScheduler()

    /**
     * Dispatcher di test: gli stati di UI e i ViewModel girano qui. Non è
     * unconfined, così il ciclo di abbinamento resta fermo sul `delay` finché
     * il test non fa avanzare il tempo virtuale.
     */
    private val testDispatcher = StandardTestDispatcher(scheduler)

    /** Orologio iniettato, coerente col tempo virtuale del dispatcher. */
    private val virtualClock = Clock { scheduler.currentTime }

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    // --- Dati di esempio ---

    private val sampleCatalog: Catalog = Catalog(
        liveCategories = listOf(Category(categoryId = "c1", categoryName = "Demo")),
        liveStreams = listOf(
            LiveStream(num = 1, name = "Canale Uno", streamId = "101", categoryId = "c1"),
        ),
        vodCategories = listOf(Category(categoryId = "v1", categoryName = "Film")),
        vodStreams = listOf(VodStream(streamId = "201", name = "Film Demo", categoryId = "v1")),
        seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie")),
        series = listOf(SeriesItem(seriesId = "301", name = "Serie Demo", categoryId = "s1")),
        updatedAtMillis = 5_000L,
    )

    private fun activeAccount(): XtreamAccount = XtreamAccount(
        server = SERVER,
        username = "demo",
        status = AccountStatus.ACTIVE,
        expiresAtEpochSeconds = EXPIRES_AT,
        isTrial = false,
        maxConnections = 2,
        activeConnections = 1,
    )

    // --- Finti ---

    private class FakeCredentialStore(var stored: StoredCredentials? = null) : CredentialStore {
        var saved: StoredCredentials? = null
        var cleared = false

        override suspend fun load(): StoredCredentials? = stored

        override suspend fun save(credentials: StoredCredentials) {
            saved = credentials
            stored = credentials
            cleared = false
        }

        override suspend fun clear() {
            stored = null
            saved = null
            cleared = true
        }
    }

    /** Store dei dati utente con quattro contatori distinti. */
    private class FakeUserDataStore : SettingsUserDataStore {
        var favoritesCleared = 0
        var myChannelsCleared = 0
        var progressCleared = 0
        var continueCleared = 0

        val totalClears: Int
            get() = favoritesCleared + myChannelsCleared + progressCleared + continueCleared

        override suspend fun clearFavorites(server: String, username: String) {
            favoritesCleared += 1
        }

        override suspend fun clearMyChannels(server: String, username: String) {
            myChannelsCleared += 1
        }

        override suspend fun clearProgress(server: String, username: String) {
            progressCleared += 1
        }

        override suspend fun clearContinueWatching(server: String, username: String) {
            continueCleared += 1
        }
    }

    private class FakeLogin {
        val calls = mutableListOf<Triple<String, String, String>>()
        var result: LoginResult = LoginResult.Unreachable(timedOut = false)

        suspend fun login(server: String, username: String, password: String): LoginResult {
            calls += Triple(server, username, password)
            return result
        }
    }

    private class FakePairingApi : PairingApi {
        val creates = ArrayDeque<ApiResult<PairingSession>>()
        val statuses = ArrayDeque<ApiResult<PairingStatus>>()
        var createCalls = 0
        var pollCalls = 0

        override suspend fun createSession(): ApiResult<PairingSession> {
            createCalls += 1
            return creates.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun pollStatus(code: String, pollToken: String): ApiResult<PairingStatus> {
            pollCalls += 1
            return statuses.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun resolveRubrica(code: String): ApiResult<String> = ApiResult.Malformed

        override suspend fun healthCheck(): Boolean = true
    }

    /** Gateway del catalogo già servito dalla cache: nessuna rete. */
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
        var clearedServers = mutableListOf<String>()

        override suspend fun load(server: String, username: String): CachedCatalog? =
            CachedCatalog(
                server = server,
                username = username,
                updatedAtMillis = 1_000L,
                catalog = catalog,
            )

        override suspend fun save(server: String, username: String, catalog: Catalog) {}

        override suspend fun clear(server: String, username: String) {
            clearedServers += server
        }

        override suspend fun lastUpdateMillis(server: String, username: String): Long? = 1_000L

        override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean = false
    }

    private fun createCatalogViewModel(server: String = SERVER): CatalogViewModel = CatalogViewModel(
        server = server,
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

    // --- ViewModel delle Impostazioni con dati finti ---

    private val credentialStore = FakeCredentialStore(
        stored = StoredCredentials(
            server = SERVER,
            username = "demo",
            password = "demo",
            serverCode = null,
        ),
    )

    private val userDataStore = FakeUserDataStore()
    private val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
    private val pairingApi = FakePairingApi()
    private val catalogCache = FakeCatalogCache(sampleCatalog)

    private var signOutCalls = 0
    private val remoteApplied = mutableListOf<Triple<String, String, String>>()

    private fun createSettingsViewModel(): SettingsViewModel = SettingsViewModel(
        server = SERVER,
        username = "demo",
        password = "demo",
        expiresAtEpochSeconds = EXPIRES_AT,
        status = "Attivo",
        maxConnections = 2,
        activeConnections = 1,
        onSignOut = { signOutCalls += 1 },
        performLogin = { server, username, password -> login.login(server, username, password) },
        credentialStore = credentialStore,
        readLastCatalogUpdate = { _, _ -> catalogCache.lastUpdateMillis(SERVER, "demo") },
        clearCatalogCache = { server, username -> catalogCache.clear(server, username) },
        userDataStore = userDataStore,
        isPlaybackActive = { false },
        clock = virtualClock,
        pairingApi = pairingApi,
        relayUrl = "https://relay.esempio.test",
        resolveRubrica = { code -> rubrica[code] ?: ApiResult.Http(404) },
        onRemoteCredentialsApplied = { server, username, password, _ ->
            remoteApplied += Triple(server, username, password)
        },
    )

    /** Rubrica finta: solo il codice "001", come nei dati di esempio. */
    private val rubrica = mapOf("001" to ApiResult.Ok(SERVER))

    // --- Montaggio ---

    /** Un solo `setContent` per test: il primo montaggio compone la schermata. */
    private var mounted = false

    private fun mount(settingsViewModel: SettingsViewModel = createSettingsViewModel()) {
        check(!mounted) { "un solo setContent per test" }
        mounted = true
        val catalogViewModel = createCatalogViewModel()
        rule.setContent {
            FvpTheme {
                SettingsScreen(
                    settingsViewModel = settingsViewModel,
                    catalogViewModel = catalogViewModel,
                    downloadMonitor = CatalogDownloadMonitor(),
                )
            }
        }
        rule.waitUntil(timeoutMillis = 5_000) { exists(SETTINGS_LIST_TAG) }
        // Primo fotogramma completo: lo stato iniziale del ViewModel è già
        // applicato prima di qualunque azione del test.
        scheduler.runCurrent()
        rule.waitForIdle()
    }

    /** Riporta in cima la colonna scorrevole delle Impostazioni. */
    private fun scrollListToTop() {
        rule.onNodeWithTag(SETTINGS_LIST_TAG)
            .performSemanticsAction(SemanticsActions.ScrollBy) { scrollBy -> scrollBy(0f, -5_000f) }
        rule.waitForIdle()
    }

    private fun exists(tag: String): Boolean =
        rule.onAllNodesWithTag(tag).fetchSemanticsNodes().isNotEmpty()

    private fun exists(tag: String, useUnmergedTree: Boolean): Boolean =
        rule.onAllNodesWithTag(tag, useUnmergedTree = useUnmergedTree).fetchSemanticsNodes().isNotEmpty()

    /** Testo del primo nodo con il tag (albero fuso). */
    private fun textOf(tag: String): String =
        rule.onAllNodesWithTag(tag)
            .fetchSemanticsNodes()
            .firstOrNull()
            ?.config
            ?.getOrNull(SemanticsProperties.Text)
            ?.joinToString("") { it.text }
            .orEmpty()

    /** Coordinata superiore del nodo, in dp, senza troncamenti. */
    private fun topOf(tag: String): Float =
        rule.onNodeWithTag(tag).getUnclippedBoundsInRoot().top.value

    /** Coordinata sinistra del nodo, in dp, senza troncamenti. */
    private fun leftOf(tag: String): Float =
        rule.onNodeWithTag(tag).getUnclippedBoundsInRoot().left.value

    // --- Riquadri: ordine ---

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun `w1280dp-h800dp-land - riquadri su due colonne nell'ordine della TV`() {
        mount()

        // Due colonne: Account e Contenuti protetti a sinistra, Catalogo, App e
        // Configura da remoto a destra.
        assertTrue(exists(SETTINGS_COLUMN_LEFT_TAG))
        assertTrue(exists(SETTINGS_COLUMN_RIGHT_TAG))
        val left = leftOf(SETTINGS_COLUMN_LEFT_TAG)
        val right = leftOf(SETTINGS_COLUMN_RIGHT_TAG)
        assertTrue("la colonna di destra deve stare a destra", right > left)

        assertTrue(leftOf(SettingsPanel.ACCOUNT.testTag) < right)
        assertTrue(leftOf(SettingsPanel.PROTECTED.testTag) < right)
        assertTrue(leftOf(SettingsPanel.CATALOG.testTag) > left)
        assertTrue(leftOf(SettingsPanel.APP.testTag) > left)
        assertTrue(leftOf(SettingsPanel.REMOTE.testTag) > left)

        // Ordine verticale dentro ogni colonna.
        assertTrue(topOf(SettingsPanel.ACCOUNT.testTag) < topOf(SettingsPanel.PROTECTED.testTag))
        assertTrue(topOf(SettingsPanel.CATALOG.testTag) < topOf(SettingsPanel.APP.testTag))
        assertTrue(topOf(SettingsPanel.APP.testTag) < topOf(SettingsPanel.REMOTE.testTag))
        // I due riquadri di sinistra partono dalla stessa riga (Account sopra
        // Contenuti protetti), i tre di destra dalla stessa riga del Catalogo.
        assertEquals(
            topOf(SettingsPanel.ACCOUNT.testTag),
            topOf(SettingsPanel.CATALOG.testTag),
            1f,
        )

        // Titoli dei riquadri nell'ordine richiesto.
        assertEquals("Account", textOf(SettingsPanel.ACCOUNT.titleTag))
        assertEquals("Contenuti protetti", textOf(SettingsPanel.PROTECTED.titleTag))
        assertEquals("Catalogo", textOf(SettingsPanel.CATALOG.titleTag))
        assertEquals("App", textOf(SettingsPanel.APP.titleTag))
        assertEquals("Configura da remoto", textOf(SettingsPanel.REMOTE.titleTag))
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun `w800dp-h1280dp-port - una colonna con i cinque riquadri in ordine`() {
        mount()

        // Una sola colonna: la colonna di destra non esiste e i riquadri stanno
        // tutti nell'unica colonna, nell'ordine Account → Configura da remoto.
        assertFalse(exists(SETTINGS_COLUMN_RIGHT_TAG))
        val panels = SettingsPanel.entries.map { it.testTag }
        val column = rule.onNodeWithTag(SETTINGS_COLUMN_LEFT_TAG).getUnclippedBoundsInRoot()
        panels.forEach { tag ->
            val bounds = rule.onNodeWithTag(tag).getUnclippedBoundsInRoot()
            assertTrue("$tag dentro l'unica colonna", bounds.left.value >= column.left.value)
            assertTrue("$tag dentro l'unica colonna", bounds.right.value <= column.right.value)
        }
        // Basta un confronto per volta: una piccola tolleranza assorbe
        // l'arrotondamento in pixel dello scorrimento.
        panels.zipWithNext().forEach { (first, second) ->
            assertTrue(
                "$first deve stare sopra $second",
                topOf(first) <= topOf(second) + 1f,
            )
        }
    }

    // --- Contenuti protetti: segnaposto ---

    @Test
    fun `contenuti protetti - solo titolo e disponibile a breve`() {
        mount()
        rule.onNodeWithTag("settings_protected_placeholder").performScrollTo()
            .assertTextEquals(PROTECTED_COMING_SOON)
    }

    // --- Riquadro App ---

    @Test
    fun `riquadro App - versionName e versionCode`() {
        mount()
        rule.onNodeWithTag("settings_version").performScrollTo()
            .assertTextEquals("${BuildConfig.VERSION_NAME} (${BuildConfig.VERSION_CODE})")
    }

    // --- Conferma di uscita ---

    @Test
    fun `uscita - Annulla non esce e non cancella niente`() {
        mount()

        rule.onNodeWithTag("settings_exit").performScrollTo().performClick()
        scheduler.advanceTimeBy(100L)
        rule.waitUntil(timeoutMillis = 5_000) { exists("settings_exit_confirm") }
        rule.onNodeWithText(EXIT_CONFIRM_TITLE, useUnmergedTree = true).assertExists()
        rule.onNodeWithText(EXIT_CONFIRM_MESSAGE, useUnmergedTree = true).assertExists()

        // La casella parte non selezionata.
        rule.onNodeWithTag("settings_exit_clear_data_checkbox", useUnmergedTree = true)
            .assertIsOff()

        rule.onNodeWithTag("settings_exit_cancel").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { !exists("settings_exit_confirm") }

        assertEquals(0, signOutCalls)
        assertEquals(0, userDataStore.totalClears)
        assertFalse(credentialStore.cleared)
        assertTrue(catalogCache.clearedServers.isEmpty())
    }

    @Test
    fun `uscita - Conferma senza casella mantiene preferiti e Riprendi`() {
        mount()

        rule.onNodeWithTag("settings_exit").performScrollTo().performClick()
        scheduler.advanceTimeBy(100L)
        rule.waitUntil(timeoutMillis = 5_000) { exists("settings_exit_confirm") }
        rule.onNodeWithTag("settings_exit_confirm").performClick()
        scheduler.advanceTimeBy(100L)
        rule.waitUntil(timeoutMillis = 5_000) { signOutCalls == 1 }

        // Credenziali e cache del catalogo sì; dati utente no.
        assertTrue(credentialStore.cleared)
        assertEquals(listOf(SERVER), catalogCache.clearedServers)
        assertEquals(0, userDataStore.totalClears)
    }

    @Test
    fun `uscita - Conferma con la casella cancella preferiti e Riprendi`() {
        mount()

        rule.onNodeWithTag("settings_exit").performScrollTo().performClick()
        scheduler.advanceTimeBy(100L)
        rule.waitUntil(timeoutMillis = 5_000) { exists("settings_exit_confirm") }

        rule.onNodeWithTag("settings_exit_clear_data_checkbox", useUnmergedTree = true)
            .performClick()
        scheduler.advanceTimeBy(100L)
        rule.onNodeWithTag("settings_exit_clear_data_checkbox", useUnmergedTree = true)
            .assertIsOn()
        rule.onNodeWithText(EXIT_CLEAR_USER_DATA_LABEL, useUnmergedTree = true).assertExists()

        rule.onNodeWithTag("settings_exit_confirm").performClick()
        scheduler.advanceTimeBy(100L)
        rule.waitUntil(timeoutMillis = 5_000) { signOutCalls == 1 }

        assertTrue(credentialStore.cleared)
        assertEquals(1, userDataStore.favoritesCleared)
        assertEquals(1, userDataStore.myChannelsCleared)
        assertEquals(1, userDataStore.progressCleared)
        assertEquals(1, userDataStore.continueCleared)
    }

    // --- Configura da remoto ---

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h480dp-port-mdpi")
    fun `configura da remoto - polling solo con il riquadro visibile`() {
        // Solo la prima tessera del pannello viene creata: così il ciclo può
        // restare in attesa sul tempo virtuale senza esaurire i valori finti.
        pairingApi.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "001001",
                    pollToken = "token-001001",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        pairingApi.statuses.addLast(ApiResult.Ok(PairingStatus.Waiting))
        val viewModel = createSettingsViewModel()
        mount(viewModel)
        scheduler.advanceTimeBy(100L)
        rule.waitForIdle()

        // Con il riquadro visibile il ciclo parte: una sessione creata e, dopo
        // il primo intervallo (2 s sul tempo virtuale), una interrogazione.
        rule.onNodeWithTag(SettingsPanel.REMOTE.testTag).performScrollTo()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.createCalls == 1 }
        assertTrue("polling attivo con il riquadro visibile", viewModel.ui.value.pairingActive)
        scheduler.advanceTimeBy(2_001L)
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.pollCalls == 1 }

        // Riquadro fuori dallo schermo: si torna in cima alla colonna scorrevole
        // con l'azione di scorrimento (nessun gesto da simulare).
        scrollListToTop()
        rule.waitUntil(timeoutMillis = 5_000) { !viewModel.ui.value.pairingActive }
        val createsWhenHidden = pairingApi.createCalls
        val pollsWhenHidden = pairingApi.pollCalls
        // Due intervalli di interrogazione sul tempo virtuale: con il riquadro
        // fuori schermo il ciclo è fermo, quindi i contatori non si muovono.
        scheduler.advanceTimeBy(4_000L)
        rule.waitForIdle()
        assertEquals(
            "nessuna richiesta con il riquadro fuori schermo",
            createsWhenHidden,
            pairingApi.createCalls,
        )
        assertEquals(
            "nessun interrogatorio con il riquadro fuori schermo",
            pollsWhenHidden,
            pairingApi.pollCalls,
        )
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h480dp-port-mdpi")
    fun `configura da remoto - in secondo piano il polling si ferma`() {
        pairingApi.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "001001",
                    pollToken = "token-001001",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        pairingApi.statuses.addLast(ApiResult.Ok(PairingStatus.Waiting))
        // Dopo il ritorno in primo piano serve una nuova sessione: già pronta.
        pairingApi.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "001002",
                    pollToken = "token-001002",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        pairingApi.statuses.addLast(ApiResult.Ok(PairingStatus.Waiting))
        val viewModel = createSettingsViewModel()
        mount(viewModel)
        scheduler.advanceTimeBy(100L)
        rule.waitForIdle()

        rule.onNodeWithTag(SettingsPanel.REMOTE.testTag).performScrollTo()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.createCalls == 1 }
        scheduler.advanceTimeBy(2_001L)
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.pollCalls == 1 }
        assertTrue(viewModel.ui.value.pairingActive)

        // App in secondo piano: il ciclo si ferma anche con il riquadro a schermo.
        rule.activityRule.scenario.moveToState(Lifecycle.State.CREATED)
        rule.waitUntil(timeoutMillis = 5_000) { !viewModel.ui.value.pairingActive }

        val createsWhenPaused = pairingApi.createCalls
        val pollsWhenPaused = pairingApi.pollCalls
        scheduler.advanceTimeBy(6_000L)
        rule.waitForIdle()
        assertEquals("nessuna richiesta in secondo piano", createsWhenPaused, pairingApi.createCalls)
        assertEquals("nessun interrogatorio in secondo piano", pollsWhenPaused, pairingApi.pollCalls)

        // Al ritorno in primo piano il ciclo riparte (il riquadro è ancora a
        // schermo): nuova sessione e nuova interrogazione.
        rule.activityRule.scenario.moveToState(Lifecycle.State.RESUMED)
        rule.waitUntil(timeoutMillis = 5_000) { viewModel.ui.value.pairingActive }
        // La sessione consumata dal primo giro è scaduta: il ciclo la ricrea
        // appena riparte, poi torna a interrogare il relay.
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.createCalls == 2 }
        scheduler.advanceTimeBy(2_001L)
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.pollCalls == 2 }
    }

    @Test
    fun `configura da remoto - credenziali ricevute aggiornano l'account`() {
        pairingApi.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "001001",
                    pollToken = "token-001001",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        pairingApi.statuses.addLast(
            ApiResult.Ok(
                PairingStatus.Ready(
                    RemoteCredentials(
                        server = SERVER,
                        username = "demo",
                        password = "demo",
                        serverCode = "001",
                    ),
                ),
            ),
        )
        // Dopo la consegna il ciclo si ferma: un passo in attesa per il caso in
        // cui ne serva ancora uno, senza altre consegne.
        pairingApi.statuses.addLast(ApiResult.Ok(PairingStatus.Waiting))
        mount()
        scheduler.advanceTimeBy(100L)
        rule.waitForIdle()

        rule.onNodeWithTag(SettingsPanel.REMOTE.testTag).performScrollTo()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.createCalls == 1 }
        scheduler.advanceTimeBy(2_001L)
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000) { exists("settings_remote_message") }

        // Conferma, account aggiornato, credenziali salvate e sessione rinnovata.
        rule.onNodeWithTag("settings_remote_message").performScrollTo()
            .assertTextEquals("Configurato da remoto")
        assertEquals(Triple(SERVER, "demo", "demo"), login.calls.last())
        assertEquals(SERVER, credentialStore.saved?.server)
        assertEquals("demo", credentialStore.saved?.username)
        assertEquals(listOf(Triple(SERVER, "demo", "demo")), remoteApplied)
        // Una sola sessione creata: il ciclo si è fermato dopo la consegna e
        // non ha mai interrogato il relay una seconda volta.
        assertEquals(1, pairingApi.createCalls)
        assertEquals(1, pairingApi.pollCalls)
        rule.onNodeWithTag("settings_server_supporting", useUnmergedTree = true)
            .performScrollTo()
            .assertTextEquals("001")
        assertFalse(exists("settings_remote_error"))
    }

    @Test
    fun `configura da remoto - credenziali errate non cambiano l'account`() {
        // Il server rifiuta le credenziali arrivate dal telefono.
        login.result = LoginResult.InvalidCredentials
        pairingApi.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "001001",
                    pollToken = "token-001001",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        pairingApi.statuses.addLast(
            ApiResult.Ok(
                PairingStatus.Ready(
                    RemoteCredentials(
                        server = SERVER,
                        username = "demo",
                        password = "demo-sbagliata",
                        serverCode = "001",
                    ),
                ),
            ),
        )
        pairingApi.statuses.addLast(ApiResult.Ok(PairingStatus.Waiting))
        val viewModel = createSettingsViewModel()
        mount(viewModel)
        scheduler.advanceTimeBy(100L)
        rule.waitForIdle()

        rule.onNodeWithTag(SettingsPanel.REMOTE.testTag).performScrollTo()
        rule.waitUntil(timeoutMillis = 5_000) { pairingApi.createCalls == 1 }
        scheduler.advanceTimeBy(2_001L)
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000) { exists("settings_remote_error") }

        // Errore visibile, sessione invariata: nessuna conferma, utente e server
        // restano quelli dell'accesso in corso.
        rule.onNodeWithTag("settings_remote_error").performScrollTo()
            .assertTextEquals("Utente o password non validi.")
        assertFalse(exists("settings_remote_message"))
        assertNull(credentialStore.saved)
        assertFalse(credentialStore.cleared)
        assertTrue(remoteApplied.isEmpty())
        assertEquals("demo", textOf("settings_username"))
        rule.onNodeWithTag("settings_server_supporting", useUnmergedTree = true)
            .performScrollTo()
            .assertTextEquals("Personalizzato")
        assertEquals("demo", viewModel.ui.value.username)
        assertEquals(0, signOutCalls)
    }

    companion object {
        private const val SERVER = "http://server.esempio:8080"
        private const val EXPIRES_AT = 4102444800L
    }
}
