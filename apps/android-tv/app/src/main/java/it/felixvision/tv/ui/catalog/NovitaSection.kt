package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberListDetailFocusRestore
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException

@Composable
fun NovitaSection(
    recentFilms: List<VodStream>,
    recentSeries: List<SeriesItem>,
    scale: UiScale,
    onSelectFilm: (VodStream) -> Unit = {},
    onSelectSeries: (SeriesItem) -> Unit = {},
    onLongPressFilm: (VodStream) -> Unit = {},
    onLongPressSeries: (SeriesItem) -> Unit = {},
    onPlayFilm: (VodStream) -> Unit = {},
    onPlaySerie: (SeriesItem) -> Unit = {},
    onPlayEpisode: (it.felixvision.tv.data.catalog.Episode) -> Unit = {},
    favorites: List<FavoriteItem> = emptyList(),
    catalogViewModel: CatalogViewModel? = null,
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
) {
    val filmsFirstFocus = remember { FocusRequester() }
    var detailFilm by remember { mutableStateOf<VodStream?>(null) }
    var detailFilmInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailFilmLoading by remember { mutableStateOf(false) }
    var detailFilmError by remember { mutableStateOf<String?>(null) }
    var detailFilmRetry by remember { mutableStateOf(0) }

    var detailSerie by remember { mutableStateOf<SeriesItem?>(null) }
    var detailSerieInfo by remember { mutableStateOf<SeriesInfoResponse?>(null) }
    var detailSerieLoading by remember { mutableStateOf(false) }
    var detailSerieError by remember { mutableStateOf<String?>(null) }
    var detailSerieRetry by remember { mutableStateOf(0) }

    LaunchedEffect(detailFilm?.streamId, detailFilmRetry) {
        val film = detailFilm
        if (film == null) {
            detailFilmInfo = null
            detailFilmError = null
            detailFilmLoading = false
            return@LaunchedEffect
        }
        if (catalogViewModel == null) {
            detailFilmInfo = null
            detailFilmLoading = false
            detailFilmError = null
            return@LaunchedEffect
        }
        detailFilmLoading = true
        detailFilmError = null
        detailFilmInfo = null
        try {
            val info = catalogViewModel.loadVodInfo(film.streamId)
            if (info == null) detailFilmError = "Informazioni non disponibili" else detailFilmInfo = info
        } catch (e: CancellationException) { throw e } catch (_: Exception) {
            detailFilmError = "Informazioni non disponibili"
        } finally { detailFilmLoading = false }
    }

    LaunchedEffect(detailSerie?.seriesId, detailSerieRetry) {
        val serie = detailSerie
        if (serie == null) {
            detailSerieInfo = null
            detailSerieError = null
            detailSerieLoading = false
            return@LaunchedEffect
        }
        if (catalogViewModel == null) {
            detailSerieInfo = null
            detailSerieLoading = false
            detailSerieError = null
            return@LaunchedEffect
        }
        detailSerieLoading = true
        detailSerieError = null
        detailSerieInfo = null
        try {
            val info = catalogViewModel.loadSeriesInfo(serie.seriesId)
            if (info == null) detailSerieError = "Informazioni non disponibili" else detailSerieInfo = info
        } catch (e: CancellationException) { throw e } catch (_: Exception) {
            detailSerieError = "Informazioni non disponibili"
        } finally { detailSerieLoading = false }
    }

    val filmsListState = rememberLazyListState()
    val seriesListState = rememberLazyListState()

    val filmItemFocusRequesters = remember(recentFilms) {
        recentFilms.associate { it.streamId to FocusRequester() }
    }
    val serieItemFocusRequesters = remember(recentSeries) {
        recentSeries.associate { it.seriesId to FocusRequester() }
    }
    val filmRestoreHelper = rememberListDetailFocusRestore(
        listState = filmsListState,
        focusRequesters = { filmItemFocusRequesters },
        fallback = contentFocusRequester
    )
    val serieRestoreHelper = rememberListDetailFocusRestore(
        listState = seriesListState,
        focusRequesters = { serieItemFocusRequesters },
        fallback = contentFocusRequester
    )

    Column(
        modifier = modifier.padding(horizontal = scale.dp(16f), vertical = scale.dp(12f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(18f))
    ) {
        Column {
            Text(
                text = "Ultimi film",
                color = FvpColors.TextPrimary,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = scale.dp(8f))
            )
            if (recentFilms.isEmpty()) {
                Text(text = "Nessun film disponibile", color = FvpColors.TextSecondary)
            } else {
                LazyRow(
                    state = filmsListState,
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    contentPadding = PaddingValues(end = scale.dp(16f)),
                    modifier = Modifier.fillMaxWidth().testTag("novita_films_row"),
                ) {
                    itemsIndexed(recentFilms, key = { _, f -> f.streamId }) { index, film ->
                        val isFav = favorites.any { it.id == "vod_${film.streamId}" }
                        val itemFr = remember(film.streamId, filmItemFocusRequesters) { filmItemFocusRequesters[film.streamId] ?: FocusRequester() }
                        Card(
                            onClick = {
                                filmRestoreHelper.onOpen(film.streamId, index)
                                detailFilm = film
                            },
                            modifier = Modifier
                                .width(scale.dp(140f))
                                .testTag("novita_film_${film.streamId}")
                                .focusRequester(itemFr)
                                .then(if (index == 0) Modifier.focusRequester(filmsFirstFocus).focusRequester(contentFocusRequester) else Modifier)
                                .fvpLongPress { onLongPressFilm(film) },
                            scale = CardDefaults.scale(focusedScale = 1.04f),
                            border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                            colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                            shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        ) {
                            Column(modifier = Modifier.padding(scale.dp(4f))) {
                                Box(
                                    modifier = Modifier
                                        .width(scale.dp(140f))
                                        .height(scale.dp(200f))
                                        .clip(RoundedCornerShape(scale.dp(10f)))
                                ) {
                                    CatalogPosterImage(imageUrl = film.streamIcon, title = film.name, scale = scale, modifier = Modifier.fillMaxSize())
                                    if (isFav) {
                                        Box(
                                            modifier = Modifier.align(Alignment.TopEnd).padding(scale.dp(6f)).size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("novita_film_${film.streamId}_fav_star"),
                                            contentAlignment = Alignment.Center
                                        ) { Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f)) }
                                    }
                                }
                                Text(
                                    text = film.name,
                                    color = FvpColors.TextPrimary,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                    modifier = Modifier.padding(top = scale.dp(6f)).width(scale.dp(140f))
                                )
                                film.year?.let { year -> Text(text = year, color = FvpColors.TextSecondary) }
                            }
                        }
                    }
                }
            }
        }
        Column {
            Text(
                text = "Ultime serie",
                color = FvpColors.TextPrimary,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = scale.dp(8f))
            )
            if (recentSeries.isEmpty()) {
                Text(text = "Nessuna serie disponibile", color = FvpColors.TextSecondary)
            } else {
                LazyRow(
                    state = seriesListState,
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    contentPadding = PaddingValues(end = scale.dp(16f)),
                    modifier = Modifier.fillMaxWidth().testTag("novita_series_row"),
                ) {
                    itemsIndexed(recentSeries, key = { _, s -> s.seriesId }) { index, serie ->
                        val isFav = favorites.any { it.id == "series_${serie.seriesId}" }
                        val itemFr = remember(serie.seriesId, serieItemFocusRequesters) { serieItemFocusRequesters[serie.seriesId] ?: FocusRequester() }
                        Card(
                            onClick = {
                                serieRestoreHelper.onOpen(serie.seriesId, index)
                                detailSerie = serie
                            },
                            modifier = Modifier.width(scale.dp(140f)).testTag("novita_serie_${serie.seriesId}")
                                .focusRequester(itemFr)
                                .fvpLongPress { onLongPressSeries(serie) },
                            scale = CardDefaults.scale(focusedScale = 1.04f),
                            border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                            colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                            shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        ) {
                            Column(modifier = Modifier.padding(scale.dp(4f))) {
                                Box(
                                    modifier = Modifier
                                        .width(scale.dp(140f))
                                        .height(scale.dp(200f))
                                        .clip(RoundedCornerShape(scale.dp(10f)))
                                ) {
                                    CatalogPosterImage(imageUrl = serie.cover, title = serie.name, scale = scale, modifier = Modifier.fillMaxSize())
                                    if (isFav) {
                                        Box(
                                            modifier = Modifier.align(Alignment.TopEnd).padding(scale.dp(6f)).size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("novita_serie_${serie.seriesId}_fav_star"),
                                            contentAlignment = Alignment.Center
                                        ) { Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f)) }
                                    }
                                }
                                Text(
                                    text = serie.name,
                                    color = FvpColors.TextPrimary,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                    modifier = Modifier.padding(top = scale.dp(6f)).width(scale.dp(140f))
                                )
                                serie.releaseDate?.take(4)?.takeIf { it.all(Char::isDigit) }?.let { y ->
                                    Text(text = y, color = FvpColors.TextSecondary)
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    detailFilm?.let { film ->
        val isFav = favorites.any { it.id == "vod_${film.streamId}" }
        Box(modifier = Modifier.fillMaxSize().testTag("novita_film_detail_root")) {
            FilmDetailOverlay(
                film = film,
                info = detailFilmInfo,
                isLoading = detailFilmLoading,
                error = detailFilmError,
                scale = scale,
                isFavorite = isFav,
                contentFocusRequester = contentFocusRequester,
                onDismiss = {
                    detailFilm = null
                    filmRestoreHelper.onClose()
                },
                onPlay = { onPlayFilm(film) },
                onToggleFavorite = { onLongPressFilm(film) },
                onRetry = { detailFilmRetry++ }
            )
        }
    }

    detailSerie?.let { serie ->
        val isFav = favorites.any { it.id == "series_${serie.seriesId}" }
        Box(modifier = Modifier.fillMaxSize().testTag("novita_serie_detail_root")) {
            SeriesDetailOverlay(
                serie = serie,
                info = detailSerieInfo,
                isLoading = detailSerieLoading,
                error = detailSerieError,
                scale = scale,
                isFavorite = isFav,
                contentFocusRequester = contentFocusRequester,
                onDismiss = {
                    detailSerie = null
                    serieRestoreHelper.onClose()
                },
                onToggleFavorite = { onLongPressSeries(serie) },
                onPlayEpisode = onPlayEpisode,
                onRetry = { detailSerieRetry++ }
            )
        }
    }
}
