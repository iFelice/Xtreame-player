package it.felixvision.mobile.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.theme.FvpColors

/** Stato vuoto centrato: titolo, descrizione e pulsante opzionale. */
@Composable
fun EmptyState(
    title: String,
    description: String,
    modifier: Modifier = Modifier,
    actionLabel: String? = null,
    onAction: (() -> Unit)? = null,
) {
    Box(modifier = modifier, contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.padding(24.dp),
        ) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                textAlign = TextAlign.Center,
                modifier = Modifier.testTag("empty_state_title"),
            )
            Text(
                text = description,
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                textAlign = TextAlign.Center,
                modifier = Modifier.testTag("empty_state_description"),
            )
            if (actionLabel != null && onAction != null) {
                FvpSecondaryButton(
                    text = actionLabel,
                    onClick = onAction,
                    modifier = Modifier.padding(top = 8.dp),
                )
            }
        }
    }
}

/** Attesa a schermo di sezione con indicatore di caricamento. */
@Composable
fun SectionLoading(
    message: String,
    modifier: Modifier = Modifier,
) {
    LoadingOverlay(message = message, modifier = modifier)
}
