package it.felixvision.tv.ui.settings.backup

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.SETTINGS_PAGE_BACKUP_TAG
import it.felixvision.tv.ui.settings.SettingsCard
import it.felixvision.tv.ui.settings.SettingsPage
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsRowText
import it.felixvision.tv.ui.theme.settingsSectionPadding

/** Funzione di backup aperta dalla pagina: esportazione o importazione. */
enum class BackupFlow {
    Export,
    Import,
}

/** Pagina "Impostazioni › Backup": testi e tag di test. */
const val BACKUP_DESCRIPTION =
    "Salva preferiti, «I miei canali», contenuti nascosti, avanzamenti e VPN " +
        "in un file protetto da password, usando il telefono. La password resta solo su questa TV."
const val BACKUP_EXPORT_LABEL = "Esporta backup"
const val BACKUP_IMPORT_LABEL = "Importa backup"
const val BACKUP_EXPORT_TAG = "backup_export"
const val BACKUP_IMPORT_TAG = "backup_import"

/**
 * Pagina "Impostazioni › Backup": due pulsanti, esportazione e importazione.
 * Il focus d'ingresso va su "Esporta backup".
 */
@Composable
internal fun BackupPage(
    scale: UiScale,
    modifier: Modifier = Modifier,
    entryFocusRequester: FocusRequester? = null,
    onExport: () -> Unit = {},
    onImport: () -> Unit = {},
) {
    val localExportFocus = remember { FocusRequester() }
    val exportFocus = entryFocusRequester ?: localExportFocus
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { exportFocus.requestFocus() }
    }

    SettingsPage(
        card = SettingsCard.Backup,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_BACKUP_TAG,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding),
            verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        ) {
            Text(
                text = BACKUP_DESCRIPTION,
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
            )
            FvpPrimaryButton(
                text = BACKUP_EXPORT_LABEL,
                onClick = onExport,
                scale = scale,
                modifier = Modifier
                    .focusRequester(exportFocus)
                    .testTag(BACKUP_EXPORT_TAG),
            )
            FvpSecondaryButton(
                text = BACKUP_IMPORT_LABEL,
                onClick = onImport,
                scale = scale,
                modifier = Modifier.testTag(BACKUP_IMPORT_TAG),
            )
        }
        Text(
            text = "Esporta: scegli una password di almeno 8 caratteri. " +
                "Importa: serve la password usata in esportazione.",
            color = FvpColors.TextSecondary,
            fontSize = scale.settingsRowText,
            fontWeight = FontWeight.Normal,
        )
    }
}
