@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
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
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.xtream.LoginResult
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Compose (Robolectric) della finestra di aggiornamento del catalogo
 * delle Impostazioni del tablet:
 * - barra con percentuale reale (Content-Length) o MB scaricati (senza);
 * - "Completato (N elementi)" alla fine di ogni sezione;
 * - riga rossa con messaggio e "Riprova" in caso di errore;
 * - se un aggiornamento è già in corso, il pulsante riapre la stessa finestra
 *   invece di essere ignorato;
 * - l'ora dell'ultimo aggiornamento cambia a fine aggiornamento;
 * - la riga Versione mostra versionName e versionCode.
 *
 * Il gateway del catalogo è controllato da un [CompletableDeferred]: il test
 * sospende il caricamento sulla tappa che gli serve e lo libera quando vuole.
 * Finestra in verticale 800x1280dp: le schede Account e Catalogo stanno in
 * una schermata senza scorrere. Nessuna rete; dati di esempio
 * http://server.esempio:8080 con demo/demo.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
class SettingsUpdateWindowTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val monitor = CatalogDownloadMonitor()

    /** Sblocca il caricamento quando il test lo decide. */
    private val gate = CompletableDeferred<Unit>()

    /** Vero dopo la prima chiamata: la seconda (Riprova) va a buon fine. */
    private var failFirstLoad = false

    private var cacheSavedAtMillis = 1_000L

    private val sampleCatalog: Catalog = Catalog(
        liveCategories = listOf(Category(categoryId = "c1", categoryName = "Demo")),
        liveStreams = List(3) { index ->
            LiveStream(num = index + 1, name = "Canale ${index + 1}", streamId = "${101 + index}", categoryId = "c1")
        },
        vodCategories = listOf(Category(categoryId = "v1", categoryName = "Film")),
        vodStreams = List(2) { index ->
            VodStream(streamId = "${201 + index}", name = "Film ${index + 1}", categoryId = "v1")
        },
        seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie")),
        series = listOf(SeriesItem(seriesId = "301", name = "Serie Demo", categoryId = "s1")),
        updatedAtMillis = 5_000L,
    )

    private var gatewayCalls = 0

    private val catalogGateway = object : CatalogGateway {
        override suspend fun loadCatalog(
            server: String,
            username: String,
            password: String,
            onStage: suspend (CatalogStage) -> Unit,
        ): CatalogResult {
            gatewayCalls++
            onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.DOWNLOADING))
            gate.await()
            if (failFirstLoad) {
                onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.ERROR))
                return CatalogResult.Error("Il server ha risposto con un errore (HTTP 500).")
            }
            onStage(CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 3))
            onStage(CatalogStage(CatalogSection.FILM, CatalogSectionStatus.COMPLETED, 2))
            onStage(CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.COMPLETED, 1))
            return CatalogResult.Success(sampleCatalog)
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

    private val cacheGateway = object : CatalogCacheGateway {
        override suspend fun load(server: String, username: String): CachedCatalog? =
            CachedCatalog(
                server = server,
                username = username,
                updatedAtMillis = cacheSavedAtMillis,
                catalog = sampleCatalog,
            )

        override suspend fun save(server: String, username: String, catalog: Catalog) {
            cacheSavedAtMillis = 3_600_000L
        }

        override suspend fun clear(server: String, username: String) {}

        override suspend fun lastUpdateMillis(server: String, username: String): Long? =
            cacheSavedAtMillis

        override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean = false
    }

    private val fixedClock = Clock { 1_761_000_000_000L }

    private fun createCatalogViewModel(): CatalogViewModel = CatalogViewModel(
        server = "http://server.esempio:8080",
        username = "demo",
        password = "demo",
        catalogGateway = catalogGateway,
        cacheGateway = cacheGateway,
        favoritesGateway = object : FavoritesGateway {
            override suspend fun getFavorites(server: String, username: String): List<FavoriteItem> = emptyList()
            override suspend fun toggleFavorite(
                server: String,
                username: String,
                item: FavoriteItem,
            ): Boolean = true
        },
        myChannelsGateway = object : MyChannelsGateway {
            private val _revision = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = _revision.asStateFlow()
            override suspend fun getChannels(server: String, username: String): List<MyChannel> = emptyList()
            override suspend fun add(server: String, username: String, channel: MyChannel): List<MyChannel> = emptyList()
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
            override suspend fun migrateLegacyLiveFavorites(server: String, username: String): Int = 0
        },
        continueGateway = object : ContinueWatchingGateway {
            private val _revision = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = _revision.asStateFlow()
            override suspend fun getAll(server: String, username: String): List<ContinueEntry> = emptyList()
            override suspend fun hide(server: String, username: String, key: String) {}
        },
        progressGateway = object : ProgressGateway {
            private val _revision = MutableStateFlow(0L)
            override val revision: StateFlow<Long> = _revision.asStateFlow()
            override suspend fun getAll(server: String, username: String): Map<String, WatchProgress> = emptyMap()
        },
    )

    private fun createSettingsViewModel(): SettingsViewModel =
        SettingsViewModel(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onSignOut = {},
            performLogin = { _, _, _ -> LoginResult.Unreachable(timedOut = false) },
            credentialStore = object : CredentialStore {
                override suspend fun load(): StoredCredentials? = null
                override suspend fun save(credentials: StoredCredentials) {}
                override suspend fun clear() {}
            },
            readLastCatalogUpdate = { server, username ->
                cacheGateway.lastUpdateMillis(server, username)
            },
            clearCatalogCache = { _, _ -> },
            clearUserData = { _, _ -> },
            isPlaybackActive = { false },
            clock = fixedClock,
        )

    private fun mount() {
        val catalogViewModel = createCatalogViewModel()
        val settingsViewModel = createSettingsViewModel()
        rule.setContent {
            FvpTheme {
                SettingsScreen(
                    settingsViewModel = settingsViewModel,
                    catalogViewModel = catalogViewModel,
                    downloadMonitor = monitor,
                )
            }
        }
        rule.waitUntil(timeoutMillis = 5_000) {
            rule.onAllNodesWithTag("settings_list").fetchSemanticsNodes().isNotEmpty()
        }
    }

    private fun exists(tag: String): Boolean =
        rule.onAllNodesWithTag(tag).fetchSemanticsNodes().isNotEmpty()

    private fun textOf(tag: String): String =
        rule.onAllNodesWithTag(tag)
            .fetchSemanticsNodes()
            .firstOrNull()
            ?.config
            ?.getOrNull(SemanticsProperties.Text)
            ?.joinToString("") { it.text }
            .orEmpty()

    // --- Finestra ---

    @Test
    fun `percentuale reale con content-length e mb scaricati senza`() {
        mount()

        rule.onNodeWithTag("settings_refresh").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_dialog") }

        // Live in scaricamento senza Content-Length: MB scaricati + barra.
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_row_live_bar") }
        rule.onNodeWithTag("update_row_live_status").assertTextEquals("0,0 MB scaricati")

        // Con il Content-Length dichiarato dall'interceptor: percentuale reale.
        monitor.begin(CatalogSection.LIVE, 200_000L)
        monitor.advance(CatalogSection.LIVE, 84_000L)
        rule.onNodeWithTag("update_row_live_status").assertTextEquals("42%")
        rule.onNodeWithTag("update_row_live_bar").assertExists()

        // Film e Serie restano in attesa finché il caricamento non procede.
        rule.onNodeWithTag("update_row_film_status").assertTextEquals("In attesa")
        rule.onNodeWithTag("update_row_serie_status").assertTextEquals("In attesa")

        // Fine dell'aggiornamento: ogni sezione con il conteggio elementi.
        gate.complete(Unit)
        rule.waitUntil(timeoutMillis = 5_000) {
            textOf("update_row_live_status") == "Completato (3 elementi)"
        }
        rule.onNodeWithTag("update_row_film_status").assertTextEquals("Completato (2 elementi)")
        rule.onNodeWithTag("update_row_serie_status").assertTextEquals("Completato (1 elementi)")
    }

    @Test
    fun `aggiornamento in corso - il pulsante apre la stessa finestra`() {
        mount()

        rule.onNodeWithTag("settings_refresh").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_dialog") }
        assertEquals(1, gatewayCalls)

        // Chiusura della finestra: l'aggiornamento prosegue in sottofondo.
        rule.onNodeWithTag("update_close").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { !exists("update_dialog") }

        // Il pulsante riapre la stessa finestra e non viene ignorato.
        rule.onNodeWithTag("settings_refresh").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_dialog") }
        assertEquals("Nessun secondo caricamento dev'essere partito", 1, gatewayCalls)

        gate.complete(Unit)
        rule.waitUntil(timeoutMillis = 5_000) {
            textOf("update_row_serie_status") == "Completato (1 elementi)"
        }
    }

    @Test
    fun `errore - riga rossa con messaggio e riprova riparte`() {
        failFirstLoad = true
        mount()

        rule.onNodeWithTag("settings_refresh").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_dialog") }
        gate.complete(Unit)

        rule.waitUntil(timeoutMillis = 5_000) { exists("update_error") }
        rule.onNodeWithText("Il server ha risposto con un errore (HTTP 500).").assertExists()
        rule.onNodeWithTag("update_row_live_status").assertTextEquals("Errore")

        // Riprova: il gateway ora risponde e la finestra torna ad avanzare.
        failFirstLoad = false
        rule.onNodeWithTag("update_retry").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { gatewayCalls == 2 }
        rule.waitUntil(timeoutMillis = 5_000) {
            textOf("update_row_live_status") == "Completato (3 elementi)"
        }
    }

    @Test
    fun `completato - l'ora dell'ultimo aggiornamento cambia`() {
        mount()

        val before = textOf("settings_last_update")
        rule.onNodeWithTag("settings_refresh").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { exists("update_dialog") }
        gate.complete(Unit)
        rule.waitUntil(timeoutMillis = 5_000) {
            textOf("update_row_serie_status") == "Completato (1 elementi)"
        }

        rule.onNodeWithTag("update_close").performClick()
        rule.waitUntil(timeoutMillis = 5_000) { !exists("update_dialog") }
        rule.waitUntil(timeoutMillis = 5_000) {
            val after = textOf("settings_last_update")
            after.isNotEmpty() && after != before
        }
    }

    @Test
    fun `riga versione - mostra versionName e versionCode`() {
        mount()
        rule.onNodeWithTag("settings_version")
            .assertTextEquals("${BuildConfig.VERSION_NAME} (${BuildConfig.VERSION_CODE})")
    }
}
