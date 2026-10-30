package it.felixvision.mobile.ui.detail

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.CatalogPosterImage
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.components.FvpSecondaryButton
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.WatchProgressLine
import it.felixvision.mobile.ui.components.WatchSeenBadge
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.progress.WatchProgress

/**
 * Guscio comune dei dettagli a schermo intero: barra in alto con il pulsante
 * Indietro (chiude la pagina e torna al catalogo) e contenuto sotto.
 */
@Composable
fun DetailShell(
    title: String,
    onBack: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    Column(
        modifier = modifier
            .fillMaxSize()
            // Pagina a schermo intero: contenuto dentro le barre di sistema e
            // fuori dal ritaglio della fotocamera.
            .windowInsetsPadding(WindowInsets.safeDrawing),
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 4.dp, vertical = 4.dp),
        ) {
            IconButton(
                onClick = onBack,
                modifier = Modifier.size(48.dp).testTag("detail_back"),
            ) {
                Icon(
                    imageVector = FvpIcons.Indietro,
                    contentDescription = "Indietro",
                    tint = FvpColors.TextPrimary,
                )
            }
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = 18.sp,
                fontWeight = FontWeight.SemiBold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        content()
    }
}

/** Locandina 2:3 con badge "visto" e linea di avanzamento. */
@Composable
fun MediaPoster(
    imageUrl: String?,
    title: String,
    imageLoader: ImageLoader,
    watched: Boolean,
    progress: WatchProgress?,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .aspectRatio(2f / 3f)
            .clip(RoundedCornerShape(16.dp))
            .testTag("detail_poster"),
    ) {
        CatalogPosterImage(
            imageUrl = imageUrl,
            title = title,
            imageLoader = imageLoader,
            modifier = Modifier.fillMaxSize(),
            corner = 16.dp,
        )
        if (watched) {
            WatchSeenBadge(
                modifier = Modifier.align(Alignment.TopStart).padding(8.dp),
            )
        }
        WatchProgressLine(
            progress = progress,
            modifier = Modifier.align(Alignment.BottomCenter),
        )
    }
}

/**
 * Blocco testi dei dettagli: meta su una riga di etichette, trama e
 * pulsantiera ("Riproduci" + azione secondaria opzionale + stella preferiti
 * nel titolo della pagina… qui nel blocco, sotto il titolo della shell).
 */
@Composable
fun DetailTexts(
    meta: List<String>,
    plot: String?,
    isFavorite: Boolean,
    onToggleFavorite: () -> Unit,
    onPlay: () -> Unit,
    playLabel: String,
    modifier: Modifier = Modifier,
    secondaryLabel: String? = null,
    onSecondary: (() -> Unit)? = null,
) {
    Column(modifier = modifier, verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            FvpPrimaryButton(
                text = playLabel,
                onClick = onPlay,
                testTag = "detail_play",
            )
            if (secondaryLabel != null && onSecondary != null) {
                FvpSecondaryButton(
                    text = secondaryLabel,
                    onClick = onSecondary,
                    testTag = "detail_secondary",
                )
            }
            IconButton(
                onClick = onToggleFavorite,
                modifier = Modifier.size(48.dp).testTag("detail_favorite"),
            ) {
                Icon(
                    imageVector = if (isFavorite) FvpIcons.Star else FvpIcons.StarOutline,
                    contentDescription = if (isFavorite) "Rimuovi dai preferiti" else "Aggiungi ai preferiti",
                    tint = if (isFavorite) FvpColors.PreferitiActive else FvpColors.TextSecondary,
                )
            }
        }
        if (meta.isNotEmpty()) {
            Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                meta.forEach { chip ->
                    Text(
                        text = chip,
                        color = FvpColors.TextSecondary,
                        fontSize = 13.sp,
                        modifier = Modifier
                            .clip(RoundedCornerShape(8.dp))
                            .background(FvpColors.Surface)
                            .padding(horizontal = 10.dp, vertical = 5.dp),
                    )
                }
            }
        }
        if (!plot.isNullOrBlank()) {
            Text(
                text = plot,
                color = FvpColors.TextPrimary.copy(alpha = 0.85f),
                fontSize = 14.sp,
                lineHeight = 20.sp,
                modifier = Modifier.testTag("detail_plot"),
            )
        }
    }
}

/** Attesa piccola all'interno del dettaglio. */
@Composable
fun DetailInfoLoading() {
    Box(
        modifier = Modifier.fillMaxSize().testTag("detail_loading"),
        contentAlignment = Alignment.Center,
    ) {
        SecondaryText(text = "Caricamento…")
    }
}
