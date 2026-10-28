@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.components

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil3.ImageLoader
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.progress.WatchProgress

/**
 * Card locandina 2:3 con titolo sotto, usata dalle griglie e dalle righe
 * orizzontali. Tocco = azione principale, pressione lunga = pannello azioni.
 * Target touch garantito dalla larghezza minima di ~140dp delle celle.
 */
@Composable
fun PosterCard(
    imageUrl: String?,
    title: String,
    imageLoader: ImageLoader,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    width: Dp = 140.dp,
    subtitle: String? = null,
    isFavorite: Boolean = false,
    progress: WatchProgress? = null,
    isWatched: Boolean = false,
    onLongClick: (() -> Unit)? = null,
    testTag: String? = null,
) {
    Column(
        modifier = modifier
            .width(width)
            .clip(RoundedCornerShape(12.dp))
            .combinedClickable(
                onClick = onClick,
                onLongClick = onLongClick,
                onLongClickLabel = "Apri azioni",
            )
            .then(if (testTag != null) Modifier.testTag(testTag) else Modifier),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(2f / 3f)
                .clip(RoundedCornerShape(12.dp)),
        ) {
            CatalogPosterImage(
                imageUrl = imageUrl,
                title = title,
                imageLoader = imageLoader,
                modifier = Modifier.fillMaxSize(),
                corner = 12.dp,
            )
            WatchProgressLine(
                progress = progress,
                modifier = Modifier.align(Alignment.BottomCenter),
            )
            if (isWatched) {
                WatchSeenBadge(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .padding(6.dp),
                )
            }
            if (isFavorite) {
                FavoriteBadge(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(6.dp),
                )
            }
        }
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.padding(top = 6.dp),
        )
        if (subtitle != null) {
            Text(
                text = subtitle,
                color = FvpColors.TextSecondary,
                fontSize = 12.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

/**
 * Riga di un elenco touch (canali Live, "I miei canali"): minimo 48dp di
 * altezza, intera riga cliccabile con pressione lunga opzionale.
 */
@Composable
fun TouchListRow(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    onLongClick: (() -> Unit)? = null,
    backgroundColor: Color = FvpColors.Surface,
    horizontalPadding: Dp = 12.dp,
    verticalPadding: Dp = 8.dp,
    content: @Composable RowScope.() -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = modifier
            .fillMaxWidth()
            .defaultMinSize(minHeight = 48.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(backgroundColor)
            .combinedClickable(
                onClick = onClick,
                onLongClick = onLongClick,
                onLongClickLabel = "Apri azioni",
            )
            .padding(horizontal = horizontalPadding, vertical = verticalPadding),
    ) {
        content()
    }
}

/** Titolo di un gruppo o di una riga di contenuti. */
@Composable
fun RowTitle(
    text: String,
    modifier: Modifier = Modifier,
    color: Color = FvpColors.TextPrimary,
) {
    Text(
        text = text,
        color = color,
        fontSize = 17.sp,
        fontWeight = FontWeight.Bold,
        modifier = modifier.padding(bottom = 6.dp),
    )
}

/** Testo secondario in piccolo. */
@Composable
fun SecondaryText(
    text: String,
    modifier: Modifier = Modifier,
    maxLines: Int = 1,
) {
    Text(
        text = text,
        color = FvpColors.TextSecondary,
        fontSize = 13.sp,
        maxLines = maxLines,
        overflow = TextOverflow.Ellipsis,
        modifier = modifier,
    )
}
