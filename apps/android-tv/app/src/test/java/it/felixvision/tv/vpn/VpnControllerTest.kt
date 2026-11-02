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
import it.felixvision.tv.core.Clock
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import kotlin.coroutines.CoroutineContext
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.ExecutorCoroutineDispatcher
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.StandardTestDispatcher
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
 * Le operazioni del controller partono sempre sul dispatcher [io] (mai sul
 * thread chiamante), quindi i test attendono il completamento con
 * [awaitState] invece di contare su un lavoro sincrono immediato.
 *
 * Il dispatcher di IO di default è un thread singolo chiamato "vpn-io-test",
 * chiuso con [shutdownNow] in [tearDown]. Lo scope del controller (solo per
 * gli avvisi postMessage) usa lo [testScheduler] di test, fatto avanzare con
 * `scheduler.advanceUntilIdle()` quando si vogliono consegnare gli avvisi.
 */
@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
@RobolectricConfig(sdk = [34])
class VpnControllerTest {

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private val testScheduler = TestCoroutineScheduler()
    private val ioExecutor: ExecutorService =
        Executors.newSingleThreadExecutor { Thread(it, "vpn-io-test") }
    /** Dispatcher di IO dedicato: un solo thread chiamato "vpn-io-test". */
    private val realIo: ExecutorCoroutineDispatcher = ioExecutor.asCoroutineDispatcher()
    /** Orologio basato su nanoTime, monotono e robusto nei test. */
    private val nanoClock = Clock { System.nanoTime() / 1_000_000 }

    private var backendsCreated = 0
    private lateinit var controllerScope: CoroutineScope
    private lateinit var currentController: VpnController

    @After
    fun tearDown() {
        controllerScope.coroutineContext[Job]?.cancel()
        ioExecutor.shutdownNow()
        realIo.close()
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
        val states = CopyOnWriteArrayList<Tunnel.State>()
        val stateThreads = CopyOnWriteArrayList<String>()
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
        handshakeTimeoutMillis: Long = 300L,
    ): VpnController {
        val scope = CoroutineScope(SupervisorJob() + StandardTestDispatcher(testScheduler))
        controllerScope = scope
        currentController = VpnController(
            context = context,
            store = store,
            httpClient = OkHttpClient(),
            imageHttpClient = OkHttpClient(),
        scope = scope,
        clock = nanoClock,
            backendFactory = {
                backendsCreated++
                backend
            },
            // Nessun relay: niente traffico di rete nei test.
            relayBaseUrl = "",
            io = io,
            permissionIntentProvider = { permission },
            handshakeTimeoutMillis = handshakeTimeoutMillis,
            handshakePollMillis = 50L,
        )
        return currentController
    }

    /** Attende (tempo reale, con timeout) che il controller raggiunga [expected]. */
    private fun awaitState(expected: VpnState, timeoutMillis: Long = 5000) {
        val deadline = System.nanoTime() + timeoutMillis * 1_000_000
        while (System.nanoTime() < deadline) {
            if (currentController.state.value == expected) return
            Thread.sleep(20)
        }
        throw AssertionError(
            "stato atteso $expected non raggiunto entro ${timeoutMillis}ms " +
                "(ultimo stato: ${currentController.state.value})",
        )
    }

    /**
     * Attende (tempo reale, con timeout) che [condition] diventi vero. Serve dopo
     * [awaitState(VpnState.Off)] o [awaitState(VpnState.NoConfig)]: il controller
     * imposta lo stato prima che il thread "vpn-io-test" scriva il DOWN su
     * [FakeBackend.states], quindi bisogna attendere che l'arrivo del DOWN sia
     * visibile prima di leggere states/stateThreads dal thread di test.
     */
    private fun awaitCondition(timeoutMillis: Long = 5000, description: String, condition: () -> Boolean) {
        val deadline = System.nanoTime() + timeoutMillis * 1_000_000
        while (System.nanoTime() < deadline) {
            if (condition()) return
            Thread.sleep(20)
        }
        throw AssertionError("condizione non raggiunta entro ${timeoutMillis}ms: $description")
    }

    /** Inizia a raccogliere gli avvisi di [currentController.messages]. */
    private fun startCollectingMessages() {
        messagesBuffer.clear()
        controllerScope.launch {
            currentController.messages.collect { messagesBuffer += it }
        }
        testScheduler.advanceUntilIdle()
    }

    private val messagesBuffer = mutableListOf<String>()

    /** Invoca il metodo privato evictConnections tramite reflection Java (no kotlin-reflect). */
    private fun invokeEvictConnections(controller: VpnController) {
        val method = VpnController::class.java.getDeclaredMethod("evictConnections")
        method.isAccessible = true
        method.invoke(controller)
    }

    private companion object {
        const val XOR_KEY = 0x5A

        /**
         * Statistiche del backend: costruttore e `add` non sono pubblici nella
         * libreria, quindi si passa dalla reflection Java. Chiave a zero.
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
        assertTrue("start() non deve lavorare sul chiamante",
            backend.stateThreads.none { it == testThread })
        awaitState(VpnState.Connected(VpnTestVectors.SERVER_NAME))

        controller.stop()
        assertTrue("stop() non deve lavorare sul chiamante",
            backend.stateThreads.none { it == testThread })
        awaitState(VpnState.Off)
        // Il DOWN è scritto dal thread "vpn-io-test" dopo che lo stato Off è visibile.
        awaitCondition(description = "DOWN arrivato al backend") {
            backend.states.lastOrNull() == Tunnel.State.DOWN
        }

        assertFalse("il backend deve essere stato invocato", backend.stateThreads.isEmpty())
        // Tutte le chiamate al backend sono eseguite sul dispatcher IO dedicato.
        assertTrue("tutte le chiamate del backend devono essere su vpn-io-test: ${backend.stateThreads}",
            backend.stateThreads.all { it == "vpn-io-test" })

        // Ordine preservato: UP prima di DOWN.
        val upIndex = backend.states.indexOf(Tunnel.State.UP)
        val downIndex = backend.states.indexOf(Tunnel.State.DOWN)
        assertTrue("UP deve precedere DOWN", upIndex >= 0 && downIndex > upIndex)

        testScheduler.advanceUntilIdle()
        assertTrue("nessun avviso atteso", messagesBuffer.isEmpty())
        assertEquals(1, backendsCreated)
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
        assertEquals("nessuna operazione senza avanzare lo scheduler",
            emptyList<Tunnel.State>(), backend.states)
        assertTrue("nessun thread del backend deve essere stato toccato",
            backend.stateThreads.isEmpty())
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
        awaitCondition(description = "DOWN arrivato al backend") {
            backend.states.lastOrNull() == Tunnel.State.DOWN
        }

        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN), backend.states)
        assertTrue("backend su vpn-io-test: ${backend.stateThreads}",
            backend.stateThreads.all { it == "vpn-io-test" })
        testScheduler.advanceUntilIdle()
        assertTrue("nessun avviso", messagesBuffer.isEmpty())
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

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON),
            currentController.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messagesBuffer)
        // L'UP è fallito: solo il DOWN dell'arresto è arrivato al backend.
        assertEquals(listOf(Tunnel.State.DOWN), backend.states)
        // La scelta dell'utente resta accesa: si riprova al prossimo avvio.
        assertTrue(store.isEnabled)
        assertEquals(1, backendsCreated)
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

        assertEquals(VpnState.NotConnected(VpnController.PERMISSION_AGAIN_REASON),
            currentController.state.value)
        assertEquals(listOf(VpnController.PERMISSION_AGAIN_REASON), messagesBuffer)
        assertEquals(0, backendsCreated)
        assertTrue(store.isEnabled)
    }

    @Test
    fun `all'avvio con l'interruttore spento resta tutto fermo`() {
        val store = savedStore(enabled = false)
        val controller = controller(FakeBackend(handshake = true), store)

        controller.startIfEnabled()
        awaitState(VpnState.Off)

        assertEquals(VpnState.Off, currentController.state.value)
        assertEquals(0, backendsCreated)
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

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON),
            currentController.state.value)
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
        awaitCondition(description = "DOWN arrivato al backend") {
            backend.states.lastOrNull() == Tunnel.State.DOWN
        }
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
        // Timeout alto: senza cancelStart() l'attesa proseguirebbe a lungo.
        val controller = controller(backend, store, handshakeTimeoutMillis = 5_000L)
        startCollectingMessages()
        controller.enable()
        awaitState(VpnState.Connecting)

        val disableStart = System.currentTimeMillis()
        controller.disable()
        awaitState(VpnState.Off, timeoutMillis = 1000)
        val elapsed = System.currentTimeMillis() - disableStart
        assertTrue("disable() deve portare lo stato a Off entro 1 secondo (handshakeTimeoutMillis=5000)",
            elapsed < 1000)
        // Il DOWN è scritto dal thread "vpn-io-test" dopo che lo stato Off è visibile.
        awaitCondition(description = "DOWN arrivato al backend") {
            backend.states.lastOrNull() == Tunnel.State.DOWN
        }
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
        awaitCondition(description = "DOWN arrivato al backend") {
            backend.states.lastOrNull() == Tunnel.State.DOWN
        }
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

        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON),
            currentController.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messagesBuffer)
        assertTrue(store.isEnabled)
    }

    // ------------------------------------------------------------------
    // evictConnections sul thread principale (Robolectric, main looper)
    // ------------------------------------------------------------------

    @Test
    fun `evictConnections chiamato dal thread principale non opera sincronicamente sul main`() {
        // Precondizione del test: siamo sul thread principale di Robolectric.
        assertEquals("precondizione: test sul thread principale",
            Looper.getMainLooper(), Looper.myLooper())

        val store = savedStore(enabled = true)
        val backend = FakeBackend(handshake = true)
        // Avvolgimento di `io` che registra il thread di ogni dispatch.
        val dispatchedThreads = mutableListOf<String>()
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
        assertTrue("evictConnections sul main deve restituire subito", elapsed < 2000)

        // Il lavoro vero deve essere stato rilanciato sul dispatcher IO
        // (thread "vpn-io-test"), non eseguito in modo sincrono sul main.
        Thread.sleep(300)
        assertTrue("evictConnections deve essere rilanciato sul dispatcher IO, mai sul main thread",
            dispatchedThreads.any { it == "vpn-io-test" })
    }
}
