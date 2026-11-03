package it.felixvision.tv.vpn

import android.content.Context
import android.content.Intent
import android.net.VpnService
import android.os.Looper
import com.wireguard.android.backend.Backend
import com.wireguard.android.backend.BackendException
import com.wireguard.android.backend.Tunnel
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.core.Clock
import java.io.IOException
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineExceptionHandler
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.Job
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.delay
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import okhttp3.Call
import okhttp3.Callback
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response

/** Stato della VPN mostrato nelle Impostazioni. */
sealed interface VpnState {

    /** Nessuna configurazione WireGuard salvata. */
    data object NoConfig : VpnState

    /** Configurazione salvata, VPN spenta. */
    data object Off : VpnState

    /** Tunnel in avvio, in attesa del primo handshake. */
    data object Connecting : VpnState

    /** Tunnel attivo: il server ha risposto all'handshake. */
    data class Connected(val serverName: String) : VpnState

    /** Interruttore acceso ma tunnel non attivo: FelixVP prosegue senza VPN. */
    data class NotConnected(val reason: String) : VpnState
}

/**
 * VPN WireGuard di FelixVP, un solo controller per processo (vedi
 * `AppContainer.vpnController`).
 *
 * Nel tunnel passa solo il traffico di questa app (vedi [VpnConfigParser]).
 * Il backend WireGuard si crea solo al primo avvio del tunnel, perché carica
 * la libreria nativa; nei test si passa un [Backend] finto con
 * [backendFactory].
 *
 * Nessuna operazione VPN viene mai eseguita sul thread chiamante: ogni
 * operazione pubblica viene lanciata su [serial], un dispatcher seriale
 * ricavato da [io], e le operazioni si eseguono una alla volta nell'ordine in
 * cui sono richieste (il [Mutex] è equo e preserva l'ordine anche quando
 * un'operazione sospende, in attesa dell'handshake). Le chiamate pubbliche
 * restituiscono subito senza fare lavoro sul chiamante.
 *
 * Se il tunnel non si attiva entro [handshakeTimeoutMillis] FelixVP prosegue
 * senza VPN: stato [VpnState.NotConnected] e un avviso in [messages]; la
 * scelta dell'utente resta accesa e si riprova al prossimo avvio.
 *
 * Configurazione, chiavi e indirizzi non vanno mai nei log.
 */
class VpnController(
    context: Context,
    private val store: VpnStore,
    private val httpClient: OkHttpClient,
    private val imageHttpClient: OkHttpClient,
    private val scope: CoroutineScope,
    private val clock: Clock,
    private val backendFactory: () -> Backend,
    /** Base del relay: la sua pagina `/healthz` genera il traffico per l'handshake. */
    private val relayBaseUrl: String,
    private val io: CoroutineDispatcher = Dispatchers.IO,
    /** Intent di consenso di Android, `null` se il permesso VPN è già concesso. */
    private val permissionIntentProvider: () -> Intent? = systemPermissionIntent(context),
    private val handshakeTimeoutMillis: Long = HANDSHAKE_TIMEOUT_MILLIS,
    private val handshakePollMillis: Long = HANDSHAKE_POLL_MILLIS,
) {

    private val packageName: String = context.packageName

    /** Serializza avvio, arresto e cambi di configurazione su un unico thread di IO. */
    @OptIn(ExperimentalCoroutinesApi::class)
    private val serial: CoroutineDispatcher = io.limitedParallelism(1)

    /** Creato al primo avvio del tunnel; letto e scritto solo dentro [operations]. */
    private var backend: Backend? = null

    /** Avvio in corso o in coda: "Spegni" e "Rimuovi" lo annullano subito. */
    @Volatile
    private var startJob: Job? = null

    /**
     * Gestisce gli errori imprevisti delle operazioni VPN senza mai chiudere
     * l'app: registra solo la classe dell'eccezione, aggiorna lo stato in
     * base all'interruttore salvato e invia l'avviso una tantum.
     */
    private val exceptionHandler = CoroutineExceptionHandler { _, error ->
        AppLog.warn("VPN: errore imprevisto della VPN (${error.javaClass.simpleName})")
        _state.value = when {
            store.isEnabled -> VpnState.NotConnected(NOT_CONNECTED_REASON)
            store.hasConfig() -> VpnState.Off
            else -> VpnState.NoConfig
        }
        postMessage(NOT_CONNECTED_MESSAGE)
    }

    /** Serializza avvio, arresto e cambi di configurazione. */
    private val operations = Mutex()

    private val tunnel: Tunnel = object : Tunnel {
        override fun getName(): String = TUNNEL_NAME

        override fun onStateChange(newState: Tunnel.State) {
            onTunnelStateChange(newState)
        }
    }

    private val _state = MutableStateFlow<VpnState>(
        if (store.hasConfig()) VpnState.Off else VpnState.NoConfig,
    )

    /** Stato corrente, per le Impostazioni. */
    val state: StateFlow<VpnState> = _state.asStateFlow()

    private val _messages = MutableSharedFlow<String>(extraBufferCapacity = MESSAGE_BUFFER)

    /** Avvisi una tantum, mostrati in basso nella schermata principale. */
    val messages: SharedFlow<String> = _messages.asSharedFlow()

    private val _servers = MutableStateFlow(store.servers)
    val servers = _servers.asStateFlow()
    private val _activeId = MutableStateFlow(store.activeId)
    val activeId = _activeId.asStateFlow()
    private val _tryingServer = MutableStateFlow<String?>(null)
    val tryingServer = _tryingServer.asStateFlow()
    @Volatile private var guideSeen = store.guideShown
    val guideShown get() = guideSeen
    fun markGuideShown() {
        guideSeen = true
        launchOperation { store.markGuideShown() }
    }
    private fun refreshServers() {
        _servers.value = store.servers
        _activeId.value = store.activeId
    }
    fun activateServer(id: String) {
        if (_activeId.value == id) return
        cancelStart()
        startJob = launchOperation {
            if (store.activeId != id) {
                store.activate(id)
                refreshServers()
                stopLocked()
                if (store.isEnabled) startLocked()
            }
        }
    }
    fun renameServer(id: String, name: String) {
        launchOperation {
            if (store.rename(id, name)) {
                refreshServers()
                if (id == store.activeId && _state.value is VpnState.Connected) {
                    _state.value = VpnState.Connected(store.serverName.orEmpty())
                }
            }
        }
    }
    fun removeServers(ids: Set<String>) {
        cancelStart()
        startJob = launchOperation {
            val restart = store.activeId in ids || _state.value == VpnState.Connecting
            if (restart) stopLocked()
            store.remove(ids)
            refreshServers()
            if (!store.hasConfig()) _state.value = VpnState.NoConfig
            else if (restart && store.isEnabled) startLocked()
        }
    }

    /** Intent di consenso di Android, `null` se non serve chiedere nulla. */
    fun permissionIntent(): Intent? =
        try {
            permissionIntentProvider()
        } catch (error: RuntimeException) {
            AppLog.warn("VPN: verifica del permesso non riuscita (${error.javaClass.simpleName})")
            null
        }

    /** Vero se Android deve ancora chiedere il consenso (anche quando è attiva un'altra VPN). */
    fun needsPermission(): Boolean = permissionIntent() != null

    /** Avvia il tunnel con la configurazione salvata, se il permesso c'è già. */
    fun start() {
        if (_state.value == VpnState.Connecting || _state.value is VpnState.Connected) return
        cancelStart()
        startJob = launchOperation { startLocked() }
    }

    /**
     * Ferma il tunnel senza cambiare l'interruttore salvato. Un avvio ancora
     * in attesa dell'handshake viene annullato.
     */
    fun stop() {
        cancelStart()
        launchOperation { stopLocked() }
    }

    /**
     * All'avvio dell'app: riparte solo se l'interruttore è acceso e c'è una
     * configurazione. Non chiede mai il permesso e non scavalca un'altra VPN.
     */
    fun startIfEnabled() {
        if (_state.value == VpnState.Connecting || _state.value is VpnState.Connected) return
        cancelStart()
        startJob = launchOperation { startIfEnabledLocked() }
    }

    /** "Accendi" dalle Impostazioni, con il permesso già concesso. */
    fun enable() {
        if (_state.value == VpnState.Connecting || _state.value is VpnState.Connected) return
        cancelStart()
        startJob = launchOperation {
            store.setEnabled(true)
            startWithFallbackLocked()
        }
    }

    /** "Spegni" dalle Impostazioni. */
    fun disable() {
        cancelStart()
        launchOperation {
            store.setEnabled(false)
            stopLocked()
        }
    }

    /** "Rimuovi": tunnel fermo, configurazione cancellata, interruttore spento. */
    fun removeConfig() {
        cancelStart()
        launchOperation { removeLocked() }
    }

    /**
     * Salva una configurazione già verificata con [VpnConfigParser]. Se la VPN
     * era accesa riparte con la nuova configurazione.
     *
     * @return `false` se il salvataggio cifrato non è riuscito.
     */
    suspend fun saveConfig(text: String, serverName: String): Boolean {
        if (_servers.value.size >= VpnStore.MAX_SERVERS) {
            postMessage(VpnStore.LIMIT_MESSAGE)
            return false
        }
        cancelStart()
        val saved = withContext(serial) {
            operations.withLock {
                if (store.servers.size >= VpnStore.MAX_SERVERS) {
                    postMessage(VpnStore.LIMIT_MESSAGE)
                    false
                } else try {
                    store.saveConfig(text, serverName)
                    refreshServers()
                    true
                } catch (_: Exception) { false }
            }
        }
        if (saved) {
            cancelStart()
            startJob = launchOperation { applySavedConfigLocked() }
        }
        return saved
    }

    /**
     * Avviso da mostrare in basso nella schermata principale. Se nessuno è
     * ancora in ascolto (per esempio all'avvio, prima del catalogo) aspetta il
     * primo osservatore.
     */
    fun postMessage(message: String) {
        scope.launch(exceptionHandler) {
            _messages.subscriptionCount.first { it > 0 }
            _messages.emit(message)
        }
    }

    private fun launchOperation(block: suspend () -> Unit): Job =
        // Mai sul thread chiamante: il corpo parte sul dispatcher seriale
        // [serial] (ricavato da [io]), mai su quello che ha invocato l'operazione
        // pubblica. Il Mutex equo esegue le operazioni una alla volta e nell'ordine
        // in cui sono state richieste.
        scope.launch(serial + exceptionHandler) {
            operations.withLock { block() }
        }

    private fun cancelStart() {
        startJob?.cancel()
        startJob = null
    }

    private suspend fun startIfEnabledLocked() {
        val current = _state.value
        if (current is VpnState.Connected || current == VpnState.Connecting) return
        if (!store.hasConfig()) {
            _state.value = VpnState.NoConfig
            return
        }
        if (!store.isEnabled) {
            _state.value = VpnState.Off
            return
        }
        startWithFallbackLocked()
    }

    private suspend fun startWithFallbackLocked() {
        val original = store.servers.firstOrNull { it.id == store.activeId } ?: return
        val candidates = listOf(original) + store.servers.filter { it.id != original.id }
        for (server in candidates) {
            currentCoroutineContext().ensureActive()
            startLocked(server.id, reportFailure = false)
            if (_state.value is VpnState.Connected) {
                store.activate(server.id)
                refreshServers()
                if (server.id != original.id) postMessage("${original.name} non risponde: ora è attivo ${server.name}")
                return
            }
            if (needsPermission()) return
        }
        if (store.hasConfig()) markNotConnected() else postMessage(NOT_CONNECTED_MESSAGE)
    }

    private suspend fun startLocked(id: String? = store.activeId, reportFailure: Boolean = true) {
        val current = _state.value
        if (current is VpnState.Connected || current == VpnState.Connecting) return

        val text = store.loadConfigText(id)
        if (text == null) {
            val wasEnabled = store.isEnabled
            // Configurazione assente o non più decifrabile: si torna a "Nessuna configurazione".
            if (store.servers.size <= 1) {
                if (store.hasConfig()) store.clear()
                refreshServers()
                _state.value = VpnState.NoConfig
            } else _state.value = VpnState.NotConnected(NOT_CONNECTED_REASON)
            if (wasEnabled && reportFailure) postMessage(NOT_CONNECTED_MESSAGE)
            return
        }

        if (needsPermission()) {
            AppLog.info("VPN: serve di nuovo il permesso, nessuna richiesta automatica")
            _state.value = VpnState.NotConnected(PERMISSION_AGAIN_REASON)
            postMessage(PERMISSION_AGAIN_REASON)
            return
        }

        val parsed = VpnConfigParser.parse(text, packageName)
        if (parsed !is VpnConfigParseResult.Valid) {
            AppLog.warn("VPN: configurazione salvata non valida")
            _state.value = VpnState.NotConnected(NOT_CONNECTED_REASON)
            if (reportFailure) postMessage("${store.servers.firstOrNull { it.id == id }?.name.orEmpty()} non risponde")
            return
        }

        _tryingServer.value = store.servers.firstOrNull { it.id == id }?.name
        _state.value = VpnState.Connecting
        AppLog.info("VPN: avvio del tunnel")
        val connected = try {
            val activeBackend = obtainBackend()
            // Annullato nel frattempo ("Spegni"): il tunnel non si accende.
            currentCoroutineContext().ensureActive()
            activeBackend.setState(tunnel, Tunnel.State.UP, parsed.config)
            evictConnections()
            waitForHandshake(activeBackend)
        } catch (error: CancellationException) {
            throw error
        } catch (error: Exception) {
            AppLog.warn("VPN: avvio non riuscito (${describe(error)})")
            false
        } catch (error: LinkageError) {
            AppLog.warn("VPN: libreria del tunnel non disponibile (${error.javaClass.simpleName})")
            false
        }

        if (connected) {
            _state.value = VpnState.Connected(store.servers.firstOrNull { it.id == id }?.name ?: parsed.serverName)
            AppLog.info("VPN connessa")
        } else {
            bringDown()
            _state.value = VpnState.NotConnected(NOT_CONNECTED_REASON)
            if (reportFailure) postMessage("${store.servers.firstOrNull { it.id == id }?.name.orEmpty()} non risponde")
        }
    }

    private fun stopLocked() {
        _state.value = if (store.hasConfig()) VpnState.Off else VpnState.NoConfig
        bringDown()
    }

    private fun removeLocked() {
        _state.value = VpnState.NoConfig
        bringDown()
        store.clear()
        refreshServers()
    }

    private suspend fun applySavedConfigLocked() {
        // Lo stato cambia prima del DOWN: la notifica del tunnel che si chiude
        // non va scambiata per una caduta della connessione.
        _state.value = VpnState.Off
        if (store.isEnabled) {
            bringDown()
            startLocked()
        }
    }

    private fun markNotConnected() {
        _state.value = VpnState.NotConnected(NOT_CONNECTED_REASON)
        postMessage(NOT_CONNECTED_MESSAGE)
    }

    private fun obtainBackend(): Backend = backend ?: backendFactory().also { backend = it }

    /** Chiude il tunnel se il backend esiste; senza backend non c'è nulla da chiudere. */
    private fun bringDown() {
        val active = backend ?: return
        try {
            active.setState(tunnel, Tunnel.State.DOWN, null)
        } catch (error: Exception) {
            AppLog.warn("VPN: arresto del tunnel non riuscito (${describe(error)})")
        }
        try {
            evictConnections()
        } catch (error: RuntimeException) {
            AppLog.warn("VPN: chiusura delle connessioni non riuscita (${error.javaClass.simpleName})")
        }
    }

    /**
     * Attende il primo handshake del server. La richiesta a `/healthz` del
     * relay, che passa nel tunnel, genera il traffico che lo fa partire.
     */
    private suspend fun waitForHandshake(activeBackend: Backend): Boolean {
        val traffic = startHandshakeTraffic()
        try {
            val deadline = clock.nowMillis() + handshakeTimeoutMillis
            var connected = hasHandshake(activeBackend)
            while (!connected && clock.nowMillis() < deadline) {
                delay(handshakePollMillis)
                connected = hasHandshake(activeBackend)
            }
            return connected
        } finally {
            traffic?.cancel()
        }
    }

    private fun hasHandshake(activeBackend: Backend): Boolean {
        val statistics = activeBackend.getStatistics(tunnel)
        return statistics.peers().any { key ->
            (statistics.peer(key)?.latestHandshakeEpochMillis() ?: 0L) > 0L
        }
    }

    private fun startHandshakeTraffic(): Call? {
        val url = "${relayBaseUrl.trim().trimEnd('/')}/healthz".toHttpUrlOrNull() ?: return null
        val call = httpClient.newCall(Request.Builder().url(url).get().build())
        call.enqueue(
            object : Callback {
                override fun onFailure(call: Call, e: IOException) = Unit

                override fun onResponse(call: Call, response: Response) {
                    response.close()
                }
            },
        )
        return call
    }

    /**
     * Dopo ogni UP o DOWN le connessioni già aperte puntano alla rete di
     * prima: si chiudono, così le richieste successive seguono il nuovo
     * percorso.
     *
     * Viene chiamato solo dentro le operazioni (sul dispatcher [serial]) o, da
     * [onTunnelStateChange], con [scope.launch(io)]. Se per errore venisse
     * invocato sul thread principale, la chiusura viene rilanciata su [io]
     * e questo metodo restituisce subito: mai chiudere connessioni sul main.
     */
    private fun evictConnections() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            // Difensivo: non chiudere mai le connessioni di rete sul thread principale.
            scope.launch(io + exceptionHandler) { evictConnections() }
            return
        }
        httpClient.connectionPool.evictAll()
        imageHttpClient.connectionPool.evictAll()
    }

    /** Notifiche del backend: un DOWN mentre la VPN è connessa è una caduta. */
    private fun onTunnelStateChange(newState: Tunnel.State) {
        if (newState != Tunnel.State.DOWN) return
        val current = _state.value
        if (current !is VpnState.Connected) return
        if (!_state.compareAndSet(current, VpnState.NotConnected(NOT_CONNECTED_REASON))) return
        AppLog.warn("VPN: tunnel chiuso dal sistema")
        // La notifica può arrivare sul thread principale: la chiusura delle
        // connessioni va su [io].
        scope.launch(io + exceptionHandler) { evictConnections() }
        postMessage(NOT_CONNECTED_MESSAGE)
    }

    private fun describe(error: Exception): String =
        if (error is BackendException) {
            "BackendException ${error.reason}"
        } else {
            error.javaClass.simpleName
        }

    companion object {
        /** Nome del tunnel per il backend WireGuard (massimo 15 caratteri). */
        const val TUNNEL_NAME = "felixvp"

        const val HANDSHAKE_TIMEOUT_MILLIS = 10_000L
        const val HANDSHAKE_POLL_MILLIS = 250L

        const val NOT_CONNECTED_REASON = "VPN non connessa"
        const val NOT_CONNECTED_MESSAGE = "VPN non connessa: FelixVP prosegue senza VPN"
        const val PERMISSION_AGAIN_REASON = "Serve di nuovo il permesso VPN: riattiva da Impostazioni"

        private const val MESSAGE_BUFFER = 8
    }
}

/** Consenso di sistema per la VPN, chiesto con il contesto dell'applicazione. */
private fun systemPermissionIntent(context: Context): () -> Intent? {
    val appContext = context.applicationContext
    return { VpnService.prepare(appContext) }
}
