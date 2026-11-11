package it.felixvision.tv.ui.settings.backup

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.backup.BackupCrypto
import it.felixvision.tv.data.backup.BackupDirection
import it.felixvision.tv.data.backup.BackupRelayApi
import it.felixvision.tv.data.backup.BackupRepository
import it.felixvision.tv.data.backup.BackupTransferCrypto
import it.felixvision.tv.data.backup.BackupTransferException
import it.felixvision.tv.data.backup.BackupVpn
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.ui.access.formatCountdown
import it.felixvision.tv.ui.access.formatPin
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpErrorText
import it.felixvision.tv.ui.components.FvpPasswordField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.qr.QrBitmap
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/** Schermata "Esporta backup": testi e tag di test. */
const val BACKUP_EXPORT_TITLE = "Esporta backup"
const val BACKUP_PASSWORD_LABEL = "Password del backup"
const val BACKUP_PASSWORD_PLACEHOLDER = "Almeno 8 caratteri"
const val BACKUP_PASSWORD_CONFIRM_LABEL = "Ripeti la password"
const val BACKUP_CONTINUE_LABEL = "Continua"
const val BACKUP_SHORT_PASSWORD = "La password deve avere almeno 8 caratteri"
const val BACKUP_PASSWORD_MISMATCH = "Le due password non coincidono"
const val BACKUP_WORKING = "Preparazione del backup…"
const val BACKUP_EXPORT_INSTRUCTIONS =
    "Inquadra il QR col telefono e salva il file. Per aprirlo servirà la password scelta qui, che resta solo su questa TV."
const val BACKUP_CLOSE_LABEL = "Chiudi"
const val BACKUP_NEW_CODE_LABEL = "Nuovo codice"
const val BACKUP_EXPIRED = "Codice scaduto"
const val BACKUP_UNREACHABLE = "Servizio non raggiungibile: riprova"
const val BACKUP_TOO_MANY = "Troppe richieste: riprova tra qualche minuto"
const val BACKUP_TOO_LARGE = "Backup troppo grande da inviare"
const val BACKUP_EXPORT_FAILED = "Esportazione non riuscita: riprova"
const val BACKUP_PASSWORD_TAG = "backup_password"
const val BACKUP_PASSWORD_CONFIRM_TAG = "backup_password_confirm"
const val BACKUP_CONTINUE_TAG = "backup_continue"
const val BACKUP_CODE_TAG = "backup_code"
const val BACKUP_CLOSE_TAG = "backup_close"
const val BACKUP_RETRY_TAG = "backup_retry"

/** Lato del QR in unità di progetto, come quello della VPN. */
const val BACKUP_QR_BASE = 200f

/** Fasi della schermata. L'URL del QR contiene la chiave: niente [toString] con i dati. */
private sealed interface BackupExportPhase {
    data object Password : BackupExportPhase

    data object Working : BackupExportPhase

    data class Qr(val code: String, val qrUrl: String, val expiresAtMillis: Long) : BackupExportPhase {
        override fun toString(): String = "Qr"
    }

    data class Failed(val message: String) : BackupExportPhase
}

/**
 * Schermata che cifra il backup con la password scelta sulla TV e lo deposita
 * sul relay, al posto del contenuto delle Impostazioni (come la configurazione
 * della VPN).
 *
 * La password si digita due volte e resta solo sulla TV: il QR contiene codice
 * e chiave di trasporto, con cui il telefono scarica il file cifrato. Il
 * telefono non deve fare altro che salvare il file: qui non si attende nessuna
 * risposta, il QR resta valido fino alla scadenza. Indietro chiude e azzera la
 * chiave di trasporto.
 *
 * @param vpnExport configurazione VPN attiva (`null` quando non ce n'è una).
 */
@Composable
fun BackupExportScreen(
    relay: BackupRelayApi,
    repository: BackupRepository,
    clock: Clock,
    relayBaseUrl: String,
    server: String,
    username: String,
    scale: UiScale,
    vpnExport: suspend () -> BackupVpn?,
    modifier: Modifier = Modifier,
    onExit: () -> Unit = {},
) {
    val passwordState = rememberTextFieldState()
    val confirmState = rememberTextFieldState()
    var passwordError by remember { mutableStateOf<String?>(null) }
    var workingPassword by remember { mutableStateOf<String?>(null) }
    var attempt by remember { mutableIntStateOf(0) }
    var phase by remember { mutableStateOf<BackupExportPhase>(BackupExportPhase.Password) }

    BackHandler { onExit() }

    // Deposito sul relay: gira a ogni tentativo con la password confermata.
    // La chiave di trasporto si azzera appena usata e in ogni caso all'uscita.
    val runningPassword = workingPassword
    LaunchedEffect(attempt) {
        val password = runningPassword ?: return@LaunchedEffect
        phase = BackupExportPhase.Working
        val key = BackupTransferCrypto.newKey()
        try {
            phase = exportBackup(
                relay = relay,
                repository = repository,
                clock = clock,
                relayBaseUrl = relayBaseUrl,
                server = server,
                username = username,
                key = key,
                password = password,
                vpnExport = vpnExport,
            )
        } finally {
            key.fill(0)
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
                text = BACKUP_EXPORT_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(22f),
                fontWeight = FontWeight.Bold,
            )
            when (val current = phase) {
                BackupExportPhase.Password -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    Text(
                        text = "Scegli la password che proteggerà il file: servirà per ripristinarlo.",
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
                    FvpPasswordField(
                        label = BACKUP_PASSWORD_CONFIRM_LABEL,
                        state = confirmState,
                        placeholder = BACKUP_PASSWORD_PLACEHOLDER,
                        visible = false,
                        scale = scale,
                        openKeyboardOnOk = true,
                        fieldTag = BACKUP_PASSWORD_CONFIRM_TAG,
                    )
                    val error = passwordError
                    if (error != null) {
                        FvpErrorText(message = error, scale = scale)
                    }
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        FvpCompactButton(
                            text = BACKUP_CONTINUE_LABEL,
                            onClick = {
                                val password = passwordState.text.toString()
                                val confirm = confirmState.text.toString()
                                passwordError = when {
                                    !BackupCrypto.isValidPassword(password) -> BACKUP_SHORT_PASSWORD
                                    password != confirm -> BACKUP_PASSWORD_MISMATCH
                                    else -> null
                                }
                                if (passwordError == null) {
                                    workingPassword = password
                                    attempt++
                                }
                            },
                            scale = scale,
                            modifier = Modifier
                                .focusRequester(firstButtonFocus)
                                .testTag(BACKUP_CONTINUE_TAG),
                        )
                        FvpCompactButton(
                            text = BACKUP_CLOSE_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier.testTag(BACKUP_CLOSE_TAG),
                        )
                    }
                }

                BackupExportPhase.Working -> BackupQrPlaceholder(text = BACKUP_WORKING, scale = scale)

                is BackupExportPhase.Qr -> Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(20f))) {
                    BackupQrImage(payload = current.qrUrl, scale = scale, contentDescription = "Codice QR per scaricare il backup sul telefono")
                    Column(verticalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        Text(text = "Codice", color = FvpColors.TextSecondary, fontSize = scale.sp(14f))
                        Text(
                            text = formatPin(current.code),
                            color = FvpColors.TextPrimary,
                            fontSize = scale.sp(28f),
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.testTag(BACKUP_CODE_TAG),
                        )
                        val remaining = rememberBackupRemainingSeconds(current.expiresAtMillis, clock)
                        // Alla scadenza il QR non vale più: si torna all'errore con
                        // "Nuovo codice", che riusa la password già confermata.
                        LaunchedEffect(remaining) {
                            if (remaining <= 0L) phase = BackupExportPhase.Failed(BACKUP_EXPIRED)
                        }
                        Text(
                            text = "Tempo residuo ${formatCountdown(remaining)}",
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(14f),
                        )
                        Text(
                            text = BACKUP_EXPORT_INSTRUCTIONS,
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(15f),
                        )
                        FvpCompactButton(
                            text = BACKUP_CLOSE_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier
                                .focusRequester(firstButtonFocus)
                                .testTag(BACKUP_CLOSE_TAG),
                        )
                    }
                }

                is BackupExportPhase.Failed -> Column(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                ) {
                    BackupQrPlaceholder(text = current.message, scale = scale, error = true)
                    FvpErrorText(message = current.message, scale = scale)
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        // "Nuovo codice" riusa la password già confermata.
                        if (workingPassword != null) {
                            FvpCompactButton(
                                text = BACKUP_NEW_CODE_LABEL,
                                onClick = { attempt++ },
                                scale = scale,
                                modifier = Modifier
                                    .focusRequester(firstButtonFocus)
                                    .testTag(BACKUP_RETRY_TAG),
                            )
                        }
                        FvpCompactButton(
                            text = BACKUP_CLOSE_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier.testTag(BACKUP_CLOSE_TAG),
                        )
                    }
                }
            }
        }
    }
}

/**
 * Un deposito completo sul relay: raccolta, cifratura con la password,
 * sessione, cifratura di trasporto e invio. Restituisce la fase finale
 * ([BackupExportPhase.Qr] o [BackupExportPhase.Failed]). Tutto il lavoro
 * pesante (archivi, PBKDF2, rete) gira fuori dal thread principale dentro
 * [BackupRepository] e [BackupRelayApi].
 */
private suspend fun exportBackup(
    relay: BackupRelayApi,
    repository: BackupRepository,
    clock: Clock,
    relayBaseUrl: String,
    server: String,
    username: String,
    key: ByteArray,
    password: String,
    vpnExport: suspend () -> BackupVpn?,
): BackupExportPhase {
    val fileText = try {
        val vpn = runCatching { vpnExport() }.getOrNull()
        val data = repository.collectBackup(server, username, vpn)
        repository.encryptBackup(password, data)
    } catch (_: Exception) {
        return BackupExportPhase.Failed(BACKUP_EXPORT_FAILED)
    }
    val session = when (val created = relay.create(BackupDirection.Export)) {
        is ApiResult.Ok -> created.value
        is ApiResult.Http -> return BackupExportPhase.Failed(
            if (created.code == 429) BACKUP_TOO_MANY else BACKUP_UNREACHABLE,
        )
        else -> return BackupExportPhase.Failed(BACKUP_UNREACHABLE)
    }
    val envelope = try {
        BackupTransferCrypto.encrypt(key, session.code, fileText.toByteArray(Charsets.UTF_8))
    } catch (_: BackupTransferException) {
        return BackupExportPhase.Failed(BACKUP_TOO_LARGE)
    }
    when (val uploaded = relay.upload(session.code, session.pollToken, envelope)) {
        is ApiResult.Ok -> Unit
        is ApiResult.Http -> return BackupExportPhase.Failed(
            if (uploaded.code == 429) BACKUP_TOO_MANY else BACKUP_UNREACHABLE,
        )
        else -> return BackupExportPhase.Failed(BACKUP_UNREACHABLE)
    }
    return BackupExportPhase.Qr(
        code = session.code,
        qrUrl = BackupTransferCrypto.qrUrl(relayBaseUrl, BackupDirection.Export, session.code, key),
        expiresAtMillis = clock.nowMillis() + session.expiresInSeconds * 1_000L,
    )
}

/** QR del backup, con bordo bianco per restare leggibile sul pannello scuro. */
@Composable
internal fun BackupQrImage(payload: String, scale: UiScale, contentDescription: String) {
    val density = LocalDensity.current
    val side = scale.dp(BACKUP_QR_BASE)
    val sidePx = with(density) { side.roundToPx() }
    val bitmap = remember(payload, sidePx) { QrBitmap.render(payload, sidePx) }
    Image(
        bitmap = bitmap.asImageBitmap(),
        contentDescription = contentDescription,
        modifier = Modifier
            .size(side)
            .clip(RoundedCornerShape(scale.dp(12f)))
            .background(FvpColors.TextPrimary),
    )
}

/** Riquadro al posto del QR durante l'attesa o dopo un errore. */
@Composable
internal fun BackupQrPlaceholder(text: String, scale: UiScale, error: Boolean = false) {
    Box(
        modifier = Modifier
            .size(scale.dp(BACKUP_QR_BASE))
            .clip(RoundedCornerShape(scale.dp(12f)))
            .background(FvpColors.SurfaceElevated)
            .padding(scale.dp(10f)),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = text,
            color = if (error) FvpColors.Error else FvpColors.TextSecondary,
            fontSize = scale.sp(15f),
            fontWeight = if (error) FontWeight.Bold else FontWeight.Normal,
            textAlign = TextAlign.Center,
        )
    }
}

/** Secondi alla scadenza del codice, aggiornati ogni secondo. */
@Composable
internal fun rememberBackupRemainingSeconds(expiresAtMillis: Long, clock: Clock): Long {
    var nowMillis by remember(expiresAtMillis) { mutableLongStateOf(clock.nowMillis()) }
    LaunchedEffect(expiresAtMillis) {
        while (true) {
            nowMillis = clock.nowMillis()
            delay(1_000L)
        }
    }
    return ((expiresAtMillis - nowMillis) / 1_000L).coerceAtLeast(0L)
}
