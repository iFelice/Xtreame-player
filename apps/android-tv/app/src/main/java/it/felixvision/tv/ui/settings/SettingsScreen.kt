package it.felixvision.tv.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.access.PairingPanel
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.FvpStatusText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

@Composable
fun SettingsScreen(
    viewModel: SettingsViewModel,
    scale: UiScale,
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester? = null,
) {
    val state by viewModel.ui.collectAsState()

    LaunchedEffect(Unit) {
        viewModel.onSettingsVisible()
    }
    androidx.compose.runtime.DisposableEffect(Unit) {
        onDispose { viewModel.onSettingsHidden() }
    }

    Column(modifier = modifier.fillMaxSize().padding(horizontal = scale.dp(24f), vertical = scale.dp(16f)), verticalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
        Text(text = "Impostazioni", color = FvpColors.TextPrimary, fontSize = scale.sp(22f), fontWeight = FontWeight.Bold)

        Column(modifier = Modifier.clip(RoundedCornerShape(scale.dp(14f))).background(FvpColors.Surface).padding(scale.dp(16f)), verticalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
            Text(text = "Account", color = FvpColors.TextPrimary, fontSize = scale.sp(16f), fontWeight = FontWeight.SemiBold)
            SettingsRow(label = "Utente", value = state.username, scale = scale)
            SettingsRow(label = "Stato", value = state.status, scale = scale)
            SettingsRow(label = "Scadenza", value = formatExpiry(state.expiresAtEpochSeconds), scale = scale)
            SettingsRow(
                label = "Connessioni in uso (tutti i dispositivi)",
                value = formatConnections(state.activeConnections, state.maxConnections),
                scale = scale,
                rowTestTag = "settings_connections_row",
            )
            SettingsRow(label = "Server", value = state.serverLabel, scale = scale, rowTestTag = "settings_server_row")
        }

        Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
            FvpPrimaryButton(
                text = if (state.isRefreshing) "Aggiornamento…" else "Aggiorna catalogo",
                onClick = { viewModel.onRefreshCatalog() },
                scale = scale,
                enabled = !state.isRefreshing,
                modifier = Modifier
                    .then(if (contentFocusRequester != null) Modifier.focusRequester(contentFocusRequester) else Modifier)
                    .testTag("settings_refresh")
            )
            state.lastUpdateMillis?.let { ts ->
                Text(text = "Ultimo aggiornamento: ${formatTimestamp(ts)}", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
            } ?: Text(text = "Mai aggiornato", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
        }

        val accountReadAt = state.lastAccountReadMillis
        if (accountReadAt != null) {
            Text(
                text = if (state.isReadingAccount) "Lettura account…" else "Letto alle ${formatClock(accountReadAt)}",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                modifier = Modifier.testTag("settings_account_read"),
            )
        } else if (state.isReadingAccount) {
            Text(text = "Lettura account…", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
        }

        if (state.connectionsWarning) {
            Text(
                text = ConnectionsAdvisory.MESSAGE,
                color = FvpColors.Error,
                fontSize = scale.sp(14f),
                modifier = Modifier.testTag("settings_connections_warning"),
            )
        }

        state.message?.let { FvpStatusText(message = it, scale = scale) }
        state.error?.let { Text(text = it, color = FvpColors.Error, fontSize = scale.sp(14f)) }

        Column(modifier = Modifier.clip(RoundedCornerShape(scale.dp(14f))).background(FvpColors.Surface).padding(scale.dp(16f))) {
            Text(text = "Configura da remoto", color = FvpColors.TextPrimary, fontSize = scale.sp(16f), fontWeight = FontWeight.SemiBold)
            Spacer(Modifier.height(scale.dp(12f)))
            PairingPanel(state = state.pairing, scale = scale, modifier = Modifier.fillMaxWidth())
            if (state.pairing.isExpired) {
                Spacer(Modifier.height(scale.dp(8f)))
                FvpSecondaryButton(text = "Mostra un nuovo codice", onClick = { viewModel.onRenewCode() }, scale = scale)
            }
        }

        Row {
            FvpSecondaryButton(text = "Esci", onClick = { viewModel.onExitClicked() }, scale = scale, modifier = Modifier.testTag("settings_exit"))
        }
    }

    if (state.showExitConfirm) {
        val annullaFocus = remember { FocusRequester() }
        LaunchedEffect(Unit) { annullaFocus.requestFocus() }
        Dialog(
            onDismissRequest = { viewModel.onExitCancel() },
            properties = DialogProperties(usePlatformDefaultWidth = false)
        ) {
            Box(
                modifier = Modifier.fillMaxSize().background(FvpColors.Background.copy(alpha = 0.8f)).padding(scale.dp(32f)),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    modifier = Modifier.background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f))).padding(scale.dp(20f)).testTag("settings_exit_dialog"),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(text = "Vuoi uscire? Verranno cancellate credenziali, cache e preferiti di questo account.", color = FvpColors.TextPrimary, fontSize = scale.sp(14f))
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)), modifier = Modifier.padding(top = scale.dp(12f))) {
                        FvpSecondaryButton(text = "Annulla", onClick = { viewModel.onExitCancel() }, scale = scale, modifier = Modifier.focusRequester(annullaFocus).testTag("settings_exit_annulla"))
                        FvpPrimaryButton(text = "Conferma", onClick = { viewModel.onExitConfirm() }, scale = scale, modifier = Modifier.testTag("settings_exit_conferma"))
                    }
                }
            }
        }
    }
}

@Composable
private fun SettingsRow(label: String, value: String, scale: UiScale, rowTestTag: String? = null) {
    Row(modifier = Modifier.fillMaxWidth().then(if (rowTestTag != null) Modifier.testTag(rowTestTag) else Modifier), horizontalArrangement = Arrangement.SpaceBetween) {
        Text(text = label, color = FvpColors.TextSecondary, fontSize = scale.sp(14f))
        Text(text = value, color = FvpColors.TextPrimary, fontSize = scale.sp(14f))
    }
}

private fun formatExpiry(epochSeconds: Long?): String {
    if (epochSeconds == null || epochSeconds <= 0L) return "Nessuna scadenza indicata"
    val date = AccessViewModel.formatDate(epochSeconds) ?: return "Nessuna scadenza indicata"
    val days = AccessViewModel.daysRemaining(epochSeconds)
    return when {
        days == null -> date
        days < 0L -> "$date (scaduto)"
        days == 0L -> "$date (oggi)"
        else -> "$date (${days} giorni)"
    }
}

private fun formatConnections(active: Int?, max: Int?): String = when {
    active != null && max != null -> "$active di $max"
    max != null -> "massimo $max"
    active != null -> "$active in uso"
    else -> "Non indicato dal server"
}

private fun formatClock(millis: Long): String {
    return try {
        val formatter = DateTimeFormatter.ofPattern("HH:mm")
        formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    } catch (_: Exception) { "" }
}

private fun formatTimestamp(millis: Long): String {
    return try {
        val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
        formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    } catch (_: Exception) { "" }
}
