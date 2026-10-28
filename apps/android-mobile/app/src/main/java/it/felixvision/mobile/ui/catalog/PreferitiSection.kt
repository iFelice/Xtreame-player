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
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
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
import it.felixvision.mobile.ui.components.NowOnLine
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FavoriteBadge
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.TouchListRow
import it.felixvision.mobile.ui.components.rememberChannelSchedulePrograms
import it.felixvision.mobile.ui.components.rememberMinuteNow
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys
import kotlinx.coroutines.delay
import kotlin.math.roundToInt

/** Messaggio dello stato vuoto di "I miei canali". */
const val MY_CHANNELS_EMPTY_MESSAGE =
    "Aggiungi i canali che guardi di più: tieni premuto su un canale in Live e scegli «I miei canali»"

/**
 * Sezione "Preferiti" del tablet: stessi gruppi e stesso ordine della sezione
 * Preferiti della TV — "I miei canali" numerati per primi, poi "Categorie
 * Live", "Film" e "Serie"; le righe vuote non compaiono.
 *
 * "Modifica" entra nella modalità di riordino di "I miei canali": maniglia di
 * trascinamento su ogni riga (riordino interamente in Compose, con scorrimento
 * automatico vicino ai bordi) e, al rilascio, salvataggio in
 * MyChannelsStore via `moveTo` (le posizioni sono 1-based e ricalcolate dallo
 * store). In modalità modifica sono esposti anche "Rimuovi" e "Sposta in
 * posizione n°"; "Fine" ne esce.
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

    val catalog = catalogState.catalog
    val filmFavorites = favorites.filter { it.type == FavoriteItem.VOD }
    val seriesFavorites = favorites.filter { it.type == FavoriteItem.SERIES }
    val categoryFavorites = favorites
        .filter { it.type == FavoriteItem.LIVE_CATEGORY }
        .map { favorite ->
            val available = favorite.categoryId != null &&
                catalog?.liveCategories.orEmpty().any { it.categoryId == favorite.categoryId }
            if (available) favorite.title else "${favorite.title} (non più disponibile)"
        }

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

    Box(modifier = modifier) {
        LazyColumn(
            state = listState,
            verticalArrangement = Arrangement.spacedBy(18.dp),
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
            modifier = Modifier.fillMaxWidth().testTag("preferiti_list"),
        ) {
            // --- I miei canali ---
            item(key = "preferiti_myheader") {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth().testTag("preferiti_my_header"),
                ) {
                    RowTitle(
                        text = "I miei canali",
                        modifier = Modifier.weight(1f),
                    )
                    TextButton(
                        onClick = { editMode = !editMode },
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
                        onDragStart = {
                            draggingStreamId = channel.streamId
                            dragMovedFrom = workingList.indexOfFirst { it.streamId == channel.streamId }
                        },
                        onDrag = { amountY ->
                            dragOffsetPx += amountY
                            val currentIndex =
                                workingList.indexOfFirst { it.streamId == channel.streamId }
                            if (currentIndex >= 0) {
                                val shift = (dragOffsetPx / rowHeightPx).roundToInt()
                                if (shift != 0) {
                                    val newIndex = (currentIndex + shift)
                                        .coerceIn(0, workingList.size - 1)
                                    if (newIndex != currentIndex) {
                                        val moved = workingList.removeAt(currentIndex)
                                        workingList.add(newIndex, moved)
                                        dragOffsetPx -= shift * rowHeightPx
                                    }
                                }
                            }
                        },
                        onDragEnd = {
                            val from = dragMovedFrom
                            val to = workingList.indexOfFirst { it.streamId == channel.streamId }
                            draggingStreamId = null
                            dragOffsetPx = 0f
                            if (from >= 0 && to >= 0 && from != to) {
                                // Posizioni 1-based, ricalcolo fatto dallo store.
                                viewModel.moveMyChannelTo(channel.streamId, to + 1)
                            }
                        },
                        onDragCancel = {
                            draggingStreamId = null
                            dragOffsetPx = 0f
                            workingList.clear()
                            workingList.addAll(myChannels)
                        },
                        onPlay = {
                            viewModel.onPlayRequest(PlayTarget.LiveChannel(channel.streamId))
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

            // --- Categorie Live ---
            if (categoryFavorites.isNotEmpty()) {
                item(key = "preferiti_livecattitle") {
                    RowTitle(text = "Categorie Live")
                }
                item(key = "preferiti_livecatrow") {
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                        contentPadding = PaddingValues(end = 8.dp),
                        modifier = Modifier.fillMaxWidth().testTag("preferiti_row_categorie"),
                    ) {
                        items(
                            favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY },
                            key = { "livecatfav_${it.id}" },
                        ) { favorite ->
                            val categoryId = favorite.categoryId
                            val available = favorite.categoryId != null &&
                                catalog?.liveCategories.orEmpty()
                                    .any { it.categoryId == favorite.categoryId }
                            TouchListRow(
                                onClick = {
                                    if (available && categoryId != null) {
                                        viewModel.selectLiveCategory(categoryId)
                                    }
                                },
                                onLongClick = { viewModel.openActions(ActionTarget.LiveCategory(categoryId.orEmpty(), favorite.title)) },
                                modifier = Modifier
                                    .width(220.dp)
                                    .testTag("favorite_${favorite.id}"),
                            ) {
                                Column(modifier = Modifier.weight(1f)) {
                                    Text(
                                        text = favorite.title,
                                        color = if (available) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                        fontSize = 15.sp,
                                        fontWeight = FontWeight.Medium,
                                    )
                                    val count = if (available) {
                                        catalog?.liveStreams.orEmpty()
                                            .count { it.categoryId == categoryId }
                                    } else {
                                        0
                                    }
                                    SecondaryText(
                                        text = if (available) "$count canali" else "Non più disponibile",
                                    )
                                }
                                FavoriteBadge()
                            }
                        }
                    }
                }
            }

            // --- Film ---
            if (filmFavorites.isNotEmpty()) {
                item(key = "preferiti_filmtitle") {
                    RowTitle(text = "Film")
                }
                item(key = "preferiti_filmrow") {
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                        contentPadding = PaddingValues(end = 8.dp),
                        modifier = Modifier.fillMaxWidth().testTag("preferiti_row_film"),
                    ) {
                        items(filmFavorites, key = { "filmfav_${it.id}" }) { favorite ->
                            val vodId = favorite.id.removePrefix("vod_")
                            val vod = catalog?.vodStreams.orEmpty()
                                .firstOrNull { it.streamId == vodId }
                            val vodProgress = progress[ProgressKeys.movie(vodId)]
                            PosterCard(
                                imageUrl = favorite.poster,
                                title = favorite.title,
                                imageLoader = imageLoader,
                                width = 132.dp,
                                isFavorite = true,
                                progress = vodProgress,
                                isWatched = vodProgress?.isWatched == true,
                                onClick = {
                                    if (vod != null) viewModel.openDetail(DetailTarget.Film(vod))
                                },
                                onLongClick = {
                                    if (vod != null) viewModel.openActions(ActionTarget.Film(vod))
                                },
                                testTag = "favorite_${favorite.id}",
                            )
                        }
                    }
                }
            }

            // --- Serie ---
            if (seriesFavorites.isNotEmpty()) {
                item(key = "preferiti_serietitle") {
                    RowTitle(text = "Serie")
                }
                item(key = "preferiti_serierow") {
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                        contentPadding = PaddingValues(end = 8.dp),
                        modifier = Modifier.fillMaxWidth().testTag("preferiti_row_serie"),
                    ) {
                        items(seriesFavorites, key = { "seriefav_${it.id}" }) { favorite ->
                            val seriesId = favorite.id.removePrefix("series_")
                            val series = catalog?.series.orEmpty()
                                .firstOrNull { it.seriesId == seriesId }
                            PosterCard(
                                imageUrl = favorite.poster,
                                title = favorite.title,
                                imageLoader = imageLoader,
                                width = 132.dp,
                                isFavorite = true,
                                onClick = {
                                    if (series != null) viewModel.openDetail(DetailTarget.Series(series))
                                },
                                onLongClick = {
                                    if (series != null) viewModel.openActions(ActionTarget.Series(series))
                                },
                                testTag = "favorite_${favorite.id}",
                            )
                        }
                    }
                }
            }
        }

        if (!editMode && myChannels.isEmpty() && favorites.isEmpty()) {
            EmptyState(
                title = "Nessun preferito",
                description = "Tieni premuto su un canale, un film o una serie e scegli «Preferiti» per trovarlo qui",
                modifier = Modifier.align(Alignment.Center).padding(24.dp),
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
