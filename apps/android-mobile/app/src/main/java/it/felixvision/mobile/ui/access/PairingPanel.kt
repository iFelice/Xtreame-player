package it.felixvision.mobile.ui.access

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
import androidx.compose.material3.Text
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.BuildConfig
import it.felixvision.mobile.ui.components.FvpSecondaryButton
import it.felixvision.mobile.ui.qr.QrBitmap
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.pairing.PairingPanelState
import kotlinx.coroutines.delay

/** Lato del QR in dp: leggibile da uno smartphone tenuto in mano. */
private const val PAIRING_QR_SIZE_DP = 180

/**
 * Pannello di abbinamento remoto: QR, PIN, indirizzo breve del servizio e
 * tempo residuo. Non gestisce rete né stato: riceve [state] dal ViewModel,
 * come la TV. "Mostra un nuovo codice" rinnova il PIN alla scadenza.
 */
@Composable
fun PairingPanel(
    state: PairingPanelState,
    modifier: Modifier = Modifier,
    onRenewCode: () -> Unit = {},
) {
    Column(
        modifier = modifier
            .clip(RoundedCornerShape(16.dp))
            .background(FvpColors.Surface)
            .padding(horizontal = 16.dp, vertical = 16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(
            text = "Abbinamento da telefono",
            color = FvpColors.TextPrimary,
            fontSize = 18.sp,
            fontWeight = FontWeight.SemiBold,
        )
        Spacer(Modifier.height(4.dp))
        Text(
            text = "Inquadra il QR col telefono, inserisci i dati Xtream: il tablet si collega da solo.",
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            lineHeight = 18.sp,
            textAlign = TextAlign.Center,
        )
        Spacer(Modifier.height(12.dp))

        val payload = state.qrPayload
        if (state.isExpired) {
            ExpiredQrBox()
        } else if (payload == null) {
            PairingPlaceholder(state = state)
        } else {
            QrCodeImage(payload = payload)
        }

        Spacer(Modifier.height(12.dp))

        if (state.isExpired) {
            Text(
                text = "Codice scaduto",
                color = FvpColors.Error,
                fontSize = 16.sp,
                fontWeight = FontWeight.Bold,
            )
            Spacer(Modifier.height(8.dp))
            FvpSecondaryButton(text = "Mostra un nuovo codice", onClick = onRenewCode)
        } else {
            Text(
                text = state.code?.let(::formatPin) ?: "– – – – – –",
                color = FvpColors.Green,
                fontSize = 26.sp,
                fontWeight = FontWeight.Bold,
            )
            Spacer(Modifier.height(4.dp))
            Text(
                text = shortRelayAddress(BuildConfig.PAIRING_RELAY_URL),
                color = FvpColors.TextSecondary,
                fontSize = 12.sp,
            )

            val remaining = rememberRemainingSeconds(state.expiresAtMillis)
            if (remaining != null) {
                Spacer(Modifier.height(6.dp))
                Text(
                    text = "Tempo residuo ${formatCountdown(remaining)}",
                    color = FvpColors.TextSecondary,
                    fontSize = 14.sp,
                )
            }

            val failure = state.failureMessage
            if (failure != null) {
                Spacer(Modifier.height(6.dp))
                Text(
                    text = state.retryInSeconds?.let { "$failure Riprovo tra $it s." } ?: failure,
                    color = FvpColors.Error,
                    fontSize = 13.sp,
                    lineHeight = 18.sp,
                    textAlign = TextAlign.Center,
                )
            }
        }
    }
}

@Composable
private fun QrCodeImage(payload: String) {
    val density = LocalDensity.current
    val side = PAIRING_QR_SIZE_DP.dp
    // Arrotondato ai pixel reali: i moduli restano quadrati e il QR leggibile.
    val sidePx = with(density) { side.roundToPx() }
    val bitmap = remember(payload, sidePx) { QrBitmap.render(payload, sidePx) }

    Image(
        bitmap = bitmap.asImageBitmap(),
        contentDescription = "Codice QR per configurare il tablet dal telefono",
        modifier = Modifier
            .size(side)
            .clip(RoundedCornerShape(12.dp))
            .background(FvpColors.TextPrimary),
    )
}

@Composable
private fun ExpiredQrBox() {
    Box(
        modifier = Modifier
            .size(PAIRING_QR_SIZE_DP.dp)
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = "Codice scaduto",
            color = FvpColors.Error,
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center,
        )
    }
}

@Composable
private fun PairingPlaceholder(state: PairingPanelState) {
    val message = if (state.isPreparing) {
        "Preparazione del codice di abbinamento…"
    } else {
        "Codice in preparazione"
    }
    Box(
        modifier = Modifier
            .size(PAIRING_QR_SIZE_DP.dp)
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(horizontal = 12.dp),
        ) {
            Text(
                text = message,
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                textAlign = TextAlign.Center,
            )
        }
    }
}

/** PIN con le cifre separate, più leggibile. */
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
