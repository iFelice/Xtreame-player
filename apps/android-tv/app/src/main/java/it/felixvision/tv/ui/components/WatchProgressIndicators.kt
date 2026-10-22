package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.tv.material3.Icon
import it.felixvision.tv.R
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.progress.WatchRules
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Icona "già visto" (Lucide eye, VectorDrawable locale), nello stesso stile
 * delle icone del menu. Va in alto a sinistra sulla copertina o a destra nella
 * riga dell'episodio.
 */
@Composable
fun WatchSeenBadge(
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .size(scale.dp(22f))
            .clip(CircleShape)
            .background(Color(0xCC1C1C1E)),
        contentAlignment = Alignment.Center,
    ) {
        Icon(
            painter = painterResource(R.drawable.ic_eye),
            contentDescription = "Già visto",
            tint = FvpColors.GreenFocus,
            modifier = Modifier.size(scale.dp(14f)),
        )
    }
}

/**
 * Barra sottile verde in basso sulla copertina/riga: visibile tra i 30 s e il
 * 90% della durata, cioè quando il contenuto è iniziato ma non è ancora visto.
 */
@Composable
fun WatchProgressLine(
    progress: WatchProgress?,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    if (progress == null) return
    if (progress.isWatched) return
    if (!WatchRules.shouldPersist(progress.positionMillis)) return
    val fraction = progress.fraction
    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(scale.dp(3f))
            .background(FvpColors.Green.copy(alpha = 0.25f)),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth(fraction)
                .height(scale.dp(3f))
                .background(FvpColors.Green),
        )
    }
}
