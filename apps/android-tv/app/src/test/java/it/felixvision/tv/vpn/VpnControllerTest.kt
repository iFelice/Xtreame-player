package it.felixvision.tv.vpn

import android.content.Context
import android.content.Intent
import androidx.test.core.app.ApplicationProvider
import com.wireguard.android.backend.Backend
import com.wireguard.android.backend.Statistics
import com.wireguard.android.backend.Tunnel
import com.wireguard.config.Config
import com.wireguard.crypto.Key
import it.felixvision.tv.core.Clock
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.launch
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import okhttp3.OkHttpClient
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config as RobolectricConfig

/**
 * Controller della VPN con un backend WireGuard finto: il vero GoBackend
 * (libreria nativa) non viene mai creato nei test. Tempo virtuale di
 * `runTest`; lo scope del controller è il `backgroundScope` del test.
 */
@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
@RobolectricConfig(sdk = [28])
class VpnControllerTest {

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private var backendsCreated = 0

    private class FakeCipher : VpnConfigCipher {
        override fun encrypt(plaintext: ByteArray): ByteArray =
            ByteArray(plaintext.size) { index -> (plaintext[index].toInt() xor XOR_KEY).toByte() }

        override fun decrypt(blob: ByteArray): ByteArray =
            ByteArray(blob.size) { index -> (blob[index].toInt() xor XOR_KEY).toByte() }
    }

    /** Backend finto: registra gli stati chiesti e risponde con o senza handshake. */
    private class FakeBackend(
        private val handshake: Boolean,
        private val failUp: Boolean = false,
    ) : Backend {
        val states = mutableListOf<Tunnel.State>()
        var lastTunnel: Tunnel? = null

        override fun getRunningTunnelNames(): Set<String> = emptySet()

        override fun getState(tunnel: Tunnel): Tunnel.State = states.lastOrNull() ?: Tunnel.State.DOWN

        override fun getStatistics(tunnel: Tunnel): Statistics = statistics(withHandshake = handshake)

        override fun getVersion(): String = "test"

        override fun isAlwaysOn(): Boolean = false

        override fun isLockdownEnabled(): Boolean = false

        override fun setState(tunnel: Tunnel, state: Tunnel.State, config: Config?): Tunnel.State {
            if (state == Tunnel.State.UP && failUp) throw IllegalStateException("tunnel di prova")
            states += state
            lastTunnel = tunnel
            return state
        }
    }

    private fun savedStore(enabled: Boolean): VpnStore = VpnStore(context, FakeCipher()).apply {
        saveConfig(VpnTestVectors.CONFIG_TEXT, VpnTestVectors.SERVER_NAME)
        setEnabled(enabled)
    }

    private fun TestScope.controller(
        backend: FakeBackend,
        store: VpnStore,
        permission: Intent? = null,
    ): VpnController = VpnController(
        context = context,
        store = store,
        httpClient = OkHttpClient(),
        imageHttpClient = OkHttpClient(),
        scope = backgroundScope,
        clock = Clock { testScheduler.currentTime },
        backendFactory = {
            backendsCreated++
            backend
        },
        // Nessun relay: niente traffico di rete nei test.
        relayBaseUrl = "",
        io = StandardTestDispatcher(testScheduler),
        permissionIntentProvider = { permission },
        handshakeTimeoutMillis = 1_000L,
        handshakePollMillis = 100L,
    )

    private fun TestScope.collectMessages(controller: VpnController): List<String> {
        val messages = mutableListOf<String>()
        backgroundScope.launch { controller.messages.collect { messages += it } }
        runCurrent()
        return messages
    }

    @Test
    fun `all'avvio con il permesso da chiedere non accende nulla e non chiede nulla`() = runTest {
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store, permission = Intent("android.net.vpn.PREPARE"))
        val messages = collectMessages(controller)

        controller.startIfEnabled()
        advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.PERMISSION_AGAIN_REASON), controller.state.value)
        assertEquals(listOf(VpnController.PERMISSION_AGAIN_REASON), messages)
        assertEquals(0, backendsCreated)
        assertTrue(store.isEnabled)
    }

    @Test
    fun `all'avvio con l'interruttore spento resta tutto fermo`() = runTest {
        val store = savedStore(enabled = false)
        val controller = controller(FakeBackend(handshake = true), store)

        controller.startIfEnabled()
        advanceUntilIdle()

        assertEquals(VpnState.Off, controller.state.value)
        assertEquals(0, backendsCreated)
    }

    @Test
    fun `con l'handshake entro il tempo la VPN è connessa`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        val messages = collectMessages(controller)

        controller.enable()
        advanceUntilIdle()

        assertEquals(VpnState.Connected(VpnTestVectors.SERVER_NAME), controller.state.value)
        assertEquals(listOf(Tunnel.State.UP), backend.states)
        assertTrue(store.isEnabled)
        assertTrue(messages.isEmpty())
    }

    @Test
    fun `senza handshake entro il tempo il tunnel si chiude e FelixVP prosegue senza VPN`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = false)
        val controller = controller(backend, store)
        val messages = collectMessages(controller)

        controller.enable()
        advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messages)
        // La scelta dell'utente resta accesa: si riprova al prossimo avvio.
        assertTrue(store.isEnabled)
    }

    @Test
    fun `un errore del backend all'accensione lascia la VPN non connessa`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true, failUp = true)
        val controller = controller(backend, store)
        val messages = collectMessages(controller)

        controller.enable()
        advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), controller.state.value)
        assertEquals(listOf(Tunnel.State.DOWN), backend.states)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messages)
    }

    @Test
    fun `Spegni chiude il tunnel e salva l'interruttore spento`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        controller.enable()
        advanceUntilIdle()

        controller.disable()
        advanceUntilIdle()

        assertEquals(VpnState.Off, controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertFalse(store.isEnabled)
    }

    @Test
    fun `Spegni durante la connessione annulla subito l'attesa dell'handshake`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = false)
        val controller = controller(backend, store)
        val messages = collectMessages(controller)
        controller.enable()
        advanceTimeBy(150L)
        assertEquals(VpnState.Connecting, controller.state.value)

        controller.disable()
        advanceUntilIdle()

        assertEquals(VpnState.Off, controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertTrue(messages.isEmpty())
    }

    @Test
    fun `Rimuovi chiude il tunnel e cancella configurazione e interruttore`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        controller.enable()
        advanceUntilIdle()

        controller.removeConfig()
        advanceUntilIdle()

        assertEquals(VpnState.NoConfig, controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertFalse(store.hasConfig())
        assertFalse(store.isEnabled)
    }

    @Test
    fun `una nuova configurazione con la VPN accesa riparte con il nuovo server`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        controller.enable()
        advanceUntilIdle()

        val newText = VpnTestVectors.CONFIG_TEXT.replace("# ${VpnTestVectors.SERVER_NAME}", "# CH-FREE#2")
        assertTrue(controller.saveConfig(newText, "CH-FREE#2"))
        advanceUntilIdle()

        assertEquals(VpnState.Connected("CH-FREE#2"), controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN, Tunnel.State.UP), backend.states)
        assertEquals("CH-FREE#2", store.serverName)
    }

    @Test
    fun `se il sistema chiude il tunnel la VPN risulta non connessa con un avviso`() = runTest {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        val messages = collectMessages(controller)
        controller.enable()
        advanceUntilIdle()

        checkNotNull(backend.lastTunnel).onStateChange(Tunnel.State.DOWN)
        advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), controller.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messages)
        assertTrue(store.isEnabled)
    }

    private companion object {
        const val XOR_KEY = 0x5A

        /**
         * Statistiche del backend: costruttore e `add` non sono pubblici nella
         * libreria, quindi si passa dalla reflection. Chiave a zero.
         */
        fun statistics(withHandshake: Boolean): Statistics {
            val constructor = Statistics::class.java.getDeclaredConstructor()
            constructor.isAccessible = true
            val statistics = constructor.newInstance()
            if (withHandshake) {
                val add = Statistics::class.java.getDeclaredMethod(
                    "add",
                    Key::class.java,
                    java.lang.Long.TYPE,
                    java.lang.Long.TYPE,
                    java.lang.Long.TYPE,
                )
                add.isAccessible = true
                add.invoke(statistics, Key.fromBase64(VpnTestVectors.ZERO_KEY), 0L, 0L, 1_000L)
            }
            return statistics
        }
    }
}
