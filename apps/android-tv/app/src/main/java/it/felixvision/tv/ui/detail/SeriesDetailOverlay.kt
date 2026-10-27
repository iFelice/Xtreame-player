@file:OptIn(androidx.compose.ui.ExperimentalComposeUiApi::class)

package it.felixvision.tv.ui.detail

import android.os.SystemClock
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
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
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusProperties
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.foundation.gestures.animateScrollBy
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
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemColors
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import androidx.compose.foundation.BorderStroke
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.playback.EpisodeOrder
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.playback.buildEpisodeQueue
import it.felixvision.tv.data.playback.indexOfEpisode
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.progress.WatchRules
import it.felixvision.tv.ui.catalog.SeasonDisplay
import it.felixvision.tv.ui.catalog.deriveSeasons
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.WatchSeenBadge
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Archivio "Continua a guardare" visibile alla scheda serie. La schermata
 * principale lo fornisce; senza provider la scheda usa l'avanzamento già
 * passato, poi la prima stagione.
 */
val LocalContinueEntries = staticCompositionLocalOf<List<ContinueEntry>> { emptyList() }

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
    onPlayEpisode: (Episode, SeriesPlayback) -> Unit,
    onRetry: () -> Unit,
    /** "Visto"/"non visto" dalla pressione lunga su un episodio. */
    onSetEpisodeWatched: (Episode, Boolean, Long) -> Unit = { _, _, _ -> },
    refocusTick: Int = 0,
    focusEpisodeId: String? = null,
    progress: Map<String, WatchProgress> = emptyMap(),
    /**
     * Episodio da riprendere. Se nullo si usa [LocalContinueEntries], poi
     * l'episodio iniziato più di recente nell'avanzamento.
     */
    resumeEpisodeId: String? = null,
    modifier: Modifier = Modifier,
    rootTestTag: String = "serie_detail_root"
) {
    var lockedSeason by remember { mutableStateOf<String?>(null) }
    var showPlotDialog by remember { mutableStateOf(false) }
    var hasPlotOverflow by remember { mutableStateOf(false) }
    var watchedMessage by remember { mutableStateOf<String?>(null) }
    var episodesListHasFocus by remember { mutableStateOf(false) }
    var lastFocusedEpisodeId by remember { mutableStateOf<String?>(null) }
    var headerDownFocus by remember { mutableStateOf<FocusRequester?>(null) }
    var contentFocusDone by remember { mutableStateOf(false) }
    var appliedRefocusTick by remember { mutableIntStateOf(-1) }
    var episodeFocusToken by remember { mutableIntStateOf(0) }
    var episodeFocusId by remember { mutableStateOf<String?>(null) }
    var seasonFocusToken by remember { mutableIntStateOf(0) }
    var lastBackHandledAtMillis by remember { mutableStateOf<Long?>(null) }
    val favoriteFocus = remember { FocusRequester() }
    val readMoreFocus = remember { FocusRequester() }
    val closeFocus = remember { FocusRequester() }
    val retryFocus = remember { FocusRequester() }
    val scope = rememberCoroutineScope()

    val plotText = info?.info?.plot?.takeIf { it.isNotBlank() } ?: serie.plot ?: ""
    val ratingText = info?.info?.rating?.takeIf { it.isNotBlank() } ?: serie.rating
    val releaseDate = info?.info?.releaseDate ?: serie.releaseDate
    val yearText = releaseDate?.take(4)?.takeIf { it.all(Char::isDigit) }

    val derivedSeasons: List<SeasonDisplay> = remember(info?.seasons, info?.episodes) {
        deriveSeasons(info?.seasons ?: emptyList(), info?.episodes ?: emptyMap())
    }

    val archiveEpisodeId = resumeEpisodeId?.takeIf { it.isNotBlank() }
        ?: continueEpisodeIdForSeries(LocalContinueEntries.current, serie.seriesId)
    val resumeId = remember(archiveEpisodeId, info?.episodes, progress) {
        val episodes = info?.episodes ?: emptyMap()
        archiveEpisodeId?.takeIf { seasonNumberOf(episodes, it) != null }
            ?: mostRecentlyStartedEpisodeId(episodes, progress)
    }
    val returnSeason = if (refocusTick > 0) {
        seasonNumberOf(info?.episodes, focusEpisodeId)
    } else {
        null
    }
    val autoSeason = returnSeason
        ?: seasonNumberOf(info?.episodes, resumeId)
        ?: derivedSeasons.firstOrNull()?.seasonNumber
    val effectiveSeason = lockedSeason?.takeIf { season ->
        derivedSeasons.any { it.seasonNumber == season }
    } ?: autoSeason

    SideEffect {
        if (isLoading || error != null) return@SideEffect
        val stillValid = lockedSeason != null && derivedSeasons.any { it.seasonNumber == lockedSeason }
        if (!stillValid && autoSeason != null) {
            lockedSeason = autoSeason
        }
    }

    val episodesForSelected: List<Episode> = remember(info?.episodes, effectiveSeason) {
        if (effectiveSeason != null) info?.episodes?.get(effectiveSeason) ?: emptyList() else emptyList()
    }

    val playbackQueue = remember(derivedSeasons, info?.episodes) {
        buildEpisodeQueue(
            seasonOrder = derivedSeasons.map { it.seasonNumber },
            episodes = info?.episodes ?: emptyMap(),
        )
    }

    val headerTitle = remember(info?.info?.name, serie.name, effectiveSeason) {
        val base = info?.info?.name?.takeIf { it.isNotBlank() } ?: serie.name
        if (effectiveSeason != null) "$base · Stagione $effectiveSeason" else base
    }

    val seasonsListState = rememberLazyListState()
    val episodesListState = rememberLazyListState()

    val seasonFocusRequesters = remember(derivedSeasons) {
        derivedSeasons.associate { it.seasonNumber to FocusRequester() }
    }
    val episodeFocusRequesters = remember(episodesForSelected) {
        episodesForSelected.associate { it.id to FocusRequester() }
    }

    val firstSeasonNumber = derivedSeasons.firstOrNull()?.seasonNumber
    val lastSeasonNumber = derivedSeasons.lastOrNull()?.seasonNumber
    val firstEpisodeId = episodesForSelected.firstOrNull()?.id
    val lastEpisodeId = episodesForSelected.lastOrNull()?.id
    val upFromLists = if (hasPlotOverflow) readMoreFocus else favoriteFocus
    val selectedSeasonFocus = effectiveSeason?.let { seasonFocusRequesters[it] }

    fun requestEpisodeFocus(id: String) {
        episodeFocusId = id
        lastFocusedEpisodeId = id
        episodeFocusToken++
    }

    fun requestSeasonFocus() {
        seasonFocusToken++
    }

    LaunchedEffect(watchedMessage) {
        if (watchedMessage == null) return@LaunchedEffect
        delay(2_000L)
        watchedMessage = null
    }

    LaunchedEffect(isLoading, error, derivedSeasons, effectiveSeason, resumeId, info) {
        if (isLoading) return@LaunchedEffect
        if (error != null) {
            contentFocusDone = false
            withFrameNanos { }
            try { retryFocus.requestFocus() } catch (_: Exception) {}
            return@LaunchedEffect
        }
        if (derivedSeasons.isEmpty()) {
            contentFocusDone = false
            withFrameNanos { }
            try { closeFocus.requestFocus() } catch (_: Exception) {}
            return@LaunchedEffect
        }
        if (contentFocusDone) return@LaunchedEffect
        if (refocusTick > 0 && seasonNumberOf(info?.episodes, focusEpisodeId) != null) {
            contentFocusDone = true
            return@LaunchedEffect
        }
        val season = effectiveSeason ?: return@LaunchedEffect
        contentFocusDone = true
        val resumeInSeason = resumeId?.takeIf { id ->
            (info?.episodes?.get(season) ?: emptyList()).any { it.id == id }
        }
        if (resumeInSeason != null) {
            requestEpisodeFocus(resumeInSeason)
        } else {
            requestSeasonFocus()
        }
    }

    // Al ritorno dal player: stagione dell'episodio appena visto e focus su di lui.
    LaunchedEffect(refocusTick, focusEpisodeId, info) {
        if (refocusTick <= 0 || refocusTick == appliedRefocusTick) return@LaunchedEffect
        val id = focusEpisodeId ?: return@LaunchedEffect
        val season = seasonNumberOf(info?.episodes, id) ?: return@LaunchedEffect
        appliedRefocusTick = refocusTick
        lockedSeason = season
        contentFocusDone = true
        requestEpisodeFocus(id)
    }

    LaunchedEffect(episodeFocusToken) {
        if (episodeFocusToken == 0) return@LaunchedEffect
        val id = episodeFocusId ?: return@LaunchedEffect
        val index = episodesForSelected.indexOfFirst { it.id == id }
        if (index < 0) return@LaunchedEffect
        try { episodesListState.scrollToItem(index) } catch (_: Exception) {}
        withFrameNanos { }
        val requester = episodeFocusRequesters[id]
        var ok = try { requester?.requestFocus() == true } catch (_: Exception) { false }
        if (!ok) {
            withFrameNanos { }
            ok = try { requester?.requestFocus() == true } catch (_: Exception) { false }
        }
        if (!ok) {
            delay(32L)
            withFrameNanos { }
            ok = try { requester?.requestFocus() == true } catch (_: Exception) { false }
        }
        if (ok) {
            lastFocusedEpisodeId = id
            if (id == episodesForSelected.firstOrNull()?.id) {
                headerDownFocus = requester
            }
        } else {
            try { selectedSeasonFocus?.requestFocus() } catch (_: Exception) {}
        }
    }

    LaunchedEffect(seasonFocusToken) {
        if (seasonFocusToken == 0) return@LaunchedEffect
        val season = effectiveSeason ?: return@LaunchedEffect
        val index = derivedSeasons.indexOfFirst { it.seasonNumber == season }
        if (index >= 0) {
            try { seasonsListState.scrollToItem(index) } catch (_: Exception) {}
        }

        val requester = seasonFocusRequesters[season]
        var ok = false
        var attempts = 0
        while (!ok && attempts < 5) {
            attempts++
            val isComposed = seasonsListState.layoutInfo.visibleItemsInfo.any { it.key == season }
            if (isComposed) {
                ok = try { requester?.requestFocus() == true } catch (_: Exception) { false }
            }
            if (!ok) withFrameNanos { }
        }
        if (ok) {
            if (season == firstSeasonNumber) headerDownFocus = requester
        } else {
            try {
                if (!favoriteFocus.requestFocus()) closeFocus.requestFocus()
            } catch (_: Exception) {}
        }
    }

    var plotWasOpen by remember { mutableStateOf(false) }
    LaunchedEffect(showPlotDialog) {
        if (showPlotDialog) {
            plotWasOpen = true
            return@LaunchedEffect
        }
        if (!plotWasOpen) return@LaunchedEffect
        plotWasOpen = false
        withFrameNanos { }
        if (hasPlotOverflow) {
            try { readMoreFocus.requestFocus() } catch (_: Exception) {}
        }
    }

    fun handleBack() {
        when {
            showPlotDialog -> showPlotDialog = false
            episodesListHasFocus && effectiveSeason != null -> requestSeasonFocus()
            else -> onDismiss()
        }
    }

    fun handleBackFromKey() {
        lastBackHandledAtMillis = SystemClock.uptimeMillis()
        handleBack()
    }

    fun handleBackFromSystem() {
        val now = SystemClock.uptimeMillis()
        val lastKeyHandledAt = lastBackHandledAtMillis
        if (lastKeyHandledAt == null || now - lastKeyHandledAt >= 300L) handleBack()
    }

    fun selectSeason(seasonNumber: String) {
        lockedSeason = seasonNumber
        contentFocusDone = true
        val eps = info?.episodes?.get(seasonNumber).orEmpty()
        val continueHere = resumeId?.takeIf { id -> eps.any { it.id == id } }
        val target = continueHere ?: eps.firstOrNull()?.id
        if (target != null) {
            requestEpisodeFocus(target)
        }
    }

    Dialog(
        // Back è gestito dal BackHandler; onDismissRequest resta per il tap fuori.
        onDismissRequest = onDismiss,
        properties = DialogProperties(
            dismissOnBackPress = false,
            usePlatformDefaultWidth = false,
            decorFitsSystemWindows = false,
        )
    ) {
        BackHandler(enabled = true) { handleBackFromSystem() }
        Box(
            modifier = modifier
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(28f))
                .onPreviewKeyEvent { event ->
                    if (event.key != Key.Back) return@onPreviewKeyEvent false
                    when (event.type) {
                        KeyEventType.KeyDown -> true
                        KeyEventType.KeyUp -> {
                            handleBackFromKey()
                            true
                        }
                        else -> false
                    }
                }
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
                    .testTag("serie_detail_content"),
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
                        modifier = Modifier
                            .focusRequester(favoriteFocus)
                            .focusProperties {
                                right = closeFocus
                                left = FocusRequester.Cancel
                                up = FocusRequester.Cancel
                                down = headerDownFocus
                                    ?: selectedSeasonFocus
                                    ?: firstEpisodeId?.let { episodeFocusRequesters[it] }
                                    ?: FocusRequester.Cancel
                            }
                            .testTag("detail_favorite")
                    )
                    FvpSecondaryButton(
                        text = "Chiudi",
                        onClick = onDismiss,
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(closeFocus)
                            .focusProperties {
                                left = favoriteFocus
                                right = FocusRequester.Cancel
                                up = FocusRequester.Cancel
                                down = headerDownFocus
                                    ?: selectedSeasonFocus
                                    ?: firstEpisodeId?.let { episodeFocusRequesters[it] }
                                    ?: FocusRequester.Cancel
                            }
                            .testTag("detail_close")
                    )
                }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(14f)),
                    modifier = Modifier.weight(1f).fillMaxWidth()
                ) {
                    Column(
                        modifier = Modifier
                            .width(scale.dp(160f))
                            .fillMaxHeight(),
                        verticalArrangement = Arrangement.spacedBy(scale.dp(8f))
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .aspectRatio(2f / 3f)
                                .clip(RoundedCornerShape(scale.dp(10f)))
                                .background(FvpColors.SurfaceElevated)
                                .testTag("detail_poster")
                        ) {
                            CatalogPosterImage(
                                imageUrl = serie.cover ?: info?.info?.cover,
                                title = serie.name,
                                scale = scale,
                                modifier = Modifier.fillMaxSize()
                            )
                        }

                        if (!isLoading && error == null && derivedSeasons.isNotEmpty()) {
                            LazyColumn(
                                state = seasonsListState,
                                verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                                contentPadding = PaddingValues(scale.focusSafePadding),
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .weight(1f)
                                    .onFocusEvent { state ->
                                        if (state.hasFocus) {
                                            episodesListHasFocus = false
                                        }
                                    }
                                    .onPreviewKeyEvent { event ->
                                        if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                                        when (event.key) {
                                            Key.DirectionRight -> {
                                                val target = lastFocusedEpisodeId?.takeIf { id ->
                                                    episodesForSelected.any { it.id == id }
                                                } ?: episodesForSelected.firstOrNull()?.id
                                                if (target != null) requestEpisodeFocus(target)
                                                true
                                            }
                                            Key.DirectionLeft -> true
                                            else -> false
                                        }
                                    }
                                    .testTag("serie_seasons_list")
                            ) {
                                items(derivedSeasons, key = { it.seasonNumber }) { season ->
                                    val isFirst = season.seasonNumber == firstSeasonNumber
                                    val isLast = season.seasonNumber == lastSeasonNumber
                                    val isSelected = season.seasonNumber == effectiveSeason
                                    val fr = remember(season.seasonNumber, seasonFocusRequesters) {
                                        seasonFocusRequesters[season.seasonNumber] ?: FocusRequester()
                                    }
                                    val countLabel = episodeCountLabel(season.episodeCount)
                                    DenseListItem(
                                        selected = isSelected,
                                        onClick = { selectSeason(season.seasonNumber) },
                                        headlineContent = {
                                            Text(
                                                text = "Stagione ${season.seasonNumber}",
                                                color = if (isSelected) FvpColors.Green else FvpColors.TextPrimary,
                                                fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Medium,
                                                fontSize = scale.rowText,
                                                maxLines = 1,
                                                overflow = TextOverflow.Ellipsis,
                                            )
                                        },
                                        supportingContent = countLabel?.let { label ->
                                            {
                                                Text(
                                                    text = label,
                                                    color = if (isSelected) FvpColors.Green else FvpColors.TextSecondary,
                                                    fontSize = scale.sp(12f),
                                                    maxLines = 1,
                                                    overflow = TextOverflow.Ellipsis,
                                                )
                                            }
                                        },
                                        leadingContent = if (isSelected) {
                                            {
                                                Box(
                                                    modifier = Modifier
                                                        .width(scale.dp(4f))
                                                        .height(scale.dp(22f))
                                                        .clip(RoundedCornerShape(scale.dp(2f)))
                                                        .background(FvpColors.Green)
                                                )
                                            }
                                        } else {
                                            null
                                        },
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .focusRequester(fr)
                                            .onFocusChanged { state ->
                                                if (state.isFocused) {
                                                    if (isFirst) headerDownFocus = fr
                                                }
                                            }
                                            .focusProperties {
                                                if (isFirst) up = upFromLists
                                                if (isLast) down = FocusRequester.Cancel
                                                left = FocusRequester.Cancel
                                                val rightId = lastFocusedEpisodeId?.takeIf { id ->
                                                    episodesForSelected.any { it.id == id }
                                                } ?: firstEpisodeId
                                                right = rightId?.let { episodeFocusRequesters[it] }
                                                    ?: FocusRequester.Cancel
                                            }
                                            .testTag("detail_season_${season.seasonNumber}"),
                                        colors = ListItemDefaults.colors(
                                            containerColor = FvpColors.SurfaceElevated,
                                            contentColor = FvpColors.TextPrimary,
                                            focusedContainerColor = FvpColors.SurfaceElevated,
                                            focusedContentColor = FvpColors.TextPrimary,
                                            selectedContainerColor = FvpColors.SurfaceElevated,
                                            selectedContentColor = FvpColors.TextPrimary,
                                            focusedSelectedContainerColor = FvpColors.SurfaceElevated,
                                            focusedSelectedContentColor = FvpColors.TextPrimary,
                                        ),
                                        scale = ListItemDefaults.scale(focusedScale = 1.04f),
                                        border = ListItemDefaults.border(
                                            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))
                                        ),
                                        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f)))
                                    )
                                }
                            }
                        }
                    }

                    Column(
                        modifier = Modifier.weight(1f).fillMaxHeight(),
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
                                        .focusProperties {
                                            up = favoriteFocus
                                            down = FocusRequester.Cancel
                                            left = FocusRequester.Cancel
                                            right = FocusRequester.Cancel
                                        }
                                        .testTag("detail_retry")
                                )
                            }
                            info != null -> {
                                val loadedInfo = info!!
                                Row(
                                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .testTag("detail_meta")
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
                                                .focusProperties {
                                                    up = FocusRequester.Cancel
                                                    left = selectedSeasonFocus ?: FocusRequester.Cancel
                                                    right = FocusRequester.Cancel
                                                    down = headerDownFocus
                                                        ?: firstEpisodeId?.let { episodeFocusRequesters[it] }
                                                        ?: selectedSeasonFocus
                                                        ?: FocusRequester.Cancel
                                                }
                                                .testTag("detail_read_more")
                                        )
                                    }
                                }

                                val seasonKey = effectiveSeason
                                if (derivedSeasons.isEmpty() || seasonKey == null) {
                                    Text(
                                        text = "Nessuna stagione disponibile",
                                        color = FvpColors.TextSecondary,
                                        modifier = Modifier
                                            .weight(1f)
                                            .testTag("detail_no_seasons")
                                    )
                                } else {
                                    val selectedSeasonKey = requireNotNull(seasonKey)
                                    Text(
                                        text = "Episodi · Stagione $selectedSeasonKey",
                                        color = FvpColors.TextPrimary,
                                        fontWeight = FontWeight.SemiBold,
                                        fontSize = scale.sp(15f),
                                        modifier = Modifier
                                            .padding(top = scale.dp(6f), bottom = scale.dp(4f))
                                            .testTag("detail_episodes_heading")
                                    )
                                    watchedMessage?.let { message ->
                                        Text(
                                            text = message,
                                            color = FvpColors.Green,
                                            fontSize = scale.sp(13f),
                                            modifier = Modifier.testTag("serie_episode_watched_message"),
                                        )
                                    }
                                    if (episodesForSelected.isEmpty()) {
                                        Text(
                                            text = "Nessun episodio disponibile",
                                            color = FvpColors.TextSecondary,
                                            modifier = Modifier.weight(1f)
                                        )
                                    } else {
                                        LazyColumn(
                                            state = episodesListState,
                                            verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                                            contentPadding = PaddingValues(scale.focusSafePadding),
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .weight(1f)
                                                .onFocusEvent { state ->
                                                    episodesListHasFocus = state.hasFocus
                                                }
                                                .onPreviewKeyEvent { event ->
                                                    if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                                                    when (event.key) {
                                                        Key.DirectionLeft -> {
                                                            requestSeasonFocus()
                                                            true
                                                        }
                                                        Key.DirectionRight -> true
                                                        else -> false
                                                    }
                                                }
                                                .testTag("serie_episodes_list")
                                        ) {
                                            items(episodesForSelected, key = { it.id }) { ep ->
                                                val isFirst = ep.id == firstEpisodeId
                                                val isLast = ep.id == lastEpisodeId
                                                val fr = remember(ep.id, episodeFocusRequesters) {
                                                    episodeFocusRequesters[ep.id] ?: FocusRequester()
                                                }
                                                val epTitle = ep.title.ifBlank { "Episodio ${ep.episodeNum}" }
                                                val duration = ep.info?.duration ?: ep.info?.durationSecs?.let { secs -> formatDuration(secs) }
                                                val epProgress = progress[ProgressKeys.episode(ep.id)]
                                                val nextWatched = epProgress?.isWatched != true
                                                val epDurationMillis = WatchRules.durationMillis(
                                                    durationSecs = ep.info?.durationSecs,
                                                    durationText = ep.info?.duration,
                                                ).takeIf { it > 0L } ?: epProgress?.durationMillis ?: 0L
                                                Box(
                                                    modifier = Modifier
                                                        .fillMaxWidth()
                                                        .onFocusEvent { state ->
                                                            if (state.hasFocus) {
                                                                lastFocusedEpisodeId = ep.id
                                                                if (isFirst) headerDownFocus = fr
                                                            }
                                                        }
                                                ) {
                                                    EpisodeRowItem(
                                                        episode = ep,
                                                        title = epTitle,
                                                        duration = duration,
                                                        scale = scale,
                                                        focusRequester = fr,
                                                        upFocus = if (isFirst) upFromLists else null,
                                                        downFocus = if (isLast) FocusRequester.Cancel else null,
                                                        progress = epProgress,
                                                        onToggleWatched = {
                                                            onSetEpisodeWatched(ep, nextWatched, epDurationMillis)
                                                            watchedMessage = if (nextWatched) {
                                                                "Segnato come visto"
                                                            } else {
                                                                "Segnato come non visto"
                                                            }
                                                        },
                                                        onPlay = {
                                                            val queueIndex = indexOfEpisode(playbackQueue, ep.id)
                                                            val queue = if (queueIndex >= 0) {
                                                                playbackQueue
                                                            } else {
                                                                listOf(EpisodeOrder(selectedSeasonKey, ep))
                                                            }
                                                            onPlayEpisode(
                                                                ep,
                                                                SeriesPlayback(
                                                                    seriesId = serie.seriesId,
                                                                    title = loadedInfo.info?.name
                                                                        ?.takeIf { it.isNotBlank() }
                                                                        ?: serie.name,
                                                                    categoryId = serie.categoryId,
                                                                    queue = queue,
                                                                    startIndex = if (queueIndex >= 0) queueIndex else 0,
                                                                    cover = loadedInfo.info?.cover
                                                                        ?.takeIf { it.isNotBlank() }
                                                                        ?: serie.cover,
                                                                ),
                                                            )
                                                        }
                                                    )
                                                }
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
            PlotDialog(
                title = headerTitle,
                plotText = plotText,
                scale = scale,
                onClose = { showPlotDialog = false }
            )
        }
    }
}

/** Episodio puntato da "Continua a guardare" per questa serie, il più recente. */
internal fun continueEpisodeIdForSeries(
    entries: List<ContinueEntry>,
    seriesId: String,
): String? = entries
    .asSequence()
    .filter { it.isSeries && it.seriesId == seriesId && !it.episodeId.isNullOrBlank() }
    .maxByOrNull { it.updatedAtMillis }
    ?.episodeId

/** Stagione che contiene [episodeId], oppure null se non è in questa scheda. */
internal fun seasonNumberOf(
    episodes: Map<String, List<Episode>>?,
    episodeId: String?,
): String? {
    if (episodeId.isNullOrBlank() || episodes.isNullOrEmpty()) return null
    return episodes.entries.firstOrNull { (_, list) -> list.any { it.id == episodeId } }?.key
}

/**
 * Episodio iniziato più di recente: posizione salvata (> 0) e [WatchProgress.updatedAtMillis]
 * massimo. Il solo "segna come visto" senza posizione non conta come avvio.
 */
internal fun mostRecentlyStartedEpisodeId(
    episodes: Map<String, List<Episode>>,
    progress: Map<String, WatchProgress>,
): String? {
    var bestId: String? = null
    var bestUpdated = Long.MIN_VALUE
    val seasons = episodes.keys.sortedWith(
        compareBy<String> { it.toIntOrNull() ?: Int.MAX_VALUE }.thenBy { it }
    )
    for (season in seasons) {
        for (episode in episodes[season].orEmpty()) {
            val watch = progress[ProgressKeys.episode(episode.id)] ?: continue
            if (watch.positionMillis <= 0L) continue
            if (watch.updatedAtMillis > bestUpdated) {
                bestUpdated = watch.updatedAtMillis
                bestId = episode.id
            }
        }
    }
    return bestId
}

private fun episodeCountLabel(count: Int?): String? = count?.let { "$it episodi" }

@Composable
private fun PlotDialog(
    title: String,
    plotText: String,
    scale: UiScale,
    onClose: () -> Unit
) {
    val scrollState = rememberScrollState()
    val scope = rememberCoroutineScope()
    val density = LocalDensity.current
    val halfViewportPx = with(density) { scale.dp(180f).toPx() }
    val closeFocus = remember { FocusRequester() }
    var lastBackHandledAtMillis by remember { mutableStateOf<Long?>(null) }

    fun closeBackFromKey() {
        lastBackHandledAtMillis = SystemClock.uptimeMillis()
        onClose()
    }

    fun closeBackFromSystem() {
        val now = SystemClock.uptimeMillis()
        val lastKeyHandledAt = lastBackHandledAtMillis
        if (lastKeyHandledAt == null || now - lastKeyHandledAt >= 300L) onClose()
    }

    LaunchedEffect(Unit) { closeFocus.requestFocus() }

    Dialog(
        onDismissRequest = onClose,
        properties = DialogProperties(
            dismissOnBackPress = false,
            usePlatformDefaultWidth = false,
            decorFitsSystemWindows = false,
        )
    ) {
        BackHandler { closeBackFromSystem() }
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(24f))
                .testTag("detail_plot_dialog")
                .onPreviewKeyEvent { event ->
                    if (event.key == Key.Back) {
                        when (event.type) {
                            KeyEventType.KeyDown -> true
                            KeyEventType.KeyUp -> {
                                closeBackFromKey()
                                true
                            }
                            else -> false
                        }
                    } else if (event.type != KeyEventType.KeyDown) {
                        false
                    } else {
                        when (event.key) {
                            Key.DirectionDown -> {
                                if (scrollState.canScrollForward) {
                                    scope.launch { scrollState.animateScrollBy(halfViewportPx) }
                                    true
                                } else false
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
                },
            contentAlignment = Alignment.Center
        ) {
            Column(
                modifier = Modifier
                    .clip(RoundedCornerShape(scale.dp(16f)))
                    .background(FvpColors.Surface)
                    .padding(scale.dp(20f))
                    .fillMaxWidth(0.84f)
                    .heightIn(max = scale.dp(520f)),
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
}

@Composable
private fun EpisodeRowItem(
    episode: Episode,
    title: String,
    duration: String?,
    scale: UiScale,
    focusRequester: FocusRequester,
    upFocus: FocusRequester?,
    downFocus: FocusRequester?,
    progress: WatchProgress?,
    onToggleWatched: () -> Unit,
    onPlay: () -> Unit
) {
    var focused by remember(episode.id) { mutableStateOf(false) }
    Box {
    // Riga compatta dell'episodio: altezza e spaziature ridotte, testo invariato.
    DenseListItem(
        selected = false,
        onClick = { onPlay() },
        headlineContent = {
            FocusMarqueeText(
                text = "${episode.episodeNum} · $title",
                focused = focused,
                fontSize = scale.rowText,
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
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(scale.dp(6f)),
            ) {
                if (progress?.isWatched == true) {
                    WatchSeenBadge(
                        scale = scale,
                        modifier = Modifier.testTag("detail_episode_${episode.id}_seen"),
                    )
                }
                Text(text = "▶", color = FvpColors.TextSecondary)
            }
        },
        modifier = Modifier
            .fillMaxWidth()
            .focusRequester(focusRequester)
            .focusProperties {
                if (upFocus != null) up = upFocus
                if (downFocus != null) down = downFocus
            }
            .onFocusChanged { focused = it.isFocused }
            .fvpLongPress(onToggleWatched)
            .testTag("detail_episode_${episode.id}"),
        // Come per le stagioni: con il focus il fondo resta scuro sotto il testo
        // bianco (il predefinito tv-material è un riempimento chiaro); il focus
        // è indicato da bordo verde e ingrandimento.
        colors = episodeRowColors(),
        scale = ListItemDefaults.scale(focusedScale = 1.04f),
        border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f)))
    )
    WatchProgressLine(
        progress = progress,
        scale = scale,
        modifier = Modifier.align(Alignment.BottomCenter).padding(horizontal = scale.dp(8f)),
    )
    }
}

/**
 * Colori della riga episodio, stesso schema delle stagioni: fondo
 * [FvpColors.SurfaceElevated] e testo [FvpColors.TextPrimary] anche con focus e
 * selezione, così il testo bianco non finisce sul riempimento chiaro
 * predefinito di tv-material.
 */
@Composable
internal fun episodeRowColors(): ListItemColors = ListItemDefaults.colors(
    containerColor = FvpColors.SurfaceElevated,
    contentColor = FvpColors.TextPrimary,
    focusedContainerColor = FvpColors.SurfaceElevated,
    focusedContentColor = FvpColors.TextPrimary,
    selectedContainerColor = FvpColors.SurfaceElevated,
    selectedContentColor = FvpColors.TextPrimary,
    focusedSelectedContainerColor = FvpColors.SurfaceElevated,
    focusedSelectedContentColor = FvpColors.TextPrimary,
)

private fun formatDuration(secs: Int): String {
    val h = secs / 3600
    val m = (secs % 3600) / 60
    return if (h > 0) "${h}h ${m}m" else "${m} min"
}
