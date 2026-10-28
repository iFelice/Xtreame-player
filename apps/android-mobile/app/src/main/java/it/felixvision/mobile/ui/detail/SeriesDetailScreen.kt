@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.detail

import androidx.compose.foundation.background
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.catalog.ActionTarget
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.DetailTarget
import it.felixvision.mobile.ui.catalog.PlayTarget
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.WatchProgressLine
import it.felixvision.mobile.ui.components.WatchSeenBadge
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress

/**
 * Dettaglio serie a schermo intero: in orizzontale copertina a sinistra e
 * testi+episodi a destra; in verticale impilati. Stagioni ed episodi con le
 * regole della TV ([deriveSeasons], coda ordinata), pulsante principale che
 * riprende l'episodio di "Continua a guardare" o il più recente iniziato;
 * ogni episodio mostra avanzamento e badge "visto".
 *
 * Tocco su un episodio = riproduzione (avviso temporaneo), pressione lunga =
 * pannello azioni (stesso della serie nel catalogo).
 */
@Composable
fun SeriesDetailScreen(
    target: DetailTarget.Series,
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
) {
    val serie = target.item
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()
    val continueEntries by viewModel.continueEntries.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val isFavorite = favorites.any { it.id == "series_${serie.seriesId}" }

    var info by remember(serie.seriesId) { mutableStateOf<SeriesInfoResponse?>(null) }
    var isLoading by remember(serie.seriesId) { mutableStateOf(true) }
    var hasError by remember(serie.seriesId) { mutableStateOf(false) }
    var retryKey by remember { mutableStateOf(0) }

    LaunchedEffect(serie.seriesId, retryKey) {
        isLoading = true
        hasError = false
        val loaded = viewModel.loadSeriesInfo(serie.seriesId)
        if (loaded != null) {
            info = loaded
        } else {
            hasError = true
        }
        isLoading = false
    }

    val episodesMap = info?.episodes.orEmpty()
    val seasonsShown = remember(info) { deriveSeasons(info?.seasons.orEmpty(), episodesMap) }

    // Episodio della ripresa: il puntato da "Continua a guardare" se c'è,
    // altrimenti il più recente iniziato (stesse regole della TV).
    val resumeEpisodeId = continueEpisodeIdForSeries(continueEntries, serie.seriesId)
        ?: mostRecentlyStartedEpisodeId(episodesMap, progress)
    val initialSeason = seasonNumberOf(episodesMap, resumeEpisodeId)
        ?: seasonsShown.firstOrNull()?.seasonNumber
    var selectedSeason by remember(info, initialSeason) { mutableStateOf(initialSeason) }

    DetailShell(
        title = serie.name,
        onBack = viewModel::closeDetail,
        modifier = modifier.testTag("series_detail"),
    ) {
        when {
            isLoading -> DetailInfoLoading()
            hasError -> EmptyState(
                title = "Informazioni non disponibili",
                description = "Controlla la connessione e riprova",
                actionLabel = "Riprova",
                onAction = { retryKey += 1 },
                modifier = Modifier.fillMaxSize().testTag("series_detail_error"),
            )
            else -> SeriesDetailLoaded(
                viewModel = viewModel,
                serie = serie,
                info = info,
                imageLoader = imageLoader,
                seasonsShown = seasonsShown,
                episodesMap = episodesMap,
                selectedSeason = selectedSeason,
                onSelectSeason = { selectedSeason = it },
                progress = progress,
                isFavorite = isFavorite,
                resumeEpisodeId = resumeEpisodeId,
            )
        }
    }
}

@Composable
private fun SeriesDetailLoaded(
    viewModel: CatalogViewModel,
    serie: SeriesItem,
    info: SeriesInfoResponse?,
    imageLoader: ImageLoader,
    seasonsShown: List<SeasonDisplay>,
    episodesMap: Map<String, List<Episode>>,
    selectedSeason: String?,
    onSelectSeason: (String) -> Unit,
    progress: Map<String, WatchProgress>,
    isFavorite: Boolean,
    resumeEpisodeId: String?,
) {
    val serieId = serie.seriesId
    val shownEpisodes = episodesMap[selectedSeason].orEmpty()
    val plot = info?.info?.plot?.takeIf { it.isNotBlank() }
    val meta = buildList {
        val year = serie.releaseYear()
        if (year.isNotBlank()) add(year)
        info?.info?.rating?.takeIf { it.isNotBlank() }?.let { add("★ $it") }
        info?.info?.genre?.takeIf { it.isNotBlank() }?.let { add(it) }
        val episodeCount = episodesMap.values.sumOf { it.size }
        if (episodeCount > 0) add("$episodeCount episodi")
    }
    val playEpisode: (Episode?) -> Unit = { episode ->
        viewModel.onPlayRequest(
            PlayTarget.SeriesEpisode(seriesId = serieId, episodeId = episode?.id.orEmpty()),
        )
    }

    val episodeList: @Composable (Modifier) -> Unit = { listModifier ->
        Column(modifier = listModifier, verticalArrangement = Arrangement.spacedBy(12.dp)) {
            if (seasonsShown.isNotEmpty()) {
                LazyRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    modifier = Modifier.fillMaxWidth().testTag("season_selector"),
                ) {
                    items(seasonsShown, key = { "season_${it.seasonNumber}" }) { season ->
                        val selected = season.seasonNumber == selectedSeason
                        Text(
                            text = season.name,
                            color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            fontSize = 14.sp,
                            fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier
                                .clip(RoundedCornerShape(10.dp))
                                .heightIn(min = 40.dp)
                                .background(
                                    if (selected) FvpColors.SerieActive.copy(alpha = 0.2f) else FvpColors.Surface,
                                )
                                .combinedClickable(
                                    onClick = { onSelectSeason(season.seasonNumber) },
                                    onClickLabel = "Mostra episodi di ${season.name}",
                                )
                                .padding(horizontal = 14.dp, vertical = 10.dp)
                                .testTag("season_tab_${season.seasonNumber}"),
                        )
                    }
                }
            }
            if (shownEpisodes.isEmpty()) {
                SecondaryText(text = "Nessun episodio in questa stagione")
            } else {
                LazyColumn(
                    verticalArrangement = Arrangement.spacedBy(6.dp),
                    modifier = Modifier
                        .fillMaxWidth()
                        .testTag("episode_list")
                        .then(listModifier),
                ) {
                    items(shownEpisodes, key = { "episode_${it.id}" }) { episode ->
                        EpisodeRow(
                            episode = episode,
                            progress = progress[ProgressKeys.episode(episode.id)],
                            isResume = episode.id == resumeEpisodeId,
                            onClick = { playEpisode(episode) },
                            onLongClick = {
                                viewModel.openActions(
                                    ActionTarget.Series(
                                        SeriesItem(
                                            seriesId = serieId,
                                            name = serie.name,
                                            cover = serie.cover,
                                            categoryId = serie.categoryId,
                                        ),
                                    ),
                                )
                            },
                        )
                    }
                }
            }
        }
    }

    DetailShellContent(
        title = serie.name,
        cover = serie.cover,
        imageLoader = imageLoader,
        meta = meta,
        plot = plot,
        isFavorite = isFavorite,
        onToggleFavorite = {
            viewModel.toggleFavorite(serie.favoriteItem())
        },
        resumeEpisodeId = resumeEpisodeId,
        onPlay = {
            val episode = resumeEpisodeId?.let { id ->
                episodesMap.values.flatten().firstOrNull { it.id == id }
            }
            playEpisode(episode)
        },
        episodeList = episodeList,
    )
}

/** Anno della serie dal formato del server (es. "2021-05-01" → "2021"). */
private fun SeriesItem.releaseYear(): String =
    releaseDate?.take(4)?.takeIf { it.all(Char::isDigit) }.orEmpty()

/** Voce preferito della serie, con la chiave `series_<id>` come sulla TV. */
private fun SeriesItem.favoriteItem(): FavoriteItem = FavoriteItem(
    id = "series_$seriesId",
    type = FavoriteItem.SERIES,
    title = name,
    poster = cover,
    categoryId = categoryId,
)

/** Contenuto condiviso tra i due orientamenti del dettaglio serie. */
@Composable
private fun DetailShellContent(
    title: String,
    cover: String?,
    imageLoader: ImageLoader,
    meta: List<String>,
    plot: String?,
    isFavorite: Boolean,
    onToggleFavorite: () -> Unit,
    resumeEpisodeId: String?,
    onPlay: () -> Unit,
    episodeList: @Composable (Modifier) -> Unit,
) {
    BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
        val landscape = maxWidth > maxHeight
        if (landscape) {
            Row(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 20.dp, vertical = 12.dp),
                horizontalArrangement = Arrangement.spacedBy(24.dp),
                verticalAlignment = Alignment.Top,
            ) {
                MediaPoster(
                    imageUrl = cover,
                    title = title,
                    imageLoader = imageLoader,
                    watched = false,
                    progress = null,
                    modifier = Modifier.width(220.dp),
                )
                Column(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxSize(),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    DetailTexts(
                        meta = meta,
                        plot = plot,
                        isFavorite = isFavorite,
                        onToggleFavorite = onToggleFavorite,
                        onPlay = onPlay,
                        playLabel = if (resumeEpisodeId != null) "Riprendi" else "Riproduci",
                    )
                    episodeList(Modifier.fillMaxWidth().weight(1f))
                }
            }
        } else {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 20.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                    MediaPoster(
                        imageUrl = cover,
                        title = title,
                        imageLoader = imageLoader,
                        watched = false,
                        progress = null,
                        modifier = Modifier.width(130.dp),
                    )
                    Column(modifier = Modifier.weight(1f)) {
                        DetailTexts(
                            meta = meta,
                            plot = plot,
                            isFavorite = isFavorite,
                            onToggleFavorite = onToggleFavorite,
                            onPlay = onPlay,
                            playLabel = if (resumeEpisodeId != null) "Riprendi" else "Riproduci",
                        )
                    }
                }
                episodeList(Modifier.fillMaxWidth().weight(1f))
            }
        }
    }
}

/** Riga di un episodio: numero, titolo, durata, avanzamento e badge "visto". */
@Composable
private fun EpisodeRow(
    episode: Episode,
    progress: WatchProgress?,
    isResume: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 48.dp)
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.Surface)
            .combinedClickable(
                onClick = onClick,
                onLongClick = onLongClick,
                onLongClickLabel = "Apri azioni",
            )
            .padding(horizontal = 10.dp, vertical = 6.dp)
            .testTag("episode_${episode.id}"),
    ) {
        Text(
            text = episode.episodeNum.trim().ifBlank { "?" },
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.width(28.dp),
            overflow = TextOverflow.Ellipsis,
            maxLines = 1,
        )
        Column(modifier = Modifier.padding(start = 8.dp).weight(1f)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = episode.title.ifBlank { "Episodio ${episode.episodeNum}" },
                    color = FvpColors.TextPrimary,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f),
                )
                if (isResume) {
                    Text(
                        text = "Riprendi",
                        color = FvpColors.SerieActive,
                        fontSize = 12.sp,
                        fontWeight = FontWeight.SemiBold,
                        maxLines = 1,
                        modifier = Modifier.testTag("episode_resume_badge"),
                    )
                }
            }
            episode.info?.duration?.takeIf { it.isNotBlank() }?.let {
                SecondaryText(text = it, maxLines = 1)
            }
            if (progress != null && progress.positionMillis > 0L) {
                WatchProgressLine(progress = progress)
            }
        }
        if (progress?.isWatched == true) {
            WatchSeenBadge()
        }
        Icon(
            imageVector = FvpIcons.Play,
            contentDescription = "Riproduci episodio ${episode.episodeNum}",
            tint = FvpColors.SerieActive,
            modifier = Modifier
                .padding(start = 6.dp)
                .size(20.dp),
        )
    }
}
