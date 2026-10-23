package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListScope
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.text.input.TextFieldState
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.search.CatalogSearch
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.FvpTextField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.WatchSeenBadge
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/** Attesa dopo l'ultima digitazione prima di cercare. */
private const val SEARCH_DEBOUNCE_MILLIS = 300L

/**
 * Sezione "Cerca": campo di testo in alto (tastiera di sistema del TV, con la
 * dettatura vocale quando il TV la offre) e risultati locali sul catalogo già
 * in memoria, in tre righe — Live, Film, Serie — nascoste se vuote.
 *
 * Nessuna richiesta al server per la ricerca: le regole sono in
 * [CatalogSearch]. OK su un canale avvia il player, su film o serie apre la
 * scheda e al ritorno il focus torna sul risultato; la pressione lunga
 * aggiunge o toglie dai preferiti come nelle altre sezioni.
 */
@Composable
fun SearchSection(
    queryState: TextFieldState,
    catalog: Catalog?,
    scale: UiScale,
    favorites: List<FavoriteItem> = emptyList(),
    progress: Map<String, WatchProgress> = emptyMap(),
    catalogViewModel: CatalogViewModel? = null,
    onPlayLive: (LiveStream) -> Unit = {},
    onPlayFilm: (VodStream) -> Unit = {},
    onPlayEpisode: (Episode, SeriesPlayback) -> Unit = { _, _ -> },
    onToggleFavorite: (FavoriteItem) -> Unit = {},
    onSetEpisodeWatched: (Episode, Boolean, Long) -> Unit = { _, _, _ -> },
    onToggleWatched: (VodStream, Boolean, Long) -> Unit = { _, _, _ -> },
    refocusTick: Int = 0,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    modifier: Modifier = Modifier,
) {
    val queryText = queryState.text.toString()
    var debouncedQuery by remember { mutableStateOf("") }
    var pendingResultKey by remember { mutableStateOf<String?>(null) }
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

    val scope = rememberCoroutineScope()
    val listState = rememberLazyListState()

    // 300 ms dopo l'ultima digitazione; sotto i 2 caratteri non si cerca.
    LaunchedEffect(queryText) {
        val trimmed = queryText.trim()
        if (trimmed.length < CatalogSearch.MIN_QUERY_LENGTH) {
            debouncedQuery = trimmed
            return@LaunchedEffect
        }
        delay(SEARCH_DEBOUNCE_MILLIS)
        debouncedQuery = trimmed
    }

    val results = remember(catalog, debouncedQuery) {
        CatalogSearch.search(catalog, debouncedQuery)
    }

    val resultKeys = remember(results) {
        results.live.map { "live_${it.streamId}" } +
            results.vod.map { "vod_${it.streamId}" } +
            results.series.map { "series_${it.seriesId}" }
    }
    val itemFocusRequesters = remember(resultKeys) {
        resultKeys.associateWith { FocusRequester() }
    }

    // All'ingresso nella sezione il focus è sul campo, così la tastiera del TV
    // si apre subito; la freccia giù porta ai risultati.
    LaunchedEffect(Unit) {
        delay(60L)
        runCatching { contentFocusRequester.requestFocus() }
    }

    fun focusFirstResult() {
        val first = resultKeys.firstOrNull() ?: return
        runCatching { itemFocusRequesters[first]?.requestFocus() }
    }

    fun restoreResultFocus() {
        val key = pendingResultKey ?: return
        scope.launch {
            withFrameNanos { }
            runCatching { itemFocusRequesters[key]?.requestFocus() }
            pendingResultKey = null
        }
    }

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
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            detailFilmError = "Informazioni non disponibili"
        } finally {
            detailFilmLoading = false
        }
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
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            detailSerieError = "Informazioni non disponibili"
        } finally {
            detailSerieLoading = false
        }
    }

    // Il margine del focus sta nel contentPadding delle righe: il contenitore
    // tiene solo i 4dp che completano i 16 di prima.
    Column(modifier = modifier.fillMaxSize().padding(horizontal = scale.dp(4f))) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .onPreviewKeyEvent { event ->
                    if (event.type == KeyEventType.KeyDown && event.key == Key.DirectionDown) {
                        focusFirstResult()
                        true
                    } else {
                        false
                    }
                },
        ) {
            FvpTextField(
                label = "Cerca nel catalogo",
                state = queryState,
                placeholder = "Canale, film o serie",
                scale = scale,
                focusRequester = contentFocusRequester,
                keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
                modifier = Modifier.fillMaxWidth().testTag("search_field"),
            )
        }

        Spacer(Modifier.height(scale.dp(12f)))

        if (debouncedQuery.trim().length < CatalogSearch.MIN_QUERY_LENGTH) {
            Text(
                text = "Digita almeno 2 lettere per cercare tra canali, film e serie.",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(15f),
                modifier = Modifier.padding(top = scale.dp(8f)).testTag("search_hint"),
            )
            return@Column
        }

        if (results.isEmpty) {
            Text(
                text = "Nessun risultato per «$debouncedQuery»",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(17f),
                fontWeight = FontWeight.Medium,
                modifier = Modifier.padding(top = scale.dp(8f)).testTag("search_no_results"),
            )
            return@Column
        }

        LazyColumn(
            state = listState,
            verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
            // Le righe hanno già il proprio margine orizzontale: qui serve solo
            // quello verticale del primo e dell'ultimo risultato.
            contentPadding = PaddingValues(vertical = scale.focusSafePadding),
            modifier = Modifier.weight(1f).fillMaxWidth().testTag("search_results"),
        ) {
            if (results.live.isNotEmpty()) {
                item(key = "row_live") {
                    SearchRow(
                        title = "Live",
                        count = results.live.size,
                        scale = scale,
                        rowTestTag = "search_live_row",
                    ) {
                        itemsIndexed(results.live, key = { _, channel -> "live_${channel.streamId}" }) { index, channel ->
                            LiveResultCard(
                                channel = channel,
                                scale = scale,
                                isFavorite = favorites.any { it.id == "live_${channel.streamId}" },
                                focusRequester = itemFocusRequesters["live_${channel.streamId}"],
                                onUpToField = { if (index == 0) runCatching { contentFocusRequester.requestFocus() } },
                                onClick = { onPlayLive(channel) },
                                onLongPress = {
                                    onToggleFavorite(
                                        FavoriteItem(
                                            id = "live_${channel.streamId}",
                                            type = "live",
                                            title = channel.name,
                                            poster = channel.streamIcon,
                                            categoryId = channel.categoryId,
                                        ),
                                    )
                                },
                            )
                        }
                    }
                }
            }
            if (results.vod.isNotEmpty()) {
                item(key = "row_vod") {
                    SearchRow(
                        title = "Film",
                        count = results.vod.size,
                        scale = scale,
                        rowTestTag = "search_vod_row",
                    ) {
                        itemsIndexed(results.vod, key = { _, film -> "vod_${film.streamId}" }) { index, film ->
                            val filmProgress = progress[ProgressKeys.movie(film.streamId)]
                            PosterResultCard(
                                title = film.name,
                                poster = film.streamIcon,
                                scale = scale,
                                isFavorite = favorites.any { it.id == "vod_${film.streamId}" },
                                progress = filmProgress,
                                progressKeyPrefix = "search_vod_${film.streamId}",
                                focusRequester = itemFocusRequesters["vod_${film.streamId}"],
                                onUpToField = { if (index == 0) runCatching { contentFocusRequester.requestFocus() } },
                                onClick = {
                                    pendingResultKey = "vod_${film.streamId}"
                                    detailFilm = film
                                },
                                onLongPress = {
                                    onToggleFavorite(
                                        FavoriteItem(
                                            id = "vod_${film.streamId}",
                                            type = "vod",
                                            title = film.name,
                                            poster = film.streamIcon,
                                            categoryId = film.categoryId,
                                        ),
                                    )
                                },
                                testTag = "search_vod_${film.streamId}",
                            )
                        }
                    }
                }
            }
            if (results.series.isNotEmpty()) {
                item(key = "row_series") {
                    SearchRow(
                        title = "Serie",
                        count = results.series.size,
                        scale = scale,
                        rowTestTag = "search_series_row",
                    ) {
                        itemsIndexed(results.series, key = { _, serie -> "series_${serie.seriesId}" }) { index, serie ->
                            PosterResultCard(
                                title = serie.name,
                                poster = serie.cover,
                                scale = scale,
                                isFavorite = favorites.any { it.id == "series_${serie.seriesId}" },
                                progress = null,
                                progressKeyPrefix = "search_series_${serie.seriesId}",
                                focusRequester = itemFocusRequesters["series_${serie.seriesId}"],
                                onUpToField = { if (index == 0) runCatching { contentFocusRequester.requestFocus() } },
                                onClick = {
                                    pendingResultKey = "series_${serie.seriesId}"
                                    detailSerie = serie
                                },
                                onLongPress = {
                                    onToggleFavorite(
                                        FavoriteItem(
                                            id = "series_${serie.seriesId}",
                                            type = "series",
                                            title = serie.name,
                                            poster = serie.cover,
                                            categoryId = serie.categoryId,
                                        ),
                                    )
                                },
                                testTag = "search_series_${serie.seriesId}",
                            )
                        }
                    }
                }
            }
        }
    }

    detailFilm?.let { film ->
        Box(modifier = Modifier.fillMaxSize().testTag("search_film_detail_root")) {
            FilmDetailOverlay(
                film = film,
                info = detailFilmInfo,
                isLoading = detailFilmLoading,
                error = detailFilmError,
                scale = scale,
                isFavorite = favorites.any { it.id == "vod_${film.streamId}" },
                contentFocusRequester = contentFocusRequester,
                onDismiss = {
                    detailFilm = null
                    restoreResultFocus()
                },
                onPlay = { onPlayFilm(film) },
                onToggleFavorite = {
                    onToggleFavorite(
                        FavoriteItem(
                            id = "vod_${film.streamId}",
                            type = "vod",
                            title = film.name,
                            poster = film.streamIcon,
                            categoryId = film.categoryId,
                        ),
                    )
                },
                onRetry = { detailFilmRetry++ },
                isWatched = progress[ProgressKeys.movie(film.streamId)]?.isWatched == true,
                onToggleWatched = { durationMillis ->
                    onToggleWatched(
                        film,
                        progress[ProgressKeys.movie(film.streamId)]?.isWatched != true,
                        durationMillis,
                    )
                },
                refocusTick = refocusTick,
            )
        }
    }

    detailSerie?.let { serie ->
        Box(modifier = Modifier.fillMaxSize().testTag("search_serie_detail_root")) {
            SeriesDetailOverlay(
                serie = serie,
                info = detailSerieInfo,
                isLoading = detailSerieLoading,
                error = detailSerieError,
                scale = scale,
                isFavorite = favorites.any { it.id == "series_${serie.seriesId}" },
                contentFocusRequester = contentFocusRequester,
                onDismiss = {
                    detailSerie = null
                    restoreResultFocus()
                },
                onToggleFavorite = {
                    onToggleFavorite(
                        FavoriteItem(
                            id = "series_${serie.seriesId}",
                            type = "series",
                            title = serie.name,
                            poster = serie.cover,
                            categoryId = serie.categoryId,
                        ),
                    )
                },
                onPlayEpisode = onPlayEpisode,
                onRetry = { detailSerieRetry++ },
                onSetEpisodeWatched = onSetEpisodeWatched,
                refocusTick = refocusTick,
                progress = progress,
            )
        }
    }
}

@Composable
private fun SearchRow(
    title: String,
    count: Int,
    scale: UiScale,
    rowTestTag: String,
    content: LazyListScope.() -> Unit,
) {
    // Il titolo della riga si allinea alla prima card, che sta dentro il
    // contentPadding della LazyRow.
    Column(modifier = Modifier.fillMaxWidth().padding(start = scale.focusSafePadding)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
            )
            Text(
                text = "$count risultati",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                modifier = Modifier.padding(start = scale.dp(8f)),
            )
        }
        LazyRow(
            horizontalArrangement = Arrangement.spacedBy(scale.dp(10f)),
            contentPadding = PaddingValues(scale.focusSafePadding),
            modifier = Modifier.fillMaxWidth().testTag(rowTestTag),
            content = content,
        )
    }
}

@Composable
private fun LiveResultCard(
    channel: LiveStream,
    scale: UiScale,
    isFavorite: Boolean,
    focusRequester: FocusRequester?,
    onUpToField: () -> Unit,
    onClick: () -> Unit,
    onLongPress: () -> Unit,
) {
    Card(
        onClick = onClick,
        modifier = Modifier
            .width(scale.dp(170f))
            .testTag("search_live_${channel.streamId}")
            .then(if (focusRequester != null) Modifier.focusRequester(focusRequester) else Modifier)
            .onPreviewKeyEvent { event ->
                if (event.type == KeyEventType.KeyDown && event.key == Key.DirectionUp) {
                    onUpToField()
                    true
                } else {
                    false
                }
            }
            .fvpLongPress { onLongPress() },
        scale = CardDefaults.scale(focusedScale = 1.04f),
        border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
        colors = CardDefaults.colors(containerColor = FvpColors.Surface),
        shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
    ) {
        Row(
            modifier = Modifier.padding(scale.dp(6f)),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            ChannelLogoImage(
                imageUrl = channel.streamIcon,
                name = channel.name,
                scale = scale,
                modifier = Modifier.size(scale.dp(40f)),
            )
            Text(
                text = channel.name,
                color = FvpColors.TextPrimary,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.weight(1f).padding(start = scale.dp(8f)),
            )
            if (isFavorite) {
                Box(
                    modifier = Modifier
                        .padding(start = scale.dp(4f))
                        .size(scale.dp(20f))
                        .clip(CircleShape)
                        .background(Color(0xCC1C1C1E)),
                    contentAlignment = Alignment.Center,
                ) {
                    Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(11f))
                }
            }
        }
    }
}

@Composable
private fun PosterResultCard(
    title: String,
    poster: String?,
    scale: UiScale,
    isFavorite: Boolean,
    progress: WatchProgress?,
    progressKeyPrefix: String,
    focusRequester: FocusRequester?,
    onUpToField: () -> Unit,
    onClick: () -> Unit,
    onLongPress: () -> Unit,
    testTag: String,
) {
    Card(
        onClick = onClick,
        modifier = Modifier
            .width(scale.dp(120f))
            .testTag(testTag)
            .then(if (focusRequester != null) Modifier.focusRequester(focusRequester) else Modifier)
            .onPreviewKeyEvent { event ->
                if (event.type == KeyEventType.KeyDown && event.key == Key.DirectionUp) {
                    onUpToField()
                    true
                } else {
                    false
                }
            }
            .fvpLongPress { onLongPress() },
        scale = CardDefaults.scale(focusedScale = 1.04f),
        border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
        colors = CardDefaults.colors(containerColor = FvpColors.Surface),
        shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
    ) {
        Column(modifier = Modifier.padding(scale.dp(4f))) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(2f / 3f)
                    .clip(RoundedCornerShape(scale.dp(10f)))
                    .background(FvpColors.SurfaceElevated),
            ) {
                CatalogPosterImage(
                    imageUrl = poster,
                    title = title,
                    scale = scale,
                    modifier = Modifier.fillMaxSize(),
                )
                WatchProgressLine(
                    progress = progress,
                    scale = scale,
                    modifier = Modifier.align(Alignment.BottomCenter),
                )
                if (progress?.isWatched == true) {
                    WatchSeenBadge(
                        scale = scale,
                        modifier = Modifier
                            .align(Alignment.TopStart)
                            .padding(scale.dp(6f))
                            .testTag("${progressKeyPrefix}_seen"),
                    )
                }
                if (isFavorite) {
                    Box(
                        modifier = Modifier
                            .align(Alignment.TopEnd)
                            .padding(scale.dp(6f))
                            .size(scale.dp(22f))
                            .clip(CircleShape)
                            .background(Color(0xCC1C1C1E))
                            .testTag("${progressKeyPrefix}_fav_star"),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
                    }
                }
            }
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(top = scale.dp(6f)),
            )
        }
    }
}
