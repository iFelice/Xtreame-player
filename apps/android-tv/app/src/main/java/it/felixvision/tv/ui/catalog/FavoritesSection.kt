package it.felixvision.tv.ui.catalog

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.ScrollState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
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
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.ChannelKeyOutcome
import it.felixvision.tv.data.playback.ChannelLookupResult
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.data.playback.ChannelNumberOverlay
import it.felixvision.tv.data.playback.ChannelNumberSession
import it.felixvision.tv.data.playback.ChannelNumbering
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.ChannelNumberIndicator
import it.felixvision.tv.ui.components.ChannelScheduleInfo
import it.felixvision.tv.ui.components.rememberChannelSchedulePrograms
import it.felixvision.tv.ui.components.rememberMinuteNow
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.RowsBringIntoViewer
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.WatchSeenBadge
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.rememberListDetailFocusRestore
import it.felixvision.tv.ui.components.rememberRowsBringIntoViewer
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.favoriteRowPadding
import it.felixvision.tv.ui.theme.rowLogo
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/** Messaggio dello stato vuoto di "I miei canali". */
const val MY_CHANNELS_EMPTY_MESSAGE =
    "Aggiungi i canali che guardi di più: tieni premuto OK su un canale in Live"

/** Le due schede in alto di Preferiti: "I miei canali" è aperta per prima. */
enum class FavoritesTab(val title: String, val testTag: String) {
    MY_CHANNELS("I miei canali", "favorites_tab_my_channels"),
    FILM_SERIES("Film e Serie", "favorites_tab_film_series"),
}

/** Programmi in onda/a seguire già caricati per i canali visibili. */
data class FavoritesSchedule(
    val programs: Map<String, List<EpgProgram>> = emptyMap(),
    val nowMillis: Long = 0L,
)

/**
 * Preferiti in due schede.
 *
 * "I miei canali" è una lista personale numerata (numero a sinistra, logo,
 * nome, sotto "in onda / a seguire"), con la riga "Categorie Live" esistente
 * sotto l'elenco. "Film e Serie" conserva le righe Film e Serie.
 */
@Composable
fun FavoritesSection(
    favorites: List<FavoriteItem>,
    scale: UiScale,
    onSelectFavorite: (FavoriteItem) -> Unit,
    onToggleFavorite: (FavoriteItem) -> Unit = {},
    catalogViewModel: CatalogViewModel? = null,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    modifier: Modifier = Modifier,
    liveCategories: List<Category> = emptyList(),
    liveStreams: List<LiveStream> = emptyList(),
    restoreCategoryFavoriteId: String? = null,
    onCategoryFocusRestored: () -> Unit = {},
    onPlayLive: (LiveStream) -> Unit = {},
    onPlayVod: (VodStream) -> Unit = {},
    onPlayEpisode: (Episode, SeriesPlayback) -> Unit = { _, _ -> },
    onSetEpisodeWatched: (Episode, Boolean, Long) -> Unit = { _, _, _ -> },
    onToggleWatched: (VodStream, Boolean, Long) -> Unit = { _, _, _ -> },
    progress: Map<String, WatchProgress> = emptyMap(),
    refocusTick: Int = 0,
    focusEpisodeId: String? = null,
    myChannels: List<MyChannel> = emptyList(),
    epgClient: ChannelScheduleLoader? = null,
    epgServer: String = "",
    epgUsername: String = "",
    epgPassword: String = "",
    onPlayMyChannel: (MyChannel) -> Unit = {},
    onLongPressMyChannel: (MyChannel) -> Unit = {},
    focusMyChannelId: String? = null,
    focusMyChannelTick: Int = 0,
    onMyChannelFocusRestored: () -> Unit = {},
    clock: Clock = SystemClock,
) {
    var selectedTab by remember { mutableStateOf(FavoritesTab.MY_CHANNELS) }
    var detailFavorite by remember { mutableStateOf<FavoriteItem?>(null) }
    var detailVodInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailSeriesInfo by remember { mutableStateOf<SeriesInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableStateOf(0) }

    LaunchedEffect(detailFavorite?.id, retryKey) {
        val fav = detailFavorite
        if (fav == null || fav.type == FavoriteItem.LIVE || catalogViewModel == null) {
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
            if (fav.type == FavoriteItem.VOD) {
                val vodId = fav.id.removePrefix("vod_")
                val info = catalogViewModel.loadVodInfo(vodId)
                if (info == null) detailError = "Informazioni non disponibili" else detailVodInfo = info
            } else if (fav.type == FavoriteItem.SERIES) {
                val seriesId = fav.id.removePrefix("series_")
                val info = catalogViewModel.loadSeriesInfo(seriesId)
                if (info == null) detailError = "Informazioni non disponibili" else detailSeriesInfo = info
            }
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            detailError = "Informazioni non disponibili"
        } finally {
            detailIsLoading = false
        }
    }

    val vod = remember(favorites) { favorites.filter { it.type == FavoriteItem.VOD } }
    val series = remember(favorites) { favorites.filter { it.type == FavoriteItem.SERIES } }
    val categoryFavorites = remember(favorites, liveCategories, liveStreams) {
        liveCategoryFavorites(favorites, liveCategories, liveStreams)
    }

    val firstFocus = remember { FocusRequester() }
    val tabFocusRequesters = remember { FavoritesTab.entries.map { FocusRequester() } }
    val tabsScope = rememberCoroutineScope()

    val vodListState = rememberLazyListState()
    val seriesListState = rememberLazyListState()
    val vodFocusMap = remember(vod) { vod.associate { it.id to FocusRequester() } }
    val seriesFocusMap = remember(series) { series.associate { it.id to FocusRequester() } }
    val vodRestore = rememberListDetailFocusRestore(vodListState, { vodFocusMap }, firstFocus)
    val seriesRestore = rememberListDetailFocusRestore(seriesListState, { seriesFocusMap }, firstFocus)
    val filmSeriesScroll = rememberScrollState()
    val rowsBringIntoView = rememberRowsBringIntoViewer()

    // Ritorno da Live dopo aver aperto una categoria preferita: la scheda
    // "I miei canali" è quella che contiene la riga Categorie Live.
    LaunchedEffect(restoreCategoryFavoriteId) {
        if (restoreCategoryFavoriteId != null) selectedTab = FavoritesTab.MY_CHANNELS
    }

    Column(modifier = modifier.fillMaxSize()) {
        FavoritesTabsRow(
            selected = selectedTab,
            scale = scale,
            focusRequesters = tabFocusRequesters,
            contentFocusRequester = contentFocusRequester,
            onSelect = { selectedTab = it },
            onDown = {
                // La scheda scelta può essere appena composta: il focus sul suo
                // primo elemento si chiede dopo il frame di composizione.
                tabsScope.launch {
                    withFrameNanos { }
                    runCatching { firstFocus.requestFocus() }
                }
            },
        )
        Box(modifier = Modifier.fillMaxWidth().weight(1f)) {
            when (selectedTab) {
                FavoritesTab.MY_CHANNELS -> MyChannelsTab(
                    channels = myChannels,
                    epgClient = epgClient,
                    epgServer = epgServer,
                    epgUsername = epgUsername,
                    epgPassword = epgPassword,
                    clock = clock,
                    categoryFavorites = categoryFavorites,
                    scale = scale,
                    onSelectCategory = onSelectFavorite,
                    onToggleCategory = onToggleFavorite,
                    onPlayChannel = onPlayMyChannel,
                    onLongPressChannel = onLongPressMyChannel,
                    firstFocus = firstFocus,
                    contentFocusRequester = contentFocusRequester,
                    restoreCategoryFavoriteId = restoreCategoryFavoriteId,
                    onCategoryFocusRestored = onCategoryFocusRestored,
                    focusChannelId = focusMyChannelId,
                    focusChannelTick = focusMyChannelTick,
                    onChannelFocusRestored = onMyChannelFocusRestored,
                    onTabFocusRequester = tabFocusRequesters[selectedTab.ordinal],
                )
                FavoritesTab.FILM_SERIES -> FilmSeriesTab(
                    vod = vod,
                    series = series,
                    scale = scale,
                    progress = progress,
                    firstFocus = firstFocus,
                    contentFocusRequester = contentFocusRequester,
                    vodListState = vodListState,
                    seriesListState = seriesListState,
                    vodFocusMap = vodFocusMap,
                    seriesFocusMap = seriesFocusMap,
                    scrollState = filmSeriesScroll,
                    rowsBringIntoView = rowsBringIntoView,
                    onToggleFavorite = onToggleFavorite,
                    onOpenVod = { fav ->
                        vodRestore.onOpen(fav.id, vod.indexOfFirst { it.id == fav.id })
                        detailFavorite = fav
                    },
                    onOpenSeries = { fav ->
                        seriesRestore.onOpen(fav.id, series.indexOfFirst { it.id == fav.id })
                        detailFavorite = fav
                    },
                )
            }
        }
    }

    detailFavorite?.let { fav ->
        when (fav.type) {
            FavoriteItem.VOD -> {
                val vodStream = VodStream(
                    streamId = fav.id.removePrefix("vod_"),
                    name = fav.title,
                    streamIcon = fav.poster,
                    categoryId = fav.categoryId,
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
                        onPlay = { onPlayVod(vodStream) },
                        onToggleFavorite = { onToggleFavorite(fav) },
                        onRetry = { retryKey++ },
                        isWatched = progress[ProgressKeys.movie(vodStream.streamId)]?.isWatched == true,
                        onToggleWatched = { durationMillis ->
                            onToggleWatched(
                                vodStream,
                                progress[ProgressKeys.movie(vodStream.streamId)]?.isWatched != true,
                                durationMillis,
                            )
                        },
                        refocusTick = refocusTick,
                    )
                }
            }
            FavoriteItem.SERIES -> {
                val seriesItem = SeriesItem(
                    seriesId = fav.id.removePrefix("series_"),
                    name = fav.title,
                    cover = fav.poster,
                    categoryId = fav.categoryId,
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
                        onPlayEpisode = onPlayEpisode,
                        onRetry = { retryKey++ },
                        onSetEpisodeWatched = onSetEpisodeWatched,
                        refocusTick = refocusTick,
                        focusEpisodeId = focusEpisodeId,
                        progress = progress,
                    )
                }
            }
        }
    }
}

/** Le due schede in alto: Sinistra/Destra tra loro, Giù al contenuto. */
@Composable
private fun FavoritesTabsRow(
    selected: FavoritesTab,
    scale: UiScale,
    focusRequesters: List<FocusRequester>,
    contentFocusRequester: FocusRequester,
    onSelect: (FavoritesTab) -> Unit,
    onDown: () -> Unit,
) {
    Row(
        horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = scale.dp(8f), top = scale.dp(4f), bottom = scale.dp(10f))
            .testTag("favorites_tabs"),
    ) {
        FavoritesTab.entries.forEachIndexed { index, tab ->
            val isSelected = tab == selected
            var focused by remember(tab) { mutableStateOf(false) }
            Card(
                onClick = { onSelect(tab) },
                modifier = Modifier
                    .testTag(tab.testTag)
                    .focusRequester(focusRequesters[index])
                    .then(if (index == 0) Modifier.focusRequester(contentFocusRequester) else Modifier)
                    .onFocusChanged { focusState ->
                        focused = focusState.isFocused
                        if (focusState.isFocused && !isSelected) onSelect(tab)
                    }
                    .onPreviewKeyEvent { event ->
                        if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                        when (event.key) {
                            Key.DirectionRight -> {
                                val next = FavoritesTab.entries.getOrNull(index + 1) ?: return@onPreviewKeyEvent false
                                onSelect(next)
                                runCatching { focusRequesters[index + 1].requestFocus() }
                                true
                            }
                            Key.DirectionLeft -> {
                                if (index == 0) return@onPreviewKeyEvent false
                                onSelect(FavoritesTab.entries[index - 1])
                                runCatching { focusRequesters[index - 1].requestFocus() }
                                true
                            }
                            Key.DirectionDown -> {
                                onDown()
                                true
                            }
                            else -> false
                        }
                    },
                scale = CardDefaults.scale(focusedScale = 1.04f),
                border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                colors = CardDefaults.colors(
                    containerColor = if (isSelected) FvpColors.SurfaceElevated else FvpColors.Surface,
                    focusedContainerColor = FvpColors.Green,
                ),
                shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
            ) {
                Text(
                    text = tab.title,
                    color = if (focused) FvpColors.OnGreen else if (isSelected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                    fontSize = scale.sp(16f),
                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                    modifier = Modifier.padding(horizontal = scale.dp(16f), vertical = scale.dp(8f)),
                )
            }
        }
    }
}

/**
 * "I miei canali": elenco verticale compatto con numero, logo, nome e riga
 * "in onda / a seguire"; sotto, la riga "Categorie Live" esistente.
 *
 * Digitando un numero si usa la numerazione personale: il numero è la
 * posizione nella lista.
 */
@Composable
private fun MyChannelsTab(
    channels: List<MyChannel>,
    epgClient: ChannelScheduleLoader?,
    epgServer: String,
    epgUsername: String,
    epgPassword: String,
    clock: Clock,
    categoryFavorites: List<LiveCategoryFavorite>,
    scale: UiScale,
    onSelectCategory: (FavoriteItem) -> Unit,
    onToggleCategory: (FavoriteItem) -> Unit,
    onPlayChannel: (MyChannel) -> Unit,
    onLongPressChannel: (MyChannel) -> Unit,
    firstFocus: FocusRequester,
    contentFocusRequester: FocusRequester,
    restoreCategoryFavoriteId: String?,
    onCategoryFocusRestored: () -> Unit,
    focusChannelId: String?,
    focusChannelTick: Int,
    onChannelFocusRestored: () -> Unit,
    onTabFocusRequester: FocusRequester,
) {
    val scope = rememberCoroutineScope()
    val listState = rememberLazyListState()
    // Solo i canali visibili a schermo: la guida si chiede per quelli.
    val visibleIds by remember(channels) {
        androidx.compose.runtime.derivedStateOf {
            listState.layoutInfo.visibleItemsInfo.mapNotNull { info ->
                channels.getOrNull(info.index)?.streamId
            }
        }
    }
    val schedulePrograms = rememberChannelSchedulePrograms(
        streamIds = visibleIds,
        loader = epgClient,
        server = epgServer,
        username = epgUsername,
        password = epgPassword,
    )
    val schedule = FavoritesSchedule(
        programs = schedulePrograms,
        nowMillis = rememberMinuteNow(clock),
    )
    val channelFocusMap = remember(channels) {
        channels.associate { it.streamId to FocusRequester() }
    }
    val streamChannels = remember(channels) {
        channels.map { channel ->
            LiveStream(
                streamId = channel.streamId,
                name = channel.name,
                streamIcon = channel.logo,
            )
        }
    }

    // Cambio canale numerico con la numerazione personale.
    val numberSession = remember { ChannelNumberSession(numbering = ChannelNumbering.PERSONAL) }
    var numberOverlay by remember { mutableStateOf<ChannelNumberOverlay?>(null) }
    var numberJob by remember { mutableStateOf<Job?>(null) }

    fun applyLookupResult(result: ChannelLookupResult) {
        when (result) {
            is ChannelLookupResult.Found -> {
                numberOverlay = null
                channels.firstOrNull { it.streamId == result.channel.streamId }?.let(onPlayChannel)
            }
            is ChannelLookupResult.NotFound -> {
                val overlay = numberSession.overlay
                numberOverlay = overlay
                numberJob?.cancel()
                numberJob = scope.launch {
                    delay(ChannelNumberInput.NOT_FOUND_DURATION_MILLIS)
                    if (numberOverlay == overlay) {
                        numberSession.dismissOverlay()
                        numberOverlay = null
                    }
                    numberJob = null
                }
            }
        }
    }

    fun cancelNumberInput() {
        if (numberSession.cancel()) {
            numberJob?.cancel()
            numberJob = null
            numberOverlay = null
        }
    }

    BackHandler(enabled = numberOverlay is ChannelNumberOverlay.Digits) {
        cancelNumberInput()
    }

    // Ritorno dal player/da una categoria: focus sul canale o sulla categoria.
    val categoryListState = rememberLazyListState()
    val categoryFocusMap = remember(categoryFavorites.map { it.favorite.id }) {
        categoryFavorites.associate { it.favorite.id to FocusRequester() }
    }
    LaunchedEffect(restoreCategoryFavoriteId, categoryFocusMap, categoryFavorites) {
        val id = restoreCategoryFavoriteId ?: return@LaunchedEffect
        val index = categoryFavorites.indexOfFirst { it.favorite.id == id }
        if (index >= 0) {
            categoryListState.scrollToItem(index)
            withFrameNanos { }
            runCatching { categoryFocusMap[id]?.requestFocus() }
        }
        onCategoryFocusRestored()
    }

    LaunchedEffect(focusChannelId, focusChannelTick, channels) {
        val id = focusChannelId ?: return@LaunchedEffect
        val index = channels.indexOfFirst { it.streamId == id }
        if (index < 0) {
            onChannelFocusRestored()
            return@LaunchedEffect
        }
        listState.scrollToItem(index)
        withFrameNanos { }
        runCatching { channelFocusMap[id]?.requestFocus() }
        onChannelFocusRestored()
    }

    Box(modifier = Modifier.fillMaxSize()) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .onPreviewKeyEvent { event ->
                    val native = event.nativeKeyEvent
                    if (event.type == KeyEventType.KeyUp) return@onPreviewKeyEvent false
                    val outcome = numberSession.handleKeyEvent(
                        keyCode = native.keyCode,
                        action = native.action,
                        repeatCount = native.repeatCount,
                        allStreams = streamChannels,
                    )
                    when (outcome) {
                        ChannelKeyOutcome.Ignored -> Unit
                        ChannelKeyOutcome.Consumed -> {
                            if (native.action == AndroidKeyEvent.ACTION_DOWN &&
                                native.repeatCount == 0 &&
                                ChannelNumberInput.digitFromKeyCode(native.keyCode) != null
                            ) {
                                numberOverlay = numberSession.overlay
                                numberJob?.cancel()
                                numberJob = scope.launch {
                                    delay(ChannelNumberInput.CONFIRM_DELAY_MILLIS)
                                    val result = numberSession.confirm(allStreams = streamChannels)
                                        ?: return@launch
                                    applyLookupResult(result)
                                }
                            }
                        }
                        is ChannelKeyOutcome.Confirmed -> {
                            numberJob?.cancel()
                            numberJob = null
                            applyLookupResult(outcome.result)
                        }
                        ChannelKeyOutcome.Cancelled,
                        ChannelKeyOutcome.CancelledPassThrough -> {
                            numberJob?.cancel()
                            numberJob = null
                            numberOverlay = null
                        }
                    }
                    outcome.consumed
                },
        ) {
            if (channels.isEmpty()) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f)
                        .padding(horizontal = scale.dp(16f), vertical = scale.dp(20f)),
                ) {
                    Text(
                        text = MY_CHANNELS_EMPTY_MESSAGE,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(16f),
                        modifier = Modifier.testTag("my_channels_empty"),
                    )
                }
            } else {
                LazyColumn(
                    state = listState,
                    verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f)
                        .testTag("my_channels_list"),
                ) {
                    itemsIndexed(channels, key = { _, channel -> channel.streamId }) { index, channel ->
                        val requester = channelFocusMap[channel.streamId]
                        var focused by remember(channel.streamId) { mutableStateOf(false) }
                        DenseListItem(
                            selected = false,
                            onClick = { onPlayChannel(channel) },
                            leadingContent = {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                                ) {
                                    Text(
                                        text = "${index + 1}",
                                        color = FvpColors.Green,
                                        fontSize = scale.sp(22f),
                                        fontWeight = FontWeight.Bold,
                                        modifier = Modifier
                                            .width(scale.dp(46f))
                                            .testTag("my_channel_number_${channel.streamId}"),
                                    )
                                    ChannelLogoImage(
                                        imageUrl = channel.logo,
                                        name = channel.name,
                                        scale = scale,
                                        modifier = Modifier.size(scale.rowLogo),
                                    )
                                }
                            },
                            headlineContent = {
                                Column {
                                    FocusMarqueeText(
                                        text = channel.name,
                                        focused = focused,
                                        fontSize = scale.rowText,
                                        fontWeight = FontWeight.Medium,
                                    )
                                    ChannelScheduleInfo(
                                        programs = schedule.programs[channel.streamId],
                                        nowMillis = schedule.nowMillis,
                                        scale = scale,
                                        showNext = false,
                                        textSizeBase = 11f,
                                        testTagPrefix = "my_channel_schedule_${channel.streamId}",
                                    )
                                }
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .testTag("my_channel_${channel.streamId}")
                                .then(if (requester != null) Modifier.focusRequester(requester) else Modifier)
                                .then(
                                    if (index == 0) {
                                        Modifier.focusRequester(firstFocus).focusRequester(contentFocusRequester)
                                    } else {
                                        Modifier
                                    },
                                )
                                .onFocusChanged { focusState -> focused = focusState.isFocused }
                                .onPreviewKeyEvent { event ->
                                    if (event.type != KeyEventType.KeyDown) {
                                        false
                                    } else when (event.key) {
                                        // A sinistra si torna alle schede.
                                        Key.DirectionLeft -> {
                                            runCatching { onTabFocusRequester.requestFocus() }
                                            true
                                        }
                                        // Dalla prima riga si risale alle schede.
                                        Key.DirectionUp -> {
                                            if (index == 0) {
                                                runCatching { onTabFocusRequester.requestFocus() }
                                                true
                                            } else {
                                                false
                                            }
                                        }
                                        else -> false
                                    }
                                }
                                .fvpLongPress { onLongPressChannel(channel) },
                            colors = ListItemDefaults.colors(
                                containerColor = FvpColors.Surface.copy(alpha = CHANNEL_ROW_ALPHA),
                                contentColor = FvpColors.TextPrimary,
                                focusedContainerColor = FvpColors.SurfaceElevated,
                            ),
                            scale = ListItemDefaults.scale(focusedScale = 1.02f),
                            border = ListItemDefaults.border(
                                focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
                            ),
                            shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        )
                    }
                }
            }

            if (categoryFavorites.isNotEmpty()) {
                Column(modifier = Modifier.padding(top = scale.dp(6f))) {
                    LiveCategoryFavoriteRow(
                        items = categoryFavorites,
                        scale = scale,
                        onSelect = onSelectCategory,
                        onToggle = onToggleCategory,
                        firstFocus = if (channels.isEmpty()) firstFocus else remember { FocusRequester() },
                        contentFocusRequester = contentFocusRequester,
                        listState = categoryListState,
                        focusMap = categoryFocusMap,
                        onRowFocused = {},
                    )
                }
            } else if (channels.isEmpty()) {
                Spacer(Modifier.height(scale.dp(4f)))
            }
        }

        ChannelNumberIndicator(
            overlay = numberOverlay,
            scale = scale,
            modifier = Modifier
                .align(Alignment.TopEnd)
                .padding(top = scale.dp(8f), end = scale.dp(12f)),
        )
    }
}

/** "Film e Serie": le righe dei preferiti Film e Serie, come prima. */
@Composable
private fun FilmSeriesTab(
    vod: List<FavoriteItem>,
    series: List<FavoriteItem>,
    scale: UiScale,
    progress: Map<String, WatchProgress>,
    firstFocus: FocusRequester,
    contentFocusRequester: FocusRequester,
    vodListState: LazyListState,
    seriesListState: LazyListState,
    vodFocusMap: Map<String, FocusRequester>,
    seriesFocusMap: Map<String, FocusRequester>,
    scrollState: ScrollState,
    rowsBringIntoView: RowsBringIntoViewer,
    onToggleFavorite: (FavoriteItem) -> Unit,
    onOpenVod: (FavoriteItem) -> Unit,
    onOpenSeries: (FavoriteItem) -> Unit,
) {
    if (vod.isEmpty() && series.isEmpty()) {
        Box(modifier = Modifier.fillMaxSize()) {
            Column(modifier = Modifier.fillMaxSize().padding(scale.dp(16f))) {
                Text(
                    text = "Nessun film o serie nei preferiti",
                    color = FvpColors.TextPrimary,
                    fontWeight = FontWeight.Bold,
                )
                Text(
                    text = "Tieni premuto il tasto OK su un film o una serie per aggiungerlo ai preferiti. Puoi farlo anche dal dettaglio con il pulsante dedicato.",
                    color = FvpColors.TextSecondary,
                    modifier = Modifier.padding(top = scale.dp(8f)),
                )
            }
        }
        return
    }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(horizontal = scale.dp(4f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(18f)),
    ) {
        if (vod.isNotEmpty()) {
            Box(modifier = rowsBringIntoView.rowModifier(ROW_VOD)) {
                FavoriteRow(
                    title = "Film",
                    items = vod,
                    scale = scale,
                    onSelect = onOpenVod,
                    onToggle = onToggleFavorite,
                    firstFocus = firstFocus,
                    contentFocusRequester = contentFocusRequester,
                    isFirstRow = true,
                    onDetail = onOpenVod,
                    listState = vodListState,
                    focusMap = vodFocusMap,
                    progress = progress,
                    onRowFocused = { rowsBringIntoView.onRowFocused(ROW_VOD) },
                )
            }
        }
        if (series.isNotEmpty()) {
            Box(modifier = rowsBringIntoView.rowModifier(ROW_SERIES)) {
                FavoriteRow(
                    title = "Serie",
                    items = series,
                    scale = scale,
                    onSelect = onOpenSeries,
                    onToggle = onToggleFavorite,
                    firstFocus = if (vod.isEmpty()) firstFocus else remember { FocusRequester() },
                    contentFocusRequester = contentFocusRequester,
                    isFirstRow = vod.isEmpty(),
                    onDetail = onOpenSeries,
                    listState = seriesListState,
                    focusMap = seriesFocusMap,
                    progress = progress,
                    onRowFocused = { rowsBringIntoView.onRowFocused(ROW_SERIES) },
                )
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
    isFirstRow: Boolean,
    onDetail: ((FavoriteItem) -> Unit)? = null,
    listState: androidx.compose.foundation.lazy.LazyListState,
    focusMap: Map<String, FocusRequester>,
    progress: Map<String, WatchProgress> = emptyMap(),
    onRowFocused: () -> Unit = {},
) {
    Column {
        // Il titolo si allinea alla prima card, dentro il contentPadding della riga.
        Text(text = title, color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold, modifier = Modifier.padding(start = scale.focusSafePadding, bottom = scale.dp(8f)))
        LazyRow(
            state = listState,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
            contentPadding = PaddingValues(scale.focusSafePadding),
            modifier = Modifier.testTag("favorites_row_$title")
        ) {
            itemsIndexed(items, key = { _, f -> f.id }) { index, fav ->
                val itemFr = remember(fav.id, focusMap) { focusMap[fav.id] ?: FocusRequester() }
                var focused by remember(fav.id) { mutableStateOf(false) }
                val favoriteProgress = if (fav.type == FavoriteItem.VOD) {
                    progress[ProgressKeys.movie(fav.id.removePrefix("vod_"))]
                } else {
                    null
                }
                Card(
                    onClick = {
                        if (fav.type == FavoriteItem.LIVE) onSelect(fav) else onDetail?.invoke(fav) ?: onSelect(fav)
                    },
                    modifier = Modifier.width(scale.dp(140f)).testTag("favorite_${fav.id}")
                        .focusRequester(itemFr)
                        .then(if (index == 0 && isFirstRow) Modifier.focusRequester(firstFocus).focusRequester(contentFocusRequester) else if (index == 0) Modifier.focusRequester(firstFocus) else Modifier)
                        .onFocusChanged { focusState ->
                            focused = focusState.isFocused
                            if (focusState.isFocused) onRowFocused()
                        }
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
                            if (favoriteProgress?.isWatched == true) {
                                WatchSeenBadge(
                                    scale = scale,
                                    modifier = Modifier.align(Alignment.TopStart).padding(scale.dp(6f))
                                        .testTag("favorite_${fav.id}_seen"),
                                )
                            }
                            WatchProgressLine(
                                progress = favoriteProgress,
                                scale = scale,
                                modifier = Modifier.align(Alignment.BottomCenter),
                            )
                        }
                        Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(4f)), modifier = Modifier.padding(top = scale.dp(6f))) {
                            FocusMarqueeText(
                                text = fav.title,
                                focused = focused,
                                modifier = Modifier.weight(1f),
                            )
                            if (fav.type == FavoriteItem.LIVE) {
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

@Composable
private fun LiveCategoryFavoriteRow(
    items: List<LiveCategoryFavorite>,
    scale: UiScale,
    onSelect: (FavoriteItem) -> Unit,
    onToggle: (FavoriteItem) -> Unit,
    firstFocus: FocusRequester,
    contentFocusRequester: FocusRequester,
    listState: androidx.compose.foundation.lazy.LazyListState,
    focusMap: Map<String, FocusRequester>,
    onRowFocused: () -> Unit = {},
) {
    Column {
        Text(
            text = "Categorie Live", color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold,
            // Il titolo si allinea alla prima card, dentro il contentPadding della riga.
            modifier = Modifier.padding(start = scale.focusSafePadding, bottom = scale.dp(8f)),
        )
        LazyRow(
            state = listState,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
            contentPadding = PaddingValues(scale.focusSafePadding),
            modifier = Modifier.testTag("favorites_row_Categorie Live"),
        ) {
            itemsIndexed(items, key = { _, item -> item.favorite.id }) { index, item ->
                val favorite = item.favorite
                var focused by remember(favorite.id) { mutableStateOf(false) }
                // Unavailable cards stay focusable so a long press can still remove them.
                Card(
                    onClick = { if (item.available) onSelect(favorite) },
                    modifier = Modifier.width(scale.dp(220f)).testTag("favorite_${favorite.id}")
                        .focusRequester(focusMap.getValue(favorite.id))
                        .then(if (index == 0) Modifier.focusRequester(firstFocus).focusRequester(contentFocusRequester) else Modifier)
                        .onFocusChanged { focusState ->
                            focused = focusState.isFocused
                            if (focusState.isFocused) onRowFocused()
                        }
                        .fvpLongPress { onToggle(favorite) },
                    scale = CardDefaults.scale(focusedScale = 1.04f),
                    border = CardDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                    colors = CardDefaults.colors(containerColor = FvpColors.Surface),
                    shape = CardDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                ) {
                    // Riga compatta del canale in Preferiti.
                    Column(modifier = Modifier.padding(scale.favoriteRowPadding)) {
                        FocusMarqueeText(
                            text = favorite.title,
                            focused = focused,
                            fontSize = scale.rowText,
                            color = if (item.available) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            fontWeight = FontWeight.Medium,
                        )
                        Text(
                            text = item.supportingText, color = FvpColors.TextSecondary,
                            fontSize = scale.rowText,
                            modifier = Modifier.padding(top = scale.dp(4f)),
                        )
                    }
                }
            }
        }
    }
}

/** Indici delle righe dei Preferiti, per il ritorno in vista della riga con il focus. */
private const val ROW_VOD = 0
private const val ROW_SERIES = 1
