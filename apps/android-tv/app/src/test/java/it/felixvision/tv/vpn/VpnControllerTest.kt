package it.felixvision.tv.vpn

import android.content.Context
import android.content.Intent
import android.os.Looper
import androidx.test.core.app.ApplicationProvider
import com.wireguard.android.backend.Backend
import com.wireguard.android.backend.Statistics
import com.wireguard.android.backend.Tunnel
import com.wireguard.config.Config
import com.wireguard.crypto.Key
import it.felixvision.tv.core.SystemClock
import java.io.Closeable
import java.util.Collections
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.StandardTestDispatcher
import kotlinx.coroutines.StandardTestScheduler
import kotlinx.coroutines.advanceUntilIdle
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config as RobolectricConfig

/**
 * Controller della VPN con un backend WireGuard finto: il vero GoBackend
 * (libreria nativa) non viene mai creato nei test.
 *
 * A differenza della versione precedente, le operazioni del controller non
 * partono più in modo undispatched sul thread chiamante: vengono lanciate su
 * un dispatcher seriale ricavato da [io]. Per questo i test non possono più
 * contare su un lavoro sincrono immediato dopo `start()`/`stop()`/`enable()`
 * e aspettano il completamento con [awaitState] (tempo reale, timeout
 * esplicito).
 *
 * Il dispatcher di IO è un thread singolo dedicato chiamato "vpn-io-test" e
 * viene chiuso in [tearDown]; lo scope del controller (solo per gli avvisi
 * postMessage) usa lo scheduler di test, fatto avanzare con
 * `advanceUntilIdle` quando si vogliono consegnare gli avvisi.
 */
@OptIn(ExperimentalCoroutinesApi::class, DelicateCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
@RobolectricConfig(sdk = [28])
class VpnControllerTest {

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private val testScheduler = StandardTestScheduler()
    /** Dispatcher di IO dedicato: un solo thread chiamato "vpn-io-test". */
    private val realIo: CoroutineDispatcher =
        Executors.newSingleThreadExecutor { Thread(it, "vpn-io-test") }.asCoroutineDispatcher()

    private var backendsCreated = AtomicInteger(0)
    private lateinit var controllerScope: CoroutineScope
    private lateinit var currentController: VpnController
    /** Thread su cui è stato dispatchato il lavoro di `io` (o di un suo avvolgimento). */
    private val dispatchedThreads = Collections.synchronizedList(mutableListOf<String>())
    private val messagesBuffer = Collections.synchronizedList(mutableListOf<String>())

    @After
    fun tearDown() {
        controllerScope.cancel()
        (realIo as? Closeable)?.close()
    }

    private class FakeCipher : VpnConfigCipher {
        override fun encrypt(plaintext: ByteArray): ByteArray =
            ByteArray(plaintext.size) { index -> (plaintext[index].toInt() xor XOR_KEY).toByte() }

        override fun decrypt(blob: ByteArray): ByteArray =
            ByteArray(blob.size) { index -> (blob[index].toInt() xor XOR_KEY).toByte() }
    }

    /**
     * Backend finto: registra gli stati chiesti e il thread su cui avviene
     * ogni [setState]/[getStatistics], e risponde con o senza handshake.
     */
    private class FakeBackend(
        private val handshake: Boolean,
        private val failUp: Boolean = false,
    ) : Backend {
        val states = Collections.synchronizedList(mutableListOf<Tunnel.State>())
        val stateThreads = Collections.synchronizedList(mutableListOf<String>())
        var lastTunnel: Tunnel? = null

        override fun getRunningTunnelNames(): Set<String> = emptySet()

        override fun getState(tunnel: Tunnel): Tunnel.State = states.lastOrNull() ?: Tunnel.State.DOWN

        override fun getStatistics(tunnel: Tunnel): Statistics {
            stateThreads += Thread.currentThread().name
            return statistics(handshake)
        }

        override fun getVersion(): String = "test"

        override fun isAlwaysOn(): Boolean = false

        override fun isLockdownEnabled(): Boolean = false

        override fun setState(tunnel: Tunnel, state: Tunnel.State, config: Config?): Tunnel.State {
            stateThreads += Thread.currentThread().name
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

    private fun controller(
        backend: FakeBackend,
        store: VpnStore,
        io: CoroutineDispatcher = realIo,
        permission: Intent? = null,
    ): VpnController {
        val scope = CoroutineScope(SupervisorJob() + StandardTestDispatcher(testScheduler))
        controllerScope = scope
        currentController = VpnController(
            context = context,
            store = store,
            httpClient = OkHttpClient(),
            imageHttpClient = OkHttpClient(),
            scope = scope,
            clock = SystemClock,
            backendFactory = {
                backendsCreated.incrementAndGet()
                backend
            },
            // Nessun relay: niente traffico di rete nei test.
            relayBaseUrl = "",
            io = io,
            permissionIntentProvider = { permission },
            handshakeTimeoutMillis = 300L,
            handshakePollMillis = 50L,
        )
        return currentController
    }

    /** Attende (tempo reale, con timeout) che il controller raggiunga [expected]. */
    private fun awaitState(expected: VpnState, timeoutMillis: Long = 5000) {
        val deadline = System.currentTimeMillis() + timeoutMillis
        while (System.currentTimeMillis() < deadline) {
            if (currentController.state.value == expected) return
            Thread.sleep(20)
        }
        throw AssertionError(
            "stato atteso $expected non raggiunto entro ${timeoutMillis}ms " +
                "(ultimo stato: ${currentController.state.value})",
        )
    }

    /** Inizia a raccogliere gli avvisi di [currentController.messages]. */
    private fun startCollectingMessages() {
        messagesBuffer.clear()
        controllerScope.launch {
            currentController.messages.collect { messagesBuffer += it }
        }
        testScheduler.advanceUntilIdle()
    }

    /** Invoca il metodo privato [VpnController.evictConnections] (solo per il test sul main thread). */
    private fun invokeEvictConnections(controller: VpnController) {
        val method = VpnController::class.declaredFunctions.first { it.name == "evictConnections" }
        method.isAccessible = true
        method.invoke(controller)
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

    // ------------------------------------------------------------------
    // Regressione del bug NetworkOnMainThreadException
    // ------------------------------------------------------------------

    @Test
    fun `start e stop tornano subito e il backend esegue solo sul dispatcher io`() {
        val testThread = Thread.currentThread().name
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)

        controller.start()
        // Nessuna chiamata al backend deve essere partita sincronicamente sul chiamante.
        assertTrue(backend.stateThreads.none { it == testThread }, "start() non deve lavorare sul chiamante")
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        controller.stop()
        assertTrue(backend.stateThreads.none { it == testThread }, "stop() non deve lavorare sul chiamante")
        awaitState(VpnState.Off)

        assertFalse(backend.stateThreads.isEmpty())
        // Tutte le chiamate al backend sono eseguite sul dispatcher IO dedicato.
        assertTrue(backend.stateThreads.all { it == "vpn-io-test" })

        // Ordine preservato: UP prima di DOWN.
        val upIndex = backend.states.indexOf(Tunnel.State.UP)
        val downIndex = backend.states.indexOf(Tunnel.State.DOWN)
        assertTrue(upIndex >= 0 && downIndex > upIndex)

        testScheduler.advanceUntilIdle()
        assertTrue(messagesBuffer.isEmpty())
        assertEquals(1, backendsCreated.get())
    }

    // ------------------------------------------------------------------
    // Nessun lavoro undispatched con StandardTestDispatcher
    // ------------------------------------------------------------------

    @Test
    fun `senza avanzare lo scheduler non avviene lavoro undispatched`() {
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store, io = StandardTestDispatcher(testScheduler))

        controller.start()
        controller.stop()

        // Nessuna operazione è partita: niente lavoro undispatched sul chiamante.
        assertEquals(emptyList<Tunnel.State>(), backend.states)
        assertTrue(backend.stateThreads.isEmpty())
    }

    // ------------------------------------------------------------------
    // Ordine delle operazioni
    // ------------------------------------------------------------------

    @Test
    fun `start seguito da stop finisce spento con UP prima di DOWN`() {
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)

        controller.start()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))
        controller.stop()
        awaitState(VpnState.Off)

        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertTrue(backend.stateThreads.all { it == "vpn-io-test" })
        testScheduler.advanceUntilIdle()
        assertTrue(messagesBuffer.isEmpty())
        assertTrue(store.isEnabled)
    }

    // ------------------------------------------------------------------
    // Eccezioni del backend: nessun crash
    // ------------------------------------------------------------------

    @Test
    fun `eccezione del backend in setState non blocca l'app`() {
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true, failUp = true)
        val controller = controller(backend, store)
        startCollectingMessages()

        controller.enable()
        awaitState(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), currentController.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messagesBuffer)
        // L'UP è fallito: solo il DOWN dell'arresto è arrivato al backend.
        assertEquals(listOf(Tunnel.State.DOWN), backend.states)
        // La scelta dell'utente resta accesa: si riprova al prossimo avvio.
        assertTrue(store.isEnabled)
        assertEquals(1, backendsCreated.get())
    }

    // ------------------------------------------------------------------
    // Comportamenti esistenti (adattati alla rimozione di UNDISPATCHED)
    // ------------------------------------------------------------------

    @Test
    fun `all'avvio con il permesso da chiedere non accende nulla e non chiede nulla`() {
        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store, permission = Intent("android.net.vpn.PREPARE"))
        startCollectingMessages()

        controller.startIfEnabled()
        awaitState(VpnState.NotConnected(VpnController.PERMISSION_AGAIN_REASON))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.PERMISSION_AGAIN_REASON), currentController.state.value)
        assertEquals(listOf(VpnController.PERMISSION_AGAIN_REASON), messagesBuffer)
        assertEquals(0, backendsCreated.get())
        assertTrue(store.isEnabled)
    }

    @Test
    fun `all'avvio con l'interruttore spento resta tutto fermo`() {
        val store = savedStore(enabled = false)
        val controller = controller(FakeBackend(handshake = true), store)

        controller.startIfEnabled()
        awaitState(VpnState.Off)

        assertEquals(VpnState.Off, currentController.state.value)
        assertEquals(0, backendsCreated.get())
    }

    @Test
    fun `con l'handshake entro il tempo la VPN è connessa`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        startCollectingMessages()

        controller.enable()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.Connected(VpnTestVectors.SERVER_NAME), currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP), backend.states)
        assertTrue(store.isEnabled)
        assertTrue(messagesBuffer.isEmpty())
    }

    @Test
    fun `senza handshake entro il tempo il tunnel si chiude e FelixVP prosegue senza VPN`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = false)
        val controller = controller(backend, store)
        startCollectingMessages()

        controller.enable()
        awaitState(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messagesBuffer)
        // La scelta dell'utente resta accesa: si riprova al prossimo avvio.
        assertTrue(store.isEnabled)
    }

    @Test
    fun `Spegni chiude il tunnel e salva l'interruttore spento`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        startCollectingMessages()
        controller.enable()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        controller.disable()
        awaitState(VpnState.Off)
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.Off, currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertFalse(store.isEnabled)
        assertTrue(messagesBuffer.isEmpty())
    }

    @Test
    fun `Spegni durante la connessione annulla subito l'attesa dell'handshake`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = false)
        val controller = controller(backend, store)
        startCollectingMessages()
        controller.enable()
        awaitState(VpnState.Connecting)

        controller.disable()
        awaitState(VpnState.Off)
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.Off, currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertTrue(messagesBuffer.isEmpty())
    }

    @Test
    fun `Rimuovi chiude il tunnel e cancella configurazione e interruttore`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        controller.enable()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        controller.removeConfig()
        awaitState(VpnState.NoConfig)
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.NoConfig, currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertFalse(store.hasConfig())
        assertFalse(store.isEnabled)
    }

    @Test
    fun `una nuova configurazione con la VPN accesa riparte con il nuovo server`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        startCollectingMessages()
        controller.enable()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        val newText = VpnTestVectors.CONFIG_TEXT.replace("# ${VpnTestVectors.SERVER_NAME}", "# CH-FREE#2")
        runBlocking {
            assertTrue(currentController.saveConfig(newText, "CH-FREE#2"))
        }
        awaitState(VpnState.Connected("CH-FREE#2"))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.Connected("CH-FREE#2"), currentController.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN, Tunnel.State.UP), backend.states)
        assertEquals("CH-FREE#2", store.serverName)
    }

    @Test
    fun `se il sistema chiude il tunnel la VPN risulta non connessa con un avviso`() {
        val store = savedStore(enabled = false)
        val backend = FakeBackend(handshake = true)
        val controller = controller(backend, store)
        startCollectingMessages()
        controller.enable()
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        checkNotNull(backend.lastTunnel).onStateChange(Tunnel.State.DOWN)
        awaitState(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON))
        testScheduler.advanceUntilIdle()

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), currentController.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messagesBuffer)
        assertTrue(store.isEnabled)
    }

    // ------------------------------------------------------------------
    // evictConnections sul thread principale (Robolectric, main looper)
    // ------------------------------------------------------------------

    @Test
    fun `evictConnections chiamato dal thread principale non opera sincronicamente sul main`() {
        // Precondizione del test: siamo sul thread principale di Robolectric.
        assertEquals(Looper.getMainLooper(), Looper.myLooper())

        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        // Avvolgimento di `io` che registra il thread di ogni dispatch,
        // sia al momento del lancio che sull'esecutore IO.
        val recordingIo = object : CoroutineDispatcher() {
            override fun dispatch(context: CoroutineContext, block: Runnable) {
                dispatchedThreads.add(Thread.currentThread().name)
                realIo.dispatch(context) {
                    dispatchedThreads.add(Thread.currentThread().name)
                    block.run()
                }
            }
        }
        val controller = controller(backend, store, io = recordingIo)

        val started = System.currentTimeMillis()
        invokeEvictConnections(controller)
        val elapsed = System.currentTimeMillis() - started
        assertTrue(elapsed < 2000) { "evictConnections sul main deve restituire subito" }

        // Il lavoro vero deve essere stato rilanciato sul dispatcher IO
        // (thread "vpn-io-test"), non eseguito in modo sincrono sul main.
        Thread.sleep(300)
        assertTrue(
            dispatchedThreads.any { it == "vpn-io-test" },
            "evictConnections deve essere rilanciato sul dispatcher IO, mai eseguito sul thread principale",
        )
    }

}
