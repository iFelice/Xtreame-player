package it.felixvision.tv.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.tv.material3.Text
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Stati vuoti e di errore in italiano, con pulsante "Riprova" (mai tentativi automatici a raffica).
 */
@Composable
fun EmptyState(
    title: String,
    description: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(scale.dp(24f)),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Text(text = title, color = FvpColors.TextPrimary, fontSize = scale.sp(20f), fontWeight = FontWeight.SemiBold, textAlign = TextAlign.Center)
        Spacer(Modifier.height(scale.dp(8f)))
        Text(text = description, color = FvpColors.TextSecondary, fontSize = scale.sp(15f), textAlign = TextAlign.Center)
    }
}

@Composable
fun ErrorState(
    message: String,
    scale: UiScale,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(scale.dp(24f)),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Text(text = message, color = FvpColors.Error, fontSize = scale.sp(16f), textAlign = TextAlign.Center)
        Spacer(Modifier.height(scale.dp(16f)))
        FvpPrimaryButton(text = "Riprova", onClick = onRetry, scale = scale)
    }
}

@Composable
fun LoadingState(
    message: String = "Caricamento in corso…",
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(scale.dp(24f)),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Text(text = message, color = FvpColors.TextSecondary, fontSize = scale.sp(16f))
    }
}
