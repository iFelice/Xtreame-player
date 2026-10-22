package it.felixvision.tv.ui.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.data.pairing.PairingStep
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.store.serverLabel
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.ServerAddress
import it.felixvision.tv.data.xtream.ServerInput
import it.felixvision.tv.data.pairing.ApiResult
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
    val pairing: PairingPanelState = PairingPanelState(),
    val isRefreshing: Boolean = false,
    val message: String? = null,
    val error: String? = null,
    val showExitConfirm: Boolean = false,
)

class SettingsViewModel(
    private val container: AppContainer,
    private val server: String,
    private val username: String,
    private val password: String,
    private val expiresAtEpochSeconds: Long?,
    private val status: String,
    private val maxConnections: Int?,
    private val activeConnections: Int?,
    private val onCredentialsReplaced: (String, String, String) -> Unit,
    private val onSignOut: () -> Unit,
) : ViewModel() {

    private val coordinator: PairingCoordinator = container.newPairingCoordinator()
    private var currentServerCode: String? = null
    private val _ui = MutableStateFlow(
        SettingsUiState(
            username = username,
            serverHost = extractHost(server),
            serverLabel = "Personalizzato",
            status = status,
            expiresAtEpochSeconds = expiresAtEpochSeconds,
            maxConnections = maxConnections,
            activeConnections = activeConnections,
        )
    )
    val ui: StateFlow<SettingsUiState> = _ui.asStateFlow()

    private var pairingJob: Job? = null
    private var pairingVisible = false

    init {
        viewModelScope.launch {
            coordinator.state.collect { panel -> _ui.update { it.copy(pairing = panel) } }
        }
        // Carica last update e server label da credenziali salvate
        viewModelScope.launch {
            val last = container.catalogCache.lastUpdateMillis(server, username)
            _ui.update { it.copy(lastUpdateMillis = last) }
            val stored = container.credentialStore.load()
            if (stored != null && stored.server == server && stored.username == username) {
                currentServerCode = stored.serverCode
                _ui.update { it.copy(serverLabel = serverLabel(stored.serverCode)) }
            }
        }
    }

    fun onSettingsVisible() {
        if (pairingVisible) return
        pairingVisible = true
        startPairingLoop()
    }

    fun onSettingsHidden() {
        pairingVisible = false
        pairingJob?.cancel()
        pairingJob = null
    }

    fun onRenewCode() {
        coordinator.reset()
        if (pairingVisible) {
            pairingJob?.cancel()
            pairingJob = null
            startPairingLoop()
        }
    }

    private fun startPairingLoop() {
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
                    is PairingStep.Delivered -> handleRemoteCredentials(step.credentials.server, step.credentials.username, step.credentials.password)
                }
            }
        }
    }

    private fun handleRemoteCredentials(remoteServer: String, remoteUser: String, remotePass: String) {
        viewModelScope.launch {
            _ui.update { it.copy(isRefreshing = true, error = null, message = null) }
            val resolved = resolveServer(remoteServer) ?: run {
                _ui.update { it.copy(isRefreshing = false, error = "Codice server non trovato") }
                coordinator.reset()
                return@launch
            }
            when (val result = container.xtreamClient.login(resolved.server, remoteUser, remotePass)) {
                is LoginResult.Success -> {
                    // Sostituisce credenziali salvate, cancella cache precedente, ricarica e mostra "Configurato da remoto"
                    val oldServer = server
                    val oldUser = username
                    runCatching { container.catalogCache.clear(oldServer, oldUser) }
                    runCatching {
                        container.credentialStore.save(StoredCredentials(server = result.account.server, username = result.account.username, password = remotePass, serverCode = resolved.serverCode))
                    }
                    _ui.update { it.copy(isRefreshing = false, message = "Configurato da remoto") }
                    onCredentialsReplaced(result.account.server, result.account.username, remotePass)
                    onSettingsHidden()
                }
                else -> {
                    // Mantiene credenziali attuali, mostra errore e resta pronta a nuovo invio
                    val msg = when (result) {
                        LoginResult.InvalidCredentials -> "Utente o password non validi."
                        is LoginResult.AccountExpired -> "Account scaduto."
                        is LoginResult.AccountDisabled -> "Account disattivato."
                        is LoginResult.Unreachable -> "Server non raggiungibile."
                        is LoginResult.ServerError -> "Errore del server (HTTP ${result.httpCode})."
                        LoginResult.InvalidServerAddress -> "Indirizzo non valido."
                        LoginResult.UnexpectedResponse -> "Risposta non riconosciuta."
                        else -> "Verifica fallita."
                    }
                    _ui.update { it.copy(isRefreshing = false, error = msg) }
                    coordinator.reset()
                }
            }
        }
    }

    private suspend fun resolveServer(input: String): ResolvedServer? {
        return when (val parsed = ServerInput.classify(input)) {
            is ServerInput.Address -> ServerAddress.normalize(parsed.raw)?.let { ResolvedServer(it, null) }
            is ServerInput.Code -> when (val result = container.pairingClient.resolveRubrica(parsed.code)) {
                is ApiResult.Ok -> ServerAddress.normalize(result.value)?.let { ResolvedServer(it, parsed.code) }
                else -> null
            }
        }
    }

    private data class ResolvedServer(val server: String, val serverCode: String?)

    fun onRefreshCatalog() {
        viewModelScope.launch {
            _ui.update { it.copy(isRefreshing = true, error = null) }
            val result = container.catalogClient.loadCatalog(server, username, password)
            when (result) {
                is it.felixvision.tv.data.catalog.CatalogResult.Success -> {
                    container.catalogCache.save(server, username, result.catalog)
                    _ui.update { it.copy(isRefreshing = false, lastUpdateMillis = System.currentTimeMillis(), message = "Catalogo aggiornato") }
                }
                is it.felixvision.tv.data.catalog.CatalogResult.Error -> {
                    _ui.update { it.copy(isRefreshing = false, error = result.message) }
                }
            }
        }
    }

    fun onExitClicked() {
        _ui.update { it.copy(showExitConfirm = true) }
    }

    fun onExitCancel() {
        _ui.update { it.copy(showExitConfirm = false) }
    }

    fun onExitConfirm() {
        viewModelScope.launch {
            runCatching { container.credentialStore.clear() }
            runCatching { container.catalogCache.clear(server, username) }
            runCatching { container.favoritesStore.clearForAccount(server, username) }
            _ui.update { it.copy(showExitConfirm = false) }
            onSignOut()
        }
    }

    private fun extractHost(server: String): String {
        return try {
            val withoutScheme = server.substringAfter("://", server)
            withoutScheme.substringBefore("/").substringBefore("?").substringBefore("#")
        } catch (_: Exception) { server }
    }
}
