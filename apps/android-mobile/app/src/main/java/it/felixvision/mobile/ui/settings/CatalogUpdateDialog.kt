package it.felixvision.mobile.ui.settings

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.catalog.CatalogSection
import it.felixvision.tv.data.catalog.CatalogSectionProgress
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import java.util.Locale
import kotlin.math.roundToInt

/**
 * Finestra di aggiornamento del catalogo, mostrata da Impostazioni quando si
 * preme "Aggiorna catalogo" — anche se un aggiornamento automatico è già in
 * corso, il pulsante apre questa finestra invece di essere ignorato.
 *
 * Una riga per Live, Film e Serie ([CatalogSectionProgress], stesse tappe di
 * [it.felixvision.tv.data.catalog.CatalogClient]):
 * - in corso con Content-Length noto: barra determinata con la percentuale
 *   reale di scaricamento, misurata dall'interceptor del client del tablet;
 * - in corso senza Content-Length: barra indeterminata con i MB scaricati;
 * - completata: "Completato (N elementi)";
 * - in errore: riga rossa con il messaggio e il pulsante "Riprova".
 */
@Composable
fun CatalogUpdateDialog(
    sections: List<CatalogSectionProgress>,
    downloads: Map<CatalogSection, CatalogDownloadMonitor.Progress>,
    errorMessage: String?,
    onRetry: () -> Unit,
    onClose: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onClose,
        modifier = Modifier.testTag("update_dialog"),
        containerColor = FvpColors.Surface,
        title = {
            Text(
                text = "Aggiornamento del catalogo",
                color = FvpColors.TextPrimary,
                fontWeight = FontWeight.Bold,
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(14.dp)) {
                sections.forEach { row ->
                    CatalogUpdateSectionRow(
                        row = row,
                        download = downloads[row.section],
                    )
                }
                if (errorMessage != null) {
                    CatalogUpdateErrorRow(
                        message = errorMessage,
                        onRetry = onRetry,
                    )
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = onClose,
                modifier = Modifier.testTag("update_close"),
            ) {
                Text(text = "Chiudi", color = FvpColors.Green, fontWeight = FontWeight.SemiBold)
            }
        },
    )
}

/** Riga di una sezione: etichetta, stato e barra di avanzamento reale. */
@Composable
private fun CatalogUpdateSectionRow(
    row: CatalogSectionProgress,
    download: CatalogDownloadMonitor.Progress?,
) {
    val key = row.section.name.lowercase(Locale.ROOT)
    Column(
        modifier = Modifier.fillMaxWidth().testTag("update_row_$key"),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = row.section.label,
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.weight(1f),
            )
            Text(
                text = when (row.status) {
                    CatalogSectionStatus.PENDING -> "In attesa"
                    CatalogSectionStatus.COMPLETED -> "Completato (${row.itemCount} elementi)"
                    CatalogSectionStatus.ERROR -> "Errore"
                    CatalogSectionStatus.DOWNLOADING -> downloadStatusLabel(download)
                },
                color = if (row.status == CatalogSectionStatus.ERROR) {
                    FvpColors.Error
                } else {
                    FvpColors.TextSecondary
                },
                fontSize = 13.sp,
                modifier = Modifier.testTag("update_row_${key}_status"),
            )
        }
        if (row.status == CatalogSectionStatus.DOWNLOADING) {
            val fraction = download?.fraction
            if (fraction != null) {
                LinearProgressIndicator(
                    progress = { fraction },
                    color = FvpColors.ImpostazioniActive,
                    trackColor = FvpColors.SurfaceElevated,
                    modifier = Modifier.fillMaxWidth().testTag("update_row_${key}_bar"),
                )
            } else {
                LinearProgressIndicator(
                    color = FvpColors.ImpostazioniActive,
                    trackColor = FvpColors.SurfaceElevated,
                    modifier = Modifier.fillMaxWidth().testTag("update_row_${key}_bar"),
                )
            }
        }
    }
}

/** Riga rossa con il messaggio d'errore e il pulsante "Riprova". */
@Composable
private fun CatalogUpdateErrorRow(
    message: String,
    onRetry: () -> Unit,
) {
    Column(
        modifier = Modifier.fillMaxWidth().testTag("update_error"),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        Text(
            text = message,
            color = FvpColors.Error,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
        )
        TextButton(
            onClick = onRetry,
            modifier = Modifier.align(Alignment.End).testTag("update_retry"),
        ) {
            Text(text = "Riprova", color = FvpColors.Green, fontWeight = FontWeight.SemiBold)
        }
    }
}

/**
 * Testo di stato di una sezione in scaricamento: percentuale reale quando il
 * server dichiara il Content-Length, MB scaricati altrimenti.
 */
private fun downloadStatusLabel(download: CatalogDownloadMonitor.Progress?): String {
    val fraction = download?.fraction
    return if (fraction != null) {
        "${(fraction * 100f).roundToInt()}%"
    } else {
        String.format(Locale.ITALY, "%.1f MB scaricati", download?.megabytes ?: 0f)
    }
}
