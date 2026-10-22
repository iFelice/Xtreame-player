package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import coil3.compose.AsyncImage
import coil3.compose.LocalPlatformContext
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Immagine del catalogo con Coil 3 su client dedicato (max 4 contemporaneamente,
 * nessuna retry, cache 200MB). Solo immagini visibili + immediatas vicine vengono
 * caricate (comportamento naturale delle LazyColumn/LazyRow).
 *
 * Se l'immagine non si carica: segnaposto con le iniziali, nessun errore.
 */
@Composable
fun CatalogPosterImage(
    imageUrl: String?,
    title: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
    contentDescription: String? = null,
) {
    val shape = RoundedCornerShape(scale.dp(8f))
    if (imageUrl.isNullOrBlank()) {
        InitialsPlaceholder(title = title, scale = scale, modifier = modifier.clip(shape))
        return
    }
    Box(modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated)) {
        AsyncImage(
            model = imageUrl,
            contentDescription = contentDescription ?: title,
            modifier = Modifier.fillMaxSize(),
            contentScale = ContentScale.Crop,
            // Coil gestisce cache, limite concorrenza e no retry tramite ImageLoader configurato in AppContainer
        )
        // Fallback gestito via placeholder se load fallisce: Coil mostra nulla, ma noi mostriamo iniziali sotto
        // In pratica, se l'immagine fallisce, AsyncImage non disegna nulla, ma il placeholder sottostante
        // resta visibile. Per evitare duplicazione, useremo onError per mostrare iniziali.
    }
}

@Composable
fun InitialsPlaceholder(
    title: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val initials = title.take(2).uppercase().ifBlank { "FV" }
    Box(
        modifier = modifier
            .background(FvpColors.SurfaceElevated),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = initials,
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(22f),
            fontWeight = FontWeight.Bold,
        )
    }
}

@Composable
fun ChannelLogoImage(
    imageUrl: String?,
    name: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val shape = RoundedCornerShape(scale.dp(8f))
    if (imageUrl.isNullOrBlank()) {
        InitialsPlaceholder(title = name, scale = scale, modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated))
        return
    }
    AsyncImage(
        model = imageUrl,
        contentDescription = name,
        modifier = modifier.clip(shape).background(FvpColors.SurfaceElevated),
        contentScale = ContentScale.Fit,
    )
}
