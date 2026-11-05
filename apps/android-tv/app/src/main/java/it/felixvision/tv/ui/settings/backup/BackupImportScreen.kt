package it.felixvision.tv.ui.settings.backup

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.backup.BackupCryptoException
import it.felixvision.tv.data.backup.BackupData
import it.felixvision.tv.data.backup.BackupDirection
import it.felixvision.tv.data.backup.BackupFormatException
import it.felixvision.tv.data.backup.BackupMerge
import it.felixvision.tv.data.backup.BackupRelayApi
import it.felixvision.tv.data.backup.BackupRelayStatus
import it.felixvision.tv.data.backup.BackupRepository
import it.felixvision.tv.data.backup.BackupSummary
import it.felixvision.tv.data.backup.BackupTransferCrypto
import it.felixvision.tv.data.backup.BackupTransferException
import it.felixvision.tv.data.backup.VpnPlan
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.ui.access.formatCountdown
import it.felixvision.tv.ui.access.formatPin
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpErrorText
import it.felixvision.tv.ui.components.FvpPasswordField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.protection.PinEntry
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Schermata "Importa backup": testi e tag di test. */
const val BACKUP_IMPORT_TITLE = "Importa backup"
const val BACKUP_IMPORT_INSTRUCTIONS =
    "Inquadra il QR col telefono, scegli il file di backup e invialo. Poi digita qui la password usata in esportazione."
const val BACKUP_IMPORT_PASSWORD_HINT = "Digita la password usata in esportazione."
const val BACKUP_APPLYING = "Applicazione del backup…"
const val BACKUP_GENERIC_ERROR =
    "Password errata o file danneggiato: controlla la password e riprova. Nessun dato è stato modificato."
const val BACKUP_VERSION_ERROR =
    "Questo backup è stato creato con una versione più recente dell'app: aggiorna FelixVP e riprova."
const val BACKUP_OTHER_ACCOUNT_TITLE = "Backup di un altro account"
const val BACKUP_OTHER_ACCOUNT_MESSAGE =
    "Questo backup proviene da un altro account. Vuoi unirlo comunque ai dati di questa TV? Nulla di ciò che c'è già verrà cancellato."
const val BACKUP_YES_IMPORT_LABEL = "Sì, importa"
const val BACKUP_NO_LABEL = "No"
const val BACKUP_VPN_TITLE = "VPN già presente"
const val BACKUP_VPN_MESSAGE =
    "La TV ha già una configurazione VPN. Vuoi aggiungere quella del backup e usarla? Con No la TV mantiene la sua."
const val BACKUP_VPN_YES_LABEL = "Sì, usa quella del backup"
const val BACKUP_PIN_TITLE = "Crea il PIN"
const val BACKUP_PIN_MESSAGE =
    "Il backup contiene contenuti protetti e questa TV non ha ancora un PIN: creane uno per poterli nascondere."
const val BACKUP_PIN_CONFIRM_TITLE = "Conferma il PIN"
const val BACKUP_PIN_MISMATCH = "I PIN non coincidono"
const val BACKUP_DONE_TITLE = "Importazione completata"
const val BACKUP_NO_CHANGES = "Nessuna novità: tutto era già sulla TV."
const val BACKUP_CANCEL_LABEL = "Annulla"
const val BACKUP_IMPORT_CLOSE_TAG = "backup_import_close"
const val BACKUP_IMPORT_RETRY_TAG = "backup_import_retry"
const val BACKUP_YES_TAG = "backup_yes"
const val BACKUP_NO_TAG = "backup_no"

/** Intervallo del controllo sul relay, come per la VPN. */
const val BACKUP_IMPORT_POLL_MILLIS = 2_000L

/**
 * Fasi della schermata. Il file cifrato e i dati decifrati non compaiono mai
 * nei [toString]: [BackupData] già nasconde il proprio contenuto.
 */
private sealed interface BackupImportPhase {
    data object Preparing : BackupImportPhase

    data class Waiting(val code: String, val qrUrl: String, val expiresAtMillis: Long) : BackupImportPhase {
        override fun toString(): String = "Waiting"
    }

    data class Password(val fileText: String) : BackupImportPhase {
        override fun toString(): String = "Password"
    }

    data class ConfirmAccount(val data: BackupData) : BackupImportPhase

    data class ConfirmVpn(val data: BackupData) : BackupImportPhase

    data class CreatePin(val data: BackupData, val importVpn: Boolean) : BackupImportPhase

    data class ConfirmPin(val data: BackupData, val importVpn: Boolean, val firstPin: String) : BackupImportPhase {
        override fun toString(): String = "ConfirmPin"
    }

    data object Applying : BackupImportPhase

    data class Done(val summary: BackupSummary, val vpnNotice: String?) : BackupImportPhase

    data class Failed(val message: String) : BackupImportPhase
}

/**
 * Schermata che riceve il file di backup dal telefono e lo unisce ai dati
 * della TV, al posto del contenuto delle Impostazioni.
 *
 * Mostra il QR e controlla il relay ogni 2 secondi; quando il file arriva lo
 * decifra dal trasporto, chiede la password sulla TV, poi applica l'unione
 * secondo le regole di [BackupMerge]: conferma Sì/No per i backup di un altro
 * account, PIN da creare quando serve, mai sovrascrittura della VPN senza
 * consenso. Password errata o file corrotto mostrano un errore generico senza
 * modificare nulla. Indietro chiude e azzera la chiave di trasporto.
 *
 * @param tvHasVpnConfig vero quando la TV ha già una configurazione VPN.
 * @param saveVpn verifica e salva la VPN del backup; `false` se non riesce.
 * @param testTransportKey chiave di trasporto imposta dai test; `null` in
 *   produzione, dove la chiave è sempre casuale e resta in memoria.
 */
@Composable
fun BackupImportScreen(
    relay: BackupRelayApi,
    repository: BackupRepository,
    protectedStore: ProtectedContentStore,
    clock: Clock,
    relayBaseUrl: String,
    server: String,
    username: String,
    tvHasVpnConfig: Boolean,
    scale: UiScale,
    saveVpn: suspend (text: String, serverName: String) -> Boolean,
    modifier: Modifier = Modifier,
    onExit: () -> Unit = {},
    testTransportKey: ByteArray? = null,
) {
    var attempt by remember { mutableIntStateOf(0) }
    var phase by remember { mutableStateOf<BackupImportPhase>(BackupImportPhase.Preparing) }
    var passwordError by remember { mutableStateOf<String?>(null) }
    var pinError by remember { mutableStateOf<String?>(null) }
    val passwordState = rememberTextFieldState()
    val scope = rememberCoroutineScope()

    BackHandler { onExit() }

    // Ricezione del file: sessione, attesa del telefono e decifratura del
    // trasporto. Il polling gira fuori dal thread principale (rete e attese a
    // tempo reale, mai lavoro bloccante in UI); la chiave si azzera appena
    // usata e in ogni caso all'uscita.
    LaunchedEffect(attempt) {
        phase = BackupImportPhase.Preparing
        passwordError = null
        val key = testTransportKey?.copyOf() ?: BackupTransferCrypto.newKey()
        try {
            phase = withContext(Dispatchers.Default) {
                receiveBackupFile(
                    relay = relay,
                    clock = clock,
                    relayBaseUrl = relayBaseUrl,
                    key = key,
                    onWaiting = { waiting -> phase = waiting },
                )
            }
        } finally {
            key.fill(0)
        }
    }

    /** Applica l'unione e mostra il riepilogo. */
    fun applyBackup(data: BackupData, importVpn: Boolean) {
        phase = BackupImportPhase.Applying
        scope.launch {
            val summary = repository.applyImport(server, username, data, importVpn, saveVpn)
            val vpnNotice = when {
                data.vpn == null -> null
                importVpn && summary.vpnImported -> "VPN importata dal backup."
                importVpn -> "VPN non importata: configurazione non valida."
                else -> "VPN della TV mantenuta."
            }
            phase = BackupImportPhase.Done(summary, vpnNotice)
        }
    }

    /** Passo dopo la scelta sulla VPN: eventuale creazione del PIN. */
    fun onVpnDecided(data: BackupData, importVpn: Boolean) {
        scope.launch {
            val hasPin = runCatching { protectedStore.get(server, username).hasPin }.getOrDefault(false)
            val hiddenCount = data.hiddenCategories.size + data.hiddenItems.size
            if (BackupMerge.needsPinCreation(hasPin, hiddenCount)) {
                pinError = null
                phase = BackupImportPhase.CreatePin(data, importVpn)
            } else {
                applyBackup(data, importVpn)
            }
        }
    }

    /** Passo dopo la conferma dell'account (o senza, se è lo stesso). */
    fun onAccountConfirmed(data: BackupData) {
        when (BackupMerge.vpnPlan(tvHasVpnConfig, data.vpn)) {
            VpnPlan.AskUser -> phase = BackupImportPhase.ConfirmVpn(data)
            VpnPlan.ImportSilently -> onVpnDecided(data, importVpn = true)
            VpnPlan.NothingToImport -> onVpnDecided(data, importVpn = false)
        }
    }

    /** Passo dopo la decifratura con la password: conferme, PIN e applicazione. */
    fun onDecrypted(data: BackupData) {
        if (BackupMerge.isOtherAccount(data.account, server, username)) {
            phase = BackupImportPhase.ConfirmAccount(data)
            return
        }
        onAccountConfirmed(data)
    }

    /** Decifratura con la password digitata: errore generico senza modifiche. */
    fun onPasswordContinue(fileText: String) {
        val password = passwordState.text.toString()
        if (password.isEmpty()) {
            passwordError = BACKUP_GENERIC_ERROR
            return
        }
        scope.launch {
            val data = try {
                repository.decryptBackup(password, fileText)
            } catch (_: BackupCryptoException) {
                passwordError = BACKUP_GENERIC_ERROR
                return@launch
            } catch (format: BackupFormatException) {
                if (format.kind == BackupFormatException.Kind.UNSUPPORTED_VERSION) {
                    phase = BackupImportPhase.Failed(BACKUP_VERSION_ERROR)
                } else {
                    passwordError = BACKUP_GENERIC_ERROR
                }
                return@launch
            } catch (_: Exception) {
                passwordError = BACKUP_GENERIC_ERROR
                return@launch
            }
            passwordError = null
            onDecrypted(data)
        }
    }

    // Il primo pulsante della fase riceve il focus.
    val firstButtonFocus = remember { FocusRequester() }
    LaunchedEffect(phase) {
        withFrameNanos { }
        runCatching { firstButtonFocus.requestFocus() }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(16f)),
    ) {
        Column(verticalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
            Text(
                text = BACKUP_IMPORT_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(22f),
                fontWeight = FontWeight.Bold,
            )
            when (val current = phase) {
                BackupImportPhase.Preparing -> BackupQrPlaceholder(text = "Preparazione del codice…", scale = scale)

                is BackupImportPhase.Waiting -> BackupImportWaiting(
                    waiting = current,
                    clock = clock,
                    scale = scale,
                    closeFocus = firstButtonFocus,
                    onExpired = { phase = BackupImportPhase.Failed(BACKUP_EXPIRED) },
                    onExit = onExit,
                )

                is BackupImportPhase.Password -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    Text(
                        text = BACKUP_IMPORT_PASSWORD_HINT,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(15f),
                    )
                    FvpPasswordField(
                        label = BACKUP_PASSWORD_LABEL,
                        state = passwordState,
                        placeholder = BACKUP_PASSWORD_PLACEHOLDER,
                        visible = false,
                        scale = scale,
                        openKeyboardOnOk = true,
                        fieldTag = BACKUP_PASSWORD_TAG,
                    )
                    val error = passwordError
                    if (error != null) {
                        FvpErrorText(message = error, scale = scale)
                    }
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        FvpCompactButton(
                            text = BACKUP_CONTINUE_LABEL,
                            onClick = { onPasswordContinue(current.fileText) },
                            scale = scale,
                            modifier = Modifier
                                .focusRequester(firstButtonFocus)
                                .testTag(BACKUP_CONTINUE_TAG),
                        )
                        FvpCompactButton(
                            text = BACKUP_CANCEL_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier.testTag(BACKUP_IMPORT_CLOSE_TAG),
                        )
                    }
                }

                is BackupImportPhase.ConfirmAccount -> BackupYesNo(
                    title = BACKUP_OTHER_ACCOUNT_TITLE,
                    message = BACKUP_OTHER_ACCOUNT_MESSAGE,
                    yesLabel = BACKUP_YES_IMPORT_LABEL,
                    scale = scale,
                    yesFocus = firstButtonFocus,
                    onYes = { onAccountConfirmed(current.data) },
                    onNo = onExit,
                )

                is BackupImportPhase.ConfirmVpn -> BackupYesNo(
                    title = BACKUP_VPN_TITLE,
                    message = BACKUP_VPN_MESSAGE,
                    yesLabel = BACKUP_VPN_YES_LABEL,
                    scale = scale,
                    yesFocus = firstButtonFocus,
                    onYes = { onVpnDecided(current.data, importVpn = true) },
                    onNo = { onVpnDecided(current.data, importVpn = false) },
                )

                is BackupImportPhase.CreatePin -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    Text(
                        text = BACKUP_PIN_MESSAGE,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(15f),
                    )
                    PinEntry(
                        title = BACKUP_PIN_TITLE,
                        scale = scale,
                        errorMessage = pinError,
                        onConfirm = { pin ->
                            pinError = null
                            phase = BackupImportPhase.ConfirmPin(current.data, current.importVpn, pin)
                        },
                    )
                    FvpCompactButton(
                        text = BACKUP_CANCEL_LABEL,
                        onClick = onExit,
                        scale = scale,
                        modifier = Modifier.testTag(BACKUP_IMPORT_CLOSE_TAG),
                    )
                }

                is BackupImportPhase.ConfirmPin -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    PinEntry(
                        title = BACKUP_PIN_CONFIRM_TITLE,
                        scale = scale,
                        errorMessage = pinError,
                        onConfirm = { pin ->
                            if (pin != current.firstPin) {
                                pinError = BACKUP_PIN_MISMATCH
                                phase = BackupImportPhase.CreatePin(current.data, current.importVpn)
                            } else {
                                scope.launch {
                                    runCatching {
                                        protectedStore.setPin(server, username, pin)
                                    }
                                    applyBackup(current.data, current.importVpn)
                                }
                            }
                        },
                    )
                    FvpCompactButton(
                        text = BACKUP_CANCEL_LABEL,
                        onClick = onExit,
                        scale = scale,
                        modifier = Modifier.testTag(BACKUP_IMPORT_CLOSE_TAG),
                    )
                }

                BackupImportPhase.Applying -> BackupQrPlaceholder(text = BACKUP_APPLYING, scale = scale)

                is BackupImportPhase.Done -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                ) {
                    Text(
                        text = BACKUP_DONE_TITLE,
                        color = FvpColors.Green,
                        fontSize = scale.sp(18f),
                        fontWeight = FontWeight.Bold,
                    )
                    BackupSummaryLines(summary = current.summary, vpnNotice = current.vpnNotice, scale = scale)
                    FvpCompactButton(
                        text = BACKUP_CLOSE_LABEL,
                        onClick = onExit,
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(firstButtonFocus)
                            .testTag(BACKUP_IMPORT_CLOSE_TAG),
                    )
                }

                is BackupImportPhase.Failed -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    BackupQrPlaceholder(text = current.message, scale = scale, error = true)
                    FvpErrorText(message = current.message, scale = scale)
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        FvpCompactButton(
                            text = BACKUP_NEW_CODE_LABEL,
                            onClick = { attempt++ },
                            scale = scale,
                            modifier = Modifier
                                .focusRequester(firstButtonFocus)
                                .testTag(BACKUP_IMPORT_RETRY_TAG),
                        )
                        FvpCompactButton(
                            text = BACKUP_CLOSE_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier.testTag(BACKUP_IMPORT_CLOSE_TAG),
                        )
                    }
                }
            }
        }
    }
}

/** Attesa del telefono: QR, codice, conto alla rovescia e istruzioni. */
@Composable
private fun BackupImportWaiting(
    waiting: BackupImportPhase.Waiting,
    clock: Clock,
    scale: UiScale,
    closeFocus: FocusRequester,
    onExpired: () -> Unit,
    onExit: () -> Unit,
) {
    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(20f))) {
        BackupQrImage(
            payload = waiting.qrUrl,
            scale = scale,
            contentDescription = "Codice QR per inviare il backup dal telefono",
        )
        Column(verticalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
            Text(text = "Codice", color = FvpColors.TextSecondary, fontSize = scale.sp(14f))
            Text(
                text = formatPin(waiting.code),
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(28f),
                fontWeight = FontWeight.Bold,
                modifier = Modifier.testTag(BACKUP_CODE_TAG),
            )
            val remaining = rememberBackupRemainingSeconds(waiting.expiresAtMillis, clock)
            LaunchedEffect(remaining) {
                if (remaining <= 0L) onExpired()
            }
            Text(
                text = "Tempo residuo ${formatCountdown(remaining)}",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
            Text(
                text = BACKUP_IMPORT_INSTRUCTIONS,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(15f),
            )
            FvpCompactButton(
                text = BACKUP_CANCEL_LABEL,
                onClick = onExit,
                scale = scale,
                modifier = Modifier
                    .focusRequester(closeFocus)
                    .testTag(BACKUP_IMPORT_CLOSE_TAG),
            )
        }
    }
}

/** Domanda Sì/No (altro account, VPN presente): con No non cambia nulla. */
@Composable
private fun BackupYesNo(
    title: String,
    message: String,
    yesLabel: String,
    scale: UiScale,
    yesFocus: FocusRequester,
    onYes: () -> Unit,
    onNo: () -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(scale.dp(10f))) {
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = message,
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(15f),
        )
        Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
            FvpCompactButton(
                text = yesLabel,
                onClick = onYes,
                scale = scale,
                modifier = Modifier
                    .focusRequester(yesFocus)
                    .testTag(BACKUP_YES_TAG),
            )
            FvpCompactButton(
                text = BACKUP_NO_LABEL,
                onClick = onNo,
                scale = scale,
                modifier = Modifier.testTag(BACKUP_NO_TAG),
            )
        }
    }
}

/** Riepilogo dell'importazione: voci aggiunte o aggiornate per archivio. */
@Composable
private fun BackupSummaryLines(summary: BackupSummary, vpnNotice: String?, scale: UiScale) {
    if (!summary.hasChanges && vpnNotice == null) {
        Text(
            text = BACKUP_NO_CHANGES,
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(15f),
        )
        return
    }
    val lines = mutableListOf(
        "Preferiti aggiunti: ${summary.favoritesAdded}",
        "Canali aggiunti: ${summary.channelsAdded}",
        "Contenuti nascosti aggiunti: ${summary.hiddenAdded}",
        "Avanzamenti: ${summary.progressAdded} nuovi, ${summary.progressUpdated} aggiornati",
    )
    if (vpnNotice != null) lines.add(vpnNotice)
    lines.forEach { line ->
        Text(
            text = line,
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(15f),
        )
    }
}

/**
 * Una ricezione completa dal relay: sessione, attesa del telefono e
 * decifratura del trasporto. Restituisce la fase finale
 * ([BackupImportPhase.Password] o [BackupImportPhase.Failed]).
 */
private suspend fun receiveBackupFile(
    relay: BackupRelayApi,
    clock: Clock,
    relayBaseUrl: String,
    key: ByteArray,
    onWaiting: (BackupImportPhase.Waiting) -> Unit,
): BackupImportPhase {
    val session = when (val created = relay.create(BackupDirection.Import)) {
        is ApiResult.Ok -> created.value
        is ApiResult.Http -> return BackupImportPhase.Failed(
            if (created.code == 429) BACKUP_TOO_MANY else BACKUP_UNREACHABLE,
        )
        else -> return BackupImportPhase.Failed(BACKUP_UNREACHABLE)
    }
    val expiresAtMillis = clock.nowMillis() + session.expiresInSeconds * 1_000L
    onWaiting(
        BackupImportPhase.Waiting(
            code = session.code,
            qrUrl = BackupTransferCrypto.qrUrl(relayBaseUrl, BackupDirection.Import, session.code, key),
            expiresAtMillis = expiresAtMillis,
        ),
    )

    var ready: BackupRelayStatus.Ready? = null
    while (ready == null) {
        delay(BACKUP_IMPORT_POLL_MILLIS)
        if (clock.nowMillis() >= expiresAtMillis) return BackupImportPhase.Failed(BACKUP_EXPIRED)
        val result = relay.status(session.code, session.pollToken)
        // Errori di rete o risposte strane: si riprova fino alla scadenza.
        if (result is ApiResult.Ok) {
            when (val status = result.value) {
                BackupRelayStatus.Waiting -> Unit
                BackupRelayStatus.Expired -> return BackupImportPhase.Failed(BACKUP_EXPIRED)
                is BackupRelayStatus.Ready -> ready = status
            }
        }
    }

    val received: BackupRelayStatus.Ready = ready ?: return BackupImportPhase.Failed(BACKUP_EXPIRED)
    return try {
        val bytes = BackupTransferCrypto.decrypt(key, session.code, received.iv, received.ciphertext)
        try {
            BackupImportPhase.Password(String(bytes, Charsets.UTF_8))
        } finally {
            bytes.fill(0)
        }
    } catch (_: BackupTransferException) {
        BackupImportPhase.Failed(BACKUP_GENERIC_ERROR)
    } finally {
        key.fill(0)
    }
}
