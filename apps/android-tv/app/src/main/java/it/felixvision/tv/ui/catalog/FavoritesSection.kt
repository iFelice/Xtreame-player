package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
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
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberListDetailFocusRestore
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException

@Composable
fun FavoritesSection(
    favorites: List<FavoriteItem>,
    scale: UiScale,
    onSelectFavorite: (FavoriteItem) -> Unit,
    onToggleFavorite: (FavoriteItem) -> Unit = {},
    catalogViewModel: CatalogViewModel? = null,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    modifier: Modifier = Modifier,
) {
    var detailFavorite by remember { mutableStateOf<FavoriteItem?>(null) }
    var detailVodInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailSeriesInfo by remember { mutableStateOf<SeriesInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableStateOf(0) }

    LaunchedEffect(detailFavorite?.id, retryKey) {
        val fav = detailFavorite
        if (fav == null || fav.type == "live" || catalogViewModel == null) {
            detailVodInfo = null
            detailSeriesInfo = null
            detailIsLoading = false
            detailError = null
            return@LaunchedEffect
        }
        detailIsLoading = true
        detailError = null
        detailVodInfo = null
        detailSeriesInfo = null
        try {
            if (fav.type == "vod") {
                val vodId = fav.id.removePrefix("vod_")
                val info = catalogViewModel.loadVodInfo(vodId)
                if (info == null) detailError = "Informazioni non disponibili" else detailVodInfo = info
            } else if (fav.type == "series") {
                val seriesId = fav.id.removePrefix("series_")
                val info = catalogViewModel.loadSeriesInfo(seriesId)
                if (info == null) detailError = "Informazioni non disponibili" else detailSeriesInfo = info
            }
        } catch (e: CancellationException) { throw e } catch (_: Exception) {
            detailError = "Informazioni non disponibili"
        } finally { detailIsLoading = false }
    }

    if (favorites.isEmpty()) {
        Column(modifier = modifier.padding(scale.dp(24f))) {
            Text(text = "Nessun preferito", color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold)
            Text(
                text = "Tieni premuto il tasto OK su un canale, un film o una serie per aggiungerlo ai preferiti. Puoi farlo anche dal dettaglio con il pulsante dedicato.",
                color = FvpColors.TextSecondary,
                modifier = Modifier.padding(top = scale.dp(8f)),
            )
        }
        return
    }
    val live = favorites.filter { it.type == "live" }
    val vod = favorites.filter { it.type == "vod" }
    val series = favorites.filter { it.type == "series" }
    val firstFocus = remember { FocusRequester() }

    val liveListState = rememberLazyListState()
    val vodListState = rememberLazyListState()
    val seriesListState = rememberLazyListState()

    val liveFocusMap = remember(live) { live.associate { it.id to FocusRequester() } }
    val vodFocusMap = remember(vod) { vod.associate { it.id to FocusRequester() } }
    val seriesFocusMap = remember(series) { series.associate { it.id to FocusRequester() } }

    val liveRestore = rememberListDetailFocusRestore(liveListState, { liveFocusMap }, firstFocus)
    val vodRestore = rememberListDetailFocusRestore(vodListState, { vodFocusMap }, firstFocus)
    val seriesRestore = rememberListDetailFocusRestore(seriesListState, { seriesFocusMap }, firstFocus)

    Column(
        modifier = modifier.padding(horizontal = scale.dp(16f), vertical = scale.dp(12f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(18f))
    ) {
        if (live.isNotEmpty()) {
            FavoriteRow(
                title = "Canali",
                items = live,
                scale = scale,
                onSelect = onSelectFavorite,
                onToggle = onToggleFavorite,
                firstFocus = firstFocus,
                contentFocusRequester = contentFocusRequester,
                onDetail = { fav ->
                    val idx = live.indexOfFirst { it.id == fav.id }
                    liveRestore.onOpen(fav.id, idx)
                    detailFavorite = fav
                },
                listState = liveListState,
                focusMap = liveFocusMap
            )
        }
        if (vod.isNotEmpty()) {
            FavoriteRow(
                title = "Film",
                items = vod,
                scale = scale,
                onSelect = { fav ->
                    val idx = vod.indexOfFirst { it.id == fav.id }
                    vodRestore.onOpen(fav.id, idx)
                    detailFavorite = fav
                },
                onToggle = onToggleFavorite,
                firstFocus = if (live.isEmpty()) firstFocus else remember { FocusRequester() },
                contentFocusRequester = contentFocusRequester,
                onDetail = { fav ->
                    val idx = vod.indexOfFirst { it.id == fav.id }
                    vodRestore.onOpen(fav.id, idx)
                    detailFavorite = fav
                },
                listState = vodListState,
                focusMap = vodFocusMap
            )
        }
        if (series.isNotEmpty()) {
            FavoriteRow(
                title = "Serie",
                items = series,
                scale = scale,
                onSelect = { fav ->
                    val idx = series.indexOfFirst { it.id == fav.id }
                    seriesRestore.onOpen(fav.id, idx)
                    detailFavorite = fav
                },
                onToggle = onToggleFavorite,
                firstFocus = if (live.isEmpty() && vod.isEmpty()) firstFocus else remember { FocusRequester() },
                contentFocusRequester = contentFocusRequester,
                onDetail = { fav ->
                    val idx = series.indexOfFirst { it.id == fav.id }
                    seriesRestore.onOpen(fav.id, idx)
                    detailFavorite = fav
                },
                listState = seriesListState,
                focusMap = seriesFocusMap
            )
        }
    }

    detailFavorite?.let { fav ->
        when (fav.type) {
            "live" -> {
                androidx.activity.compose.BackHandler {
                    detailFavorite = null
                    liveRestore.onClose()
                }
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(FvpColors.Background.copy(alpha = 0.8f))
                        .padding(scale.dp(32f))
                        .testTag("favorite_detail_root"),
                    contentAlignment = Alignment.Center
                ) {
                    Column(
                        modifier = Modifier
                            .clip(RoundedCornerShape(scale.dp(16f)))
                            .background(FvpColors.Surface)
                            .padding(scale.dp(20f))
                            .fillMaxWidth(0.8f)
                            .testTag("favorite_detail_content")
                    ) {
                        Text(text = fav.title, color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold)
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                            modifier = Modifier.padding(top = scale.dp(12f))
                        ) {
                            FvpSecondaryButton(
                                text = "Riproduci",
                                onClick = { onSelectFavorite(fav); detailFavorite = null; liveRestore.onClose() },
                                scale = scale,
                                modifier = Modifier.testTag("detail_play")
                            )
                            FvpSecondaryButton(
                                text = "★ Rimuovi dai Preferiti",
                                onClick = { onToggleFavorite(fav) },
                                scale = scale,
                                modifier = Modifier.testTag("detail_favorite")
                            )
                            FvpSecondaryButton(
                                text = "Chiudi",
                                onClick = { detailFavorite = null; liveRestore.onClose() },
                                scale = scale,
                                modifier = Modifier.testTag("detail_close")
                            )
                        }
                    }
                }
            }
            "vod" -> {
                val vodStream = VodStream(
                    streamId = fav.id.removePrefix("vod_"),
                    name = fav.title,
                    streamIcon = fav.poster,
                    categoryId = fav.categoryId
                )
                Box(modifier = Modifier.fillMaxSize().testTag("favorite_vod_detail_root")) {
                    FilmDetailOverlay(
                        film = vodStream,
                        info = detailVodInfo,
                        isLoading = detailIsLoading,
                        error = detailError,
                        scale = scale,
                        isFavorite = true,
                        contentFocusRequester = contentFocusRequester,
                        onDismiss = {
                            detailFavorite = null
                            vodRestore.onClose()
                        },
                        onPlay = { onSelectFavorite(fav) },
                        onToggleFavorite = { onToggleFavorite(fav) },
                        onRetry = { retryKey++ }
                    )
                }
            }
            "series" -> {
                val seriesItem = SeriesItem(
                    seriesId = fav.id.removePrefix("series_"),
                    name = fav.title,
                    cover = fav.poster,
                    categoryId = fav.categoryId
                )
                Box(modifier = Modifier.fillMaxSize().testTag("favorite_series_detail_root")) {
                    SeriesDetailOverlay(
                        serie = seriesItem,
                        info = detailSeriesInfo,
                        isLoading = detailIsLoading,
                        error = detailError,
                        scale = scale,
                        isFavorite = true,
                        contentFocusRequester = contentFocusRequester,
                        onDismiss = {
                            detailFavorite = null
                            seriesRestore.onClose()
                        },
                        onToggleFavorite = { onToggleFavorite(fav) },
                        onPlayEpisode = { onSelectFavorite(fav) },
                        onRetry = { retryKey++ }
                    )
                }
            }
        }
    }
}

@Composable
private fun FavoriteRow(
    title: String,
    items: List<FavoriteItem>,
    scale: UiScale,
    onSelect: (FavoriteItem) -> Unit,
    onToggle: (FavoriteItem) -> Unit,
    firstFocus: FocusRequester,
    contentFocusRequester: FocusRequester,
    onDetail: ((FavoriteItem) -> Unit)? = null,
    listState: androidx.compose.foundation.lazy.LazyListState,
    focusMap: Map<String, FocusRequester>
) {
    Column {
        Text(text = title, color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold, modifier = Modifier.padding(bottom = scale.dp(8f)))
        LazyRow(
            state = listState,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
            contentPadding = PaddingValues(end = scale.dp(16f)),
            modifier = Modifier.testTag("favorites_row_$title")
        ) {
            itemsIndexed(items, key = { _, f -> f.id }) { index, fav ->
                val itemFr = focusMap[fav.id] ?: FocusRequester()
                Card(
                    onClick = {
                        if (fav.type == "live") onSelect(fav) else onDetail?.invoke(fav) ?: onSelect(fav)
                    },
                    modifier = Modifier.width(scale.dp(140f)).testTag("favorite_${fav.id}")
                        .focusRequester(itemFr)
                        .then(if (index == 0 && title == "Canali") Modifier.focusRequester(firstFocus).focusRequester(contentFocusRequester) else if (index == 0) Modifier.focusRequester(firstFocus) else Modifier)
                        .fvpLongPress { onToggle(fav) },
                    scale = CardDefaults.scale(focusedScale = 1.04f),
                    border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                    colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                    shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                ) {
                    Column(modifier = Modifier.padding(scale.dp(4f))) {
                        Box(modifier = Modifier.width(scale.dp(140f)).aspectRatio(2f / 3f).clip(RoundedCornerShape(scale.dp(10f))).background(FvpColors.SurfaceElevated)) {
                            CatalogPosterImage(imageUrl = fav.poster, title = fav.title, scale = scale, modifier = Modifier.fillMaxWidth().aspectRatio(2f / 3f))
                            Box(
                                modifier = Modifier.align(Alignment.TopEnd).padding(scale.dp(6f)).size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("favorite_${fav.id}_fav_star"),
                                contentAlignment = Alignment.Center
                            ) { Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f)) }
                        }
                        Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(4f)), modifier = Modifier.padding(top = scale.dp(6f))) {
                            Text(text = fav.title, color = FvpColors.TextPrimary, maxLines = 1, overflow = TextOverflow.Ellipsis, modifier = Modifier.weight(1f))
                            if (fav.type == "live") {
                                Box(modifier = Modifier.size(scale.dp(18f)).clip(CircleShape).background(Color(0xCC1C1C1E)), contentAlignment = Alignment.Center) {
                                    Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(10f))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
