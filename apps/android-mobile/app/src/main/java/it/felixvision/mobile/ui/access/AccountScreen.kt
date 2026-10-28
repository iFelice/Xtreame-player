package it.felixvision.mobile.ui.access

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Schermata provvisoria post-accesso (PR1): riepilogo account (stato,
 * scadenza, connessioni) e pulsante Esci. Navigazione e cataloghi arrivano
 * nel PR2.
 */
@Composable
fun AccountScreen(
    summary: AccountSummary,
    banner: String?,
    onSignOut: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .padding(horizontal = 32.dp, vertical = 24.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(20.dp),
    ) {
        BrandHeader()

        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
            Text(
                text = "Accesso effettuato",
                color = FvpColors.TextPrimary,
                fontSize = 24.sp,
                fontWeight = FontWeight.Bold,
            )
            if (banner != null) {
                Text(
                    text = banner,
                    color = FvpColors.Green,
                    fontSize = 14.sp,
                )
            }
        }

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(16.dp))
                .background(FvpColors.Surface)
                .padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            AccountRow(label = "Utente", value = summary.username)
            AccountRow(label = "Server", value = summary.server)
            AccountRow(label = "Stato", value = statusLabel(summary.status))
            AccountRow(
                label = "Scadenza",
                value = AccessViewModel.formatDate(summary.expiresAtEpochSeconds)
                    ?: "Non indicata dal server",
            )
            AccountRow(
                label = "Connessioni",
                value = when {
                    summary.activeConnections != null && summary.maxConnections != null ->
                        "${summary.activeConnections} / ${summary.maxConnections}"
                    else -> "Non indicato dal server"
                },
            )
        }

        Spacer(Modifier.height(4.dp))

        FvpPrimaryButton(
            text = "Esci",
            onClick = onSignOut,
            modifier = Modifier.fillMaxWidth(),
        )
    }
}

@Composable
private fun AccountRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = label,
            color = FvpColors.TextSecondary,
            fontSize = 15.sp,
        )
        Text(
            text = value,
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
            fontWeight = FontWeight.Medium,
        )
    }
}
