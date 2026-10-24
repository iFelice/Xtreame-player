package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.itemsIndexed
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
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
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.CollapsingCategoryColumn
import it.felixvision.tv.ui.components.ContentPanel
import it.felixvision.tv.ui.components.DetailFocusRestoreHelper
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.WatchSeenBadge
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberGridDetailFocusRestore
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay

@Composable
fun FilmSection(
    categories: List<Category>,
    streams: List<VodStream>,
    scale: UiScale,
    onSelectFilm: (VodStream) -> Unit = {},
    onLongPressFilm: (VodStream) -> Unit = {},
    onPlayFilm: (VodStream) -> Unit = {},
    favorites: List<FavoriteItem> = emptyList(),
    catalogViewModel: CatalogViewModel? = null,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    progress: Map<String, WatchProgress> = emptyMap(),
    onToggleWatched: (VodStream, Boolean, Long) -> Unit = { _, _, _ -> },
    refocusTick: Int = 0,
    modifier: Modifier = Modifier,
) {
    var selectedCategoryId by remember { mutableStateOf(categories.firstOrNull()?.categoryId) }
    var debouncedCategoryId by remember { mutableStateOf(selectedCategoryId) }
    var focusedCategoryId by remember { mutableStateOf(selectedCategoryId) }
    var detailFilm by remember { mutableStateOf<VodStream?>(null) }
    var detailInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableStateOf(0) }
    var categoryExpanded by remember { mutableStateOf(true) }

    LaunchedEffect(focusedCategoryId) {
        delay(300L)
        debouncedCategoryId = focusedCategoryId
        selectedCategoryId = focusedCategoryId
    }

    LaunchedEffect(detailFilm?.streamId, retryKey) {
        val film = detailFilm
        if (film == null) {
            detailInfo = null
            detailError = null
            detailIsLoading = false
            return@LaunchedEffect
        }
        if (catalogViewModel == null) {
            detailInfo = null
            detailIsLoading = false
            detailError = null
            return@LaunchedEffect
        }
        detailIsLoading = true
        detailError = null
        detailInfo = null
        try {
            val info = catalogViewModel.loadVodInfo(film.streamId)
            if (info == null) {
                detailError = "Informazioni non disponibili"
            } else {
                detailInfo = info
            }
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            detailError = "Informazioni non disponibili"
        } finally {
            detailIsLoading = false
        }
    }

    val categoryListState = rememberLazyListState()
    val gridState = rememberLazyGridState()
    val categoryFocusRequesters = remember(categories) {
        categories.associate { it.categoryId to FocusRequester() }
    }
    val gridFirstFocus = remember { FocusRequester() }

    val columns = 5

    val filtered = remember(streams, debouncedCategoryId) {
        if (debouncedCategoryId == null) emptyList() else streams.filter { it.categoryId == debouncedCategoryId }
    }
    val itemFocusRequesters = remember(filtered) {
        filtered.associate { it.streamId to FocusRequester() }
    }
    val restoreHelper = rememberGridDetailFocusRestore(
        gridState = gridState,
        focusRequesters = { itemFocusRequesters },
        fallback = contentFocusRequester
    )

    // Il margine sicuro del focus sta nel contentPadding della griglia: la Row
    // resta senza padding per non sommare due volte la stessa quantità.
    Row(modifier = modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
        if (categories.isEmpty()) {
            EmptyState(title = "Nessuna categoria", description = "Il server non ha restituito categorie.", scale = scale, modifier = Modifier.weight(0.3f))
        } else {
            CollapsingCategoryColumn(
                categories = categories,
                debouncedCategoryId = debouncedCategoryId,
                scale = scale,
                expanded = categoryExpanded,
                onExpandedChange = { categoryExpanded = it },
                focusedCategoryId = focusedCategoryId,
                onFocusedCategoryId = { focusedCategoryId = it },
                listState = categoryListState,
                focusRequesters = categoryFocusRequesters,
                testTagPrefix = "film"
            )
        }

        ContentPanel(scale = scale, modifier = Modifier.weight(1f).fillMaxHeight()) {
            if (filtered.isEmpty()) {
                EmptyState(title = "Nessun film", description = "Seleziona una categoria per vedere i film.", scale = scale, modifier = Modifier.fillMaxSize())
            } else {
                LazyVerticalGrid(
                    state = gridState,
                    columns = GridCells.Fixed(columns),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    // Ingrandimento e cornice del focus restano dentro la griglia.
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier.fillMaxSize().testTag("film_grid_5"),
                ) {
                    itemsIndexed(filtered, key = { _, f -> f.streamId }) { index, film ->
                        val isLeftEdge = index % columns == 0
                        val isFav = favorites.any { it.id == "vod_${film.streamId}" }
                        val filmProgress = progress[ProgressKeys.movie(film.streamId)]
                        val itemFr = remember(film.streamId, itemFocusRequesters) { itemFocusRequesters[film.streamId] ?: FocusRequester() }
                        var focused by remember(film.streamId) { mutableStateOf(false) }
                        Card(
                            onClick = {
                                restoreHelper.onOpen(film.streamId, index)
                                detailFilm = film
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .testTag("film_${film.streamId}")
                                .focusRequester(itemFr)
                                .then(if (index == 0) Modifier.focusRequester(gridFirstFocus).focusRequester(contentFocusRequester) else Modifier)
                                .onFocusChanged { focusState ->
                                    focused = focusState.isFocused
                                    if (focusState.isFocused) categoryExpanded = false
                                }
                                .onPreviewKeyEvent { event ->
                                    if (event.key == Key.DirectionLeft && isLeftEdge) {
                                        val active = debouncedCategoryId ?: categories.firstOrNull()?.categoryId
                                        active?.let { categoryFocusRequesters[it]?.requestFocus() }
                                        categoryExpanded = true
                                        true
                                    } else false
                                }
                                .fvpLongPress { onLongPressFilm(film) },
                            scale = CardDefaults.scale(focusedScale = 1.04f),
                            border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                            colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                            shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        ) {
                            Column(modifier = Modifier.padding(scale.dp(4f))) {
                                Box(
                                    modifier = Modifier.fillMaxWidth().aspectRatio(2f / 3f).clip(RoundedCornerShape(scale.dp(10f))).background(FvpColors.SurfaceElevated)
                                ) {
                                    CatalogPosterImage(imageUrl = film.streamIcon, title = film.name, scale = scale, modifier = Modifier.fillMaxSize())
                                    WatchProgressLine(
                                        progress = filmProgress,
                                        scale = scale,
                                        modifier = Modifier.align(Alignment.BottomCenter),
                                    )
                                    if (filmProgress?.isWatched == true) {
                                        WatchSeenBadge(
                                            scale = scale,
                                            modifier = Modifier
                                                .align(Alignment.TopStart)
                                                .padding(scale.dp(6f))
                                                .testTag("film_${film.streamId}_seen"),
                                        )
                                    }
                                    if (isFav) {
                                        Box(
                                            modifier = Modifier.align(Alignment.TopEnd).padding(scale.dp(6f)).size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("film_${film.streamId}_fav_star"),
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
                                        }
                                    }
                                }
                                FocusMarqueeText(
                                    text = film.name,
                                    focused = focused,
                                    modifier = Modifier.padding(top = scale.dp(6f)),
                                )
                                film.year?.let { Text(text = it, color = FvpColors.TextSecondary) }
                            }
                        }
                    }
                }
            }
        }
    }

    detailFilm?.let { film ->
        val isFav = favorites.any { it.id == "vod_${film.streamId}" }
        FilmDetailOverlay(
            film = film,
            info = detailInfo,
            isLoading = detailIsLoading,
            error = detailError,
            scale = scale,
            isFavorite = isFav,
            contentFocusRequester = contentFocusRequester,
            onDismiss = {
                detailFilm = null
                restoreHelper.onClose()
            },
            onPlay = { onPlayFilm(film) },
            onToggleFavorite = { onLongPressFilm(film) },
            onRetry = { retryKey++ },
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
