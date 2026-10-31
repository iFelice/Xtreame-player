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
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
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
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.CollapsingCategoryColumn
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.PositionIndicator
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberGridDetailFocusRestore
import it.felixvision.tv.ui.components.gridPosition
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay

@Composable
fun SerieSection(
    categories: List<Category>,
    series: List<SeriesItem>,
    scale: UiScale,
    onSelectSerie: (SeriesItem) -> Unit = {},
    onLongPressSerie: (SeriesItem) -> Unit = {},
    onPlaySerie: (SeriesItem) -> Unit = {},
    onPlayEpisode: (Episode, SeriesPlayback) -> Unit = { _, _ -> },
    onSetEpisodeWatched: (Episode, Boolean, Long) -> Unit = { _, _, _ -> },
    favorites: List<FavoriteItem> = emptyList(),
    catalogViewModel: CatalogViewModel? = null,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    progress: Map<String, WatchProgress> = emptyMap(),
    refocusTick: Int = 0,
    focusEpisodeId: String? = null,
    modifier: Modifier = Modifier,
    recentSeries: List<SeriesItem> = emptyList(),
) {
    val displayCategories = remember(categories) { withNovitaCategory(categories) }
    var debouncedCategoryId by remember { mutableStateOf(NOVITA_CATEGORY_ID) }
    var focusedCategoryId by remember { mutableStateOf(NOVITA_CATEGORY_ID) }
    var detailSerie by remember { mutableStateOf<SeriesItem?>(null) }
    var detailInfo by remember { mutableStateOf<SeriesInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableStateOf(0) }
    var categoryExpanded by remember { mutableStateOf(true) }

    LaunchedEffect(focusedCategoryId) {
        delay(300L)
        debouncedCategoryId = focusedCategoryId
    }

    LaunchedEffect(detailSerie?.seriesId, retryKey) {
        val serie = detailSerie
        if (serie == null) {
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
            val info = catalogViewModel.loadSeriesInfo(serie.seriesId)
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
    val categoryFocusRequesters = remember(displayCategories) {
        displayCategories.associate { it.categoryId to FocusRequester() }
    }
    val gridFirstFocus = remember { FocusRequester() }
    val columns = 5

    val filtered = remember(series, recentSeries, debouncedCategoryId) {
        seriesForCategory(debouncedCategoryId, series, recentSeries)
    }
    // Se la griglia è vuota, il telecomando deve poter entrare nelle categorie
    // e scegliere un'altra voce, invece di cercare una card che non esiste.
    val columnFocusRequesters = remember(categoryFocusRequesters, filtered.isEmpty(), focusedCategoryId, contentFocusRequester) {
        if (filtered.isEmpty()) categoryFocusRequesters + (focusedCategoryId to contentFocusRequester)
        else categoryFocusRequesters
    }
    LaunchedEffect(filtered.isEmpty()) {
        if (filtered.isEmpty()) categoryExpanded = true
    }
    // Le voci compattate non sono focusable: prima riapri la colonna, poi
    // richiedi il focus alla voce attiva dopo la sua ricomposizione.
    var pendingCategoryFocus by remember { mutableStateOf<String?>(null) }
    LaunchedEffect(pendingCategoryFocus, displayCategories, columnFocusRequesters) {
        val categoryId = pendingCategoryFocus ?: return@LaunchedEffect
        val index = displayCategories.indexOfFirst { it.categoryId == categoryId }
        if (index >= 0) {
            categoryListState.scrollToItem(index)
            withFrameNanos { }
            columnFocusRequesters[categoryId]?.requestFocus()
        }
        pendingCategoryFocus = null
    }
    val itemFocusRequesters = remember(filtered) {
        filtered.associate { it.seriesId to FocusRequester() }
    }
    // Indice dell'elemento con il focus, per il contatore "N / Totale".
    var focusedItemIndex by remember(filtered) { mutableStateOf<Int?>(null) }
    val restoreHelper = rememberGridDetailFocusRestore(
        gridState = gridState,
        focusRequesters = { itemFocusRequesters },
        fallback = contentFocusRequester
    )

    // Il margine sicuro del focus sta nel contentPadding della griglia: la Row
    // resta senza padding per non sommare due volte la stessa quantità.
    // L'indicatore di posizione (contatore e barra) sta sopra, sul bordo destro.
    Box(modifier = modifier.fillMaxSize()) {
    Row(modifier = Modifier.fillMaxSize(), horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
        CollapsingCategoryColumn(
            categories = displayCategories,
            debouncedCategoryId = debouncedCategoryId,
            scale = scale,
            expanded = categoryExpanded,
            onExpandedChange = { categoryExpanded = it },
            focusedCategoryId = focusedCategoryId,
            onFocusedCategoryId = { focusedCategoryId = it },
            listState = categoryListState,
            focusRequesters = columnFocusRequesters,
            testTagPrefix = "serie",
        )

        Box(modifier = Modifier.weight(1f).fillMaxHeight()) {
            if (filtered.isEmpty()) {
                EmptyState(title = "Nessuna serie", description = "Seleziona una categoria per vedere le serie.", scale = scale, modifier = Modifier.fillMaxSize())
            } else {
                LazyVerticalGrid(
                    state = gridState,
                    columns = GridCells.Fixed(columns),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    // Ingrandimento e cornice del focus restano dentro la griglia.
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier.fillMaxSize().testTag("serie_grid_5"),
                ) {
                    itemsIndexed(filtered, key = { _, s -> s.seriesId }) { index, serie ->
                        val isLeftEdge = index % columns == 0
                        val isFav = favorites.any { it.id == "series_${serie.seriesId}" }
                        val itemFr = remember(serie.seriesId, itemFocusRequesters) { itemFocusRequesters[serie.seriesId] ?: FocusRequester() }
                        var focused by remember(serie.seriesId) { mutableStateOf(false) }
                        Card(
                            onClick = {
                                restoreHelper.onOpen(serie.seriesId, index)
                                detailSerie = serie
                            },
                            modifier = Modifier.fillMaxWidth().testTag("serie_${serie.seriesId}")
                                .focusRequester(itemFr)
                                .then(if (index == 0) Modifier.focusRequester(gridFirstFocus).focusRequester(contentFocusRequester) else Modifier)
                                .onFocusChanged { focusState ->
                                    focused = focusState.isFocused
                                    if (focusState.isFocused) {
                                        categoryExpanded = false
                                        focusedItemIndex = index
                                    }
                                }
                                .onPreviewKeyEvent { event ->
                                    if (event.key == Key.DirectionLeft && isLeftEdge) {
                                        categoryExpanded = true
                                        pendingCategoryFocus = debouncedCategoryId
                                        true
                                    } else false
                                }
                                .fvpLongPress { onLongPressSerie(serie) },
                            scale = CardDefaults.scale(focusedScale = 1.04f),
                            border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                            colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                            shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        ) {
                            Column(modifier = Modifier.padding(scale.dp(4f))) {
                                Box(modifier = Modifier.fillMaxWidth().aspectRatio(2f / 3f).clip(RoundedCornerShape(scale.dp(10f))).background(FvpColors.SurfaceElevated)) {
                                    CatalogPosterImage(imageUrl = serie.cover, title = serie.name, scale = scale, modifier = Modifier.fillMaxSize())
                                    if (isFav) {
                                        Box(
                                            modifier = Modifier.align(Alignment.TopEnd).padding(scale.dp(6f)).size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("serie_${serie.seriesId}_fav_star"),
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
                                        }
                                    }
                                }
                                FocusMarqueeText(
                                    text = serie.name,
                                    focused = focused,
                                    modifier = Modifier.padding(top = scale.dp(6f)),
                                )
                                serie.releaseDate?.let { d ->
                                    val y = d.take(4).takeIf { it.all(Char::isDigit) }
                                    y?.let { Text(text = it, color = FvpColors.TextSecondary) }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

        // Contatore "N / Totale" e barra di scorrimento della griglia.
        PositionIndicator(
            position = gridPosition(
                gridState = gridState,
                focusedIndex = focusedItemIndex,
                totalItems = filtered.size,
            ),
            scale = scale,
        )
    }

    detailSerie?.let { serie ->
        val isFav = favorites.any { it.id == "series_${serie.seriesId}" }
        SeriesDetailOverlay(
            serie = serie,
            info = detailInfo,
            isLoading = detailIsLoading,
            error = detailError,
            scale = scale,
            isFavorite = isFav,
            contentFocusRequester = contentFocusRequester,
            onDismiss = {
                detailSerie = null
                restoreHelper.onClose()
            },
            onToggleFavorite = { onLongPressSerie(serie) },
            onPlayEpisode = onPlayEpisode,
            onRetry = { retryKey++ },
            onSetEpisodeWatched = onSetEpisodeWatched,
            refocusTick = refocusTick,
            focusEpisodeId = focusEpisodeId,
            progress = progress,
        )
    }
}
