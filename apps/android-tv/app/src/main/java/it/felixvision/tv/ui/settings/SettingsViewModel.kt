package it.felixvision.tv.ui.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import it.felixvision.tv.AppContainer
import it.felixvision.tv.BuildConfig
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.data.pairing.PairingStep
import it.felixvision.tv.data.pairing.RemoteCredentials
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedPageAccess
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.store.serverLabel
import it.felixvision.tv.data.update.ApkDownloadResult
import it.felixvision.tv.data.update.DOWNLOAD_ERROR_MESSAGE
import it.felixvision.tv.data.update.DOWNLOAD_SIZE_MISMATCH_MESSAGE
import it.felixvision.tv.data.update.INSTALL_CANCELLED_MESSAGE
import it.felixvision.tv.data.images.CacheCleanup
import it.felixvision.tv.data.update.InstallEvent
import it.felixvision.tv.data.update.ReleaseInfo
import it.felixvision.tv.data.update.UNKNOWN_SOURCES_INSTRUCTIONS
import it.felixvision.tv.data.update.UpdateCheckState
import it.felixvision.tv.data.update.UpdateChecker
import it.felixvision.tv.data.update.UpdateClient
import it.felixvision.tv.data.update.UpdateInstaller
import it.felixvision.tv.data.update.apkFileForVersion
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.ServerAddress
import it.felixvision.tv.data.xtream.ServerInput
import it.felixvision.tv.player.PlayerPreferences
import it.felixvision.tv.ui.access.statusLabel
import it.felixvision.tv.vpn.VpnController
import it.felixvision.tv.vpn.VpnRelayApi
import java.io.File
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Stato del controllo e dell'installazione degli aggiornamenti dall'app. */
sealed interface AppUpdateStatus {
    data object Checking : AppUpdateStatus

    data object UpToDate : AppUpdateStatus

    data object CheckFailed : AppUpdateStatus

    data class Available(
        val release: ReleaseInfo,
        val noticeMessage: String? = null,
        val errorMessage: String? = null,
    ) : AppUpdateStatus

    data class Downloading(
        val release: ReleaseInfo,
        val progressPercent: Int,
    ) : AppUpdateStatus

    data class Installing(
        val release: ReleaseInfo,
    ) : AppUpdateStatus
}

/** Riga del riquadro "Contenuti protetti" delle Impostazioni: stato del PIN. */
data class ProtectedSummary(val hasPin: Boolean = false)

/** Testo del riquadro "Contenuti protetti" in Impostazioni. */
fun protectedSettingsLine(summary: ProtectedSummary): String =
    if (summary.hasPin) "PIN impostato" else "PIN non impostato"

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
    val pairing: PairingPanelState = PairingPanelState(),
    val isRefreshing: Boolean = false,
    val message: String? = null,
    val error: String? = null,
    val showExitConfirm: Boolean = false,
    val clearUserDataOnExit: Boolean = false,
    val versionName: String = BuildConfig.VERSION_NAME,
    val versionCode: Int = BuildConfig.VERSION_CODE,
    val updateStatus: AppUpdateStatus = AppUpdateStatus.Checking,
    val canInstallPackages: Boolean = false,
) {
    val isDownloadingUpdate: Boolean
        get() = updateStatus is AppUpdateStatus.Downloading
}

class SettingsViewModel(
    private val container: AppContainer,
    val server: String,
    val username: String,
    private val password: String,
    private val expiresAtEpochSeconds: Long?,
    private val status: String,
    private val maxConnections: Int?,
    private val activeConnections: Int?,
    private val onCredentialsReplaced: (String, String, String) -> Unit,
    private val onSignOut: () -> Unit,
    val credentialStore: CredentialStore = container.credentialStore,
    private val updateClient: UpdateClient = container.updateClient,
    private val updateInstaller: UpdateInstaller = container.updateInstaller,
    private val currentVersionName: String = BuildConfig.VERSION_NAME,
    private val currentVersionCode: Int = BuildConfig.VERSION_CODE,
    private val updateChecker: UpdateChecker = container.updateChecker,
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
            versionName = currentVersionName,
            versionCode = currentVersionCode,
            canInstallPackages = updateInstaller.canRequestPackageInstalls(),
        )
    )
    val ui: StateFlow<SettingsUiState> = _ui.asStateFlow()

    /**
     * Dimensione dell'interfaccia scelta. Vive nello store dell'app (la usa
     * anche FvpApp), così la scelta si vede subito in tutte le schermate.
     */
    val interfaceSize: StateFlow<InterfaceSize> = container.interfaceSizeStore.size

    /**
     * Archivio PIN + elenchi nascosti e stato di sessione usati dalla pagina
     * "Contenuti protetti"; la password del provider serve al recupero PIN.
     */
    val protectedContentStore: ProtectedContentStore get() = container.protectedContentStore
    val protectedSession: ProtectedSession get() = container.protectedSession
    val protectedPageAccess: ProtectedPageAccess get() = container.protectedPageAccess
    val clock: Clock get() = container.clock

    /**
     * VPN di FelixVP per il riquadro e la pagina di configurazione. Getter:
     * costruire il ViewModel non crea il controller.
     */
    val vpnController: VpnController get() = container.vpnController
    val vpnRelayClient: VpnRelayApi get() = container.vpnRelayClient

    /**
     * Preferenze del player (durata dello zapping): la pagina "Player" le legge
     * e le scrive. Getter: costruire il ViewModel non le crea.
     */
    val playerPreferences: PlayerPreferences get() = container.playerPreferences

    /** Riepilogo per la riga del riquadro "Contenuti protetti". */
    private val _protectedSummary = MutableStateFlow(ProtectedSummary())
    val protectedSummary: StateFlow<ProtectedSummary> = _protectedSummary.asStateFlow()

    /** Rilegge l'archivio protected e aggiorna la riga del riquadro. */
    fun refreshProtectedSummary() {
        viewModelScope.launch {
            val data = runCatching { container.protectedContentStore.get(server, username) }.getOrNull()
                ?: return@launch
            _protectedSummary.value = ProtectedSummary(
                hasPin = data.hasPin,
            )
        }
    }

    private var pairingJob: Job? = null
    private var pairingVisible = false
    private var accountReadJob: Job? = null
    private var serverLabelJob: Job? = null
    private var downloadJob: Job? = null
    private var activeRelease: ReleaseInfo? = null
    private var awaitingInstallPermission = false
    private var lastInstallNotificationId: Long =
        updateInstaller.notifications.value?.id ?: 0L

    init {
        viewModelScope.launch {
            coordinator.state.collect { panel -> _ui.update { it.copy(pairing = panel) } }
        }
        viewModelScope.launch {
            updateInstaller.notifications.collect { notification ->
                if (notification == null || notification.id <= lastInstallNotificationId) {
                    return@collect
                }
                lastInstallNotificationId = notification.id
                handleInstallEvent(notification.event)
            }
        }
        refreshServerLabel()
        refreshProtectedSummary()
        // L'archivio dei contenuti protetti notifica ogni scrittura con la sua
        // revisione: il riquadro in Impostazioni si aggiorna da solo.
        viewModelScope.launch {
            container.protectedContentStore.revision.collect { refreshProtectedSummary() }
        }
        // Carica last update da cache catalogo
        viewModelScope.launch {
            val last = container.catalogCache.lastUpdateMillis(server, username)
            _ui.update { it.copy(lastUpdateMillis = last) }
        }
        // Stato condiviso degli aggiornamenti: la stessa fonte usata dal menu,
        // così Impostazioni non ripete una richiesta già in corso.
        viewModelScope.launch {
            combine(updateChecker.state, updateChecker.isChecking) { shared, checking ->
                shared to checking
            }.collect { (shared, checking) ->
                applySharedUpdateState(shared = shared, checking = checking)
            }
        }
    }

    /**
     * Riporta nello stato della schermata l'esito del controllo condiviso.
     * Scaricamento e installazione restano locali: lo stato condiviso descrive
     * solo il controllo, e i messaggi locali (permesso, errori di installazione)
     * sono conservati finché la release non cambia.
     */
    private fun applySharedUpdateState(
        shared: UpdateCheckState,
        checking: Boolean,
    ) {
        val local = _ui.value.updateStatus
        val busy = local is AppUpdateStatus.Downloading || local is AppUpdateStatus.Installing
        if (!busy) {
            activeRelease = (shared as? UpdateCheckState.Available)?.release
        }
        _ui.update { current ->
            val currentStatus = current.updateStatus
            if (currentStatus is AppUpdateStatus.Downloading ||
                currentStatus is AppUpdateStatus.Installing
            ) {
                return@update current
            }
            val mapped: AppUpdateStatus = when {
                checking -> AppUpdateStatus.Checking

                shared is UpdateCheckState.Available -> {
                    val previous = currentStatus as? AppUpdateStatus.Available
                    val sameRelease = previous?.release == shared.release
                    AppUpdateStatus.Available(
                        release = shared.release,
                        noticeMessage = previous?.takeIf { sameRelease }?.noticeMessage,
                        errorMessage = previous?.takeIf { sameRelease }?.errorMessage,
                    )
                }

                shared is UpdateCheckState.UpToDate -> AppUpdateStatus.UpToDate

                shared is UpdateCheckState.Failed -> AppUpdateStatus.CheckFailed

                // Nessun controllo ancora eseguito: resta lo stato corrente.
                else -> currentStatus
            }
            if (mapped == currentStatus) current else current.copy(updateStatus = mapped)
        }
    }

    /** Applica e salva la dimensione dell'interfaccia scelta nel riquadro Aspetto. */
    fun onInterfaceSizeSelected(size: InterfaceSize) {
        container.interfaceSizeStore.set(size)
    }

    fun onSettingsVisible() {
        refreshServerLabel()
        refreshProtectedSummary()
        refreshAccountInfo()
        recheckInstallPermission()
        checkForUpdates()
        if (pairingVisible) return
        pairingVisible = true
        startPairingLoop()
    }

    /**
     * Al ritorno nelle Impostazioni (es. dalla schermata di sistema per
     * autorizzare l'installazione di app sconosciute) ricontrolla il permesso
     * senza avviare scaricamenti automatici.
     */
    fun onSettingsResumed() {
        recheckInstallPermission()
    }

    fun recheckInstallPermission() {
        val allowed = updateInstaller.canRequestPackageInstalls()
        val waiting = awaitingInstallPermission
        if (allowed) {
            awaitingInstallPermission = false
        }
        _ui.update { state ->
            val updatedStatus = when (val current = state.updateStatus) {
                is AppUpdateStatus.Available -> {
                    if (allowed && current.noticeMessage == UNKNOWN_SOURCES_INSTRUCTIONS) {
                        current.copy(noticeMessage = null)
                    } else if (!allowed && waiting && current.noticeMessage == null) {
                        current.copy(noticeMessage = UNKNOWN_SOURCES_INSTRUCTIONS)
                    } else {
                        current
                    }
                }
                else -> current
            }
            state.copy(
                canInstallPackages = allowed,
                updateStatus = updatedStatus,
            )
        }
    }

    /**
     * Chiede un controllo aggiornamenti all'apertura delle Impostazioni, come
     * prima. Il controllo vero e proprio (richiesta a GitHub e confronto
     * semantico con la versione installata) sta in [UpdateChecker], condiviso
     * con il menu: se una richiesta è già in corso non ne parte una seconda.
     */
    fun checkForUpdates() {
        val current = _ui.value.updateStatus
        if (current is AppUpdateStatus.Downloading || current is AppUpdateStatus.Installing) {
            return
        }
        updateChecker.checkNow()
    }

    /**
     * Conferma esplicita dell'utente sul pulsante "Aggiorna": verifica il
     * permesso di installazione pacchetti e, se concesso, avvia scaricamento e
     * sessione di installazione.
     */
    fun onUpdateClicked() {
        val available = _ui.value.updateStatus as? AppUpdateStatus.Available ?: return
        val release = available.release
        activeRelease = release

        val allowed = updateInstaller.canRequestPackageInstalls()
        _ui.update { it.copy(canInstallPackages = allowed) }
        if (!allowed) {
            awaitingInstallPermission = true
            val opened = updateInstaller.openUnknownSourcesSettings()
            if (!opened) {
                _ui.update {
                    it.copy(
                        updateStatus = AppUpdateStatus.Available(
                            release = release,
                            noticeMessage = UNKNOWN_SOURCES_INSTRUCTIONS,
                        ),
                    )
                }
            }
            return
        }

        awaitingInstallPermission = false
        startApkDownloadAndInstall(release)
    }

    /** Annulla lo scaricamento in corso (tasto Indietro) e cancella il file parziale. */
    fun cancelUpdateDownload() {
        val downloading = _ui.value.updateStatus as? AppUpdateStatus.Downloading
        val release = downloading?.release ?: activeRelease
        downloadJob?.cancel()
        downloadJob = null
        updateInstaller.cleanupDownloadedFiles()
        if (release != null) {
            _ui.update {
                it.copy(updateStatus = AppUpdateStatus.Available(release = release))
            }
        }
    }

    /**
     * APK di un aggiornamento scaricato o in installazione: "Svuota cache
     * immagini" non deve cancellarlo, altrimenti l'installazione fallisce.
     */
    fun activeUpdateApk(): File? {
        val version = when (val status = _ui.value.updateStatus) {
            is AppUpdateStatus.Downloading -> status.release.version
            is AppUpdateStatus.Installing -> status.release.version
            else -> null
        } ?: return null
        return apkFileForVersion(updateInstaller.updatesDir, version)
    }

    /**
     * Byte occupati dalle cache svuotabili: immagini su disco di Coil
     * (`cacheDir/fvp_images`), cache in memoria dell'`ImageLoader` e file di
     * `cacheDir/updates` tranne l'APK di un aggiornamento in corso.
     *
     * Il catalogo salvato in `filesDir` non è contato e non si tocca.
     */
    suspend fun cacheOccupiedBytes(): Long = withContext(Dispatchers.IO) {
        CacheCleanup.occupiedBytes(
            imagesDir = container.imageCacheDir,
            updatesDir = updateInstaller.updatesDir,
            memoryCacheBytes = memoryCacheBytes(),
            protectedApk = activeUpdateApk(),
        )
    }

    /**
     * Svuota le cache e restituisce i byte liberati, cache in memoria compresa.
     * Prima passa da Coil, così il suo indice resta coerente, poi cancella i
     * file rimasti nelle due cartelle.
     */
    suspend fun clearCaches(): Long = withContext(Dispatchers.IO) {
        val memoryBytes = memoryCacheBytes()
        runCatching { container.imageLoader.diskCache?.clear() }
        runCatching { container.imageLoader.memoryCache?.clear() }
        CacheCleanup.clear(
            imagesDir = container.imageCacheDir,
            updatesDir = updateInstaller.updatesDir,
            memoryCacheBytes = memoryBytes,
            protectedApk = activeUpdateApk(),
        )
    }

    /** Byte nella cache in memoria di Coil; 0 se non c'è o non è leggibile. */
    private fun memoryCacheBytes(): Long =
        runCatching { container.imageLoader.memoryCache?.size?.toLong() ?: 0L }.getOrDefault(0L)

    private fun startApkDownloadAndInstall(release: ReleaseInfo) {
        if (downloadJob?.isActive == true) return
        downloadJob = viewModelScope.launch {
            _ui.update {
                it.copy(
                    updateStatus = AppUpdateStatus.Downloading(
                        release = release,
                        progressPercent = 0,
                    ),
                )
            }
            val downloadResult = try {
                updateClient.downloadApk(
                    release = release,
                    updatesDir = updateInstaller.updatesDir,
                    onProgressPercent = { percent ->
                        _ui.update { state ->
                            if (state.updateStatus is AppUpdateStatus.Downloading) {
                                state.copy(
                                    updateStatus = AppUpdateStatus.Downloading(
                                        release = release,
                                        progressPercent = percent.coerceIn(0, 100),
                                    ),
                                )
                            } else {
                                state
                            }
                        }
                    },
                )
            } catch (cancel: CancellationException) {
                updateInstaller.cleanupDownloadedFiles()
                _ui.update {
                    it.copy(updateStatus = AppUpdateStatus.Available(release = release))
                }
                throw cancel
            }

            when (downloadResult) {
                is ApkDownloadResult.Success -> {
                    _ui.update {
                        it.copy(updateStatus = AppUpdateStatus.Installing(release = release))
                    }
                    val startError = updateInstaller.installApk(downloadResult.apkFile)
                    if (startError != null) {
                        _ui.update {
                            it.copy(
                                updateStatus = AppUpdateStatus.Available(
                                    release = release,
                                    errorMessage = startError,
                                ),
                            )
                        }
                    }
                }

                ApkDownloadResult.SizeMismatch -> {
                    updateInstaller.cleanupDownloadedFiles()
                    _ui.update {
                        it.copy(
                            updateStatus = AppUpdateStatus.Available(
                                release = release,
                                errorMessage = DOWNLOAD_SIZE_MISMATCH_MESSAGE,
                            ),
                        )
                    }
                }

                ApkDownloadResult.Failure -> {
                    updateInstaller.cleanupDownloadedFiles()
                    _ui.update {
                        it.copy(
                            updateStatus = AppUpdateStatus.Available(
                                release = release,
                                errorMessage = DOWNLOAD_ERROR_MESSAGE,
                            ),
                        )
                    }
                }
            }
        }
    }

    private fun handleInstallEvent(event: InstallEvent) {
        val release = when (val current = _ui.value.updateStatus) {
            is AppUpdateStatus.Installing -> current.release
            is AppUpdateStatus.Available -> current.release
            is AppUpdateStatus.Downloading -> current.release
            else -> activeRelease
        } ?: return

        when (event) {
            InstallEvent.Succeeded -> {
                updateInstaller.cleanupDownloadedFiles()
                _ui.update { it.copy(updateStatus = AppUpdateStatus.UpToDate) }
            }

            InstallEvent.CancelledByUser -> {
                updateInstaller.cleanupDownloadedFiles()
                _ui.update {
                    it.copy(
                        updateStatus = AppUpdateStatus.Available(
                            release = release,
                            noticeMessage = INSTALL_CANCELLED_MESSAGE,
                        ),
                    )
                }
            }

            is InstallEvent.Failed -> {
                updateInstaller.cleanupDownloadedFiles()
                _ui.update {
                    it.copy(
                        updateStatus = AppUpdateStatus.Available(
                            release = release,
                            errorMessage = event.message,
                        ),
                    )
                }
            }
        }
    }

    /**
     * Rilegge le credenziali salvate e aggiorna l'etichetta del server ("001" o
     * "Personalizzato"). Viene chiamata all'inizializzazione e a ogni apertura
     * delle Impostazioni.
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
            currentServerCode = code
            _ui.update { it.copy(serverLabel = serverLabel(code)) }
        }
    }

    /**
     * Rilegge le informazioni dell'account dal server a ogni apertura delle
     * impostazioni. In caso di errore restano i valori dell'ultima lettura.
     */
    fun refreshAccountInfo() {
        if (accountReadJob?.isActive == true) return
        accountReadJob = viewModelScope.launch {
            _ui.update { it.copy(isReadingAccount = true) }
            val result = runCatching { container.xtreamClient.login(server, username, password) }.getOrNull()
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
            val playing = container.playbackActivity.isActive.value
            _ui.update {
                it.copy(
                    status = statusLabel(account.status),
                    expiresAtEpochSeconds = account.expiresAtEpochSeconds,
                    maxConnections = account.maxConnections,
                    activeConnections = account.activeConnections,
                    lastAccountReadMillis = container.clock.nowMillis(),
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

    fun onSettingsHidden() {
        pairingVisible = false
        pairingJob?.cancel()
        pairingJob = null
        // Il controllo aggiornamenti è condiviso e appartiene all'app: chiudendo
        // le Impostazioni non si annulla una richiesta che serve anche al menu.
        if (_ui.value.isDownloadingUpdate) {
            cancelUpdateDownload()
        }
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
                    is PairingStep.Delivered -> handleRemoteCredentials(step.credentials)
                }
            }
        }
    }

    private fun handleRemoteCredentials(credentials: RemoteCredentials) {
        val remoteServer = credentials.server
        val remoteUser = credentials.username
        val remotePass = credentials.password
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
                    val effectiveServerCode = credentials.serverCode ?: resolved.serverCode
                    runCatching {
                        credentialStore.save(
                            StoredCredentials(
                                server = result.account.server,
                                username = result.account.username,
                                password = remotePass,
                                serverCode = effectiveServerCode,
                            ),
                        )
                    }
                    _ui.update {
                        it.copy(
                            isRefreshing = false,
                            message = "Configurato da remoto",
                            serverLabel = serverLabel(effectiveServerCode),
                        )
                    }
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

    fun onExitClicked() {
        _ui.update { it.copy(showExitConfirm = true, clearUserDataOnExit = false) }
    }

    fun onExitCancel() {
        _ui.update { it.copy(showExitConfirm = false, clearUserDataOnExit = false) }
    }

    fun onToggleClearUserDataOnExit() {
        _ui.update { it.copy(clearUserDataOnExit = !it.clearUserDataOnExit) }
    }

    fun onSetClearUserDataOnExit(clearUserData: Boolean) {
        _ui.update { it.copy(clearUserDataOnExit = clearUserData) }
    }

    fun onExitConfirm() {
        val clearUserData = _ui.value.clearUserDataOnExit
        if (_ui.value.isDownloadingUpdate) {
            cancelUpdateDownload()
        }
        viewModelScope.launch {
            runCatching { credentialStore.clear() }
            runCatching { container.catalogCache.clear(server, username) }
            if (clearUserData) {
                runCatching { container.favoritesStore.clearForAccount(server, username) }
                runCatching { container.progressStore.clearForAccount(server, username) }
                runCatching { container.continueWatchingStore.clearForAccount(server, username) }
            }
            _ui.update { it.copy(showExitConfirm = false, clearUserDataOnExit = false) }
            onSignOut()
        }
    }

    override fun onCleared() {
        // Le letture account e il ciclo di abbinamento non devono sopravvivere
        // alla schermata che li ha avviati. Il controllo aggiornamenti resta
        // all'app: lo stato condiviso alimenta anche il pallino del menu.
        serverLabelJob?.cancel()
        serverLabelJob = null
        accountReadJob?.cancel()
        accountReadJob = null
        if (_ui.value.isDownloadingUpdate) {
            downloadJob?.cancel()
            downloadJob = null
            updateInstaller.cleanupDownloadedFiles()
        } else {
            downloadJob?.cancel()
            downloadJob = null
        }
        pairingJob?.cancel()
        pairingJob = null
        pairingVisible = false
        super.onCleared()
    }

    private fun extractHost(server: String): String {
        return try {
            val withoutScheme = server.substringAfter("://", server)
            withoutScheme.substringBefore("/").substringBefore("?").substringBefore("#")
        } catch (_: Exception) { server }
    }
}
