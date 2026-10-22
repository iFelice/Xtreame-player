package it.felixvision.tv.ui.detail

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
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
import androidx.tv.material3.Border
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import androidx.compose.foundation.BorderStroke
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.ui.catalog.SeasonDisplay
import it.felixvision.tv.ui.catalog.deriveSeasons
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.launch

@Composable
fun SeriesDetailOverlay(
    serie: SeriesItem,
    info: SeriesInfoResponse?,
    isLoading: Boolean,
    error: String?,
    scale: UiScale,
    isFavorite: Boolean,
    contentFocusRequester: FocusRequester,
    onDismiss: () -> Unit,
    onToggleFavorite: () -> Unit,
    onPlayEpisode: (Episode) -> Unit,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier,
    rootTestTag: String = "serie_detail_root"
) {
    var selectedSeason by remember { mutableStateOf<String?>(null) }
    var lastSeason by remember { mutableStateOf<String?>(null) }
    var showPlotDialog by remember { mutableStateOf(false) }
    var hasPlotOverflow by remember { mutableStateOf(false) }
    val readMoreFocus = remember { FocusRequester() }
    val dialogPlotFocus = remember { FocusRequester() }
    val dialogCloseFocus = remember { FocusRequester() }
    val closeFocus = remember { FocusRequester() }
    val retryFocus = remember { FocusRequester() }

    val plotText = info?.info?.plot?.takeIf { it.isNotBlank() } ?: serie.plot ?: ""
    val ratingText = info?.info?.rating?.takeIf { it.isNotBlank() } ?: serie.rating
    val releaseDate = info?.info?.releaseDate ?: serie.releaseDate
    val yearText = releaseDate?.take(4)?.takeIf { it.all(Char::isDigit) }

    val derivedSeasons: List<SeasonDisplay> = remember(info?.seasons, info?.episodes) {
        deriveSeasons(info?.seasons ?: emptyList(), info?.episodes ?: emptyMap())
    }

    val episodesForSelected: List<Episode> = remember(info?.episodes, selectedSeason) {
        if (selectedSeason != null) info?.episodes?.get(selectedSeason) ?: emptyList() else emptyList()
    }

    val headerTitle = remember(info?.info?.name, serie.name, selectedSeason) {
        val base = info?.info?.name?.takeIf { it.isNotBlank() } ?: serie.name
        if (selectedSeason != null) "$base · Stagione $selectedSeason" else base
    }

    val seasonsListState = rememberLazyListState()
    val episodesListState = rememberLazyListState()

    val seasonFocusRequesters = remember(derivedSeasons) {
        derivedSeasons.associate { it.seasonNumber to FocusRequester() }
    }
    val episodeFocusRequesters = remember(episodesForSelected) {
        episodesForSelected.associate { it.id to FocusRequester() }
    }

    // Focus in ogni stato: prima stagione > Riprova > Chiudi. Quando compaiono stagioni, vai alla prima.
    LaunchedEffect(derivedSeasons, isLoading, error, selectedSeason) {
        if (selectedSeason != null) return@LaunchedEffect
        when {
            derivedSeasons.isNotEmpty() && !isLoading && error == null -> {
                seasonFocusRequesters[derivedSeasons.first().seasonNumber]?.requestFocus()
            }
            error != null -> {
                retryFocus.requestFocus()
            }
            else -> {
                // caricamento o senza stagioni
                closeFocus.requestFocus()
            }
        }
    }
    LaunchedEffect(selectedSeason, episodesForSelected) {
        if (selectedSeason != null && episodesForSelected.isNotEmpty()) {
            episodeFocusRequesters[episodesForSelected.first().id]?.requestFocus()
        }
    }
    // Ritorno episodi -> stagioni: attendi frame, porta in vista, poi focus
    LaunchedEffect(selectedSeason) {
        if (selectedSeason == null && lastSeason != null) {
            withFrameNanos { }
            val idx = derivedSeasons.indexOfFirst { it.seasonNumber == lastSeason }
            if (idx >= 0) {
                try { seasonsListState.scrollToItem(idx) } catch (_: Exception) { }
                withFrameNanos { }
            }
            seasonFocusRequesters[lastSeason]?.requestFocus()
        }
    }
    // Ritorno da Leggi tutto
    LaunchedEffect(showPlotDialog) {
        if (!showPlotDialog) {
            withFrameNanos { }
            if (hasPlotOverflow) {
                readMoreFocus.requestFocus()
            }
        }
    }

    BackHandler(enabled = true) {
        if (showPlotDialog) {
            showPlotDialog = false
        } else if (selectedSeason != null) {
            selectedSeason = null
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
                .fillMaxWidth(0.90f)
                .heightIn(max = scale.dp(560f))
                .testTag("serie_detail_content")
                .focusProperties { exit = { FocusRequester.Cancel } },
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f))
        ) {
            Text(
                text = headerTitle,
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
                FvpSecondaryButton(
                    text = if (isFavorite) "★ Rimuovi dai Preferiti" else "★ Aggiungi ai Preferiti",
                    onClick = onToggleFavorite,
                    scale = scale,
                    modifier = Modifier.testTag("detail_favorite")
                )
                FvpSecondaryButton(
                    text = "Chiudi",
                    onClick = {
                        if (selectedSeason != null) selectedSeason = null else onDismiss()
                    },
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(closeFocus)
                        .testTag("detail_close")
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
                        imageUrl = serie.cover ?: info?.info?.cover,
                        title = serie.name,
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
                                modifier = Modifier
                                    .focusRequester(retryFocus)
                                    .testTag("detail_retry")
                            )
                        }
                        info != null -> {
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                yearText?.let {
                                    Text(text = "Anno: $it", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
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
                                        hasPlotOverflow = result.hasVisualOverflow
                                    },
                                    modifier = Modifier.testTag("detail_plot")
                                )
                                if (hasPlotOverflow) {
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

                            if (selectedSeason == null) {
                                if (derivedSeasons.isNotEmpty()) {
                                    Text(
                                        text = "Stagioni",
                                        color = FvpColors.TextPrimary,
                                        fontWeight = FontWeight.SemiBold,
                                        fontSize = scale.sp(15f),
                                        modifier = Modifier.padding(top = scale.dp(6f), bottom = scale.dp(4f))
                                    )
                                    LazyColumn(
                                        state = seasonsListState,
                                        verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .weight(1f)
                                            .testTag("serie_seasons_list")
                                    ) {
                                        items(derivedSeasons, key = { it.seasonNumber }) { season ->
                                            val fr = seasonFocusRequesters[season.seasonNumber] ?: FocusRequester()
                                            val count = season.episodeCount
                                            val countText = if (count != null) " · $count episodi" else ""
                                            ListItem(
                                                selected = false,
                                                onClick = {
                                                    lastSeason = season.seasonNumber
                                                    selectedSeason = season.seasonNumber
                                                },
                                                headlineContent = {
                                                    Text(
                                                        text = "${season.name}$countText",
                                                        maxLines = 1,
                                                        overflow = TextOverflow.Ellipsis
                                                    )
                                                },
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .focusRequester(fr)
                                                    .testTag("detail_season_${season.seasonNumber}"),
                                                colors = ListItemDefaults.colors(
                                                    containerColor = FvpColors.SurfaceElevated,
                                                    contentColor = FvpColors.TextPrimary,
                                                    focusedContainerColor = FvpColors.SurfaceElevated
                                                ),
                                                scale = ListItemDefaults.scale(focusedScale = 1.04f),
                                                border = ListItemDefaults.border(
                                                    focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))
                                                ),
                                                shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f)))
                                            )
                                        }
                                    }
                                } else {
                                    Text(text = "Nessuna stagione disponibile", color = FvpColors.TextSecondary, modifier = Modifier.weight(1f))
                                }
                            } else {
                                Text(
                                    text = "Episodi · Stagione $selectedSeason",
                                    color = FvpColors.TextPrimary,
                                    fontWeight = FontWeight.SemiBold,
                                    fontSize = scale.sp(15f),
                                    modifier = Modifier.padding(top = scale.dp(6f), bottom = scale.dp(4f))
                                )
                                if (episodesForSelected.isEmpty()) {
                                    Text(text = "Nessun episodio disponibile", color = FvpColors.TextSecondary, modifier = Modifier.weight(1f))
                                } else {
                                    LazyColumn(
                                        state = episodesListState,
                                        verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .weight(1f)
                                            .testTag("serie_episodes_list")
                                    ) {
                                        items(episodesForSelected, key = { it.id }) { ep ->
                                            val fr = episodeFocusRequesters[ep.id] ?: FocusRequester()
                                            val epTitle = ep.title.ifBlank { "Episodio ${ep.episodeNum}" }
                                            val duration = ep.info?.duration ?: ep.info?.durationSecs?.let { secs -> formatDuration(secs) }
                                            EpisodeRowItem(
                                                episode = ep,
                                                title = epTitle,
                                                duration = duration,
                                                scale = scale,
                                                focusRequester = fr,
                                                onPlay = { onPlayEpisode(ep) }
                                            )
                                        }
                                    }
                                }
                            }
                        }
                        else -> {
                            Text(text = serie.name, color = FvpColors.TextSecondary, modifier = Modifier.weight(1f))
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
            SeriesPlotDialog(
                title = headerTitle,
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
private fun SeriesPlotDialog(
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
    val halfPx = with(density) { scale.dp(180f).toPx() }
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
                                    scope.launch { scrollState.animateScrollBy(halfPx) }
                                    true
                                } else {
                                    closeFocus.requestFocus()
                                    true
                                }
                            }
                            Key.DirectionUp -> {
                                if (scrollState.canScrollBackward) {
                                    scope.launch { scrollState.animateScrollBy(-halfPx) }
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

@Composable
private fun EpisodeRowItem(
    episode: Episode,
    title: String,
    duration: String?,
    scale: UiScale,
    focusRequester: FocusRequester,
    onPlay: () -> Unit
) {
    ListItem(
        selected = false,
        onClick = { onPlay() },
        headlineContent = {
            Text(
                text = "${episode.episodeNum} · $title",
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                fontWeight = FontWeight.Medium
            )
        },
        supportingContent = {
            val plot = episode.info?.plot
            if (!plot.isNullOrBlank()) {
                Text(
                    text = plot,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    color = FvpColors.TextSecondary
                )
            }
        },
        overlineContent = {
            duration?.let { Text(text = it, color = FvpColors.TextSecondary) }
        },
        trailingContent = {
            Text(text = "▶", color = FvpColors.TextSecondary)
        },
        modifier = Modifier
            .fillMaxWidth()
            .focusRequester(focusRequester)
            .testTag("detail_episode_${episode.id}"),
        colors = ListItemDefaults.colors(containerColor = FvpColors.SurfaceElevated),
        scale = ListItemDefaults.scale(focusedScale = 1.04f),
        border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f)))
    )
}

private fun formatDuration(secs: Int): String {
    val h = secs / 3600
    val m = (secs % 3600) / 60
    return if (h > 0) "${h}h ${m}m" else "${m} min"
}
