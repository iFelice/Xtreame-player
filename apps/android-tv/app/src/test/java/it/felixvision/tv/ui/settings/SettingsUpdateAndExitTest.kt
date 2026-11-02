package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.AppContainer
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.update.ApkDownloadResult
import it.felixvision.tv.data.update.GithubUpdateClient
import it.felixvision.tv.data.update.INCOMPATIBLE_UPDATE_MESSAGE
import it.felixvision.tv.data.update.InstallEvent
import it.felixvision.tv.data.update.InstallNotification
import it.felixvision.tv.data.update.ReleaseCheckResult
import it.felixvision.tv.data.update.ReleaseInfo
import it.felixvision.tv.data.update.UNKNOWN_SOURCES_INSTRUCTIONS
import it.felixvision.tv.data.update.UPDATES_DIR_NAME
import it.felixvision.tv.data.update.UpdateChecker
import it.felixvision.tv.data.update.UpdateClient
import it.felixvision.tv.data.update.UpdateFiles
import it.felixvision.tv.data.update.UpdateInstaller
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.io.File
import kotlin.io.path.createTempDirectory
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.runBlocking
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowLooper

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsUpdateAndExitTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val demoServer = "http://server.esempio:8080"
    private val demoUser = "demo"
    private val demoPass = "demo"

    private lateinit var mockServer: MockWebServer
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        mockServer = MockWebServer()
        mockServer.start()
        tempDir = createTempDirectory("fvp_settings_test").toFile()
    }

    @After
    fun tearDown() {
        mockServer.shutdown()
        tempDir.deleteRecursively()
    }

    private class InMemoryCredentialStore(
        var stored: StoredCredentials? = null,
    ) : CredentialStore {
        override suspend fun load(): StoredCredentials? = stored

        override suspend fun save(credentials: StoredCredentials) {
            stored = credentials
        }

        override suspend fun clear() {
            stored = null
        }
    }

    private class FakeUpdateInstaller(
        override val updatesDir: File,
        var canInstall: Boolean = true,
        var settingsActivityAvailable: Boolean = true,
    ) : UpdateInstaller {
        private var nextId = 0L
        private val _notifications = MutableStateFlow<InstallNotification?>(null)
        override val notifications: StateFlow<InstallNotification?> = _notifications.asStateFlow()

        var openedSettingsCount = 0
        var installedFiles = mutableListOf<String>()

        override fun canRequestPackageInstalls(): Boolean = canInstall

        override fun openUnknownSourcesSettings(): Boolean {
            openedSettingsCount += 1
            return settingsActivityAvailable
        }

        override suspend fun installApk(apkFile: File): String? {
            installedFiles.add(apkFile.name)
            return null
        }

        override fun cleanupDownloadedFiles() {
            UpdateFiles.cleanupDir(updatesDir)
        }

        fun emitInstallEvent(event: InstallEvent) {
            nextId += 1L
            _notifications.value = InstallNotification(id = nextId, event = event)
        }
    }

    private object IdleUpdateClient : UpdateClient {
        override suspend fun fetchLatestRelease(): ReleaseCheckResult = ReleaseCheckResult.Failure

        override suspend fun downloadApk(
            release: ReleaseInfo,
            updatesDir: File,
            onProgressPercent: (Int) -> Unit,
        ): ApkDownloadResult = ApkDownloadResult.Failure
    }

    private fun awaitCondition(timeoutMillis: Long = 5_000L, predicate: () -> Boolean) {
        val deadline = System.currentTimeMillis() + timeoutMillis
        while (!predicate() && System.currentTimeMillis() < deadline) {
            ShadowLooper.idleMainLooper()
            Thread.sleep(20)
        }
        ShadowLooper.idleMainLooper()
    }

    private fun latestJsonWithApk(tag: String, apkUrl: String, size: Long): String = """
        {
          "tag_name": "$tag",
          "assets": [
            {
              "name": "FelixVP.apk",
              "browser_download_url": "$apkUrl",
              "size": $size
            }
          ]
        }
    """.trimIndent()

    @Test
    fun `riga Versione stati mostrati e pulsante Aggiorna visibile solo con versione piu nuova`() {
        // Pagina "Impostazioni › App", aperta dalla card App della griglia.
        var uiState by mutableStateOf(
            SettingsUiState(
                username = demoUser,
                serverLabel = demoServer,
                status = "Attivo",
                versionName = "1.0.2",
                versionCode = 105,
                updateStatus = AppUpdateStatus.Checking,
            ),
        )
        var updateClicks = 0

        rule.setContent {
            FvpTheme {
                SettingsAppPage(
                    state = uiState,
                    scale = scale,
                    onUpdateClicked = { updateClicks++ },
                )
            }
        }
        rule.waitForIdle()

        // 1. Riga Versione e stato iniziale "Controllo aggiornamenti…" (nessun pulsante Aggiorna)
        rule.onNodeWithText("Versione").assertIsDisplayed()
        rule.onNodeWithText("1.0.2").assertIsDisplayed()
        rule.onNodeWithText("(105)").assertIsDisplayed()
        rule.onNodeWithText("Controllo aggiornamenti…").assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertDoesNotExist()
        rule.onNodeWithText(SETTINGS_UPDATE_BUTTON_LABEL).assertDoesNotExist()

        // 2. Stato "App aggiornata" (nessun pulsante Aggiorna)
        uiState = uiState.copy(updateStatus = AppUpdateStatus.UpToDate)
        rule.waitForIdle()
        rule.onNodeWithText("App aggiornata").assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertDoesNotExist()

        // 3. Stato "Impossibile controllare gli aggiornamenti" (nessun pulsante Aggiorna)
        uiState = uiState.copy(updateStatus = AppUpdateStatus.CheckFailed)
        rule.waitForIdle()
        rule.onNodeWithText("Impossibile controllare gli aggiornamenti").assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertDoesNotExist()

        // 4. Stato "Disponibile la versione 1.0.3" con pulsante "Aggiorna" attivo
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "https://github.com/iFelice/felixvp-releases/releases/download/1.0.3/FelixVP.apk",
            sizeBytes = 1024L,
        )
        uiState = uiState.copy(updateStatus = AppUpdateStatus.Available(release = release))
        rule.waitForIdle()
        rule.onNodeWithText("Disponibile la versione 1.0.3").assertIsDisplayed()
        val buttonNode = rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG)
        buttonNode.assertIsDisplayed()
        buttonNode.assertHasClickAction()
        assertFalse(SemanticsProperties.Disabled in buttonNode.fetchSemanticsNode().config)
        buttonNode.performSemanticsAction(SemanticsActions.OnClick)
        assertEquals(1, updateClicks)

        // 5. Durante lo scaricamento: avanzamento in percentuale e pulsante disabilitato
        uiState = uiState.copy(
            updateStatus = AppUpdateStatus.Downloading(release = release, progressPercent = 42),
        )
        rule.waitForIdle()
        rule.onNodeWithText("Scaricamento aggiornamento… 42%").assertIsDisplayed()
        val disabledNode = rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG)
        disabledNode.assertIsDisplayed()
        assertTrue(SemanticsProperties.Disabled in disabledNode.fetchSemanticsNode().config)
    }

    @Test
    fun `versione disponibile e app aggiornata senza pallino nella pagina App`() {
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "https://github.com/iFelice/felixvp-releases/releases/download/1.0.3/FelixVP.apk",
            sizeBytes = 1024L,
        )
        var uiState by mutableStateOf(
            SettingsUiState(
                username = demoUser,
                serverLabel = demoServer,
                status = "Attivo",
                versionName = "1.0.2",
                versionCode = 102,
                updateStatus = AppUpdateStatus.Available(release = release),
            ),
        )

        rule.setContent {
            FvpTheme {
                SettingsAppPage(state = uiState, scale = scale)
            }
        }
        rule.waitForIdle()

        // Il testo della versione resta, il pallino appartiene solo al menu laterale.
        rule.onNodeWithText("Disponibile la versione 1.0.3").assertExists()
        rule.onAllNodesWithTag("settings_update_badge", useUnmergedTree = true).assertCountEquals(0)

        // Anche con l'app aggiornata non ci sono pallini nelle Impostazioni.
        uiState = uiState.copy(updateStatus = AppUpdateStatus.UpToDate)
        rule.waitForIdle()
        rule.onNodeWithText("App aggiornata").assertIsDisplayed()
        rule.onAllNodesWithTag("settings_update_badge", useUnmergedTree = true).assertCountEquals(0)
    }

    @Test
    fun `controllo aggiornamenti con MockWebServer distingue nuova versione aggiornata debug ed errore`() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val updatesDir = File(tempDir, UPDATES_DIR_NAME)
        val installer = FakeUpdateInstaller(updatesDir = updatesDir)
        val githubClient = GithubUpdateClient(
            http = HttpClientFactory.create(HttpConfig(readTimeoutMillis = 2_000L)),
            latestReleaseUrl = mockServer.url("/repos/iFelice/felixvp-releases/releases/latest").toString(),
            checkTimeoutMillis = 2_000L,
        )
        val container = AppContainer(
            context = context,
            credentialStoreOverride = InMemoryCredentialStore(),
            updateClientOverride = githubClient,
            updateInstallerOverride = installer,
        )
        // Il controllo aggiornamenti è il componente condiviso con il menu: qui
        // costruito con la versione installata 1.0.2 del caso di prova.
        val checkScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
        val sharedChecker = UpdateChecker(
            client = githubClient,
            currentVersion = "1.0.2",
            scope = checkScope,
            isDebugBuild = false,
        )

        val apkUrl = mockServer.url("/download/FelixVP.apk").toString()

        // Caso A: installata 1.0.2, remota 1.0.10 -> disponibile 1.0.10
        mockServer.enqueue(
            MockResponse().setResponseCode(200).setBody(latestJsonWithApk("1.0.10", apkUrl, 4096L)),
        )
        val vmNewer = SettingsViewModel(
            container = container,
            server = demoServer,
            username = demoUser,
            password = demoPass,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = {},
            currentVersionName = "1.0.2",
            currentVersionCode = 102,
            updateChecker = sharedChecker,
        )
        vmNewer.checkForUpdates()
        awaitCondition { vmNewer.ui.value.updateStatus !is AppUpdateStatus.Checking }
        val available = vmNewer.ui.value.updateStatus as? AppUpdateStatus.Available
        assertNotNull(available)
        assertEquals("1.0.10", available!!.release.version)

        // Caso B: installata 1.0.2, remota 1.0.1 -> App aggiornata
        mockServer.enqueue(
            MockResponse().setResponseCode(200).setBody(latestJsonWithApk("1.0.1", apkUrl, 4096L)),
        )
        vmNewer.checkForUpdates()
        awaitCondition { vmNewer.ui.value.updateStatus is AppUpdateStatus.UpToDate }
        assertEquals(AppUpdateStatus.UpToDate, vmNewer.ui.value.updateStatus)

        // Caso C: risposta latest senza asset FelixVP.apk -> CheckFailed
        mockServer.enqueue(
            MockResponse().setResponseCode(200).setBody("""{"tag_name":"1.0.11","assets":[]}"""),
        )
        vmNewer.checkForUpdates()
        awaitCondition { vmNewer.ui.value.updateStatus is AppUpdateStatus.CheckFailed }
        assertEquals(AppUpdateStatus.CheckFailed, vmNewer.ui.value.updateStatus)

        // Caso D: build di debug 0.1.0 considera disponibile qualunque release
        mockServer.enqueue(
            MockResponse().setResponseCode(200).setBody(latestJsonWithApk("0.1.0", apkUrl, 4096L)),
        )
        val debugChecker = UpdateChecker(
            client = githubClient,
            currentVersion = "0.1.0",
            scope = checkScope,
            isDebugBuild = true,
        )
        val vmDebug = SettingsViewModel(
            container = container,
            server = demoServer,
            username = demoUser,
            password = demoPass,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = {},
            currentVersionName = "0.1.0",
            currentVersionCode = 1,
            updateChecker = debugChecker,
        )
        vmDebug.onSettingsVisible()
        awaitCondition { vmDebug.ui.value.updateStatus !is AppUpdateStatus.Checking }
        assertTrue(vmDebug.ui.value.updateStatus is AppUpdateStatus.Available)
        vmDebug.onSettingsHidden()
    }

    @Test
    fun `permesso mancante ricontrollo al ritorno scaricamento e messaggio firma incompatibile`() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val updatesDir = File(tempDir, UPDATES_DIR_NAME)
        val installer = FakeUpdateInstaller(
            updatesDir = updatesDir,
            canInstall = false,
            settingsActivityAvailable = false,
        )
        val githubClient = GithubUpdateClient(
            http = HttpClientFactory.create(HttpConfig(readTimeoutMillis = 2_000L)),
            latestReleaseUrl = mockServer.url("/repos/iFelice/felixvp-releases/releases/latest").toString(),
            checkTimeoutMillis = 2_000L,
        )
        val container = AppContainer(
            context = context,
            credentialStoreOverride = InMemoryCredentialStore(),
            updateClientOverride = githubClient,
            updateInstallerOverride = installer,
        )

        val checkScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
        val sharedChecker = UpdateChecker(
            client = githubClient,
            currentVersion = "1.0.2",
            scope = checkScope,
            isDebugBuild = false,
        )

        val apkPayload = "SIGNED_RELEASE_APK_".repeat(256)
        val apkBytes = apkPayload.toByteArray(Charsets.UTF_8).size.toLong()
        val apkUrl = mockServer.url("/download/FelixVP.apk").toString()
        mockServer.enqueue(
            MockResponse().setResponseCode(200).setBody(latestJsonWithApk("1.0.3", apkUrl, apkBytes)),
        )
        mockServer.enqueue(MockResponse().setResponseCode(200).setBody(apkPayload))

        val vm = SettingsViewModel(
            container = container,
            server = demoServer,
            username = demoUser,
            password = demoPass,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = {},
            currentVersionName = "1.0.2",
            currentVersionCode = 102,
            updateChecker = sharedChecker,
        )
        vm.checkForUpdates()
        awaitCondition { vm.ui.value.updateStatus is AppUpdateStatus.Available }

        // Senza permesso e senza attività di sistema: mostra le istruzioni per l'utente.
        vm.onUpdateClicked()
        assertEquals(1, installer.openedSettingsCount)
        val withoutPerm = vm.ui.value.updateStatus as AppUpdateStatus.Available
        assertEquals(UNKNOWN_SOURCES_INSTRUCTIONS, withoutPerm.noticeMessage)
        assertTrue(installer.installedFiles.isEmpty())

        // Al ritorno nelle Impostazioni ricontrolla il permesso senza avviare download automatici.
        installer.canInstall = true
        vm.onSettingsResumed()
        assertTrue(vm.ui.value.canInstallPackages)
        val afterResume = vm.ui.value.updateStatus as AppUpdateStatus.Available
        assertNull(afterResume.noticeMessage)
        assertTrue(installer.installedFiles.isEmpty())

        // Con permesso e conferma dell'utente: scarica FelixVP-1.0.3.apk e avvia PackageInstaller.
        vm.onUpdateClicked()
        awaitCondition { installer.installedFiles.isNotEmpty() }
        assertEquals(listOf("FelixVP-1.0.3.apk"), installer.installedFiles)

        // Esito firma diversa: cancella il file scaricato e mostra le istruzioni con codice 9966403.
        installer.emitInstallEvent(InstallEvent.Failed(INCOMPATIBLE_UPDATE_MESSAGE))
        awaitCondition {
            (vm.ui.value.updateStatus as? AppUpdateStatus.Available)?.errorMessage != null
        }
        val afterConflict = vm.ui.value.updateStatus as AppUpdateStatus.Available
        assertEquals(INCOMPATIBLE_UPDATE_MESSAGE, afterConflict.errorMessage)
        assertFalse(File(updatesDir, "FelixVP-1.0.3.apk").exists())
    }

    @Test
    fun `uscita con casella spenta conserva preferiti avanzamento e Continua a guardare`() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val credentialStore = InMemoryCredentialStore(
            stored = StoredCredentials(
                server = demoServer,
                username = demoUser,
                password = demoPass,
                serverCode = "001",
            ),
        )
        val container = AppContainer(
            context = context,
            credentialStoreOverride = credentialStore,
            updateClientOverride = IdleUpdateClient,
            updateInstallerOverride = FakeUpdateInstaller(File(tempDir, UPDATES_DIR_NAME)),
        )

        runBlocking {
            container.catalogCache.save(
                demoServer,
                demoUser,
                Catalog(liveCategories = listOf(Category(categoryId = "1", categoryName = "Intrattenimento"))),
            )
            container.favoritesStore.addFavorite(
                demoServer,
                demoUser,
                FavoriteItem(id = "vod_201", type = "vod", title = "Film preferito"),
            )
            container.progressStore.save(demoServer, demoUser, "vod_201", 120_000L, 600_000L)
            container.continueWatchingStore.recordMovie(
                demoServer,
                demoUser,
                ContinueEntry.movie(
                    streamId = "201",
                    title = "Film preferito",
                    poster = null,
                    categoryId = "1",
                    containerExtension = "mp4",
                ),
                120_000L,
                600_000L,
            )
        }

        var signedOut = false
        val vm = SettingsViewModel(
            container = container,
            server = demoServer,
            username = demoUser,
            password = demoPass,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = { signedOut = true },
            credentialStore = credentialStore,
        )
        vm.onExitClicked()
        assertFalse(vm.ui.value.clearUserDataOnExit)

        rule.setContent {
            FvpTheme {
                val state by vm.ui.collectAsState()
                SettingsExitConfirmContent(
                    clearUserData = state.clearUserDataOnExit,
                    scale = scale,
                    onToggleClearUserData = vm::onToggleClearUserDataOnExit,
                    onCancel = vm::onExitCancel,
                    onConfirm = vm::onExitConfirm,
                )
            }
        }
        rule.waitForIdle()

        // Focus iniziale su Annulla e casella disattivata per impostazione predefinita.
        rule.onNodeWithTag("settings_exit_annulla").assertIsFocused()
        rule.onNodeWithText(SETTINGS_EXIT_CLEAR_DATA_LABEL).assertIsDisplayed()
        assertFalse(vm.ui.value.clearUserDataOnExit)

        // Conferma uscita lasciando la casella spenta.
        rule.onNodeWithTag("settings_exit_conferma").performSemanticsAction(SemanticsActions.OnClick)
        awaitCondition { signedOut }
        assertTrue(signedOut)

        runBlocking {
            assertNull(credentialStore.load())
            assertNull(container.catalogCache.load(demoServer, demoUser))
            val favs = container.favoritesStore.getFavorites(demoServer, demoUser)
            assertEquals(1, favs.size)
            assertEquals("vod_201", favs.single().id)
            assertNotNull(container.progressStore.get(demoServer, demoUser, "vod_201"))
            assertEquals(1, container.continueWatchingStore.getAll(demoServer, demoUser).size)
        }
    }

    @Test
    fun `uscita con casella accesa cancella anche preferiti avanzamento e Continua a guardare`() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val credentialStore = InMemoryCredentialStore(
            stored = StoredCredentials(
                server = demoServer,
                username = demoUser,
                password = demoPass,
                serverCode = "001",
            ),
        )
        val container = AppContainer(
            context = context,
            credentialStoreOverride = credentialStore,
            updateClientOverride = IdleUpdateClient,
            updateInstallerOverride = FakeUpdateInstaller(File(tempDir, UPDATES_DIR_NAME)),
        )

        runBlocking {
            container.catalogCache.save(
                demoServer,
                demoUser,
                Catalog(liveCategories = listOf(Category(categoryId = "1", categoryName = "Intrattenimento"))),
            )
            container.favoritesStore.addFavorite(
                demoServer,
                demoUser,
                FavoriteItem(id = "vod_201", type = "vod", title = "Film preferito"),
            )
            container.progressStore.save(demoServer, demoUser, "vod_201", 120_000L, 600_000L)
            container.continueWatchingStore.recordMovie(
                demoServer,
                demoUser,
                ContinueEntry.movie(
                    streamId = "201",
                    title = "Film preferito",
                    poster = null,
                    categoryId = "1",
                    containerExtension = "mp4",
                ),
                120_000L,
                600_000L,
            )
        }

        var signedOut = false
        val vm = SettingsViewModel(
            container = container,
            server = demoServer,
            username = demoUser,
            password = demoPass,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = { signedOut = true },
            credentialStore = credentialStore,
        )
        vm.onExitClicked()

        rule.setContent {
            FvpTheme {
                val state by vm.ui.collectAsState()
                SettingsExitConfirmContent(
                    clearUserData = state.clearUserDataOnExit,
                    scale = scale,
                    onToggleClearUserData = vm::onToggleClearUserDataOnExit,
                    onCancel = vm::onExitCancel,
                    onConfirm = vm::onExitConfirm,
                )
            }
        }
        rule.waitForIdle()

        // Attiva la casella "Cancella anche preferiti e cronologia" e conferma l'uscita.
        rule.onNodeWithTag(SETTINGS_EXIT_CLEAR_DATA_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertTrue(vm.ui.value.clearUserDataOnExit)

        rule.onNodeWithTag("settings_exit_conferma").performSemanticsAction(SemanticsActions.OnClick)
        awaitCondition { signedOut }
        assertTrue(signedOut)

        runBlocking {
            assertNull(credentialStore.load())
            assertNull(container.catalogCache.load(demoServer, demoUser))
            assertTrue(container.favoritesStore.getFavorites(demoServer, demoUser).isEmpty())
            assertTrue(container.progressStore.getAll(demoServer, demoUser).isEmpty())
            assertTrue(container.continueWatchingStore.getAll(demoServer, demoUser).isEmpty())
        }
    }
}
