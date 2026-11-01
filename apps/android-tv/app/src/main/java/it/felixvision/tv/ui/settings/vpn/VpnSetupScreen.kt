package it.felixvision.tv.ui.settings.vpn

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
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.ui.access.formatCountdown
import it.felixvision.tv.ui.access.formatPin
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpErrorText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.qr.QrBitmap
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.vpn.VpnConfigParseResult
import it.felixvision.tv.vpn.VpnConfigParser
import it.felixvision.tv.vpn.VpnRelayApi
import it.felixvision.tv.vpn.VpnRelayStatus
import it.felixvision.tv.vpn.VpnTransferCrypto
import it.felixvision.tv.vpn.VpnTransferException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext

/** Pagina "Configura la VPN": testi e tag di test. */
const val VPN_SETUP_TITLE = "Configura la VPN"
const val VPN_SETUP_INSTRUCTIONS =
    "Inquadra il QR col telefono e incolla il file .conf WireGuard " +
        "(Proton VPN: account.protonvpn.com → Downloads → WireGuard configuration)"
const val VPN_SETUP_EXPIRED = "Codice scaduto"
const val VPN_SETUP_UNREACHABLE = "Servizio non raggiungibile: riprova"
const val VPN_SETUP_TOO_MANY = "Troppe richieste: riprova tra qualche minuto"
const val VPN_SETUP_SAVE_FAILED = "Salvataggio della configurazione non riuscito"
const val VPN_SETUP_NEW_CODE_LABEL = "Nuovo codice"
const val VPN_SETUP_CANCEL_LABEL = "Annulla"
const val VPN_SETUP_CODE_TAG = "vpn_setup_code"
const val VPN_SETUP_NEW_CODE_TAG = "vpn_setup_new_code"
const val VPN_SETUP_CANCEL_TAG = "vpn_setup_cancel"

/** Lato del QR in unità di progetto: l'URL con la chiave richiede un QR più fitto di quello dell'abbinamento. */
const val VPN_QR_BASE = 200f

/** Intervallo del controllo sul relay. */
const val VPN_SETUP_POLL_MILLIS = 2_000L

/** Fasi della pagina. L'URL del QR contiene la chiave: niente [toString] con i dati. */
private sealed interface VpnSetupPhase {
    data object Preparing : VpnSetupPhase

    data class Waiting(val code: String, val qrUrl: String, val expiresAtMillis: Long) : VpnSetupPhase {
        override fun toString(): String = "Waiting"
    }

    data object Saving : VpnSetupPhase

    data class Saved(val serverName: String) : VpnSetupPhase

    data class Failed(val message: String) : VpnSetupPhase
}

/**
 * Pagina che riceve dal telefono il file `.conf` WireGuard, al posto del
 * contenuto delle Impostazioni (come "Contenuti protetti").
 *
 * Apre una sessione sul relay, genera una chiave che resta in memoria e
 * mostra il QR con codice e chiave; controlla il relay ogni 2 secondi. Quando
 * la configurazione arriva la decifra, la verifica e la passa a [saveConfig];
 * la chiave si azzera appena usata e in ogni caso all'uscita dalla pagina.
 * Indietro torna al riquadro e ferma il controllo.
 *
 * @param saveConfig salva la configurazione verificata; `false` se non riesce.
 * @param onSaved configurazione salvata: chi chiama mostra l'avviso e chiude la pagina.
 */
@Composable
fun VpnSetupScreen(
    relay: VpnRelayApi,
    clock: Clock,
    relayBaseUrl: String,
    packageName: String,
    scale: UiScale,
    saveConfig: suspend (text: String, serverName: String) -> Boolean,
    onSaved: (serverName: String) -> Unit,
    modifier: Modifier = Modifier,
    onExit: () -> Unit = {},
) {
    var attempt by remember { mutableIntStateOf(0) }
    var phase by remember { mutableStateOf<VpnSetupPhase>(VpnSetupPhase.Preparing) }

    BackHandler { onExit() }

    LaunchedEffect(attempt) {
        phase = VpnSetupPhase.Preparing
        val key = VpnTransferCrypto.newKey()
        try {
            phase = receiveConfiguration(
                relay = relay,
                clock = clock,
                relayBaseUrl = relayBaseUrl,
                packageName = packageName,
                key = key,
                saveConfig = saveConfig,
                onWaiting = { waiting -> phase = waiting },
                onSaving = { phase = VpnSetupPhase.Saving },
            )
        } finally {
            key.fill(0)
        }
    }

    val saved = phase as? VpnSetupPhase.Saved
    LaunchedEffect(saved) {
        if (saved != null) onSaved(saved.serverName)
    }

    // Il primo pulsante della fase riceve il focus: "Nuovo codice" dopo un
    // errore, altrimenti "Annulla".
    val firstButtonFocus = remember { FocusRequester() }
    val failed = phase is VpnSetupPhase.Failed
    LaunchedEffect(failed, attempt) {
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
                text = VPN_SETUP_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(22f),
                fontWeight = FontWeight.Bold,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(20f))) {
                when (val current = phase) {
                    is VpnSetupPhase.Waiting -> VpnQrImage(payload = current.qrUrl, scale = scale)
                    is VpnSetupPhase.Failed -> VpnQrPlaceholder(text = current.message, scale = scale, error = true)
                    VpnSetupPhase.Saving, is VpnSetupPhase.Saved ->
                        VpnQrPlaceholder(text = "Salvataggio della configurazione…", scale = scale)
                    VpnSetupPhase.Preparing -> VpnQrPlaceholder(text = "Preparazione del codice…", scale = scale)
                }

                Column(verticalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                    val waiting = phase as? VpnSetupPhase.Waiting
                    if (waiting != null) {
                        Text(text = "Codice", color = FvpColors.TextSecondary, fontSize = scale.sp(14f))
                        Text(
                            text = formatPin(waiting.code),
                            color = FvpColors.TextPrimary,
                            fontSize = scale.sp(28f),
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.testTag(VPN_SETUP_CODE_TAG),
                        )
                        val remaining = rememberRemainingSeconds(waiting.expiresAtMillis, clock)
                        Text(
                            text = "Tempo residuo ${formatCountdown(remaining)}",
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(14f),
                        )
                    }
                    Text(
                        text = VPN_SETUP_INSTRUCTIONS,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(15f),
                    )
                    val failure = phase as? VpnSetupPhase.Failed
                    if (failure != null) {
                        FvpErrorText(message = failure.message, scale = scale)
                    }
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                        if (failure != null) {
                            FvpCompactButton(
                                text = VPN_SETUP_NEW_CODE_LABEL,
                                onClick = { attempt++ },
                                scale = scale,
                                modifier = Modifier
                                    .focusRequester(firstButtonFocus)
                                    .testTag(VPN_SETUP_NEW_CODE_TAG),
                            )
                        }
                        FvpCompactButton(
                            text = VPN_SETUP_CANCEL_LABEL,
                            onClick = onExit,
                            scale = scale,
                            modifier = Modifier
                                .then(if (failure == null) Modifier.focusRequester(firstButtonFocus) else Modifier)
                                .testTag(VPN_SETUP_CANCEL_TAG),
                        )
                    }
                }
            }
        }
    }
}

/**
 * Una sessione completa sul relay: codice, attesa del telefono, decifratura,
 * verifica e salvataggio. Restituisce la fase finale ([VpnSetupPhase.Saved]
 * o [VpnSetupPhase.Failed]).
 */
private suspend fun receiveConfiguration(
    relay: VpnRelayApi,
    clock: Clock,
    relayBaseUrl: String,
    packageName: String,
    key: ByteArray,
    saveConfig: suspend (text: String, serverName: String) -> Boolean,
    onWaiting: (VpnSetupPhase.Waiting) -> Unit,
    onSaving: () -> Unit,
): VpnSetupPhase {
    val session = when (val created = relay.create()) {
        is ApiResult.Ok -> created.value
        is ApiResult.Http -> return VpnSetupPhase.Failed(
            if (created.code == 429) VPN_SETUP_TOO_MANY else VPN_SETUP_UNREACHABLE,
        )
        else -> return VpnSetupPhase.Failed(VPN_SETUP_UNREACHABLE)
    }
    val expiresAtMillis = clock.nowMillis() + session.expiresInSeconds * 1_000L
    onWaiting(
        VpnSetupPhase.Waiting(
            code = session.code,
            qrUrl = VpnTransferCrypto.qrUrl(relayBaseUrl, session.code, key),
            expiresAtMillis = expiresAtMillis,
        ),
    )

    var ready: VpnRelayStatus.Ready? = null
    while (ready == null) {
        delay(VPN_SETUP_POLL_MILLIS)
        if (clock.nowMillis() >= expiresAtMillis) return VpnSetupPhase.Failed(VPN_SETUP_EXPIRED)
        val result = relay.status(session.code, session.pollToken)
        // Errori di rete o risposte strane: si riprova fino alla scadenza.
        if (result is ApiResult.Ok) {
            when (val status = result.value) {
                VpnRelayStatus.Waiting -> Unit
                VpnRelayStatus.Expired -> return VpnSetupPhase.Failed(VPN_SETUP_EXPIRED)
                is VpnRelayStatus.Ready -> ready = status
            }
        }
    }

    val received: VpnRelayStatus.Ready = ready ?: return VpnSetupPhase.Failed(VPN_SETUP_EXPIRED)
    val outcome = withContext(Dispatchers.Default) {
        try {
            val text = VpnTransferCrypto.decrypt(key, session.code, received.iv, received.ciphertext)
            text to VpnConfigParser.parse(text, packageName)
        } catch (error: VpnTransferException) {
            null
        } finally {
            key.fill(0)
        }
    }
    val parsed = outcome?.second
    if (outcome == null || parsed !is VpnConfigParseResult.Valid) {
        return VpnSetupPhase.Failed(VpnConfigParser.INVALID_MESSAGE)
    }

    onSaving()
    return if (saveConfig(outcome.first, parsed.serverName)) {
        VpnSetupPhase.Saved(parsed.serverName)
    } else {
        VpnSetupPhase.Failed(VPN_SETUP_SAVE_FAILED)
    }
}

@Composable
private fun VpnQrImage(payload: String, scale: UiScale) {
    val density = LocalDensity.current
    val side = scale.dp(VPN_QR_BASE)
    // Arrotondato ai pixel reali: i moduli restano quadrati e il QR leggibile.
    val sidePx = with(density) { side.roundToPx() }
    val bitmap = remember(payload, sidePx) { QrBitmap.render(payload, sidePx) }
    Image(
        bitmap = bitmap.asImageBitmap(),
        contentDescription = "Codice QR per inviare la configurazione VPN dal telefono",
        modifier = Modifier
            .size(side)
            .clip(RoundedCornerShape(scale.dp(12f)))
            .background(FvpColors.TextPrimary),
    )
}

@Composable
private fun VpnQrPlaceholder(text: String, scale: UiScale, error: Boolean = false) {
    Box(
        modifier = Modifier
            .size(scale.dp(VPN_QR_BASE))
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
private fun rememberRemainingSeconds(expiresAtMillis: Long, clock: Clock): Long {
    var nowMillis by remember(expiresAtMillis) { mutableLongStateOf(clock.nowMillis()) }
    LaunchedEffect(expiresAtMillis) {
        while (true) {
            nowMillis = clock.nowMillis()
            delay(1_000L)
        }
    }
    return ((expiresAtMillis - nowMillis) / 1_000L).coerceAtLeast(0L)
}
