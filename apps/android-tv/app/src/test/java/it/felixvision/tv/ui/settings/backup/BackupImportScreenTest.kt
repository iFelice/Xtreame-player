package it.felixvision.tv.ui.settings.backup

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.performTextInput
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.backup.BackupAccountIds
import it.felixvision.tv.data.backup.BackupData
import it.felixvision.tv.data.backup.BackupRelayStatus
import it.felixvision.tv.data.backup.BackupRepository
import it.felixvision.tv.data.backup.BackupTransferCrypto
import it.felixvision.tv.data.backup.BackupVpn
import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpFieldEditorTag
import it.felixvision.tv.ui.settings.protection.PIN_OK_TAG
import it.felixvision.tv.ui.settings.protection.pinKeyTag
import it.felixvision.tv.ui.theme.FvpTheme
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Schermata "Importa backup": attesa con QR e codice, scadenza e trasporto non
 * valido con errore generico, password errata senza modifiche, flusso completo
 * con riepilogo, conferma per i backup di un altro account, creazione del PIN
 * e consenso per la VPN (relay finto, archivi veri).
 *
 * I pulsanti sono tv-material: OK si prova con l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class BackupImportScreenTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val password = "password-lunga"
    private val testKey = ByteArray(BackupTransferCrypto.KEY_BYTES) { index -> index.toByte() }

    private lateinit var favorites: FavoritesStore
    private lateinit var protectedStore: ProtectedContentStore
    private lateinit var repository: BackupRepository
    private var saveVpnCalls = 0
    private var exits = 0

    private fun stores() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        favorites = FavoritesStore(context = context)
        protectedStore = ProtectedContentStore(context = context)
        repository = BackupRepository(
            favorites = favorites,
            myChannels = MyChannelsStore(context = context),
            progress = ProgressStore(context = context),
            protectedContent = protectedStore,
        )
        saveVpnCalls = 0
        exits = 0
    }

    private fun showScreen(relay: FakeBackupRelay, tvHasVpnConfig: Boolean = false) {
        rule.setContent {
            FvpTheme {
                BackupImportScreen(
                    relay = relay,
                    repository = repository,
                    protectedStore = protectedStore,
                    clock = SystemClock,
                    relayBaseUrl = "https://relay.esempio",
                    server = server,
                    username = username,
                    tvHasVpnConfig = tvHasVpnConfig,
                    scale = scale,
                    saveVpn = { _, _ ->
                        saveVpnCalls++
                        true
                    },
                    onExit = { exits++ },
                    testTransportKey = testKey,
                )
            }
        }
        rule.waitForIdle()
    }

    /** Backup dimostrativo dello stesso account, con un preferito e nient'altro. */
    private fun backupData(
        accountServer: String = server,
        accountUsername: String = username,
        hidden: List<HiddenCategory> = emptyList(),
        vpn: BackupVpn? = null,
    ) = BackupData(
        favorites = listOf(FavoriteItem(id = "vod_201", type = FavoriteItem.VOD, title = "Film di prova")),
        hiddenCategories = hidden,
        account = BackupAccountIds.forAccount(accountServer, accountUsername),
        vpn = vpn,
    )

    /** File di backup cifrato e busta di trasporto pronta per il relay finto. */
    private fun readyStatus(data: BackupData): ApiResult<BackupRelayStatus> {
        val fileText = runBlocking { repository.encryptBackup(password, data) }
        val envelope = BackupTransferCrypto.encrypt(testKey, BACKUP_TEST_CODE, fileText.toByteArray(Charsets.UTF_8))
        return ApiResult.Ok(BackupRelayStatus.Ready(iv = envelope.iv, ciphertext = envelope.ciphertext))
    }

    private fun relayWithFile(data: BackupData): FakeBackupRelay =
        FakeBackupRelay(statusResults = listOf(readyStatus(data)))

    /** Scrive [text] nel campo password (OK per aprire, poi testo). */
    private fun inputPassword(text: String) {
        rule.onNodeWithTag(BACKUP_PASSWORD_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(fvpFieldEditorTag(BACKUP_PASSWORD_TAG)).performTextInput(text)
        rule.waitForIdle()
    }

    /** Digita il PIN sul tastierino a schermo e conferma con OK. */
    private fun enterPin(pin: String) {
        pin.forEach { digit ->
            rule.onNodeWithTag(pinKeyTag(digit.digitToInt())).performSemanticsAction(SemanticsActions.OnClick)
            rule.waitForIdle()
        }
        rule.onNodeWithTag(PIN_OK_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }

    /** Attende che il testo [text] compaia (lavoro asincrono della schermata). */
    private fun awaitText(text: String, timeoutMs: Long = 15_000L) {
        val deadline = System.currentTimeMillis() + timeoutMs
        var lastError: Throwable? = null
        while (System.currentTimeMillis() < deadline) {
            try {
                rule.onNodeWithText(text).assertExists()
                rule.waitForIdle()
                return
            } catch (error: Throwable) {
                lastError = error
                Thread.sleep(100L)
            }
        }
        throw AssertionError("testo non comparso: $text", lastError)
    }

    private fun favoriteIds(): List<String> =
        runBlocking { favorites.getFavorites(server, username) }.map { it.id }

    @Test
    fun `attesa mostra QR codice e istruzioni`() {
        stores()
        showScreen(FakeBackupRelay())

        awaitText(BACKUP_IMPORT_INSTRUCTIONS)
        rule.onNodeWithTag(BACKUP_CODE_TAG).assertTextEquals("1 2 3 4 5 6")
        rule.onNodeWithTag(BACKUP_IMPORT_CLOSE_TAG).assertIsDisplayed()
    }

    @Test
    fun `Annulla chiude senza modifiche`() {
        stores()
        showScreen(FakeBackupRelay())
        awaitText(BACKUP_IMPORT_INSTRUCTIONS)

        rule.onNodeWithTag(BACKUP_IMPORT_CLOSE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, exits)
        assertTrue(favoriteIds().isEmpty())
    }

    @Test
    fun `sessione scaduta mostra errore e Nuovo codice`() {
        stores()
        showScreen(FakeBackupRelay(statusResults = listOf(ApiResult.Ok(BackupRelayStatus.Expired))))

        awaitText(BACKUP_EXPIRED)
        rule.onNodeWithTag(BACKUP_IMPORT_RETRY_TAG).assertIsDisplayed()
        assertTrue(favoriteIds().isEmpty())
    }

    @Test
    fun `trasporto non valido mostra errore generico senza modifiche`() {
        stores()
        val relay = FakeBackupRelay(
            statusResults = listOf(ApiResult.Ok(BackupRelayStatus.Ready(iv = "AA", ciphertext = "AA"))),
        )
        showScreen(relay)

        awaitText(BACKUP_GENERIC_ERROR)
        rule.onNodeWithTag(BACKUP_IMPORT_RETRY_TAG).assertIsDisplayed()
        assertTrue(favoriteIds().isEmpty())
    }

    @Test
    fun `password errata mostra errore generico e non modifica nulla`() {
        stores()
        showScreen(relayWithFile(backupData()))
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword("password-sbagliata")
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_GENERIC_ERROR)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).assertIsDisplayed()
        assertTrue(favoriteIds().isEmpty())
    }

    @Test
    fun `flusso completo con password giusta mostra riepilogo e unisce`() {
        stores()
        showScreen(relayWithFile(backupData()))
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_DONE_TITLE)
        rule.onNodeWithText("Preferiti aggiunti: 1").assertIsDisplayed()
        assertEquals(listOf("vod_201"), favoriteIds())
    }

    @Test
    fun `backup di un altro account con No non cambia nulla`() {
        stores()
        val other = backupData(accountServer = "http://altro-server.esempio:8080")
        showScreen(relayWithFile(other))
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_OTHER_ACCOUNT_TITLE)
        rule.onNodeWithTag(BACKUP_NO_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, exits)
        assertTrue(favoriteIds().isEmpty())
    }

    @Test
    fun `backup di un altro account con Si applica l'unione`() {
        stores()
        val other = backupData(accountUsername = "altro")
        showScreen(relayWithFile(other))
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_OTHER_ACCOUNT_TITLE)
        rule.onNodeWithTag(BACKUP_YES_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_DONE_TITLE)
        assertEquals(listOf("vod_201"), favoriteIds())
    }

    @Test
    fun `senza PIN il backup con protetti chiede il PIN prima di applicare`() {
        stores()
        val withHidden = backupData(
            hidden = listOf(HiddenCategory(kind = "live", categoryId = "001", name = "Sport")),
        )
        showScreen(relayWithFile(withHidden))
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_PIN_TITLE)
        enterPin("1234")
        awaitText(BACKUP_PIN_CONFIRM_TITLE)
        enterPin("1234")

        awaitText(BACKUP_DONE_TITLE)
        rule.onNodeWithText("Contenuti nascosti aggiunti: 1").assertIsDisplayed()
        assertEquals(listOf("vod_201"), favoriteIds())
        assertTrue(runBlocking { protectedStore.get(server, username).hasPin })
    }

    @Test
    fun `con VPN sulla TV il No mantiene la TV e non salva`() {
        stores()
        val withVpn = backupData(vpn = BackupVpn(text = "configurazione", serverName = "Server"))
        showScreen(relayWithFile(withVpn), tvHasVpnConfig = true)
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_VPN_TITLE)
        rule.onNodeWithTag(BACKUP_NO_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_DONE_TITLE)
        rule.onNodeWithText("VPN della TV mantenuta.").assertIsDisplayed()
        assertEquals(0, saveVpnCalls)
        assertEquals(listOf("vod_201"), favoriteIds())
    }

    @Test
    fun `con VPN sulla TV il Si usa quella del backup`() {
        stores()
        val withVpn = backupData(vpn = BackupVpn(text = "configurazione", serverName = "Server"))
        showScreen(relayWithFile(withVpn), tvHasVpnConfig = true)
        awaitText(BACKUP_IMPORT_PASSWORD_HINT)

        inputPassword(password)
        rule.onNodeWithTag(BACKUP_CONTINUE_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_VPN_TITLE)
        rule.onNodeWithTag(BACKUP_YES_TAG).performSemanticsAction(SemanticsActions.OnClick)

        awaitText(BACKUP_DONE_TITLE)
        rule.onNodeWithText("VPN importata dal backup.").assertIsDisplayed()
        assertEquals(1, saveVpnCalls)
    }
}
