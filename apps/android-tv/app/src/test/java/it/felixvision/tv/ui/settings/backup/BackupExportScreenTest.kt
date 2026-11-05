package it.felixvision.tv.ui.settings.backup

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.performTextInput
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.backup.BackupCrypto
import it.felixvision.tv.data.backup.BackupRepository
import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpFieldEditorTag
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Schermata "Esporta backup": password digitata due volte, errori di
 * validazione senza toccare il relay, errore di rete con "Nuovo codice" e QR
 * con il codice dopo il deposito riuscito (relay finto, archivi veri).
 *
 * I pulsanti sono tv-material: OK si prova con l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class BackupExportScreenTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val server = "http://server.esempio:8080"
    private val username = "demo"

    private fun repository(): BackupRepository {
        val context = ApplicationProvider.getApplicationContext<Context>()
        return BackupRepository(
            favorites = FavoritesStore(context = context),
            myChannels = MyChannelsStore(context = context),
            progress = ProgressStore(context = context),
            protectedContent = ProtectedContentStore(context = context),
        )
    }

    private fun showScreen(relay: FakeBackupRelay, onExit: () -> Unit = {}) {
        rule.setContent {
            FvpTheme {
                BackupExportScreen(
                    relay = relay,
                    repository = repository(),
                    clock = SystemClock,
                    relayBaseUrl = "https://relay.esempio",
                    server = server,
                    username = username,
                    scale = scale,
                    vpnExport = { null },
                    onExit = onExit,
                )
            }
        }
        rule.waitForIdle()
    }

    /** Scrive [text] nel campo con tag [fieldTag] (OK per aprire, poi testo). */
    private fun inputPassword(fieldTag: String, text: String) {
        rule.onNodeWithTag(fieldTag).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(fvpFieldEditorTag(fieldTag)).performTextInput(text)
        rule.waitForIdle()
    }

    /** Attende che il nodo con [tag] compaia (lavoro asincrono della schermata). */
    private fun awaitTag(tag: String, timeoutMs: Long = 15_000L) {
        val deadline = System.currentTimeMillis() + timeoutMs
        var lastError: Throwable? = null
        while (System.currentTimeMillis() < deadline) {
            try {
                rule.onNodeWithTag(tag).assertExists()
                rule.waitForIdle()
                return
            } catch (error: Throwable) {
                lastError = error
                Thread.sleep(100L)
            }
        }
        throw AssertionError("tag $tag non comparso", lastError)
    }

    @Test
    fun `la schermata chiede la password due volte`() {
        showScreen(FakeBackupRelay())

        rule.onNodeWithTag(BACKUP_PASSWORD_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_PASSWORD_CONFIRM_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_CLOSE_TAG).assertIsDisplayed()
    }

    @Test
    fun `password troppo corta mostra errore e non tocca il relay`() {
        val relay = FakeBackupRelay()
        showScreen(relay)

        inputPassword(BACKUP_PASSWORD_TAG, "corta")
        inputPassword(BACKUP_PASSWORD_CONFIRM_TAG, "corta")
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(false, BackupCrypto.isValidPassword("corta"))
        rule.onNodeWithText(BACKUP_SHORT_PASSWORD).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).assertIsDisplayed()
        assertEquals(0, relay.createdDirections.size)
    }

    @Test
    fun `password diverse mostrano errore e non toccano il relay`() {
        val relay = FakeBackupRelay()
        showScreen(relay)

        inputPassword(BACKUP_PASSWORD_TAG, "password-lunga-1")
        inputPassword(BACKUP_PASSWORD_CONFIRM_TAG, "password-lunga-2")
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        rule.onNodeWithText(BACKUP_PASSWORD_MISMATCH).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).assertIsDisplayed()
        assertEquals(0, relay.createdDirections.size)
    }

    @Test
    fun `relay non raggiungibile mostra errore e Nuovo codice`() {
        val relay = FakeBackupRelay(createResult = ApiResult.Network(timedOut = false))
        showScreen(relay)

        inputPassword(BACKUP_PASSWORD_TAG, "password-lunga")
        inputPassword(BACKUP_PASSWORD_CONFIRM_TAG, "password-lunga")
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitTag(BACKUP_RETRY_TAG)
        // Il messaggio compare nel segnaposto e nel riquadro d'errore.
        rule.onAllNodesWithText(BACKUP_UNREACHABLE).assertCountEquals(2)
        rule.onNodeWithTag(BACKUP_CLOSE_TAG).assertIsDisplayed()
        assertEquals(1, relay.createdDirections.size)
    }

    @Test
    fun `deposito riuscito mostra QR e codice`() {
        showScreen(FakeBackupRelay())

        inputPassword(BACKUP_PASSWORD_TAG, "password-lunga")
        inputPassword(BACKUP_PASSWORD_CONFIRM_TAG, "password-lunga")
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitTag(BACKUP_CODE_TAG)
        rule.onNodeWithTag(BACKUP_CODE_TAG).assertTextEquals("1 2 3 4 5 6")
        rule.onNodeWithTag(BACKUP_CLOSE_TAG).assertIsDisplayed()
    }

    @Test
    fun `Chiudi esce dalla schermata`() {
        var exits = 0
        showScreen(FakeBackupRelay(), onExit = { exits++ })

        rule.onNodeWithTag(BACKUP_CLOSE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, exits)
    }
}
