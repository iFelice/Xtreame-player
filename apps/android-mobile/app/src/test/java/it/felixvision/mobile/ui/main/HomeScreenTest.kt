@file:OptIn(
    kotlinx.coroutines.ExperimentalCoroutinesApi::class,
    androidx.compose.ui.test.ExperimentalTestApi::class,
    androidx.media3.common.util.UnstableApi::class,
)

package it.felixvision.mobile.ui.main

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasTestTag
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.longClick
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTouchInput
import androidx.compose.ui.text.TextLayoutResult
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.access.AccountSummary
import it.felixvision.mobile.ui.catalog.CatalogCacheGateway
import it.felixvision.mobile.ui.catalog.CatalogGateway
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.ContinueWatchingGateway
import it.felixvision.mobile.ui.catalog.FavoritesGateway
import it.felixvision.mobile.ui.catalog.MyChannelsGateway
import it.felixvision.mobile.ui.catalog.ProgressGateway
import it.felixvision.mobile.ui.settings.SettingsViewModel
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
import it.felixvision.tv.data.xtream.AccountStatus
import it.felixvision.tv.data.xtream.LoginResult
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlin.math.abs
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Compose della schermata principale del tablet (Robolectric).
 *
 * Le due modalità di navigazione si verificano con i qualifier della finestra:
 * - `w1280dp-h800dp-land-mdpi` → barra laterale con tutte le 8 sezioni;
 * - `w800dp-h1280dp-port-mdpi` → barra in basso con le 5 voci + icone di
 *   intestazione "Cerca"/"Impostazioni".
 *
 * Regole del progetto: un solo `setContent` per test; funzioni membro pubblich
 * es delle classi di test chiamate come membri, non importate; il clock
 * iniettato è coerente con il tempo virtuale (qui niente debounce: le misure
 * sono solo di cataloghi e preferiti, coerenti in contrasto col 300ms della
 * ricerca, che vive nei test del ViewModel); dati di esempio solo
 * http://server.esempio:8080 con demo/demo; chiavi lazy uniche tra sezioni.
 */
@RunWith(AndroidJUnit4::class)
class HomeScreenTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    // --- Finti (nessuna rete, nessun Android pesante) ---

    private fun sampleCatalog(): Catalog = Catalog(
        liveCategories = listOf(
            Category(categoryId = "c1", categoryName = "Generale"),
            Category(categoryId = "c2", categoryName = "Sport"),
        ),
        liveStreams = listOf(
            LiveStream(num = 1, name = "Canale Uno", streamId = "101", categoryId = "c1"),
            LiveStream(num = 2, name = "Canale Due", streamId = "102", categoryId = "c1"),
            LiveStream(num = 3, name = "Sport Uno", streamId = "103", categoryId = "c2"),
        ),
        vodCategories = listOf(
            Category(categoryId = "v1", categoryName = "Film"),
            Category(categoryId = "v2", categoryName = "Animazione"),
        ),
        vodStreams = listOf(
            VodStream(streamId = "201", name = "Film Esempio", categoryId = "v1"),
            VodStream(streamId = "202", name = "Cartone Esempio", categoryId = "v2"),
        ),
        seriesCategories = listOf(Category(categoryId = "s1", categoryName = "Serie")),
        series = listOf(SeriesItem(seriesId = "301", name = "Serie Esempio", categoryId = "s1")),
        updatedAtMillis = 1_000L,
    )

    private class FakeCatalogGateway(val catalog: Catalog) : CatalogGateway {
        override suspend fun loadCatalog(
            server: String,
            username: String,
            password: String,
            onStage: suspend (CatalogStage) -> Unit,
        ): CatalogResult {
            onStage(
                CatalogStage(
                    CatalogSection.LIVE,
                    CatalogSectionStatus.COMPLETED,
                    catalog.liveStreams.size,
                ),
            )
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

    private class FakeCacheGateway : CatalogCacheGateway {
        override suspend fun load(server: String, username: String): CachedCatalog? = null
        override suspend fun save(server: String, username: String, catalog: Catalog) {}
        override suspend fun clear(server: String, username: String) {}
        override suspend fun lastUpdateMillis(server: String, username: String): Long? = null
        override fun shouldAutoRefresh(lastUpdateMillis: Long?): Boolean = false
    }

    private class FakeFavoritesGateway : FavoritesGateway {
        override suspend fun getFavorites(server: String, username: String): List<FavoriteItem> =
            emptyList()

        override suspend fun toggleFavorite(
            server: String,
            username: String,
            item: FavoriteItem,
        ): Boolean = true
    }

    private class FakeMyChannelsGateway(initial: List<MyChannel>) : MyChannelsGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        val channels = initial.toMutableList()

        override suspend fun getChannels(server: String, username: String): List<MyChannel> =
            channels.toList()

        override suspend fun add(
            server: String,
            username: String,
            channel: MyChannel,
        ): List<MyChannel> = channels.toList()

        override suspend fun insertAt(
            server: String,
            username: String,
            channel: MyChannel,
            position: Int,
        ): List<MyChannel> = channels.toList()

        override suspend fun moveTo(
            server: String,
            username: String,
            streamId: String,
            position: Int,
        ): List<MyChannel> = channels.toList()

        override suspend fun remove(
            server: String,
            username: String,
            streamId: String,
        ): List<MyChannel> = channels.toList()

        override suspend fun migrateLegacyLiveFavorites(server: String, username: String): Int = 0
    }

    private class FakeContinueWatchingGateway : ContinueWatchingGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        override suspend fun getAll(server: String, username: String): List<ContinueEntry> =
            emptyList()

        override suspend fun hide(server: String, username: String, key: String) {}
    }

    private class FakeProgressGateway : ProgressGateway {
        private val _revision = MutableStateFlow(0L)
        override val revision: StateFlow<Long> = _revision.asStateFlow()

        override suspend fun getAll(server: String, username: String): Map<String, WatchProgress> =
            emptyMap()
    }

    private class FakeCredentialStore : CredentialStore {
        override suspend fun load(): StoredCredentials? = StoredCredentials(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
        )

        override suspend fun save(credentials: StoredCredentials) {}
        override suspend fun clear() {}
    }

    /** Orologio fisso: sufficiente senza debounce in questa suite UI. */
    private val fixedClock = Clock { 1_761_000_000_000L }

    private fun createCatalogViewModel(
        myChannels: List<MyChannel> = emptyList(),
    ): CatalogViewModel {
        return CatalogViewModel(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            catalogGateway = FakeCatalogGateway(sampleCatalog()),
            cacheGateway = FakeCacheGateway(),
            favoritesGateway = FakeFavoritesGateway(),
            myChannelsGateway = FakeMyChannelsGateway(myChannels),
            continueGateway = FakeContinueWatchingGateway(),
            progressGateway = FakeProgressGateway(),
        )
    }

    private fun createSettingsViewModel(): SettingsViewModel {
        return SettingsViewModel(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            expiresAtEpochSeconds = null,
            status = "",
            maxConnections = 2,
            activeConnections = 1,
            onSignOut = {},
            performLogin = { _, _, _ ->
                LoginResult.Unreachable(timedOut = false)
            },
            credentialStore = FakeCredentialStore(),
            readLastCatalogUpdate = { _, _ -> null },
            clearCatalogCache = { _, _ -> },
            clearUserData = { _, _ -> },
            isPlaybackActive = { false },
            clock = fixedClock,
        )
    }

    private fun mount(
        catalogViewModel: CatalogViewModel = createCatalogViewModel(),
    ): CatalogViewModel {
        val container = AppContainer(ApplicationProvider.getApplicationContext())
        val settingsViewModel = createSettingsViewModel()
        val summary = AccountSummary(
            username = "demo",
            server = "http://server.esempio:8080",
            status = AccountStatus.ACTIVE,
            expiresAtEpochSeconds = null,
            isTrial = false,
            maxConnections = 2,
            activeConnections = 1,
        )
        rule.setContent {
            FvpTheme {
                HomeScreen(
                    container = container,
                    summary = summary,
                    password = "demo",
                    banner = null,
                    onSignOut = {},
                    catalogViewModel = catalogViewModel,
                    settingsViewModel = settingsViewModel,
                    channelScheduleLoader = null,
                    imageLoader = container.imageLoader,
                    playerContent = { _, session, _ ->
                        val live = session.source as? it.felixvision.mobile.ui.player.MobilePlaybackSource.Live
                        androidx.compose.foundation.layout.Column {
                            androidx.compose.material3.Text(
                                live?.channels?.getOrNull(live.startIndex)?.name.orEmpty(),
                            )
                            androidx.compose.material3.Text("IN DIRETTA")
                        }
                    },
                )
            }
        }
        rule.waitForIdle()
        return catalogViewModel
    }

    // --- Navigazione adattiva (8 sezioni / 5 voci + icone) ---

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun `w1280dp-h800dp-land - barra laterale con le 8 sezioni`() {
        mount()
        rule.onNodeWithTag("home_rail").assertIsDisplayed()
        rule.onNodeWithTag("home_bottom_bar").assertDoesNotExist()
        listOf(
            "rail_item_novita",
            "rail_item_continua",
            "rail_item_live",
            "rail_item_film",
            "rail_item_serie",
            "rail_item_preferiti",
            "rail_item_cerca",
            "rail_item_impostazioni",
        ).forEach { rule.onNodeWithTag(it).assertIsDisplayed() }
        assertEquals(8, AppSection.entries.size)
    }

    /**
     * Barra laterale: tutte le voci hanno lo stesso centro orizzontale e la
     * stessa larghezza (icone in colonna), e nessuna etichetta va a capo o
     * viene troncata. L'etichetta della sezione "Continua a guardare" è
     * "Continua"; titolo della pagina e descrizione accessibile non cambiano.
     */
    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun `w1280dp-h800dp-land - voci della barra laterale centrate e senza troncamenti`() {
        mount()

        val bounds = AppSection.entries.map { section ->
            section to rule.onNodeWithTag("rail_item_${section.stateKey}").getUnclippedBoundsInRoot()
        }
        assertEquals(8, bounds.size)
        val firstCenter = (bounds.first().second.left + bounds.first().second.right) / 2f
        val firstWidth = bounds.first().second.right - bounds.first().second.left
        bounds.forEach { (section, rect) ->
            val center = (rect.left + rect.right) / 2f
            assertTrue(
                "${section.name}: centro $center diverso da $firstCenter",
                abs((center - firstCenter).value) <= 1f,
            )
            val width = rect.right - rect.left
            assertTrue(
                "${section.name}: larghezza $width diversa da $firstWidth",
                abs((width - firstWidth).value) <= 1f,
            )
        }

        AppSection.entries.forEach { section ->
            val layouts = mutableListOf<TextLayoutResult>()
            val label = rule.onNode(
                hasText(section.railLabel) and
                    hasAnyAncestor(hasTestTag("rail_item_${section.stateKey}")),
                useUnmergedTree = true,
            )
            label.fetchSemanticsNode()
                .config[SemanticsActions.GetTextLayoutResult]
                .action
                ?.invoke(layouts)
            val layout = layouts.singleOrNull()
            assertTrue("${section.name}: etichetta non trovata", layout != null)
            assertEquals("${section.name}: etichetta su più righe", 1, layout!!.lineCount)
            assertFalse("${section.name}: etichetta troncata", layout.hasVisualOverflow)
        }

        // "Continua" nella barra, ma la sezione resta "Continua a guardare".
        assertEquals("Continua", AppSection.CONTINUA.railLabel)
        assertEquals("Continua a guardare", AppSection.CONTINUA.title)
        rule.onNodeWithContentDescription("Continua a guardare").assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun `w800dp-h1280dp-port - barra in basso con le 5 voci e icone Cerca-Impostazioni`() {
        mount()
        rule.onNodeWithTag("home_bottom_bar").assertIsDisplayed()
        rule.onNodeWithTag("home_rail").assertDoesNotExist()
        rule.onNodeWithTag("home_header").assertIsDisplayed()
        listOf(
            "nav_item_novita",
            "nav_item_live",
            "nav_item_film",
            "nav_item_serie",
            "nav_item_preferiti",
        ).forEach { rule.onNodeWithTag(it).assertIsDisplayed() }
        rule.onNodeWithTag("header_cerca").assertIsDisplayed()
        rule.onNodeWithTag("header_impostazioni").assertIsDisplayed()
    }

    // --- Categorie a scomparsa (verticale) ---

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun `tendina categorie - la scelta chiude il pannello`() {
        mount()
        rule.onNodeWithTag("nav_item_film").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("category_header_film").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("category_panel_film").assertIsDisplayed()
        rule.onNodeWithTag("category_item_film_v2").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("category_panel_film").assertDoesNotExist()
        rule.onNodeWithTag("category_header_film").assertIsDisplayed()
    }

    // --- Pannello azioni (pressione lunga) ---

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun `pressione lunga su un canale apre il pannello azioni`() {
        mount()
        rule.onNodeWithTag("rail_item_live").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("live_row_101").performTouchInput { longClick() }
        rule.waitForIdle()
        rule.onNodeWithTag("action_sheet").assertIsDisplayed()
        rule.onNodeWithText("Aggiungi ai preferiti").assertIsDisplayed()
    }

    // --- Modifica dei "miei canali" ---

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun `modifica Preferiti - maniglie di trascinamento visibili`() {
        mount(
            catalogViewModel = createCatalogViewModel(
                myChannels = listOf(
                    MyChannel(streamId = "101", name = "Canale Uno"),
                    MyChannel(streamId = "102", name = "Canale Due"),
                ),
            ),
        )
        rule.onNodeWithTag("nav_item_preferiti").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("favorites_edit").performClick()
        rule.waitForIdle()
        // Le righe dei canali sono cliccabili (combinedClickable): i tag interni
        // vivono solo nell'albero non fuso.
        rule.onNodeWithTag("mychannel_drag_101", useUnmergedTree = true).assertIsDisplayed()
        rule.onNodeWithTag("mychannel_drag_102", useUnmergedTree = true).assertIsDisplayed()
        rule.onNodeWithTag("favorites_done").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("mychannel_drag_101", useUnmergedTree = true).assertDoesNotExist()
    }

    // --- Apertura del player dalla riga Live ---

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun `tocco sulla riga Live apre il player`() {
        mount()
        rule.onNodeWithTag("rail_item_live").performClick()
        rule.waitForIdle()
        rule.onNodeWithTag("live_row_101").performClick()
        rule.waitForIdle()
        rule.onNodeWithText("Canale Uno").assertIsDisplayed()
        rule.onNodeWithText("IN DIRETTA").assertIsDisplayed()
    }
}
