package it.felixvision.tv.ui.navigation

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.data.update.ApkDownloadResult
import it.felixvision.tv.data.update.ReleaseCheckResult
import it.felixvision.tv.data.update.ReleaseInfo
import it.felixvision.tv.data.update.UpdateCheckState
import it.felixvision.tv.data.update.UpdateChecker
import it.felixvision.tv.data.update.UpdateClient
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.io.File
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowLooper

/**
 * Pallino arancio di aggiornamento disponibile nel menu laterale.
 *
 * Il menu osserva lo stato condiviso ([UpdateChecker]); la rete è simulata da
 * un client delle release fittizio. Nessuna simulazione del telecomando: i
 * pulsanti tv-material si attivano con [androidx.compose.ui.semantics.SemanticsActions.OnClick]
 * e qui non serve attivarne nessuno. Versione installata di riferimento 1.0.2,
 * disponibile 1.0.3.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class DrawerUpdateBadgeTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val installedVersion = "1.0.2"
    private val scopes = mutableListOf<CoroutineScope>()

    @After
    fun tearDown() {
        scopes.forEach { scope -> scope.cancel() }
        scopes.clear()
    }

    /** Client delle release fittizio: restituisce in ordine gli esiti predisposti. */
    private class ScriptedUpdateClient(
        private val results: MutableList<ReleaseCheckResult>,
    ) : UpdateClient {
        private val requestCount = AtomicInteger(0)

        val calls: Int get() = requestCount.get()

        override suspend fun fetchLatestRelease(): ReleaseCheckResult {
            requestCount.incrementAndGet()
            return if (results.isNotEmpty()) results.removeAt(0) else ReleaseCheckResult.Failure
        }

        override suspend fun downloadApk(
            release: ReleaseInfo,
            updatesDir: File,
            onProgressPercent: (Int) -> Unit,
        ): ApkDownloadResult = ApkDownloadResult.Failure
    }

    private fun releaseFor(version: String) = ReleaseInfo(
        version = version,
        downloadUrl = "https://github.com/iFelice/felixvp-releases/releases/download/$version/FelixVP.apk",
        sizeBytes = 1024L,
    )

    private fun newChecker(vararg results: ReleaseCheckResult): Pair<UpdateChecker, ScriptedUpdateClient> {
        val client = ScriptedUpdateClient(results.toMutableList())
        val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
        scopes.add(scope)
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = scope,
            isDebugBuild = false,
        )
        return checker to client
    }

    /** Attesa limitata: le operazioni asincrone vanno attese prima di verificarle. */
    private fun awaitCondition(timeoutMillis: Long = 5_000L, predicate: () -> Boolean) {
        val deadline = System.currentTimeMillis() + timeoutMillis
        while (!predicate() && System.currentTimeMillis() < deadline) {
            ShadowLooper.idleMainLooper()
            Thread.sleep(20)
        }
        ShadowLooper.idleMainLooper()
    }

    private fun composeDrawer(
        checker: UpdateChecker,
        openMenu: Boolean = false,
    ) {
        rule.setContent {
            FvpTheme {
                val state by checker.state.collectAsState()
                val drawerState = rememberDrawerState(
                    initialValue = if (openMenu) DrawerValue.Open else DrawerValue.Closed,
                )
                FvpNavigationDrawer(
                    selected = DrawerSection.Novita,
                    onSelect = {},
                    scale = scale,
                    drawerState = drawerState,
                    updateAvailable = state is UpdateCheckState.Available,
                ) {
                    Box(modifier = Modifier.fillMaxSize().testTag("drawer_badge_content"))
                }
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `pallino nel menu chiuso quando lo stato condiviso segnala una versione disponibile`() {
        val (checker, client) = newChecker(ReleaseCheckResult.Available(releaseFor("1.0.3")))
        composeDrawer(checker = checker)

        // Nessun controllo ancora eseguito: nessun pallino.
        rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true).assertDoesNotExist()

        checker.checkNow()
        awaitCondition { checker.state.value is UpdateCheckState.Available }
        rule.waitForIdle()

        assertEquals(1, client.calls)
        val badge = rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true)
        badge.assertIsDisplayed()
        // Non focalizzabile: il nodo non ha azioni, quindi il telecomando lo salta.
        assertFalse(SemanticsActions.OnClick in badge.fetchSemanticsNode().config)
        // A menu chiuso l'etichetta non c'è, quindi nemmeno il suo pallino.
        rule.onAllNodesWithTag("drawer_update_badge_label", useUnmergedTree = true)
            .assertCountEquals(0)
    }

    @Test
    fun `a menu aperto il pallino resta solo sull icona`() {
        val (checker, client) = newChecker(ReleaseCheckResult.Available(releaseFor("1.0.3")))
        checker.checkNow()
        awaitCondition { checker.state.value is UpdateCheckState.Available }

        composeDrawer(checker = checker, openMenu = true)

        assertEquals(1, client.calls)
        rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true).assertIsDisplayed()
        // Nessun pallino accanto all'etichetta "Impostazioni".
        rule.onAllNodesWithTag("drawer_update_badge_label", useUnmergedTree = true)
            .assertCountEquals(0)
    }

    @Test
    fun `con app aggiornata il pallino non compare`() {
        // Release remota uguale alla versione installata 1.0.2: app aggiornata.
        val (checker, _) = newChecker(ReleaseCheckResult.Available(releaseFor(installedVersion)))
        composeDrawer(checker = checker, openMenu = true)
        rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true).assertDoesNotExist()

        // Controllo concluso con versione uguale a quella installata: app aggiornata.
        checker.checkNow()
        awaitCondition { checker.state.value is UpdateCheckState.UpToDate }
        rule.waitForIdle()

        assertEquals(UpdateCheckState.UpToDate, checker.state.value)
        rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true).assertDoesNotExist()
        rule.onAllNodesWithTag("drawer_update_badge_label", useUnmergedTree = true)
            .assertCountEquals(0)
    }

    @Test
    fun `un errore di controllo non mostra nulla nel menu`() {
        val (checker, _) = newChecker(ReleaseCheckResult.Failure)
        composeDrawer(checker = checker, openMenu = true)

        checker.checkNow()
        awaitCondition { checker.state.value is UpdateCheckState.Failed }
        rule.waitForIdle()

        assertEquals(UpdateCheckState.Failed, checker.state.value)
        rule.onNodeWithTag(DRAWER_UPDATE_BADGE_ICON_TAG, useUnmergedTree = true).assertDoesNotExist()
        rule.onAllNodesWithTag("drawer_update_badge_label", useUnmergedTree = true)
            .assertCountEquals(0)
    }

    @Test
    fun `il pallino non cambia la larghezza calcolata del menu`() {
        var updateAvailable by mutableStateOf(false)
        rule.setContent {
            FvpTheme {
                FvpNavigationDrawer(
                    selected = DrawerSection.Novita,
                    onSelect = {},
                    scale = scale,
                    updateAvailable = updateAvailable,
                ) {
                    Box(modifier = Modifier.fillMaxSize().testTag("drawer_badge_content"))
                }
            }
        }
        rule.waitForIdle()

        val widthWithoutBadge = rule.onNodeWithTag("drawer_Impostazioni")
            .fetchSemanticsNode()
            .boundsInRoot
            .width

        updateAvailable = true
        rule.waitForIdle()

        val widthWithBadge = rule.onNodeWithTag("drawer_Impostazioni")
            .fetchSemanticsNode()
            .boundsInRoot
            .width

        assertTrue(widthWithoutBadge > 0f)
        assertEquals(widthWithoutBadge, widthWithBadge, 0.01f)
    }
}
