package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.isRoot
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performTextReplacement
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.google.zxing.BinaryBitmap
import com.google.zxing.RGBLuminanceSource
import com.google.zxing.common.HybridBinarizer
import com.google.zxing.qrcode.QRCodeReader
import it.felixvision.tv.core.Clock
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.qr.QrBitmap
import it.felixvision.tv.ui.settings.vpn.VPN_GUIDE_URL
import it.felixvision.tv.ui.settings.vpn.VpnServersPage
import it.felixvision.tv.ui.settings.vpn.VpnRenameDialog
import it.felixvision.tv.ui.theme.FvpTheme
import it.felixvision.tv.vpn.*
import java.security.SecureRandom
import java.util.Base64
import kotlinx.coroutines.*
import okhttp3.OkHttpClient
import org.junit.After
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class VpnServersPageTest {
    @get:Rule val rule = createAndroidComposeRule<ComponentActivity>()
    private val context: Context get() = ApplicationProvider.getApplicationContext()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    private val cipher = object : VpnConfigCipher {
        override fun encrypt(plaintext: ByteArray) = plaintext.map { (it.toInt() xor 90).toByte() }.toByteArray()
        override fun decrypt(blob: ByteArray) = encrypt(blob)
    }
    private val store by lazy { VpnStore(context, cipher) }
    private val controller by lazy { VpnController(context, store, OkHttpClient(), OkHttpClient(), scope,
        Clock { 0L }, { error("backend not needed") }, "", permissionIntentProvider = { null }) }
    @After fun close() { scope.cancel() }
    private fun show(onSetup: () -> Unit = {}) {
        rule.setContent { FvpTheme { VpnServersPage(controller, UiScale(1f), {}, onSetup) } }
        rule.waitForIdle()
    }
    private fun click(text: String) {
        rule.onNode(hasText(text, substring = true) and hasClickAction()).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
    }
    private fun config(): String {
        fun key() = Base64.getEncoder().encodeToString(ByteArray(32).also { SecureRandom().nextBytes(it) })
        return "[Interface]\nPrivateKey = ${key()}\nAddress = 192.168.1.2/32\n[Peer]\nPublicKey = ${key()}\nAllowedIPs = 0.0.0.0/0\nEndpoint = 192.168.1.10:51820\n"
    }

    private fun waitForCell(id: String) {
        rule.waitUntil(timeoutMillis = 10_000L) {
            rule.onAllNodesWithTag("vpn_grid_$id").fetchSemanticsNodes().size == 1
        }
        rule.waitForIdle()
    }

    private fun cellBounds(id: String) =
        rule.onNodeWithTag("vpn_grid_$id").fetchSemanticsNode().boundsInRoot

    @Test fun `one server has four cards on first row and guide alone below with equal dimensions`() {
        store.saveConfig(config(), "NL Free #246")
        val serverId = store.servers.single().id
        show()
        waitForCell("server_$serverId")

        // Misuriamo le celle, non l'ingrandimento animato della card col focus.
        val ids = listOf("toggle", "server_$serverId", "add", "remove")
        val firstRow = ids.map { cellBounds(it) }
        val first = firstRow.first()
        firstRow.forEachIndexed { index, bounds ->
            assertEquals(first.top, bounds.top, 1f)
            assertEquals(first.width, bounds.width, 1f)
            assertEquals(SettingsCardDimens.HEIGHT_BASE, bounds.height, 1f)
            if (index > 0) assertTrue(bounds.left > firstRow[index - 1].right)
        }
        val guide = cellBounds("guide")
        assertEquals(first.left, guide.left, 1f)
        assertEquals(first.width, guide.width, 1f)
        assertEquals(first.height, guide.height, 1f)
        assertEquals(SettingsCardDimens.GRID_SPACING_BASE, guide.top - first.bottom, 1f)
        // Quattro colonne reali: la card Guida non occupa le tre celle vuote.
        assertTrue(guide.right < firstRow[1].left)
        rule.onNodeWithText("Aggiungi server").assertIsFocused()
        rule.onNodeWithText("Accendi").assertExists()
        rule.onNodeWithText("NL Free #246", substring = true).assertExists()
    }

    @Test fun `five servers wrap at four columns without stretching the last row`() {
        repeat(5) { store.saveConfig(config(), "Server ${it + 1}") }
        val serverIds = store.servers.map { "server_${it.id}" }
        show()
        serverIds.forEach { waitForCell(it) }
        val ids = listOf("toggle") + serverIds + listOf("add", "remove", "guide")
        val first = cellBounds(ids.first())
        ids.forEachIndexed { index, id ->
            val bounds = cellBounds(id)
            assertEquals(first.width, bounds.width, 1f)
            assertEquals(first.height, bounds.height, 1f)
            assertEquals(
                first.left + (index % 4) * (first.width + SettingsCardDimens.GRID_SPACING_BASE),
                bounds.left, 1f,
            )
            assertEquals(
                first.top + (index / 4) * (first.height + SettingsCardDimens.GRID_SPACING_BASE),
                bounds.top, 1f,
            )
        }
    }

    @Test fun `empty archive keeps add and guide at single card width`() {
        show()
        waitForCell("add")
        val add = cellBounds("add")
        val guide = cellBounds("guide")
        assertEquals(add.top, guide.top, 1f)
        assertEquals(add.width, guide.width, 1f)
        assertEquals(add.height, guide.height, 1f)
        assertEquals(SettingsCardDimens.GRID_SPACING_BASE, guide.left - add.right, 1f)
        rule.onNodeWithText("Nessuna configurazione").assertExists()
    }

    @Test fun `first add opens guide continue opens setup and second add skips guide`() {
        var setups = 0
        show { setups++ }
        click("Aggiungi server")
        rule.onNodeWithText("Come aggiungere un server VPN").assertExists()
        rule.onNodeWithText("Continua").assertIsFocused()
        val continueBounds = rule.onNodeWithTag("vpn_guide_continue_button").fetchSemanticsNode().boundsInRoot
        val closeBounds = rule.onNodeWithTag("vpn_guide_close_button").fetchSemanticsNode().boundsInRoot
        assertEquals(continueBounds.top, closeBounds.top, 1f)
        assertEquals(continueBounds.bottom, closeBounds.bottom, 1f)
        assertTrue(continueBounds.right < closeBounds.left)
        assertTrue(continueBounds.height < SettingsCardDimens.HEIGHT_BASE)
        rule.onNodeWithTag("vpn_guide_continue_button").performKeyInput { pressKey(Key.DirectionRight) }
        rule.onNodeWithTag("vpn_guide_close_button").assertIsFocused()
        rule.onNodeWithTag("vpn_guide_close_button").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.onNodeWithTag("vpn_guide_continue_button").assertIsFocused()
        click("Continua")
        assertEquals(1, setups)
        rule.onNodeWithText("Come aggiungere un server VPN").assertDoesNotExist()
        click("Aggiungi server")
        assertEquals(2, setups)
        rule.waitUntil { store.guideShown }
    }

    @Test fun `Back closes guide without starting setup and next add skips it`() {
        var setups = 0
        show { setups++ }
        click("Aggiungi server")
        rule.onNodeWithText("Continua").performKeyInput { pressKey(Key.Back) }
        rule.onNodeWithText("Come aggiungere un server VPN").assertDoesNotExist()
        assertEquals(0, setups)
        click("Aggiungi server")
        assertEquals(1, setups)
    }

    @Test fun `guide button continue also opens setup`() {
        var setups = 0
        show { setups++ }
        click("Guida")
        click("Continua")
        assertEquals(1, setups)
    }

    @Test fun `remove mode keeps its card focused and shows selection instructions`() {
        store.saveConfig(config(), "Uno")
        show()

        // La card Rimuovi resta nella stessa cella e mantiene il focus dopo OK.
        rule.onNodeWithText("Aggiungi server").performKeyInput { pressKey(Key.DirectionRight) }
        rule.onNodeWithText("Rimuovi server").assertIsFocused()
        rule.onNodeWithText("Rimuovi server").performKeyInput { pressKey(Key.DirectionCenter) }
        rule.onNodeWithText("Seleziona i server che vuoi rimuovere").assertExists()
        rule.onNodeWithText("Rimuovi server").assertIsFocused()

        // La selezione continua a usare la spunta; il conteggio compare senza
        // rimuovere né spostare la card da cui si è entrati nella modalità.
        rule.onNodeWithText("Rimuovi server").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.onNodeWithText("Aggiungi server").assertIsFocused()
        rule.onNodeWithText("Aggiungi server").performKeyInput { pressKey(Key.DirectionLeft) }
        rule.onNodeWithText("Uno", substring = true).assertIsFocused()
        rule.onNodeWithText("Uno", substring = true).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.onNodeWithText("✓ Uno", substring = true).assertIsFocused()
        rule.onNodeWithText("Rimuovi selezionati (1)").assertExists()
        rule.onNodeWithText("Rimuovi server").assertExists()
    }

    @Test fun `selection confirmation starts on No and only Yes removes selected servers`() {
        listOf("Uno", "Due", "Tre").forEach { store.saveConfig(config(), it) }
        val before = store.servers
        show()
        click("Rimuovi server")
        rule.onNodeWithText("Seleziona i server che vuoi rimuovere").assertExists()
        rule.onNodeWithText("Rimuovi server").assertExists()
        click("Uno"); click("Due")
        rule.onNodeWithText("✓ Uno", substring = true).assertExists()
        rule.onNodeWithText("✓ Due", substring = true).assertExists()
        click("Rimuovi selezionati (2)")
        rule.onNodeWithText("Rimuovere 2 server?").assertExists()
        rule.onNodeWithText("No").assertIsFocused()
        click("No")
        assertEquals(before, store.servers)
        click("Rimuovi selezionati (2)")
        click("Sì")
        rule.waitUntil { controller.servers.value.size == 1 }
        assertEquals("Tre", store.serverName)
        rule.onNodeWithText("Uno", substring = true).assertDoesNotExist()
        rule.onNodeWithText("Due", substring = true).assertDoesNotExist()
    }

    @Test fun `sixth add shows limit while archive stays unchanged`() {
        repeat(5) { store.saveConfig(config(), "Demo") }
        val before = store.servers
        show()
        click("Aggiungi server")
        rule.onNodeWithText(VpnStore.LIMIT_MESSAGE).assertExists()
        assertEquals(before, store.servers)
    }

    @Test fun `Back clears selection then exits selection mode`() {
        store.saveConfig(config(), "Uno")
        show()
        click("Rimuovi server"); click("Uno")
        rule.onNode(isRoot()).performKeyInput { pressKey(Key.Back) }
        rule.onNodeWithText("Rimuovi selezionati", substring = true).assertDoesNotExist()
        rule.onNodeWithText("Seleziona i server che vuoi rimuovere").assertExists()
        rule.onNodeWithText("Rimuovi server").assertExists()
        rule.onNode(isRoot()).performKeyInput { pressKey(Key.Back) }
        rule.onNodeWithText("Seleziona i server che vuoi rimuovere").assertDoesNotExist()
        rule.onNodeWithText("Rimuovi server").assertExists()
    }

    @Test fun `rename disables blank and overlong values and saves trimmed name`() {
        val open = mutableStateOf(true)
        val saved = mutableStateOf("Prima")
        rule.setContent {
            FvpTheme {
                if (open.value) VpnRenameDialog("Prima", UiScale(1f), { open.value = false }) {
                    saved.value = it; open.value = false
                } else androidx.tv.material3.Text(saved.value)
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag("vpn_server_name").performSemanticsAction(SemanticsActions.OnClick)
        rule.onNodeWithTag("vpn_server_name_editor").performTextReplacement("   ")
        rule.onNodeWithText("Salva").assertIsNotEnabled()
        rule.onNodeWithTag("vpn_server_name_editor").performTextReplacement("x".repeat(31))
        rule.onNodeWithText("Salva").assertIsNotEnabled()
        rule.onNodeWithTag("vpn_server_name_editor").performTextReplacement("  Nuovo nome  ")
        click("Salva")
        assertEquals("Nuovo nome", saved.value)
        rule.onNodeWithText("Nuovo nome").assertExists()
    }

    @Test fun `guide QR decodes exact Proton account URL`() {
        val bitmap = QrBitmap.render(VPN_GUIDE_URL, 400)
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        val result = QRCodeReader().decode(BinaryBitmap(HybridBinarizer(RGBLuminanceSource(bitmap.width, bitmap.height, pixels))))
        assertEquals("https://account.protonvpn.com", result.text)
    }
}
