package it.felixvision.mobile.ui.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.BuildConfig
import it.felixvision.mobile.ui.access.statusLabel
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.serverLabel
import it.felixvision.tv.data.xtream.LoginResult
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
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
    val message: String? = null,
    val error: String? = null,
    val showExitConfirm: Boolean = false,
    val clearUserDataOnExit: Boolean = false,
    val versionName: String = "",
    val versionCode: Int = 0,
)

/**
 * Impostazioni del tablet, adattato da
 * `it.felixvision.tv.ui.settings.SettingsViewModel` con la stessa logica per
 * account e connessioni: rilettura delle informazioni dell'account a ogni
 * apertura, etichetta del server (codice rubrica o "Personalizzato"), avviso
 * connessioni (regola [ConnectionsAdvisory], identica alla TV) ed Esci con
 * pulizia delle credenziali, della cache del catalogo e — solo se richiesto —
 * dei dati utente. Tutto ciò che riguarda l'aggiornamento dell'app è escluso
 * (arriva nel PR4).
 *
 * Le dipendenze sono iniettate per poter testare il ViewModel senza Android;
 * dall'app si usa il costruttore che accetta [AppContainer].
 */
class SettingsViewModel(
    private val server: String,
    private val username: String,
    private val password: String,
    private val expiresAtEpochSeconds: Long?,
    private val status: String,
    private val maxConnections: Int?,
    private val activeConnections: Int?,
    private val onSignOut: () -> Unit,
    private val performLogin: suspend (server: String, username: String, password: String) -> LoginResult,
    private val credentialStore: CredentialStore,
    private val readLastCatalogUpdate: suspend (server: String, username: String) -> Long?,
    private val clearCatalogCache: suspend (server: String, username: String) -> Unit,
    private val clearUserData: suspend (server: String, username: String) -> Unit,
    private val isPlaybackActive: () -> Boolean,
    private val clock: Clock = SystemClock,
    versionName: String = BuildConfig.VERSION_NAME,
    versionCode: Int = BuildConfig.VERSION_CODE,
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
        clearUserData = { s, u ->
            // Stesso perimetro della TV: preferiti, avanzamento e
            // "Continua a guardare"; "I miei canali" resta.
            runCatching { container.favoritesStore.clearForAccount(s, u) }
            runCatching { container.progressStore.clearForAccount(s, u) }
            runCatching { container.continueWatchingStore.clearForAccount(s, u) }
        },
        isPlaybackActive = { container.playbackActivity.isActive.value },
        clock = container.clock,
    )

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

    init {
        viewModelScope.launch {
            val last = readLastCatalogUpdate(server, username)
            _ui.update { it.copy(lastUpdateMillis = last) }
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
            val last = runCatching { readLastCatalogUpdate(server, username) }.getOrNull()
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
            val code = if (stored != null && stored.server == server && stored.username == username) {
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
            val result = runCatching { performLogin(server, username, password) }.getOrNull()
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
            _ui.update {
                it.copy(
                    status = statusLabel(account.status),
                    expiresAtEpochSeconds = account.expiresAtEpochSeconds,
                    maxConnections = account.maxConnections,
                    activeConnections = account.activeConnections,
                    lastAccountReadMillis = clock.nowMillis(),
                    connectionsWarning = ConnectionsAdvisory.shouldWarn(
                        activeConnections = account.activeConnections,
                        maxConnections = account.maxConnections,
                        devicePlaying = playing,
                    ),
                    isReadingAccount = false,
                )
            }
        }
    }

    fun onExitClicked() {
        _ui.update { it.copy(showExitConfirm = true, clearUserDataOnExit = false) }
    }

    fun onExitCancel() {
        _ui.update { it.copy(showExitConfirm = false, clearUserDataOnExit = false) }
    }

    fun onToggleClearUserDataOnExit() {
        _ui.update { it.copy(clearUserDataOnExit = !it.clearUserDataOnExit) }
    }

    fun onExitConfirm() {
        val clearUserData = _ui.value.clearUserDataOnExit
        viewModelScope.launch {
            _ui.update { it.copy(isWorking = true) }
            runCatching { credentialStore.clear() }
            runCatching { clearCatalogCache(server, username) }
            if (clearUserData) {
                runCatching { clearUserData(server, username) }
            }
            _ui.update {
                it.copy(showExitConfirm = false, clearUserDataOnExit = false, isWorking = false)
            }
            onSignOut()
        }
    }

    override fun onCleared() {
        serverLabelJob?.cancel()
        serverLabelJob = null
        accountReadJob?.cancel()
        accountReadJob = null
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
}
