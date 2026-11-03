package it.felixvision.mobile.ui.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.BuildConfig
import it.felixvision.mobile.ui.access.AccessViewModel
import it.felixvision.mobile.ui.access.statusLabel
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.pairing.PairingApi
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.data.pairing.PairingStep
import it.felixvision.tv.data.pairing.RemoteCredentials
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.store.serverLabel
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.ServerAddress
import it.felixvision.tv.data.xtream.ServerInput
import it.felixvision.tv.data.xtream.XtreamAccount
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

data class SettingsUiState(
    val username: String = "",
    val serverHost: String = "",
    val serverLabel: String = "Personalizzato",
    val status: String = "",
    val expiresAtEpochSeconds: Long? = null,
    val maxConnections: Int? = null,
    val activeConnections: Int? = null,
    val lastUpdateMillis: Long? = null,
    val lastAccountReadMillis: Long? = null,
    val isReadingAccount: Boolean = false,
    val connectionsWarning: Boolean = false,
    val isWorking: Boolean = false,
    val showExitConfirm: Boolean = false,
    val clearUserDataOnExit: Boolean = false,
    val versionName: String = "",
    val versionCode: Int = 0,
    /** Codice e QR del riquadro "Configura da remoto". */
    val pairing: PairingPanelState = PairingPanelState(),
    /** Vero mentre il ciclo di abbinamento sta interrogando il relay. */
    val pairingActive: Boolean = false,
    /** Verifica delle credenziali ricevute dal telefono in corso. */
    val pairingBusy: Boolean = false,
    /** Conferma "Configurato da remoto" dopo un abbinamento riuscito. */
    val pairingMessage: String? = null,
    /** Errore dell'ultimo abbinamento: l'accesso corrente resta valido. */
    val pairingError: String? = null,
)

/**
 * Dati utente dell'account che l'uscita può cancellare, oltre a credenziali e
 * cache del catalogo: preferiti, "I miei canali", "Riprendi" e avanzamento.
 *
 * È un'interfaccia (e non le quattro classi degli store) per poter verificare
 * nei test la conferma di uscita con store finti, senza DataStore né Android.
 */
interface SettingsUserDataStore {

    suspend fun clearFavorites(server: String, username: String)

    suspend fun clearMyChannels(server: String, username: String)

    suspend fun clearProgress(server: String, username: String)

    suspend fun clearContinueWatching(server: String, username: String)
}

/**
 * Impostazioni del tablet, adattato da
 * `it.felixvision.tv.ui.settings.SettingsViewModel` con la stessa logica per
 * account, connessioni e abbinamento remoto: rilettura delle informazioni
 * dell'account a ogni apertura, etichetta del server (codice rubrica o
 * "Personalizzato"), avviso connessioni (regola [ConnectionsAdvisory], identica
 * alla TV) ed Esci con pulizia delle credenziali, della cache del catalogo e —
 * solo se richiesto — dei dati utente. Tutto ciò che riguarda l'aggiornamento
 * dell'app è escluso (arriva nel PR4).
 *
 * "Configura da remoto" usa lo stesso pannello di abbinamento dell'accesso
 * ([it.felixvision.mobile.ui.access.PairingPanel]) e lo stesso ciclo della TV:
 * il polling verso il relay gira solo mentre il riquadro è visibile a schermo e
 * l'app è in primo piano ([onRemoteCardVisible]/[onRemoteCardHidden]); le
 * credenziali ricevute sostituiscono quelle salvate, azzerano la cache del
 * vecchio catalogo e aggiornano la sessione ([onRemoteCredentialsApplied]); quelle
 * errate mostrano l'errore senza toccare l'accesso in corso.
 *
 * Le dipendenze sono iniettate per poter testare il ViewModel senza Android;
 * dall'app si usa il costruttore che accetta [AppContainer].
 */
class SettingsViewModel(
    server: String,
    username: String,
    password: String,
    expiresAtEpochSeconds: Long?,
    status: String,
    maxConnections: Int?,
    activeConnections: Int?,
    private val onSignOut: () -> Unit,
    private val performLogin: suspend (server: String, username: String, password: String) -> LoginResult,
    private val credentialStore: CredentialStore,
    private val readLastCatalogUpdate: suspend (server: String, username: String) -> Long?,
    private val clearCatalogCache: suspend (server: String, username: String) -> Unit,
    private val userDataStore: SettingsUserDataStore,
    private val isPlaybackActive: () -> Boolean,
    private val clock: Clock = SystemClock,
    versionName: String = BuildConfig.VERSION_NAME,
    versionCode: Int = BuildConfig.VERSION_CODE,
    /** Client del relay di abbinamento; `null` quando l'abbinamento non è disponibile. */
    private val pairingApi: PairingApi? = null,
    /** Base del servizio di abbinamento usata nel QR. */
    private val relayUrl: String = "",
    /** Risoluzione del codice rubrica ricevuto dal telefono. */
    private val resolveRubrica: suspend (code: String) -> ApiResult<String> = { ApiResult.Malformed },
    /**
     * Credenziali applicate dopo un abbinamento riuscito: l'app aggiorna la
     * sessione (come `updateCredentialsFromRemote` della TV) e ricarica il
     * catalogo del nuovo account.
     */
    private val onRemoteCredentialsApplied: (String, String, String, XtreamAccount) -> Unit =
        { _, _, _, _ -> },
) : ViewModel() {

    constructor(
        container: AppContainer,
        server: String,
        username: String,
        password: String,
        expiresAtEpochSeconds: Long?,
        status: String,
        maxConnections: Int?,
        activeConnections: Int?,
        onSignOut: () -> Unit,
        onRemoteCredentialsApplied: (String, String, String, XtreamAccount) -> Unit =
            { _, _, _, _ -> },
    ) : this(
        server = server,
        username = username,
        password = password,
        expiresAtEpochSeconds = expiresAtEpochSeconds,
        status = status,
        maxConnections = maxConnections,
        activeConnections = activeConnections,
        onSignOut = onSignOut,
        performLogin = { s, u, p -> container.xtreamClient.login(s, u, p) },
        credentialStore = container.credentialStore,
        readLastCatalogUpdate = { s, u -> container.catalogCache.lastUpdateMillis(s, u) },
        clearCatalogCache = { s, u -> container.catalogCache.clear(s, u) },
        userDataStore = object : SettingsUserDataStore {
            override suspend fun clearFavorites(server: String, username: String) {
                container.favoritesStore.clearForAccount(server, username)
            }

            override suspend fun clearMyChannels(server: String, username: String) {
                container.myChannelsStore.clearForAccount(server, username)
            }

            override suspend fun clearProgress(server: String, username: String) {
                container.progressStore.clearForAccount(server, username)
            }

            override suspend fun clearContinueWatching(server: String, username: String) {
                container.continueWatchingStore.clearForAccount(server, username)
            }
        },
        isPlaybackActive = { container.playbackActivity.isActive.value },
        clock = container.clock,
        pairingApi = container.pairingClient,
        relayUrl = BuildConfig.PAIRING_RELAY_URL,
        resolveRubrica = { code -> container.pairingClient.resolveRubrica(code) },
        onRemoteCredentialsApplied = onRemoteCredentialsApplied,
    )

    /**
     * Credenziali dell'account attualmente mostrato. Cambiano dopo un
     * abbinamento riuscito, come sulla TV: le operazioni successive (rilettura
     * account, uscita, ricarica catalogo) valgono per il nuovo account.
     */
    private var currentServer: String = server
    private var currentUsername: String = username
    private var currentPassword: String = password

    private val coordinator: PairingCoordinator? = pairingApi?.let { api ->
        PairingCoordinator(api = api, relayUrl = relayUrl, clock = clock)
    }

    private val _ui = MutableStateFlow(
        SettingsUiState(
            username = username,
            serverHost = extractHost(server),
            serverLabel = "Personalizzato",
            status = status,
            expiresAtEpochSeconds = expiresAtEpochSeconds,
            maxConnections = maxConnections,
            activeConnections = activeConnections,
            versionName = versionName,
            versionCode = versionCode,
        ),
    )
    val ui: StateFlow<SettingsUiState> = _ui.asStateFlow()

    private var accountReadJob: Job? = null
    private var serverLabelJob: Job? = null
    private var pairingJob: Job? = null
    private var pairingVisible = false

    init {
        viewModelScope.launch {
            val last = readLastCatalogUpdate(currentServer, currentUsername)
            _ui.update { it.copy(lastUpdateMillis = last) }
        }
        viewModelScope.launch {
            val coordinator = coordinator ?: return@launch
            coordinator.state.collect { panel -> _ui.update { it.copy(pairing = panel) } }
        }
        refreshServerLabel()
    }

    /** Chiamato quando la sezione Impostazioni diventa visibile. */
    fun onSettingsVisible() {
        refreshServerLabel()
        refreshAccountInfo()
    }

    /**
     * Rilegge l'ora dell'ultimo aggiornamento del catalogo dalla cache: viene
     * chiamata dalla finestra di aggiornamento quando un aggiornamento termina,
     * così la riga "Ultimo aggiornamento" mostra subito il nuovo valore senza
     * riaprire la sezione.
     */
    fun reloadLastUpdate() {
        viewModelScope.launch {
            val last = runCatching { readLastCatalogUpdate(currentServer, currentUsername) }.getOrNull()
            _ui.update { it.copy(lastUpdateMillis = last) }
        }
    }

    /**
     * Rilegge le credenziali salvate e aggiorna l'etichetta del server (codice
     * rubrica o "Personalizzato"), come nelle Impostazioni della TV.
     */
    fun refreshServerLabel() {
        serverLabelJob?.cancel()
        serverLabelJob = viewModelScope.launch {
            val stored = runCatching { credentialStore.load() }.getOrNull()
            val code = if (stored != null &&
                stored.server == currentServer &&
                stored.username == currentUsername
            ) {
                stored.serverCode
            } else {
                null
            }
            _ui.update { it.copy(serverLabel = serverLabel(code)) }
        }
    }

    /**
     * Rilegge le informazioni dell'account dal server a ogni apertura delle
     * Impostazioni. In caso di errore restano i valori dell'ultima lettura.
     */
    fun refreshAccountInfo() {
        if (accountReadJob?.isActive == true) return
        accountReadJob = viewModelScope.launch {
            _ui.update { it.copy(isReadingAccount = true) }
            val result = runCatching {
                performLogin(currentServer, currentUsername, currentPassword)
            }.getOrNull()
            val account = when (result) {
                is LoginResult.Success -> result.account
                is LoginResult.AccountExpired -> result.account
                is LoginResult.AccountDisabled -> result.account
                else -> null
            }
            if (account == null) {
                _ui.update { it.copy(isReadingAccount = false) }
                return@launch
            }
            val playing = isPlaybackActive()
            val nowMillis = clock.nowMillis()
            _ui.update {
                it.copy(isReadingAccount = false).withAccount(account, playing, nowMillis)
            }
        }
    }

    // --- Uscita ---

    fun onExitClicked() {
        _ui.update { it.copy(showExitConfirm = true, clearUserDataOnExit = false) }
    }

    fun onExitCancel() {
        _ui.update { it.copy(showExitConfirm = false, clearUserDataOnExit = false) }
    }

    fun onToggleClearUserDataOnExit() {
        _ui.update { it.copy(clearUserDataOnExit = !it.clearUserDataOnExit) }
    }

    /**
     * Uscita confermata: credenziali e cache del catalogo sempre; preferiti,
     * "I miei canali", "Riprendi" e avanzamento solo con la casella spuntata,
     * come la TV.
     */
    fun onExitConfirm() {
        val clearUserData = _ui.value.clearUserDataOnExit
        val server = currentServer
        val username = currentUsername
        onExitCancel()
        viewModelScope.launch {
            _ui.update { it.copy(isWorking = true) }
            onRemoteCardHidden()
            runCatching { credentialStore.clear() }
            runCatching { clearCatalogCache(server, username) }
            if (clearUserData) {
                runCatching { userDataStore.clearFavorites(server, username) }
                runCatching { userDataStore.clearMyChannels(server, username) }
                runCatching { userDataStore.clearProgress(server, username) }
                runCatching { userDataStore.clearContinueWatching(server, username) }
            }
            _ui.update { it.copy(isWorking = false) }
            onSignOut()
        }
    }

    // --- Configura da remoto ---

    /**
     * Il riquadro è visibile a schermo e l'app è in primo piano: parte il
     * ciclo di abbinamento (una sola sessione per volta, come la TV).
     */
    fun onRemoteCardVisible() {
        if (pairingVisible) return
        pairingVisible = true
        _ui.update { it.copy(pairingActive = true, pairingError = null) }
        startPairingLoop()
    }

    /** Il riquadro non è più visibile: nessuna richiesta al relay. */
    fun onRemoteCardHidden() {
        val wasVisible = pairingVisible
        pairingVisible = false
        pairingJob?.cancel()
        pairingJob = null
        if (wasVisible || _ui.value.pairingActive) {
            _ui.update { it.copy(pairingActive = false) }
        }
    }

    /** "Mostra un nuovo codice": nuova sessione, nuovo PIN e nuovo QR. */
    fun onRenewPairingCode() {
        val coordinator = coordinator ?: return
        coordinator.reset()
        _ui.update { it.copy(pairingMessage = null, pairingError = null) }
        if (pairingVisible) {
            pairingJob?.cancel()
            pairingJob = null
            startPairingLoop()
        }
    }

    private fun startPairingLoop() {
        val coordinator = coordinator ?: return
        if (pairingJob?.isActive == true) return
        pairingJob = viewModelScope.launch {
            while (isActive && pairingVisible) {
                val step = try {
                    coordinator.step()
                } catch (cancel: CancellationException) {
                    throw cancel
                } catch (_: Exception) {
                    PairingStep.Wait(PairingCoordinator.RETRY_DELAYS_MILLIS.first())
                }
                when (step) {
                    is PairingStep.Wait -> if (step.delayMillis > 0) delay(step.delayMillis)
                    is PairingStep.Delivered -> {
                        // Credenziali applicate: il riquadro mostra la conferma e
                        // il ciclo si ferma, come dopo l'accesso sul telefono.
                        if (handleRemoteCredentials(step.credentials)) return@launch
                    }
                }
            }
        }
    }

    /**
     * Credenziali ricevute dal telefono: codice rubrica risolto, login,
     * credenziali salvate e account aggiornato. In caso di rifiuto o di errore
     * di rete l'accesso corrente resta valido e il riquadro riparte con un
     * nuovo codice.
     *
     * @return vero se le credenziali sono state applicate.
     */
    private suspend fun handleRemoteCredentials(credentials: RemoteCredentials): Boolean {
        val coordinator = coordinator ?: return false
        _ui.update { it.copy(pairingBusy = true, pairingMessage = null, pairingError = null) }

        val resolved = resolveServer(credentials.server)
        if (resolved == null) {
            _ui.update {
                it.copy(pairingBusy = false, pairingError = REMOTE_SERVER_CODE_NOT_FOUND)
            }
            coordinator.reset()
            return false
        }

        val result = runCatching {
            performLogin(resolved.server, credentials.username, credentials.password)
        }.getOrNull()

        if (result !is LoginResult.Success) {
            _ui.update { it.copy(pairingBusy = false, pairingError = remoteFailureMessage(result)) }
            coordinator.reset()
            return false
        }

        val account = result.account
        val effectiveServerCode = credentials.serverCode ?: resolved.serverCode
        // Il vecchio catalogo non vale più: si azzera e si chiede il ricarico.
        runCatching { clearCatalogCache(currentServer, currentUsername) }
        currentServer = account.server
        currentUsername = account.username
        currentPassword = credentials.password
        runCatching {
            credentialStore.save(
                StoredCredentials(
                    server = account.server,
                    username = account.username,
                    password = credentials.password,
                    serverCode = effectiveServerCode,
                ),
            )
        }
        _ui.update { state ->
            state.copy(
                username = account.username,
                serverHost = extractHost(account.server),
                serverLabel = serverLabel(effectiveServerCode),
                pairingBusy = false,
                pairingMessage = AccessViewModel.REMOTE_CONFIGURED_MESSAGE,
                pairingError = null,
            ).withAccount(account, playing = isPlaybackActive(), nowMillis = clock.nowMillis())
        }
        // Ciclo fermo dopo la consegna (come dopo l'accesso sul telefono), ma il
        // riquadro resta visibile: "Mostra un nuovo codice" può ripartire.
        _ui.update { it.copy(pairingActive = false) }
        onRemoteCredentialsApplied(
            account.server,
            credentials.username,
            credentials.password,
            account,
        )
        return true
    }

    private fun remoteFailureMessage(result: LoginResult?): String = when (result) {
        LoginResult.InvalidCredentials -> "Utente o password non validi."
        is LoginResult.AccountExpired -> "Account scaduto."
        is LoginResult.AccountDisabled -> "Account disattivato."
        is LoginResult.Unreachable -> "Server non raggiungibile."
        is LoginResult.ServerError -> "Errore del server (HTTP ${result.httpCode})."
        LoginResult.InvalidServerAddress -> "Indirizzo non valido."
        LoginResult.UnexpectedResponse -> "Risposta non riconosciuta."
        is LoginResult.Success, null -> "Verifica delle credenziali non riuscita."
    }

    /**
     * Regola "codice o indirizzo", identica a quella dell'accesso: un codice
     * viene risolto sulla rubrica del relay, un indirizzo viene normalizzato.
     */
    private suspend fun resolveServer(input: String): ResolvedServer? =
        when (val parsed = ServerInput.classify(input)) {
            is ServerInput.Address -> ServerAddress.normalize(parsed.raw)
                ?.let { ResolvedServer(it, null) }

            is ServerInput.Code -> when (val result = resolveRubrica(parsed.code)) {
                is ApiResult.Ok -> ServerAddress.normalize(result.value)
                    ?.let { ResolvedServer(it, parsed.code) }
                else -> null
            }
        }

    private data class ResolvedServer(val server: String, val serverCode: String?)

    override fun onCleared() {
        serverLabelJob?.cancel()
        serverLabelJob = null
        accountReadJob?.cancel()
        accountReadJob = null
        pairingJob?.cancel()
        pairingJob = null
        pairingVisible = false
        super.onCleared()
    }

    private fun extractHost(server: String): String {
        return try {
            val withoutScheme = server.substringAfter("://", server)
            withoutScheme.substringBefore("/").substringBefore("?").substringBefore("#")
        } catch (_: Exception) {
            server
        }
    }

    private fun SettingsUiState.withAccount(
        account: XtreamAccount,
        playing: Boolean,
        nowMillis: Long,
    ): SettingsUiState = copy(
        status = statusLabel(account.status),
        expiresAtEpochSeconds = account.expiresAtEpochSeconds,
        maxConnections = account.maxConnections,
        activeConnections = account.activeConnections,
        lastAccountReadMillis = nowMillis,
        connectionsWarning = ConnectionsAdvisory.shouldWarn(
            activeConnections = account.activeConnections,
            maxConnections = account.maxConnections,
            devicePlaying = playing,
        ),
    )

    companion object {
        /** Il codice server ricevuto dal telefono non esiste in rubrica. */
        const val REMOTE_SERVER_CODE_NOT_FOUND = "Codice server non trovato"
    }
}
