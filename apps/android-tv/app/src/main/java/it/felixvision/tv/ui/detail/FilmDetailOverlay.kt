@file:OptIn(androidx.compose.ui.ExperimentalComposeUiApi::class)

package it.felixvision.tv.ui.detail

import androidx.compose.foundation.gestures.animateScrollBy
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.focusProperties
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.launch

@Composable
fun FilmDetailOverlay(
    film: VodStream,
    info: VodInfoResponse?,
    isLoading: Boolean,
    error: String?,
    scale: UiScale,
    isFavorite: Boolean,
    contentFocusRequester: FocusRequester,
    onDismiss: () -> Unit,
    onPlay: () -> Unit,
    onToggleFavorite: () -> Unit,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier,
    rootTestTag: String = "film_detail_root"
) {
    val playFocus = remember { FocusRequester() }
    val readMoreFocus = remember { FocusRequester() }
    val dialogPlotFocus = remember { FocusRequester() }
    val dialogCloseFocus = remember { FocusRequester() }
    var showPlotDialog by remember { mutableStateOf(false) }
    var hasOverflow by remember { mutableStateOf(false) }

    val plotText = info?.info?.plot?.takeIf { it.isNotBlank() } ?: ""
    val yearText = info?.info?.releasedate?.takeIf { it.isNotBlank() } ?: film.year
    val durationText = info?.info?.duration?.takeIf { it.isNotBlank() }
    val ratingText = info?.info?.rating?.takeIf { it.isNotBlank() }

    // Focus iniziale su Riproduci, intrappolato nel contenitore
    LaunchedEffect(Unit) {
        playFocus.requestFocus()
    }

    // Ritorno da Leggi tutto: solo dopo rimozione finestra
    LaunchedEffect(showPlotDialog) {
        if (!showPlotDialog) {
            withFrameNanos { }
            // se overflow ancora presente, ritorna su Leggi tutto
            if (hasOverflow) {
                readMoreFocus.requestFocus()
            }
        }
    }

    BackHandler(enabled = true) {
        if (showPlotDialog) {
            showPlotDialog = false
        } else {
            onDismiss()
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background.copy(alpha = 0.85f))
            .padding(scale.dp(28f))
            .testTag(rootTestTag),
        contentAlignment = Alignment.Center
    ) {
        Column(
            modifier = Modifier
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(18f))
                .fillMaxWidth(0.86f)
                .heightIn(max = scale.dp(560f))
                .testTag("film_detail_content")
                .focusProperties { exit = { FocusRequester.Cancel } },
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f))
        ) {
            Text(
                text = info?.info?.name?.takeIf { it.isNotBlank() } ?: film.name,
                color = FvpColors.TextPrimary,
                fontWeight = FontWeight.Bold,
                fontSize = scale.sp(20f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.testTag("detail_title")
            )

            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                modifier = Modifier.fillMaxWidth()
            ) {
                FvpPrimaryButton(
                    text = "Riproduci",
                    onClick = onPlay,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(playFocus)
                        .testTag("detail_play")
                )
                FvpSecondaryButton(
                    text = if (isFavorite) "★ Rimuovi dai Preferiti" else "★ Aggiungi ai Preferiti",
                    onClick = onToggleFavorite,
                    scale = scale,
                    modifier = Modifier.testTag("detail_favorite")
                )
                FvpSecondaryButton(
                    text = "Chiudi",
                    onClick = onDismiss,
                    scale = scale,
                    modifier = Modifier.testTag("detail_close")
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(14f)),
                modifier = Modifier.weight(1f).fillMaxWidth()
            ) {
                Box(
                    modifier = Modifier
                        .width(scale.dp(160f))
                        .aspectRatio(2f / 3f)
                        .clip(RoundedCornerShape(scale.dp(10f)))
                        .background(FvpColors.SurfaceElevated)
                ) {
                    CatalogPosterImage(
                        imageUrl = film.streamIcon ?: info?.info?.movieImage,
                        title = film.name,
                        scale = scale,
                        modifier = Modifier.fillMaxSize()
                    )
                }

                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(6f))
                ) {
                    when {
                        isLoading -> {
                            Text(
                                text = "Caricamento...",
                                color = FvpColors.TextSecondary,
                                modifier = Modifier.testTag("detail_loading")
                            )
                        }
                        error != null -> {
                            Text(
                                text = "Informazioni non disponibili",
                                color = FvpColors.TextSecondary,
                                modifier = Modifier.testTag("detail_error")
                            )
                            FvpSecondaryButton(
                                text = "Riprova",
                                onClick = onRetry,
                                scale = scale,
                                modifier = Modifier.testTag("detail_retry")
                            )
                        }
                        else -> {
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                yearText?.let {
                                    Text(text = "Anno: $it", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                                }
                                durationText?.let {
                                    Text(text = "Durata: $it", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                                }
                                ratingText?.let {
                                    Text(text = "Valutazione: $it", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                                }
                            }
                            if (plotText.isNotBlank()) {
                                Text(
                                    text = plotText,
                                    color = FvpColors.TextSecondary,
                                    fontSize = scale.sp(14f),
                                    maxLines = 6,
                                    overflow = TextOverflow.Ellipsis,
                                    onTextLayout = { result ->
                                        hasOverflow = result.hasVisualOverflow
                                    },
                                    modifier = Modifier.testTag("detail_plot")
                                )
                                if (hasOverflow) {
                                    FvpSecondaryButton(
                                        text = "Leggi tutto",
                                        onClick = { showPlotDialog = true },
                                        scale = scale,
                                        modifier = Modifier
                                            .focusRequester(readMoreFocus)
                                            .testTag("detail_read_more")
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    if (showPlotDialog) {
        Dialog(
            onDismissRequest = { showPlotDialog = false },
            properties = DialogProperties(usePlatformDefaultWidth = false)
        ) {
            BackHandler { showPlotDialog = false }
            LaunchedEffect(Unit) { dialogPlotFocus.requestFocus() }
            PlotDialogContent(
                title = info?.info?.name?.takeIf { it.isNotBlank() } ?: film.name,
                plotText = plotText,
                scale = scale,
                plotFocus = dialogPlotFocus,
                closeFocus = dialogCloseFocus,
                onClose = { showPlotDialog = false }
            )
        }
    }
}

@Composable
private fun PlotDialogContent(
    title: String,
    plotText: String,
    scale: UiScale,
    plotFocus: FocusRequester,
    closeFocus: FocusRequester,
    onClose: () -> Unit
) {
    val scrollState = rememberScrollState()
    val scope = rememberCoroutineScope()
    val density = LocalDensity.current
    // circa metà altezza visibile: 180dp in px
    val halfViewportPx = with(density) { scale.dp(180f).toPx() }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(FvpColors.Background.copy(alpha = 0.85f))
            .padding(scale.dp(24f))
            .testTag("detail_plot_dialog"),
        contentAlignment = Alignment.Center
    ) {
        Column(
            modifier = Modifier
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(20f))
                .fillMaxWidth(0.84f)
                .heightIn(max = scale.dp(520f))
                .focusProperties { exit = { FocusRequester.Cancel } },
            verticalArrangement = Arrangement.spacedBy(scale.dp(12f))
        ) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontWeight = FontWeight.Bold,
                fontSize = scale.sp(18f),
                modifier = Modifier.testTag("detail_plot_dialog_title")
            )
            Text(
                text = plotText,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(15f),
                modifier = Modifier
                    .weight(1f, fill = false)
                    .verticalScroll(scrollState)
                    .focusRequester(plotFocus)
                    .focusable()
                    .onPreviewKeyEvent { event ->
                        if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                        when (event.key) {
                            Key.DirectionDown -> {
                                if (scrollState.canScrollForward) {
                                    scope.launch { scrollState.animateScrollBy(halfViewportPx) }
                                    true
                                } else {
                                    // a fine testo, vai a Chiudi
                                    closeFocus.requestFocus()
                                    true
                                }
                            }
                            Key.DirectionUp -> {
                                if (scrollState.canScrollBackward) {
                                    scope.launch { scrollState.animateScrollBy(-halfViewportPx) }
                                    true
                                } else false
                            }
                            else -> false
                        }
                    }
                    .testTag("detail_plot_full")
            )
            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                modifier = Modifier.fillMaxWidth()
            ) {
                FvpSecondaryButton(
                    text = "Chiudi",
                    onClick = onClose,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(closeFocus)
                        .testTag("detail_plot_dialog_close")
                )
            }
        }
    }
}
