@file:OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)

package it.felixvision.mobile.ui.components

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.theme.FvpColors

/** Una voce del pannello azioni da pressione lunga. */
data class SheetAction(
    val label: String,
    val onClick: () -> Unit,
    val icon: ImageVector? = null,
    val testTag: String? = null,
)

/**
 * Pannello dal basso ([ModalBottomSheet]) con azioni esplicite, aperto dalla
 * pressione lunga su canali, film, serie, episodi di "Continua a guardare" e
 * categorie. Ogni azione esegue il callback e chiude il pannello; la conferma
 * breve (snackbar) è affidata al ViewModel.
 */
@Composable
fun ActionSheet(
    title: String,
    actions: List<SheetAction>,
    onDismiss: () -> Unit,
    subtitle: String? = null,
) {
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = FvpColors.Surface,
        contentColor = FvpColors.TextPrimary,
        scrimColor = FvpColors.Background.copy(alpha = 0.7f),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp)
                .padding(bottom = 28.dp)
                .testTag("action_sheet"),
            verticalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.testTag("action_sheet_title"),
            )
            if (subtitle != null) {
                Text(
                    text = subtitle,
                    color = FvpColors.TextSecondary,
                    fontSize = 14.sp,
                    modifier = Modifier.testTag("action_sheet_subtitle"),
                )
            }
            Spacer(Modifier.height(8.dp))
            HorizontalDivider(color = FvpColors.SurfaceElevated)
            Spacer(Modifier.height(4.dp))
            actions.forEach { action ->
                ActionRow(action = action)
            }
        }
    }
}

@Composable
private fun ActionRow(action: SheetAction) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .defaultMinSize(minHeight = 48.dp)
            .clickable(
                onClick = action.onClick,
                onClickLabel = action.label,
            )
            .padding(horizontal = 8.dp, vertical = 12.dp)
            .testTag(action.testTag ?: "sheet_action_${action.label}"),
    ) {
        if (action.icon != null) {
            Icon(
                imageVector = action.icon,
                contentDescription = null,
                tint = FvpColors.TextSecondary,
                modifier = Modifier.size(22.dp),
            )
            Spacer(Modifier.size(14.dp))
        }
        Text(
            text = action.label,
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
        )
    }
}
