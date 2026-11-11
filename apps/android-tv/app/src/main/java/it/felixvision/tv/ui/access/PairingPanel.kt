package it.felixvision.tv.ui.access

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.tv.material3.Text
import it.felixvision.tv.BuildConfig
import it.felixvision.tv.data.pairing.PairingPanelState
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.qr.QrBitmap
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/**
 * Lato del QR, in unità di progetto: circa il 60% dei 196 dp di prima. Con il
 * contenuto attuale (indirizzo del servizio e codice, correzione M) restano
 * alcuni millimetri per modulo sullo schermo del televisore, quindi il codice
 * si legge ancora da un telefono a due metri.
 */
const val PAIRING_QR_BASE = 118f

/** Distanza minima del QR dai bordi del pannello, per non toccare il bordo bianco. */
const val PAIRING_QR_INSET_BASE = 10f

/**
 * Pannello di abbinamento remoto: QR, PIN, indirizzo breve del servizio e tempo
 * residuo. Non gestisce rete né stato: riceve [state] dal ViewModel.
 *
 * Versione compatta: QR al 60% e spaziature ridotte, così il riquadro
 * "Configura da remoto" occupa meno altezza. Contenuto e funzionamento sono
 * gli stessi.
 */
@Composable
fun PairingPanel(
    state: PairingPanelState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onRenewCode: (() -> Unit)? = null,
) {
    Column(
        modifier = modifier
            .clip(RoundedCornerShape(scale.dp(20f)))
            .background(FvpColors.Surface)
            .padding(horizontal = scale.dp(14f), vertical = scale.dp(12f)),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(
            text = "Abbinamento da telefono",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(17f),
            fontWeight = FontWeight.SemiBold,
        )
        Spacer(Modifier.height(scale.dp(4f)))
        // Testo esplicativo più breve (stesso significato): occupa meno righe.
        Text(
            text = "Inquadra il QR col telefono, inserisci i dati Xtream: la TV si collega da sola.",
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(13f),
            lineHeight = scale.sp(17f),
            textAlign = TextAlign.Center,
        )
        Spacer(Modifier.height(scale.dp(8f)))

        val payload = state.qrPayload
        if (state.isExpired) {
            Box(
                modifier = Modifier
                    .size(scale.dp(PAIRING_QR_BASE))
                    .clip(RoundedCornerShape(scale.dp(10f)))
                    .background(FvpColors.SurfaceElevated),
                contentAlignment = Alignment.Center,
            ) {
                Text(
                    text = "Codice scaduto",
                    color = FvpColors.Error,
                    fontSize = scale.sp(16f),
                    fontWeight = FontWeight.Bold,
                    textAlign = TextAlign.Center,
                )
            }
        } else if (payload == null) {
            PairingPlaceholder(state = state, scale = scale)
        } else {
            QrCodeImage(payload = payload, scale = scale)
        }

        Spacer(Modifier.height(scale.dp(8f)))

        val code = state.code
        if (state.isExpired) {
            Text(
                text = "Codice scaduto",
                color = FvpColors.Error,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
            )
            if (onRenewCode != null) {
                Spacer(Modifier.height(scale.dp(6f)))
                FvpSecondaryButton(text = "Mostra un nuovo codice", onClick = onRenewCode, scale = scale)
            }
        } else {
            Text(
                text = code?.let(::formatPin) ?: "– – – – – –",
                color = FvpColors.Green,
                fontSize = scale.sp(26f),
                fontWeight = FontWeight.Bold,
            )
            Spacer(Modifier.height(scale.dp(4f)))
            Text(
                text = shortRelayAddress(BuildConfig.PAIRING_RELAY_URL),
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(12f),
            )

            val remaining = rememberRemainingSeconds(state.expiresAtMillis)
            if (remaining != null) {
                Spacer(Modifier.height(scale.dp(6f)))
                Text(
                    text = "Tempo residuo ${formatCountdown(remaining)}",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(14f),
                )
            }

            val failure = state.failureMessage
            if (failure != null) {
                Spacer(Modifier.height(scale.dp(6f)))
                Text(
                    text = state.retryInSeconds?.let { "$failure Riprovo tra $it s." } ?: failure,
                    color = FvpColors.Error,
                    fontSize = scale.sp(13f),
                    lineHeight = scale.sp(18f),
                    textAlign = TextAlign.Center,
                )
            }
        }
    }
}

@Composable
private fun QrCodeImage(payload: String, scale: UiScale) {
    val density = LocalDensity.current
    val side = scale.dp(PAIRING_QR_BASE)
    // Arrotondato ai pixel reali: i moduli restano quadrati e il QR leggibile.
    val sidePx = with(density) { side.roundToPx() }
    val bitmap = remember(payload, sidePx) { QrBitmap.render(payload, sidePx) }

    Image(
        bitmap = bitmap.asImageBitmap(),
        contentDescription = "Codice QR per configurare la TV dal telefono",
        modifier = Modifier
            .size(side)
            .clip(RoundedCornerShape(scale.dp(12f)))
            .background(FvpColors.TextPrimary),
    )
}

@Composable
private fun PairingPlaceholder(state: PairingPanelState, scale: UiScale) {
    val message = if (state.isPreparing) {
        "Preparazione del codice di abbinamento…"
    } else {
        "Codice in preparazione"
    }
    Box(
        modifier = Modifier
            .size(scale.dp(PAIRING_QR_BASE))
            .clip(RoundedCornerShape(scale.dp(10f)))
            .background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(horizontal = scale.dp(PAIRING_QR_INSET_BASE)),
        ) {
            Text(
                text = message,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
                textAlign = TextAlign.Center,
            )
        }
    }
}

/** PIN con le cifre separate, leggibile dal divano. */
fun formatPin(code: String): String = code.toCharArray().joinToString(" ")

/** Indirizzo breve del servizio, senza schema e senza barra finale. */
fun shortRelayAddress(relayUrl: String): String =
    relayUrl.trim()
        .removePrefix("https://")
        .removePrefix("http://")
        .trimEnd('/')

fun formatCountdown(totalSeconds: Long): String {
    val safe = totalSeconds.coerceAtLeast(0L)
    val minutes = safe / 60L
    val seconds = safe % 60L
    return buildString {
        append(minutes.toString().padStart(2, '0'))
        append(':')
        append(seconds.toString().padStart(2, '0'))
    }
}

/** Tempo residuo aggiornato ogni secondo, calcolato dall'orologio del sistema. */
@Composable
private fun rememberRemainingSeconds(expiresAtMillis: Long?): Long? {
    if (expiresAtMillis == null) return null
    var nowMillis by remember(expiresAtMillis) { mutableLongStateOf(System.currentTimeMillis()) }
    LaunchedEffect(expiresAtMillis) {
        while (true) {
            nowMillis = System.currentTimeMillis()
            delay(1_000L)
        }
    }
    return ((expiresAtMillis - nowMillis) / 1_000L).coerceAtLeast(0L)
}
