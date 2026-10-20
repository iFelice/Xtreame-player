package it.felixvision.tv.ui.access

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.data.xtream.AccountStatus
import it.felixvision.tv.ui.components.FvpInfoRow
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Schermata provvisoria dopo l'accesso: mostra utente, scadenza e stato
 * dell'account. Cataloghi e player arrivano nelle PR successive.
 */
@Composable
fun AccountScreen(
    summary: AccountSummary,
    banner: String?,
    scale: UiScale,
    onSignOut: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = scale.dp(38f), vertical = scale.dp(26f)),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(
                text = "FelixVision",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(30f),
                fontWeight = FontWeight.Bold,
            )
            Text(
                text = "Player",
                color = FvpColors.Green,
                fontSize = scale.sp(30f),
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(start = scale.dp(8f)),
            )
        }
        Spacer(Modifier.height(scale.dp(20f)))

        Column(
            modifier = Modifier
                .clip(RoundedCornerShape(scale.dp(20f)))
                .background(FvpColors.Surface)
                .padding(horizontal = scale.dp(26f), vertical = scale.dp(24f)),
            verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
        ) {
            Text(
                text = "Account collegato",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(22f),
                fontWeight = FontWeight.SemiBold,
            )

            if (banner != null) {
                Text(
                    text = banner,
                    color = FvpColors.Green,
                    fontSize = scale.sp(16f),
                    fontWeight = FontWeight.Medium,
                )
            }

            FvpInfoRow(label = "Utente", value = summary.username, scale = scale)
            FvpInfoRow(
                label = "Scadenza",
                value = expiryLabel(summary.expiresAtEpochSeconds),
                scale = scale,
            )
            FvpInfoRow(label = "Stato", value = statusLabel(summary.status), scale = scale)
            FvpInfoRow(
                label = "Connessioni",
                value = connectionsLabel(summary.activeConnections, summary.maxConnections),
                scale = scale,
            )
            FvpInfoRow(label = "Server", value = summary.server, scale = scale)

            Spacer(Modifier.height(scale.dp(4f)))
            Text(
                text = "Cataloghi e player arrivano nella prossima versione dell'app.",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
        }

        Spacer(Modifier.height(scale.dp(18f)))
        Row {
            FvpSecondaryButton(text = "Esci", onClick = onSignOut, scale = scale)
            Spacer(Modifier.width(scale.dp(12f)))
        }
    }
}

internal fun expiryLabel(expiresAtEpochSeconds: Long?): String {
    val date = AccessViewModel.formatDate(expiresAtEpochSeconds)
        ?: return "Nessuna scadenza indicata"
    val days = AccessViewModel.daysRemaining(expiresAtEpochSeconds)
    return when {
        days == null -> date
        days < 0L -> "$date (scaduto)"
        days == 0L -> "$date (oggi)"
        else -> "$date (${days} giorni)"
    }
}

internal fun statusLabel(status: AccountStatus): String = when (status) {
    AccountStatus.ACTIVE -> "Attivo"
    AccountStatus.EXPIRED -> "Scaduto"
    AccountStatus.DISABLED -> "Disattivato"
    AccountStatus.UNKNOWN -> "Non indicato dal server"
}

private fun connectionsLabel(active: Int?, max: Int?): String = when {
    active != null && max != null -> "$active di $max"
    max != null -> "massimo $max"
    active != null -> "$active in uso"
    else -> "Non indicato dal server"
}
