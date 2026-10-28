package it.felixvision.mobile.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil3.ImageLoader
import coil3.compose.AsyncImage
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Immagini del catalogo del tablet, caricate con l'`imageLoader` del container
 * (Coil 3 su client dedicato: max 4 download insieme, nessuna retry, cache da
 * 200 MB). Lo stesso loader è passato a ogni `AsyncImage`, come nell'app TV.
 *
 * Se l'immagine non si carica: segnaposto con le iniziali, nessun errore.
 */
@Composable
fun CatalogPosterImage(
    imageUrl: String?,
    title: String,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
    corner: Dp = 10.dp,
    contentDescription: String? = null,
) {
    val shape = RoundedCornerShape(corner)
    if (imageUrl.isNullOrBlank()) {
        InitialsPlaceholder(
            title = title,
            modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated),
        )
        return
    }
    Box(modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated)) {
        AsyncImage(
            model = imageUrl,
            imageLoader = imageLoader,
            contentDescription = contentDescription ?: title,
            modifier = Modifier.fillMaxSize(),
            contentScale = ContentScale.Crop,
        )
    }
}

/** Logo di un canale Live: contenuto, non ritagliato. */
@Composable
fun ChannelLogoImage(
    imageUrl: String?,
    name: String,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
    corner: Dp = 8.dp,
) {
    val shape = RoundedCornerShape(corner)
    if (imageUrl.isNullOrBlank()) {
        InitialsPlaceholder(
            title = name,
            modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated),
        )
        return
    }
    AsyncImage(
        model = imageUrl,
        imageLoader = imageLoader,
        contentDescription = name,
        modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated),
        contentScale = ContentScale.Fit,
    )
}

/** Segnaposto con le iniziali del titolo. */
@Composable
fun InitialsPlaceholder(
    title: String,
    modifier: Modifier = Modifier,
) {
    val initials = title.take(2).uppercase().ifBlank { "FV" }
    Box(
        modifier = modifier.background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = initials,
            color = FvpColors.TextSecondary,
            fontSize = 22.sp,
            fontWeight = FontWeight.Bold,
        )
    }
}
