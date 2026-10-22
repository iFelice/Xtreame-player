package it.felixvision.tv.ui.access

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.tv.AppContainer
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.data.pairing.PairingStep
import it.felixvision.tv.data.pairing.RemoteCredentials
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.xtream.AccountStatus
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.ServerAddress
import it.felixvision.tv.data.xtream.ServerInput
import it.felixvision.tv.data.xtream.XtreamAccount
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

/** Schermata corrente dell'app. */
sealed interface Screen {

    /** Verifica iniziale delle credenziali salvate. */
    data object Booting : Screen

    data object Access : Screen

    data class Account(val summary: AccountSummary, val banner: String?) : Screen
}

/** Dati mostrati dalla schermata provvisoria dopo l'accesso. */
data class AccountSummary(
    val username: String,
    val server: String,
    val status: AccountStatus,
    val expiresAtEpochSeconds: Long?,
    val isTrial: Boolean,
    val maxConnections: Int?,
    val activeConnections: Int?,
)

/** Valori da riportare nei campi del modulo, per esempio dopo un abbinamento fallito. */
data class Prefill(
    val id: Long,
    val server: String,
    val username: String,
    val password: String,
)

data class AccessUiState(
    val screen: Screen = Screen.Booting,
    val server: String = "",
    val username: String = "",
    val password: String = "",
    val passwordVisible: Boolean = false,
    val busy: Boolean = false,
    val errorMessage: String? = null,
    val statusMessage: String? = null,
    val pairing: PairingPanelState = PairingPanelState(),
    val prefill: Prefill? = null,
)

/**
 * Logica della schermata di accesso: modulo manuale, login automatico con le
 * credenziali salvate e abbinamento remoto.
 *
 * Correzioni PR2:
 * - Se ci sono credenziali salvate, la sessione di abbinamento non viene creata
 *   finché la verifica delle credenziali salvate non è fallita.
 * - Limite di 3 sessioni scadute consecutive: si ferma e mostra "Codice scaduto".
 */
class AccessViewModel(private val container: AppContainer) : ViewModel() {

    private val coordinator: PairingCoordinator = container.newPairingCoordinator()

    private val _ui = MutableStateFlow(AccessUiState())
    val ui: StateFlow<AccessUiState> = _ui.asStateFlow()

    private var pairingJob: Job? = null
    private var pairingVisible = false
    // Correzione E.1: all'avvio, se ci sono credenziali salvate, non creare sessione finché verifica non fallisce
    private var pairingAllowed = false
    private var savedCredentialsExist: Boolean = false
    private var verificationFinished = false
    private var prefillCounter = 0L
    private var currentCredentials: StoredCredentials? = null

    fun getCurrentCredentials(): StoredCredentials? = currentCredentials

    init {
        viewModelScope.launch {
            coordinator.state.collect { panel -> _ui.update { it.copy(pairing = panel) } }
        }
        restoreSavedCredentials()
    }

    // --- Modulo ---

    fun onServerChange(value: String) = _ui.update { it.copy(server = value) }

    fun onUsernameChange(value: String) = _ui.update { it.copy(username = value) }

    fun onPasswordChange(value: String) = _ui.update { it.copy(password = value) }

    fun togglePasswordVisible() = _ui.update { it.copy(passwordVisible = !it.passwordVisible) }

    fun submit() {
        val state = _ui.value
        if (state.busy) return

        val server = state.server.trim()
        val username = state.username.trim()
        val password = state.password

        val validationError = when {
            server.isEmpty() -> "Inserisci l'indirizzo del server o il codice rubrica."
            ServerInput.isCode(server) && server.length > MAX_CODE_LENGTH ->
                "Il codice server può avere al massimo $MAX_CODE_LENGTH caratteri."
            username.isEmpty() -> "Inserisci il nome utente."
            password.isEmpty() -> "Inserisci la password."
            else -> null
        }
        if (validationError != null) {
            _ui.update { it.copy(errorMessage = validationError, statusMessage = null) }
            return
        }

        viewModelScope.launch {
            _ui.update { it.copy(busy = true, errorMessage = null, statusMessage = null) }
            when (val outcome = login(server, username, password)) {
                is LoginOutcome.Success -> onLoggedIn(
                    account = outcome.account,
                    password = password,
                    banner = null,
                    persist = true,
                    serverCode = outcome.serverCode
                )
                is LoginOutcome.Failure -> _ui.update {
                    it.copy(busy = false, errorMessage = outcome.message)
                }
            }
        }
    }

    fun signOut() {
        onPairingHidden()
        viewModelScope.launch {
            runCatching { container.credentialStore.clear() }
            coordinator.reset()
            pairingAllowed = true
            verificationFinished = true
            _ui.value = AccessUiState(screen = Screen.Access)
        }
    }

    fun onRenewPairingCode() {
        coordinator.reset()
        // Riparte da capo
        if (pairingVisible && pairingAllowed) {
            pairingJob?.cancel()
            pairingJob = null
            startPairingLoop()
        }
    }

    // --- Abbinamento remoto ---

    fun onPairingVisible() {
        if (pairingVisible) return
        pairingVisible = true
        if (!pairingAllowed) {
            // E.1: non creare sessione finché verifica credenziali salvate non è fallita
            // Resta in attesa; la creazione avverrà quando verificationFinished consentirà
            return
        }
        startPairingLoop()
    }

    fun onPairingHidden() {
        pairingVisible = false
        pairingJob?.cancel()
        pairingJob = null
    }

    private fun startPairingLoop() {
        if (pairingJob?.isActive == true) return
        if (!pairingAllowed) return
        pairingJob = viewModelScope.launch {
            while (isActive && pairingVisible) {
                val step = try {
                    coordinator.step()
                } catch (cancel: CancellationException) {
                    throw cancel
                } catch (error: Exception) {
                    PairingStep.Wait(PairingCoordinator.RETRY_DELAYS_MILLIS.first())
                }
                when (step) {
                    is PairingStep.Wait -> if (step.delayMillis > 0) delay(step.delayMillis)
                    is PairingStep.Delivered -> handleRemoteCredentials(step.credentials)
                }
            }
        }
    }

    private suspend fun handleRemoteCredentials(credentials: RemoteCredentials) {
        _ui.update {
            it.copy(
                busy = true,
                errorMessage = null,
                statusMessage = "Credenziali ricevute dal telefono: verifica in corso…",
            )
        }

        when (val outcome = login(credentials.server, credentials.username, credentials.password)) {
            is LoginOutcome.Success -> onLoggedIn(
                account = outcome.account,
                password = credentials.password,
                banner = REMOTE_CONFIGURED_MESSAGE,
                persist = true,
                serverCode = outcome.serverCode
            )

            is LoginOutcome.Failure -> {
                prefillCounter += 1
                _ui.update {
                    it.copy(
                        busy = false,
                        server = credentials.server,
                        username = credentials.username,
                        password = credentials.password,
                        passwordVisible = false,
                        statusMessage = null,
                        errorMessage = outcome.message,
                        prefill = Prefill(
                            id = prefillCounter,
                            server = credentials.server,
                            username = credentials.username,
                            password = credentials.password,
                        ),
                    )
                }
                // Nuova sessione pronta per un secondo tentativo dal telefono.
                coordinator.reset()
            }
        }
    }

    // --- Accesso ---

    private suspend fun login(serverInput: String, username: String, password: String): LoginOutcome {
        val resolution = when (val r = resolveServer(serverInput)) {
            is ServerResolution.Resolved -> r
            is ServerResolution.Failed -> return LoginOutcome.Failure(r.message)
        }

        return when (val result = container.xtreamClient.login(resolution.server, username, password)) {
            is LoginResult.Success -> LoginOutcome.Success(result.account, resolution.serverCode)
            LoginResult.InvalidCredentials ->
                LoginOutcome.Failure("Utente o password non validi.", credentialsRejected = true)
            is LoginResult.AccountExpired ->
                LoginOutcome.Failure(
                    expiredMessage(result.account.expiresAtEpochSeconds),
                    credentialsRejected = true,
                )
            is LoginResult.AccountDisabled ->
                LoginOutcome.Failure(
                    "Account disattivato. Contatta il tuo fornitore.",
                    credentialsRejected = true,
                )
            is LoginResult.Unreachable ->
                LoginOutcome.Failure(
                    if (result.timedOut) {
                        "Server non raggiungibile: timeout di 10 s. Controlla l'indirizzo e la rete."
                    } else {
                        "Server non raggiungibile. Controlla l'indirizzo e la connessione."
                    },
                )
            is LoginResult.ServerError ->
                LoginOutcome.Failure("Il server ha risposto con un errore (HTTP ${result.httpCode}).")
            LoginResult.InvalidServerAddress ->
                LoginOutcome.Failure("Indirizzo del server non valido.")
            LoginResult.UnexpectedResponse ->
                LoginOutcome.Failure(
                    "Risposta del server non riconosciuta: non sembra un pannello Xtream.",
                )
        }
    }

    /** Regola "codice o indirizzo": un codice viene risolto sulla rubrica del relay. */
    private suspend fun resolveServer(input: String): ServerResolution {
        return when (val parsed = ServerInput.classify(input)) {
            is ServerInput.Address -> ServerAddress.normalize(parsed.raw)
                ?.let { ServerResolution.Resolved(it, null) }
                ?: ServerResolution.Failed("Indirizzo del server non valido.")

            is ServerInput.Code -> when (val result = container.pairingClient.resolveRubrica(parsed.code)) {
                is ApiResult.Ok -> ServerAddress.normalize(result.value)
                    ?.let { ServerResolution.Resolved(it, parsed.code) }
                    ?: ServerResolution.Failed("Codice server non trovato")
                is ApiResult.Http -> if (result.code == 404) {
                    ServerResolution.Failed("Codice server non trovato")
                } else {
                    ServerResolution.Failed("Servizio codici non disponibile: riprova tra poco.")
                }
                else -> ServerResolution.Failed(
                    "Servizio di abbinamento non raggiungibile: riprova tra poco.",
                )
            }
        }
    }

    fun updateCredentialsFromRemote(server: String, username: String, password: String, account: XtreamAccount) {
        viewModelScope.launch {
            // Se server è un codice già risolto altrove, tentiamo di preservarlo se corrisponde
            currentCredentials = StoredCredentials(server = server, username = username, password = password, serverCode = null)
            runCatching { container.credentialStore.save(currentCredentials!!) }
            _ui.update {
                it.copy(screen = Screen.Account(summary = account.toSummary(), banner = REMOTE_CONFIGURED_MESSAGE))
            }
        }
    }

    private suspend fun onLoggedIn(
        account: XtreamAccount,
        password: String,
        banner: String?,
        persist: Boolean,
        serverCode: String? = null
    ) {
        // Usa codice risolto se presente, altrimenti conserva quello già salvato se corrisponde
        val effectiveCode = serverCode ?: currentCredentials?.serverCode?.takeIf { it.isNotBlank() }
        currentCredentials = StoredCredentials(server = account.server, username = account.username, password = password, serverCode = effectiveCode)
        if (persist) {
            val saved = runCatching {
                container.credentialStore.save(
                    StoredCredentials(
                        server = account.server,
                        username = account.username,
                        password = password,
                        serverCode = effectiveCode,
                    ),
                )
            }.isSuccess
            if (!saved) {
                AppLog.warn("Salvataggio cifrato delle credenziali non riuscito")
            }
        }
        onPairingHidden()
        _ui.update {
            it.copy(
                busy = false,
                errorMessage = null,
                statusMessage = null,
                screen = Screen.Account(summary = account.toSummary(), banner = banner),
            )
        }
    }

    // --- Avvio ---

    private fun restoreSavedCredentials() {
        viewModelScope.launch {
            val stored = container.credentialStore.load()
            if (stored == null) {
                // Nessuna credenziale: accesso manuale, pairing consentito
                pairingAllowed = true
                verificationFinished = true
                _ui.update { it.copy(screen = Screen.Access) }
                // Se il pannello era già visibile (es. rotazione), ora può partire
                if (pairingVisible) startPairingLoop()
                return@launch
            }

            savedCredentialsExist = true
            pairingAllowed = false
            verificationFinished = false

            _ui.update {
                it.copy(
                    screen = Screen.Access,
                    server = stored.server,
                    username = stored.username,
                    password = stored.password,
                    busy = true,
                    statusMessage = "Verifica delle credenziali salvate…",
                )
            }

            when (val outcome = login(stored.server, stored.username, stored.password)) {
                is LoginOutcome.Success -> {
                    pairingAllowed = false // non serve pairing, siamo loggati
                    verificationFinished = true
                    // Preserva codice salvato se login diretto ha funzionato
                    onLoggedIn(
                        account = outcome.account,
                        password = stored.password,
                        banner = null,
                        persist = false,
                        serverCode = stored.serverCode
                    )
                }
                is LoginOutcome.Failure -> {
                    if (outcome.credentialsRejected) {
                        runCatching { container.credentialStore.clear() }
                    }
                    pairingAllowed = true
                    verificationFinished = true
                    _ui.update {
                        it.copy(
                            busy = false,
                            password = if (outcome.credentialsRejected) "" else it.password,
                            statusMessage = null,
                            errorMessage = outcome.message,
                        )
                    }
                    if (pairingVisible) startPairingLoop()
                }
            }
        }
    }

    private fun expiredMessage(expiresAtEpochSeconds: Long?): String {
        val formatted = formatDate(expiresAtEpochSeconds)
        return if (formatted == null) {
            "Account scaduto. Rinnova l'abbonamento per continuare."
        } else {
            "Account scaduto il $formatted."
        }
    }

    private sealed interface ServerResolution {
        data class Resolved(val server: String, val serverCode: String?) : ServerResolution
        data class Failed(val message: String) : ServerResolution
    }

    private sealed interface LoginOutcome {
        data class Success(val account: XtreamAccount, val serverCode: String? = null) : LoginOutcome

        data class Failure(
            val message: String,
            /** Vero solo se il server ha rifiutato le credenziali o l'account non è attivo. */
            val credentialsRejected: Boolean = false,
        ) : LoginOutcome
    }

    companion object {
        const val REMOTE_CONFIGURED_MESSAGE = "Configurato da remoto"
        private const val MAX_CODE_LENGTH = 32

        private val DATE_FORMATTER: DateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")

        fun formatDate(epochSeconds: Long?): String? {
            if (epochSeconds == null || epochSeconds <= 0L) return null
            return runCatching {
                DATE_FORMATTER.format(Instant.ofEpochSecond(epochSeconds).atZone(ZoneId.systemDefault()))
            }.getOrNull()
        }

        fun daysRemaining(epochSeconds: Long?, nowMillis: Long = System.currentTimeMillis()): Long? {
            if (epochSeconds == null || epochSeconds <= 0L) return null
            val remaining = epochSeconds * 1_000L - nowMillis
            return remaining / (24L * 60L * 60L * 1_000L)
        }
    }
}

private fun XtreamAccount.toSummary(): AccountSummary = AccountSummary(
    username = username,
    server = server,
    status = status,
    expiresAtEpochSeconds = expiresAtEpochSeconds,
    isTrial = isTrial,
    maxConnections = maxConnections,
    activeConnections = activeConnections,
)
