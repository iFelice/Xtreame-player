@file:OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)

package it.felixvision.mobile.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Checkbox
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.mobile.ui.access.AccessViewModel
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.components.FvpSecondaryButton
import it.felixvision.mobile.ui.theme.FvpColors
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

/**
 * Sezione "Impostazioni" del tablet: scheda utente (stato, scadenza,
 * connessioni con la regola di avviso della TV), etichetta server, pulsante
 * "Aggiorna catalogo" che apre la finestra di avanzamento
 * ([CatalogUpdateDialog]) — anche quando un aggiornamento è già in corso —,
 * versione dell'app (versionName e versionCode) e Esci verso l'accesso (con
 * conferma e pulizia opzionale dei dati locali, come sulla TV).
 * Nessuna voce di aggiornamento in-app in questo PR.
 */
@Composable
fun SettingsScreen(
    settingsViewModel: SettingsViewModel,
    catalogViewModel: CatalogViewModel,
    modifier: Modifier = Modifier,
    downloadMonitor: CatalogDownloadMonitor,
) {
    val state by settingsViewModel.ui.collectAsStateWithLifecycle()
    val catalogState by catalogViewModel.ui.collectAsStateWithLifecycle()
    val downloadProgress by downloadMonitor.progress.collectAsStateWithLifecycle()
    var showUpdateDialog by remember { mutableStateOf(false) }

    // Quando il catalogo viene ricaricato (aggiornamento riuscito), la riga
    // "Ultimo aggiornamento" rilegge l'ora salvata in cache dalla finestra.
    var lastSeenCatalogUpdate by remember { mutableStateOf<Long?>(null) }
    LaunchedEffect(catalogState.lastUpdateMillis) {
        val value = catalogState.lastUpdateMillis
        if (value != null && value != lastSeenCatalogUpdate) {
            lastSeenCatalogUpdate = value
            settingsViewModel.reloadLastUpdate()
        }
    }

    Column(
        modifier = modifier
            .fillMaxSize()
            // Nella schermata principale gli insets sono già stati consumati
            // dal chrome; qui valgono quando Impostazioni è mostrata da sola.
            .windowInsetsPadding(WindowInsets.safeDrawing)
            .padding(horizontal = 16.dp, vertical = 12.dp)
            .verticalScroll(rememberScrollState())
            .testTag("settings_list"),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        // --- Account ---
        SettingsCard(title = "Account") {
            InfoRow(label = "Utente", value = state.username.ifBlank { "—" }, testTag = "settings_username")
            InfoRow(
                label = "Stato",
                value = state.status.ifBlank { "—" },
                valueColor = when {
                    state.status.contains("Scaduto") || state.status.contains("Disattivato") ->
                        FvpColors.Error
                    else -> FvpColors.TextPrimary
                },
                testTag = "settings_status",
            )
            val expiry = AccessViewModel.formatDate(state.expiresAtEpochSeconds)
            val daysLeft = AccessViewModel.daysRemaining(state.expiresAtEpochSeconds)
            InfoRow(
                label = "Scadenza",
                value = when {
                    expiry == null -> "Non indicata dal server"
                    daysLeft != null && daysLeft <= 7 -> "$expiry (tra ${daysLeft.coerceAtLeast(0)} g)"
                    else -> expiry
                },
                testTag = "settings_expiry",
            )
            InfoRow(
                label = "Connessioni in uso",
                value = when {
                    state.activeConnections != null && state.maxConnections != null ->
                        "${state.activeConnections} / ${state.maxConnections}"
                    else -> "Non indicato dal server"
                },
                testTag = "settings_connections",
            )
            if (state.connectionsWarning) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clip(RoundedCornerShape(10.dp))
                        .background(FvpColors.Error.copy(alpha = 0.16f))
                        .padding(horizontal = 12.dp, vertical = 10.dp)
                        .testTag("settings_connections_warning"),
                ) {
                    Text(
                        text = ConnectionsAdvisory.MESSAGE,
                        color = FvpColors.Error,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
            InfoRow(
                label = "Server",
                value = state.serverHost,
                supporting = state.serverLabel,
                testTag = "settings_server",
            )
        }

        // --- Catalogo ---
        SettingsCard(title = "Catalogo") {
            InfoRow(
                label = "Ultimo aggiornamento",
                value = formatMillis(state.lastUpdateMillis) ?: "Mai",
                testTag = "settings_last_update",
            )
            // Il pulsante resta sempre disponibile: se un aggiornamento
            // (anche automatico) è già in corso, apre la stessa finestra invece
            // di essere ignorato.
            val busy = catalogState.isRefreshing || catalogState.isLoading
            FvpPrimaryButton(
                text = "Aggiorna catalogo",
                onClick = {
                    if (!busy) catalogViewModel.refreshManual()
                    showUpdateDialog = true
                },
                modifier = Modifier.fillMaxWidth(),
                testTag = "settings_refresh",
            )
        }

        // --- Applicazione ---
        SettingsCard(title = "Applicazione") {
            InfoRow(
                label = "Versione",
                value = "${state.versionName} (${state.versionCode})",
                testTag = "settings_version",
            )
        }

        Spacer(Modifier.height(2.dp))
        FvpSecondaryButton(
            text = "Esci",
            onClick = settingsViewModel::onExitClicked,
            modifier = Modifier.fillMaxWidth(),
            testTag = "settings_exit",
        )
        Spacer(Modifier.height(28.dp))
    }

    if (showUpdateDialog) {
        CatalogUpdateDialog(
            sections = catalogState.refreshSections,
            downloads = downloadProgress,
            errorMessage = if (catalogState.isRefreshing) null else catalogState.errorMessage,
            onRetry = catalogViewModel::retry,
            onClose = { showUpdateDialog = false },
        )
    }

    if (state.showExitConfirm) {
        AlertDialog(
            onDismissRequest = settingsViewModel::onExitCancel,
            containerColor = FvpColors.Surface,
            title = {
                Text(text = "Esci dall'account?", color = FvpColors.TextPrimary)
            },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    Text(
                        text = "Credenziali e cache del catalogo verranno rimosse.",
                        color = FvpColors.TextSecondary,
                        fontSize = 14.sp,
                    )
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("settings_exit_clear_data_row"),
                    ) {
                        Checkbox(
                            checked = state.clearUserDataOnExit,
                            onCheckedChange = { settingsViewModel.onToggleClearUserDataOnExit() },
                            modifier = Modifier.testTag("settings_exit_clear_data_checkbox"),
                        )
                        Text(
                            text = "Rimuovi anche preferiti e dati di visione di questo account",
                            color = FvpColors.TextPrimary,
                            fontSize = 14.sp,
                        )
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = settingsViewModel::onExitConfirm,
                    enabled = !state.isWorking,
                    modifier = Modifier.testTag("settings_exit_confirm"),
                ) {
                    Text(
                        text = if (state.isWorking) "Uscita…" else "Esci",
                        color = FvpColors.Error,
                        fontWeight = FontWeight.Bold,
                    )
                }
            },
            dismissButton = {
                TextButton(
                    onClick = settingsViewModel::onExitCancel,
                    modifier = Modifier.testTag("settings_exit_cancel"),
                ) {
                    Text(text = "Annulla", color = FvpColors.TextPrimary)
                }
            },
        )
    }
}

/** Scheda arrotondata delle impostazioni. */
@Composable
private fun SettingsCard(
    title: String,
    content: @Composable () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(16.dp))
            .background(FvpColors.Surface)
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        Text(
            text = title,
            color = FvpColors.ImpostazioniActive,
            fontSize = 15.sp,
            fontWeight = FontWeight.Bold,
        )
        HorizontalDivider(color = FvpColors.SurfaceElevated, thickness = 1.dp)
        content()
    }
}

/** Voce etichetta/valore in una scheda. */
@Composable
private fun InfoRow(
    label: String,
    value: String,
    testTag: String,
    supporting: String? = null,
    valueColor: Color = FvpColors.TextPrimary,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier.fillMaxWidth(),
    ) {
        Text(
            text = label,
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            modifier = Modifier.weight(1f),
        )
        Column(horizontalAlignment = Alignment.End) {
            Text(
                text = value,
                color = valueColor,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.testTag(testTag),
            )
            supporting?.let {
                Text(
                    text = it,
                    color = FvpColors.TextSecondary,
                    fontSize = 12.sp,
                    modifier = Modifier.testTag("${testTag}_supporting"),
                )
            }
        }
    }
}

/** Formattazione "dd/MM/yyyy HH:mm" coerente con il fuso del dispositivo. */
private fun formatMillis(millis: Long?): String? {
    if (millis == null || millis <= 0L) return null
    return runCatching {
        FORMATTER.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    }.getOrNull()
}

private val FORMATTER: DateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
