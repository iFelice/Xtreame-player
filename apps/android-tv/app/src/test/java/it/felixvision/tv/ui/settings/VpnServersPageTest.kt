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

    @Test fun `first add opens guide continue opens setup and second add skips guide`() {
        var setups = 0
        show { setups++ }
        click("Aggiungi server")
        rule.onNodeWithText("Come aggiungere un server VPN").assertExists()
        rule.onNodeWithText("Continua").assertIsFocused()
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

    @Test fun `selection confirmation starts on No and only Yes removes selected servers`() {
        listOf("Uno", "Due", "Tre").forEach { store.saveConfig(config(), it) }
        val before = store.servers
        show()
        click("Rimuovi server")
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
        rule.onNodeWithText("Rimuovi server").assertDoesNotExist()
        rule.onNode(isRoot()).performKeyInput { pressKey(Key.Back) }
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
