package it.felixvision.mobile.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Icon
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.progress.WatchRules

/**
 * Icona "già visto", in alto a sinistra sulla copertina o a destra nella riga
 * dell'episodio. Stessa regola della TV: si mostra quando [WatchProgress.isWatched].
 */
@Composable
fun WatchSeenBadge(
    modifier: Modifier = Modifier,
    size: Dp = 22.dp,
) {
    Box(
        modifier = modifier
            .size(size)
            .clip(CircleShape)
            .background(Color(0xCC1C1C1E)),
        contentAlignment = Alignment.Center,
    ) {
        Icon(
            imageVector = FvpIcons.Seen,
            contentDescription = "Già visto",
            tint = FvpColors.GreenFocus,
            modifier = Modifier.size(size * 0.65f),
        )
    }
}

/**
 * Barra sottile verde in basso sulla copertina/riga: visibile tra i 30 s e il
 * 90% della durata, cioè quando il contenuto è iniziato ma non è ancora visto
 * (regole condivise [WatchRules]).
 */
@Composable
fun WatchProgressLine(
    progress: WatchProgress?,
    modifier: Modifier = Modifier,
    height: Dp = 3.dp,
) {
    if (progress == null) return
    if (progress.isWatched) return
    if (!WatchRules.shouldPersist(progress.positionMillis)) return
    val fraction = progress.fraction
    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(height)
            .background(FvpColors.Green.copy(alpha = 0.25f))
            .testTag("watch_progress_line"),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth(fraction)
                .height(height)
                .background(FvpColors.Green),
        )
    }
}

/** Stella del preferito sopra la copertina (badge scuro con stella ambra). */
@Composable
fun FavoriteBadge(
    modifier: Modifier = Modifier,
    size: Dp = 26.dp,
) {
    Box(
        modifier = modifier
            .size(size)
            .clip(CircleShape)
            .background(Color(0xCC1C1C1E)),
        contentAlignment = Alignment.Center,
    ) {
        Icon(
            imageVector = FvpIcons.Star,
            contentDescription = "Preferito",
            tint = Color(0xFFFBBF24),
            modifier = Modifier.size(size * 0.62f),
        )
    }
}
