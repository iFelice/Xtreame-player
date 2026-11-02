@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.catalog

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.SecondaryTabRow
import androidx.compose.material3.Tab
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.ChannelLogoImage
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FavoriteBadge
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.NowOnLine
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.TouchListRow
import it.felixvision.mobile.ui.components.rememberChannelSchedulePrograms
import it.felixvision.mobile.ui.components.rememberMinuteNow
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import kotlinx.coroutines.delay
import kotlin.math.roundToInt

/** Messaggio dello stato vuoto di "I miei canali". */
const val MY_CHANNELS_EMPTY_MESSAGE =
    "Aggiungi i canali che guardi di più: tieni premuto su un canale in Live e scegli «I miei canali»"

/**
 * Sezione "Preferiti" del tablet in tre schede, come la sezione Preferiti
 * della TV: "I miei canali" (lista personale numerata, con modifica e
 * trascinamento), "Film e Serie" (le righe Film e Serie) e "Categorie Live"
 * (elenco delle categorie Live preferite).
 *
 * Le schede sono touch ([SecondaryTabRow] di material3). La scheda scelta si
 * conserva cambiando sezione e ruotando lo schermo: lo stato vive nel
 * [CatalogViewModel.favoritesTab]. Tornando da Live dopo aver aperto una
 * categoria preferita si torna sulla scheda "Categorie Live".
 */
@Composable
fun PreferitiSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    scheduleLoader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
    clock: Clock,
    modifier: Modifier = Modifier,
) {
    val catalogState by viewModel.ui.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val myChannels by viewModel.myChannels.collectAsStateWithLifecycle()
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()
    val tab by viewModel.favoritesTab.collectAsStateWithLifecycle()

    val catalog = catalogState.catalog
    val filmFavorites = favorites.filter { it.type == FavoriteItem.VOD }
    val seriesFavorites = favorites.filter { it.type == FavoriteItem.SERIES }
    val categoryFavorites = mobileLiveCategoryFavorites(
        favorites = favorites,
        categories = catalog?.liveCategories.orEmpty(),
        streams = catalog?.liveStreams.orEmpty(),
    )

    var editMode by remember { mutableStateOf(false) }
    val listState = rememberSectionListState(viewModel.sectionStates, "preferiti_list")
    val nowMillis = rememberMinuteNow(clock)

    // Guida di "I miei canali" solo per le righe visibili, come in Live.
    val visibleIds by snapshotFlow {
        listState.layoutInfo.visibleItemsInfo
            .mapNotNull { item -> item.key as? String }
            .mapNotNull { key -> key.removePrefix("mychannel_").takeIf { it != key } }
    }.collectAsState(initial = emptyList())
    val programs = rememberChannelSchedulePrograms(
        streamIds = visibleIds,
        loader = scheduleLoader,
        server = server,
        username = username,
        password = password,
    )

    // Copia di lavoro per il riordino touch: solo in modalità modifica.
    val workingList = remember { mutableStateListOf<MyChannel>() }
    LaunchedEffect(editMode) {
        if (editMode) {
            workingList.clear()
            workingList.addAll(myChannels)
        }
    }
    var draggingStreamId by remember { mutableStateOf<String?>(null) }
    var dragOffsetPx by remember { mutableFloatStateOf(0f) }
    var dragMovedFrom by remember { mutableIntStateOf(-1) }
    val rowHeightPx = with(LocalDensity.current) { 56.dp.toPx() }
    val density = LocalDensity.current
    val edgePx = with(density) { 144.dp.toPx() }

    // Scorrimento automatico vicino ai bordi durante il trascinamento.
    LaunchedEffect(draggingStreamId) {
        val dragging = draggingStreamId ?: return@LaunchedEffect
        while (true) {
            var step = 0f
            val info = listState.layoutInfo
            val itemInfo = info.visibleItemsInfo.firstOrNull {
                it.key == "mychannel_$dragging"
            }
            if (itemInfo != null) {
                val top = itemInfo.offset + dragOffsetPx
                val bottom = itemInfo.offset + itemInfo.size + dragOffsetPx
                val viewportStart = info.viewportStartOffset + edgePx
                val viewportEnd = info.viewportEndOffset - edgePx
                if (top < viewportStart) step = -12f
                if (bottom > viewportEnd) step = 12f
                if (step != 0f) {
                    listState.scroll { scrollBy(step) }
                    dragOffsetPx += step
                }
            }
            if (step == 0f) delay(16) else delay(8)
        }
    }

    Column(modifier = modifier.fillMaxWidth()) {
        // --- Barra delle schede ---
        val tabIndex = FavoritesTab.entries.indexOf(tab)
        SecondaryTabRow(
            selectedTabIndex = tabIndex,
            onTabClick = { index -> viewModel.selectFavoritesTab(FavoritesTab.entries[index]) },
            modifier = Modifier.fillMaxWidth(),
        ) {
            FavoritesTab.entries.forEach { entry ->
                Tab(
                    selected = tab == entry,
                    onClick = { viewModel.selectFavoritesTab(entry) },
                    text = {
                        Text(
                            text = entry.title,
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Medium,
                        )
                    },
                    modifier = Modifier.testTag(entry.testTag),
                )
            }
        }
        HorizontalDivider(color = FvpColors.SurfaceElevated, thickness = 1.dp)

        Box(modifier = Modifier.fillMaxWidth()) {
            when (tab) {
                FavoritesTab.MY_CHANNELS -> FavoritesMyChannelsTab(
                    viewModel = viewModel,
                    myChannels = myChannels,
                    workingList = workingList,
                    editMode = editMode,
                    imageLoader = imageLoader,
                    programs = programs,
                    nowMillis = nowMillis,
                    listState = listState,
                    draggingStreamId = draggingStreamId,
                    dragOffsetPx = dragOffsetPx,
                    dragMovedFrom = dragMovedFrom,
                    rowHeightPx = rowHeightPx,
                    onEditModeChange = { editMode = it },
                    onDragStart = { draggingStreamId = it },
                    onDrag = { amountY ->
                        dragOffsetPx += amountY
                        val currentIndex =
                            workingList.indexOfFirst { it.streamId == draggingStreamId }
                        if (currentIndex >= 0) {
                            val shift = (dragOffsetPx / rowHeightPx).roundToInt()
                            if (shift != 0) {
                                val newIndex = (currentIndex + shift).coerceIn(0, workingList.size - 1)
                                if (newIndex != currentIndex) {
                                    val moved = workingList.removeAt(currentIndex)
                                    workingList.add(newIndex, moved)
                                    dragOffsetPx -= shift * rowHeightPx
                                }
                            }
                        }
                    },
                    onDragEnd = { channel ->
                        val from = dragMovedFrom
                        val to = workingList.indexOfFirst { it.streamId == channel.streamId }
                        draggingStreamId = null
                        dragOffsetPx = 0f
                        if (from >= 0 && to >= 0 && from != to) {
                            viewModel.moveMyChannelTo(channel.streamId, to + 1)
                        }
                    },
                    onDragCancel = {
                        draggingStreamId = null
                        dragOffsetPx = 0f
                        workingList.clear()
                        workingList.addAll(myChannels)
                    },
                )
                FavoritesTab.FILM_SERIES -> FavoritesFilmSeriesTab(
                    filmFavorites = filmFavorites,
                    seriesFavorites = seriesFavorites,
                    catalog = catalog,
                    progress = progress,
                    imageLoader = imageLoader,
                    viewModel = viewModel,
                )
                FavoritesTab.LIVE_CATEGORIES -> FavoritesLiveCategoriesTab(
                    categoryFavorites = categoryFavorites,
                    viewModel = viewModel,
                    modifier = Modifier.fillMaxWidth(),
                )
            }
        }
    }
}

/** Scheda "I miei canali": lista numerata con modifica/trascinamento. */
@Composable
private fun FavoritesMyChannelsTab(
    viewModel: CatalogViewModel,
    myChannels: List<MyChannel>,
    workingList: List<MyChannel>,
    editMode: Boolean,
    imageLoader: ImageLoader,
    programs: Map<String, List<EpgProgram>>,
    nowMillis: Long,
    listState: androidx.compose.foundation.lazy.LazyListState,
    draggingStreamId: String?,
    dragOffsetPx: Float,
    dragMovedFrom: Int,
    rowHeightPx: Float,
    onEditModeChange: (Boolean) -> Unit,
    onDragStart: (String) -> Unit,
    onDrag: (Float) -> Unit,
    onDragEnd: (MyChannel) -> Unit,
    onDragCancel: () -> Unit,
) {
    LazyColumn(
        state = listState,
        verticalArrangement = Arrangement.spacedBy(18.dp),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        modifier = Modifier.fillMaxWidth().testTag("preferiti_my_channels_list"),
    ) {
        item(key = "preferiti_myheader") {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth().testTag("preferiti_my_header"),
            ) {
                RowTitle(text = "I miei canali", modifier = Modifier.weight(1f))
                TextButton(
                    onClick = { onEditModeChange(!editMode) },
                    modifier = Modifier.testTag(if (editMode) "favorites_done" else "favorites_edit"),
                ) {
                    Text(
                        text = if (editMode) "Fine" else "Modifica",
                        color = FvpColors.Green,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.SemiBold,
                    )
                }
            }
        }

        val shownChannels = if (editMode) workingList else myChannels
        if (shownChannels.isEmpty()) {
            item(key = "preferiti_my_empty") {
                SecondaryText(
                    text = MY_CHANNELS_EMPTY_MESSAGE,
                    maxLines = 3,
                    modifier = Modifier.testTag("preferiti_my_empty"),
                )
            }
        } else {
            itemsIndexed(
                shownChannels,
                key = { _, channel -> "mychannel_${channel.streamId}" },
            ) { index, channel ->
                val isDragging = editMode && channel.streamId == draggingStreamId
                val offsetY by animateFloatAsState(
                    targetValue = if (isDragging) dragOffsetPx else 0f,
                    label = "drag_offset",
                )
                MyChannelRow(
                    channel = channel,
                    index = index,
                    imageLoader = imageLoader,
                    editMode = editMode,
                    isDragging = isDragging,
                    programs = programs[channel.streamId],
                    nowMillis = nowMillis,
                    onDragStart = { onDragStart(channel.streamId) },
                    onDrag = { amountY ->
                        onDrag(amountY)
                    },
                    onDragEnd = { onDragEnd(channel) },
                    onDragCancel = onDragCancel,
                    onPlay = {
                        viewModel.onPlayRequest(
                            PlayTarget.LiveChannel(channel.streamId, fromMyChannels = true),
                        )
                    },
                    onLongPress = {
                        viewModel.openActions(ActionTarget.MyChannelEntry(channel))
                    },
                    onRemove = { viewModel.removeMyChannel(channel.streamId) },
                    onMoveToPosition = {
                        viewModel.openPositionDialog(channel, isNewChannel = false)
                    },
                    modifier = Modifier
                        .offset { IntOffset(0, offsetY.roundToInt()) }
                        .zIndex(if (isDragging) 1f else 0f),
                )
            }
        }
    }
}

/** Scheda "Film e Serie": righe Film e Serie dei preferiti. */
@Composable
private fun FavoritesFilmSeriesTab(
    filmFavorites: List<FavoriteItem>,
    seriesFavorites: List<FavoriteItem>,
    catalog: Catalog?,
    progress: Map<String, WatchProgress>,
    imageLoader: ImageLoader,
    viewModel: CatalogViewModel,
) {
    val isEmpty = filmFavorites.isEmpty() && seriesFavorites.isEmpty()
    Box(modifier = Modifier.fillMaxWidth()) {
        if (isEmpty) {
            EmptyState(
                title = "Nessun film o serie nei preferiti",
                description = "Tieni premuto su un film o una serie e scegli «Preferiti»",
                modifier = Modifier.align(Alignment.Center).padding(24.dp),
            )
        } else {
            Column(
                modifier = Modifier.fillMaxWidth().verticalScroll(rememberScrollState())
                    .testTag("preferiti_film_series_list"),
                verticalArrangement = Arrangement.spacedBy(18.dp),
            ) {
                if (filmFavorites.isNotEmpty()) {
                    RowTitle(text = "Film")
                    FavoritesPosterRow(
                        favorites = filmFavorites,
                        catalog = catalog,
                        progress = progress,
                        imageLoader = imageLoader,
                        viewModel = viewModel,
                        testTag = "preferiti_row_film",
                        onClick = { favorite ->
                            val vodId = favorite.id.removePrefix("vod_")
                            val vod = catalog?.vodStreams.orEmpty().firstOrNull { it.streamId == vodId }
                            if (vod != null) viewModel.openDetail(DetailTarget.Film(vod))
                        },
                        onLongClick = { favorite ->
                            val vodId = favorite.id.removePrefix("vod_")
                            val vod = catalog?.vodStreams.orEmpty().firstOrNull { it.streamId == vodId }
                            if (vod != null) viewModel.openActions(ActionTarget.Film(vod))
                        },
                    )
                }
                if (seriesFavorites.isNotEmpty()) {
                    RowTitle(text = "Serie")
                    FavoritesPosterRow(
                        favorites = seriesFavorites,
                        catalog = catalog,
                        progress = progress,
                        imageLoader = imageLoader,
                        viewModel = viewModel,
                        testTag = "preferiti_row_serie",
                        onClick = { favorite ->
                            val seriesId = favorite.id.removePrefix("series_")
                            val series = catalog?.series.orEmpty().firstOrNull { it.seriesId == seriesId }
                            if (series != null) viewModel.openDetail(DetailTarget.Series(series))
                        },
                        onLongClick = { favorite ->
                            val seriesId = favorite.id.removePrefix("series_")
                            val series = catalog?.series.orEmpty().firstOrNull { it.seriesId == seriesId }
                            if (series != null) viewModel.openActions(ActionTarget.Series(series))
                        },
                    )
                }
            }
        }
    }
}

/** Scheda "Categorie Live": elenco delle categorie Live preferite. */
@Composable
private fun FavoritesLiveCategoriesTab(
    categoryFavorites: List<MobileLiveCategoryFavorite>,
    viewModel: CatalogViewModel,
    modifier: Modifier = Modifier,
) {
    val isEmpty = categoryFavorites.isEmpty()
    Box(modifier = modifier) {
        if (isEmpty) {
            EmptyState(
                title = "Nessuna categoria Live nei preferiti",
                description = "Tieni premuto su una categoria in Live per aggiungerla ai preferiti.",
                modifier = Modifier.align(Alignment.Center).padding(24.dp),
            )
        } else {
            LazyColumn(
                modifier = modifier.testTag("preferiti_live_categories_list"),
                verticalArrangement = Arrangement.spacedBy(12.dp),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
            ) {
                items(categoryFavorites, key = { "livecatfav_${it.favorite.id}" }) { item ->
                    val favorite = item.favorite
                    val categoryId = favorite.categoryId
                    TouchListRow(
                        onClick = {
                            if (item.available && categoryId != null) {
                                viewModel.selectLiveCategory(categoryId)
                            }
                        },
                        onLongClick = {
                            viewModel.openActions(
                                ActionTarget.LiveCategory(categoryId.orEmpty(), favorite.title),
                            )
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("favorite_${favorite.id}"),
                    ) {
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = favorite.title,
                                color = if (item.available) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium,
                            )
                            SecondaryText(text = item.supportingText)
                        }
                        FavoriteBadge()
                    }
                }
            }
        }
    }
}

/** Riga orizzontale di locandine dei preferiti (Film o Serie). */
@Composable
private fun FavoritesPosterRow(
    favorites: List<FavoriteItem>,
    catalog: Catalog?,
    progress: Map<String, WatchProgress>,
    imageLoader: ImageLoader,
    viewModel: CatalogViewModel,
    testTag: String,
    onClick: (FavoriteItem) -> Unit,
    onLongClick: (FavoriteItem) -> Unit,
) {
    LazyRow(
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        contentPadding = PaddingValues(end = 8.dp),
        modifier = Modifier.fillMaxWidth().testTag(testTag),
    ) {
        items(favorites, key = { "${testTag}_${it.id}" }) { favorite ->
            val isVod = favorite.type == FavoriteItem.VOD
            val id = favorite.id.removePrefix(if (isVod) "vod_" else "series_")
            val progressForItem = if (isVod) {
                progress[ProgressKeys.movie(id)]
            } else {
                null
            }
            PosterCard(
                imageUrl = favorite.poster,
                title = favorite.title,
                imageLoader = imageLoader,
                width = 132.dp,
                isFavorite = true,
                progress = progressForItem,
                isWatched = progressForItem?.isWatched == true,
                onClick = { onClick(favorite) },
                onLongClick = { onLongClick(favorite) },
                testTag = "favorite_${favorite.id}",
            )
        }
    }
}

/**
 * Riga di "I miei canali": numero progressivo, logo, nome, riga "in onda" e,
 * in modalità modifica, maniglia di trascinamento e azioni "Sposta in
 * posizione n°" / "Rimuovi". La pressione lunga apre comunque il pannello
 * azioni (fuori dalla modalità modifica).
 */
@Composable
fun MyChannelRow(
    channel: MyChannel,
    index: Int,
    imageLoader: ImageLoader,
    editMode: Boolean,
    isDragging: Boolean,
    programs: List<EpgProgram>?,
    nowMillis: Long,
    onDragStart: () -> Unit,
    onDrag: (Float) -> Unit,
    onDragEnd: () -> Unit,
    onDragCancel: () -> Unit,
    onPlay: () -> Unit,
    onLongPress: () -> Unit,
    onRemove: () -> Unit,
    onMoveToPosition: () -> Unit,
    modifier: Modifier = Modifier,
) {
    TouchListRow(
        onClick = { if (!editMode) onPlay() },
        onLongClick = if (editMode) null else onLongPress,
        backgroundColor = if (isDragging) FvpColors.SurfaceElevated else FvpColors.Surface,
        modifier = modifier
            .testTag("mychannel_${channel.streamId}")
            .alpha(if (isDragging) 0.95f else 1f),
    ) {
        if (editMode) {
            Icon(
                imageVector = FvpIcons.DragHandle,
                contentDescription = "Trascina ${channel.name} per riordinare",
                tint = FvpColors.TextSecondary,
                modifier = Modifier
                    .padding(end = 8.dp)
                    .size(40.dp)
                    .pointerInput(channel.streamId) {
                        detectDragGestures(
                            onDragStart = { onDragStart() },
                            onDrag = { change, amount ->
                                change.consume()
                                onDrag(amount.y)
                            },
                            onDragEnd = onDragEnd,
                            onDragCancel = onDragCancel,
                        )
                    }
                    .testTag("mychannel_drag_${channel.streamId}"),
            )
        }
        Text(
            text = "${index + 1}",
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.width(32.dp),
        )
        ChannelLogoImage(
            imageUrl = channel.logo,
            name = channel.name,
            imageLoader = imageLoader,
            modifier = Modifier.size(40.dp),
            corner = 8.dp,
        )
        Column(modifier = Modifier.padding(start = 12.dp).weight(1f)) {
            Text(
                text = channel.name,
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
            )
            if (!editMode) {
                NowOnLine(
                    programs = programs.orEmpty(),
                    nowMillis = nowMillis,
                    modifier = Modifier.testTag("mychannel_schedule_${channel.streamId}"),
                )
            }
        }
        if (editMode) {
            IconButton(
                onClick = onMoveToPosition,
                modifier = Modifier
                    .size(48.dp)
                    .testTag("mychannel_move_${channel.streamId}"),
            ) {
                Icon(
                    imageVector = FvpIcons.Modifica,
                    contentDescription = "Sposta ${channel.name} in posizione",
                    tint = FvpColors.TextSecondary,
                )
            }
            IconButton(
                onClick = onRemove,
                modifier = Modifier
                    .size(48.dp)
                    .testTag("mychannel_remove_${channel.streamId}"),
            ) {
                Icon(
                    imageVector = FvpIcons.Chiudi,
                    contentDescription = "Rimuovi ${channel.name}",
                    tint = FvpColors.TextSecondary,
                )
            }
        }
    }
}
