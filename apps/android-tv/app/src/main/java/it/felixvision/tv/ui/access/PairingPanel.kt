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
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.qr.QrBitmap
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/**
 * Pannello di abbinamento remoto: QR, PIN, indirizzo breve del servizio e tempo
 * residuo. Non gestisce rete né stato: riceve [state] dal ViewModel.
 */
@Composable
fun PairingPanel(
    state: PairingPanelState,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .clip(RoundedCornerShape(scale.dp(20f)))
            .background(FvpColors.Surface)
            .padding(horizontal = scale.dp(22f), vertical = scale.dp(22f)),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(
            text = "Abbinamento da telefono",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(19f),
            fontWeight = FontWeight.SemiBold,
        )
        Spacer(Modifier.height(scale.dp(8f)))
        Text(
            text = "Inquadra il QR con il telefono, inserisci i dati del tuo Xtream e la TV si collega da sola.",
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(13f),
            lineHeight = scale.sp(18f),
            textAlign = TextAlign.Center,
        )
        Spacer(Modifier.height(scale.dp(16f)))

        val payload = state.qrPayload
        if (payload == null) {
            PairingPlaceholder(state = state, scale = scale)
        } else {
            QrCodeImage(payload = payload, scale = scale)
        }

        Spacer(Modifier.height(scale.dp(14f)))

        val code = state.code
        Text(
            text = code?.let(::formatPin) ?: "– – – – – –",
            color = FvpColors.Green,
            fontSize = scale.sp(30f),
            fontWeight = FontWeight.Bold,
        )
        Spacer(Modifier.height(scale.dp(6f)))
        Text(
            text = shortRelayAddress(BuildConfig.PAIRING_RELAY_URL),
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(12f),
        )

        val remaining = rememberRemainingSeconds(state.expiresAtMillis)
        if (remaining != null) {
            Spacer(Modifier.height(scale.dp(10f)))
            Text(
                text = "Tempo residuo ${formatCountdown(remaining)}",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
        }

        val failure = state.failureMessage
        if (failure != null) {
            Spacer(Modifier.height(scale.dp(10f)))
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

@Composable
private fun QrCodeImage(payload: String, scale: UiScale) {
    val density = LocalDensity.current
    val side = scale.dp(196f)
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
            .size(scale.dp(196f))
            .clip(RoundedCornerShape(scale.dp(12f)))
            .background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(horizontal = scale.dp(16f)),
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
