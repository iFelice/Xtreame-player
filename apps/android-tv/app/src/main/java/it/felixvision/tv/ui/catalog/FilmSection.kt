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
import androidx.compose.foundation.lazy.grid.LazyGridState
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
import androidx.compose.runtime.rememberUpdatedState
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
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.CollapsingCategoryColumn
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.PositionIndicator
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.WatchSeenBadge
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberGridDetailFocusRestore
import it.felixvision.tv.ui.components.gridPosition
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay

/**
 * Tentativi (un fotogramma ciascuno) per dare il focus alla prima copertina
 * della categoria confermata con OK: la griglia deve prima ricomporsi con la
 * nuova lista. Circa 10 fotogrammi, ~170 ms a 60 Hz.
 */
private const val FIRST_ITEM_FOCUS_ATTEMPTS = 10

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
    recentStreams: List<VodStream> = emptyList(),
    /** Stato della griglia: i test lo passano dall'esterno per pilotare lo scorrimento. */
    gridState: LazyGridState = rememberLazyGridState(),
) {
    val displayCategories = remember(categories) { withNovitaCategory(categories) }
    var debouncedCategoryId by remember { mutableStateOf(NOVITA_CATEGORY_ID) }
    var focusedCategoryId by remember { mutableStateOf(NOVITA_CATEGORY_ID) }
    var detailFilm by remember { mutableStateOf<VodStream?>(null) }
    var detailInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableStateOf(0) }
    var categoryExpanded by remember { mutableStateOf(true) }

    LaunchedEffect(focusedCategoryId) {
        delay(300L)
        debouncedCategoryId = focusedCategoryId
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
    // Il cambio categoria deve ripartire dalla cima: l'ultimo valore applicato
    // alla griglia serve a distinguerlo dalla prima composizione.
    var lastGridCategoryId by remember { mutableStateOf(debouncedCategoryId) }
    val categoryFocusRequesters = remember(displayCategories) {
        displayCategories.associate { it.categoryId to FocusRequester() }
    }
    val gridFirstFocus = remember { FocusRequester() }

    val columns = 5

    val filtered = remember(streams, recentStreams, debouncedCategoryId) {
        filmsForCategory(debouncedCategoryId, streams, recentStreams)
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
        filtered.associate { it.streamId to FocusRequester() }
    }
    // Indice dell'elemento con il focus, per il contatore "N / Totale".
    var focusedItemIndex by remember(filtered) { mutableStateOf<Int?>(null) }
    // Cambio categoria: la nuova lista riparte dalla cima, non dall'altezza in
    // cui era rimasta la precedente. Alla prima composizione non si tocca nulla
    // e la posizione della categoria (scheda chiusa o ritorno dal player) resta.
    LaunchedEffect(debouncedCategoryId) {
        if (debouncedCategoryId == lastGridCategoryId) return@LaunchedEffect
        lastGridCategoryId = debouncedCategoryId
        focusedItemIndex = null
        // Con la categoria vuota la griglia non è composta (al suo posto c'è il
        // messaggio): non c'è niente da riportare in cima.
        if (filtered.isEmpty()) return@LaunchedEffect
        gridState.scrollToItem(0)
    }
    val restoreHelper = rememberGridDetailFocusRestore(
        gridState = gridState,
        focusRequesters = { itemFocusRequesters },
        fallback = contentFocusRequester
    )

    // OK su una voce della colonna: la categoria diventa subito quella scelta
    // (senza i 300 ms di debounce), la griglia riparte dalla cima e il focus va
    // sulla prima copertina. Con la categoria vuota non c'è nessuna copertina da
    // focalizzare: il focus resta sulla voce e la colonna resta aperta.
    var pendingFirstItemFocus by remember { mutableStateOf<String?>(null) }
    val confirmCategory: (String) -> Unit = { categoryId ->
        focusedCategoryId = categoryId
        debouncedCategoryId = categoryId
        pendingFirstItemFocus = categoryId
    }
    // La griglia si ricompone con la nuova categoria: la copertina da
    // focalizzare si cerca a ogni fotogramma, perché il primo giro può cadere
    // prima che la nuova lista sia composta e il focus, se richiesto troppo
    // presto, non arriverebbe mai. Categoria vuota: niente da focalizzare, la
    // richiesta si consuma e il focus resta sulla voce della colonna.
    val latestFiltered by rememberUpdatedState(filtered)
    val latestCategoryId by rememberUpdatedState(debouncedCategoryId)
    val latestItemFocusRequesters by rememberUpdatedState(itemFocusRequesters)
    val latestGridState by rememberUpdatedState(gridState)
    LaunchedEffect(pendingFirstItemFocus, streams, recentStreams, itemFocusRequesters) {
        val categoryId = pendingFirstItemFocus ?: return@LaunchedEffect
        val first = filmsForCategory(categoryId, streams, recentStreams).firstOrNull()
        if (first == null) {
            pendingFirstItemFocus = null
            return@LaunchedEffect
        }
        if (itemFocusRequesters[first.streamId] == null) return@LaunchedEffect
        var scrolled = false
        repeat(FIRST_ITEM_FOCUS_ATTEMPTS) { attempt ->
            withFrameNanos { }
            if (pendingFirstItemFocus == null) return@LaunchedEffect
            if (latestCategoryId != categoryId ||
                latestFiltered.none { it.streamId == first.streamId }
            ) {
                return@repeat
            }
            if (!scrolled) {
                latestGridState.scrollToItem(0)
                scrolled = true
            }
            val latestRequester = latestItemFocusRequesters[first.streamId]
            if (latestRequester != null && latestRequester.requestFocus()) {
                pendingFirstItemFocus = null
                return@LaunchedEffect
            }
            if (attempt == FIRST_ITEM_FOCUS_ATTEMPTS - 1) pendingFirstItemFocus = null
        }
    }

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
            testTagPrefix = "film",
            onCategoryConfirmed = confirmCategory,
        )

        Box(modifier = Modifier.weight(1f).fillMaxHeight()) {
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
