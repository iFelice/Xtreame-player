package it.felixvision.tv.ui.catalog

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.ChannelKeyOutcome
import it.felixvision.tv.data.playback.ChannelLookupResult
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.data.playback.ChannelNumberOverlay
import it.felixvision.tv.data.playback.ChannelNumberSession
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.ChannelScheduleInfo
import it.felixvision.tv.ui.components.rememberChannelSchedulePrograms
import it.felixvision.tv.ui.components.rememberMinuteNow
import it.felixvision.tv.ui.components.ChannelNumberIndicator
import it.felixvision.tv.ui.components.CollapsingCategoryColumn
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.PositionIndicator
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.listPosition
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.glassBorder
import it.felixvision.tv.ui.theme.rowLogo
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import it.felixvision.tv.ui.theme.surfaceCorner
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/** Larghezza della lista canali rispetto all'area a destra delle categorie. */
const val LIVE_LIST_WIDTH_FRACTION = 0.8f

/** Opacità delle righe dei canali: la superficie attuale all'80%. */
const val CHANNEL_ROW_ALPHA = 0.8f

@Composable
fun LiveSection(
    categories: List<Category>,
    streams: List<LiveStream>,
    scale: UiScale,
    onSelectChannel: (LiveStream) -> Unit,
    onLongPressChannel: (LiveStream) -> Unit = {},
    favorites: List<FavoriteItem> = emptyList(),
    /** Canali presenti in "I miei canali": mostrano la stella. */
    myChannelIds: Set<String> = emptySet(),
    epgClient: ChannelScheduleLoader? = null,
    epgServer: String = "",
    epgUsername: String = "",
    epgPassword: String = "",
    clock: Clock = SystemClock,
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    onBackToDrawer: (() -> Unit)? = null,
    initialCategoryId: String? = null,
    onLongPressCategory: ((Category) -> Unit)? = null,
    focusChannelId: String? = null,
    focusChannelTick: Int = 0,
    onChannelFocusRestored: () -> Unit = {},
) {
    val initialSelection = categories.firstOrNull { it.categoryId == initialCategoryId }?.categoryId
    var focusedCategoryId by remember(initialCategoryId) {
        mutableStateOf(initialSelection ?: categories.firstOrNull()?.categoryId)
    }
    var debouncedCategoryId by remember(initialCategoryId) { mutableStateOf(focusedCategoryId) }
    var categoryExpanded by remember(initialCategoryId) { mutableStateOf(initialSelection == null) }

    LaunchedEffect(focusedCategoryId) {
        delay(300L)
        debouncedCategoryId = focusedCategoryId
    }

    val filtered = remember(streams, debouncedCategoryId) {
        if (debouncedCategoryId == null) emptyList()
        else streams.filter { it.categoryId == debouncedCategoryId }
    }

    val categoryListState = rememberLazyListState()
    val channelsListState = rememberLazyListState()
    // Guida "in onda / a seguire" solo per i canali visibili a schermo.
    val visibleChannelIds by remember(filtered) {
        androidx.compose.runtime.derivedStateOf {
            channelsListState.layoutInfo.visibleItemsInfo.mapNotNull { info ->
                filtered.getOrNull(info.index)?.streamId
            }
        }
    }
    val schedulePrograms = rememberChannelSchedulePrograms(
        streamIds = visibleChannelIds,
        loader = epgClient,
        server = epgServer,
        username = epgUsername,
        password = epgPassword,
    )
    val scheduleNow = rememberMinuteNow(clock)
    // Indice del canale con il focus, per il contatore "N / Totale".
    var focusedChannelIndex by remember(filtered) { mutableStateOf<Int?>(null) }
    val channelFocusRequesters = remember(filtered) {
        filtered.associate { it.streamId to FocusRequester() }
    }

    val categoryFocusRequesters = remember(categories) {
        categories.associate { it.categoryId to FocusRequester() }
    }

    val favoriteCategoryIds = remember(favorites) {
        favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY }.mapNotNull { it.categoryId }.toSet()
    }

    // Only the Favorites entry path moves focus automatically. Normal Live entry is unchanged.
    LaunchedEffect(initialCategoryId, focusChannelTick) {
        if (focusChannelId != null) return@LaunchedEffect
        val index = categories.indexOfFirst { it.categoryId == initialCategoryId }
        if (initialCategoryId != null && index >= 0) {
            categoryListState.scrollToItem(index)
            if (filtered.isNotEmpty()) {
                channelsListState.scrollToItem(0)
                withFrameNanos { }
                channelFocusRequesters[filtered.first().streamId]?.requestFocus()
            } else {
                // A valid but empty category has no first channel: keep navigation usable.
                categoryExpanded = true
                withFrameNanos { }
                categoryFocusRequesters[initialCategoryId]?.requestFocus()
            }
        }
    }

    // Ritorno dal player: apre la categoria del canale guardato.
    LaunchedEffect(focusChannelId, focusChannelTick) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val targetCategory = streams.firstOrNull { it.streamId == targetId }?.categoryId
        if (targetCategory != null &&
            (targetCategory != focusedCategoryId || targetCategory != debouncedCategoryId)
        ) {
            val index = categories.indexOfFirst { it.categoryId == targetCategory }
            if (index >= 0) categoryListState.scrollToItem(index)
            focusedCategoryId = targetCategory
            debouncedCategoryId = targetCategory
        }
    }

    // Ritorno dal player: focus sull'ultimo canale guardato.
    LaunchedEffect(filtered, focusChannelId) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val target = filtered.firstOrNull { it.streamId == targetId }
        if (target == null) {
            val expectedCategory = streams.firstOrNull { it.streamId == targetId }?.categoryId
            if (expectedCategory == null || expectedCategory == debouncedCategoryId) {
                onChannelFocusRestored()
            }
            return@LaunchedEffect
        }
        val index = filtered.indexOfFirst { it.streamId == targetId }
        channelsListState.scrollToItem(index)
        withFrameNanos { }
        channelFocusRequesters[targetId]?.requestFocus()
        categoryExpanded = false
        onChannelFocusRestored()
    }

    val scope = rememberCoroutineScope()
    val latestStreams by rememberUpdatedState(streams)
    val latestCategories by rememberUpdatedState(categories)
    val latestOnSelectChannel by rememberUpdatedState(onSelectChannel)
    val channelNumberSession = remember { ChannelNumberSession() }
    var channelNumberOverlay by remember { mutableStateOf<ChannelNumberOverlay?>(null) }
    var channelNumberJob by remember { mutableStateOf<Job?>(null) }

    fun applyChannelLookupResult(result: ChannelLookupResult) {
        when (result) {
            is ChannelLookupResult.Found -> {
                channelNumberOverlay = null
                latestOnSelectChannel(result.channel)
            }
            is ChannelLookupResult.NotFound -> {
                val overlay = channelNumberSession.overlay
                channelNumberOverlay = overlay
                channelNumberJob?.cancel()
                channelNumberJob = scope.launch {
                    delay(ChannelNumberInput.NOT_FOUND_DURATION_MILLIS)
                    if (channelNumberOverlay == overlay) {
                        channelNumberSession.dismissOverlay()
                        channelNumberOverlay = null
                    }
                    channelNumberJob = null
                }
            }
        }
    }

    fun cancelChannelNumberInput() {
        if (channelNumberSession.cancel()) {
            channelNumberJob?.cancel()
            channelNumberJob = null
            channelNumberOverlay = null
        }
    }

    BackHandler(enabled = channelNumberOverlay is ChannelNumberOverlay.Digits) {
        cancelChannelNumberInput()
    }

    // Il margine sicuro del focus sta nel contentPadding della lista: la Row
    // resta senza padding per non sommare due volte la stessa quantità.
    // L'indicatore di posizione (contatore e barra) sta sopra, sul bordo destro.
    Box(
        modifier = Modifier
            .onPreviewKeyEvent { event ->
                val native = event.nativeKeyEvent
                val outcome = channelNumberSession.handleKeyEvent(
                    keyCode = native.keyCode,
                    action = native.action,
                    repeatCount = native.repeatCount,
                    allStreams = latestStreams,
                    categories = latestCategories,
                )
                when (outcome) {
                    ChannelKeyOutcome.Ignored -> Unit
                    ChannelKeyOutcome.Consumed -> {
                        if (native.action == AndroidKeyEvent.ACTION_DOWN &&
                            native.repeatCount == 0 &&
                            ChannelNumberInput.digitFromKeyCode(native.keyCode) != null
                        ) {
                            channelNumberOverlay = channelNumberSession.overlay
                            channelNumberJob?.cancel()
                            channelNumberJob = scope.launch {
                                delay(ChannelNumberInput.CONFIRM_DELAY_MILLIS)
                                val result = channelNumberSession.confirm(
                                    allStreams = latestStreams,
                                    categories = latestCategories,
                                ) ?: return@launch
                                applyChannelLookupResult(result)
                            }
                        }
                    }
                    is ChannelKeyOutcome.Confirmed -> {
                        channelNumberJob?.cancel()
                        channelNumberJob = null
                        applyChannelLookupResult(outcome.result)
                    }
                    ChannelKeyOutcome.Cancelled,
                    ChannelKeyOutcome.CancelledPassThrough -> {
                        channelNumberJob?.cancel()
                        channelNumberJob = null
                        channelNumberOverlay = null
                    }
                }
                outcome.consumed
            }
            .then(modifier)
            .fillMaxSize(),
    ) {
        Row(modifier = Modifier.fillMaxSize(), horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
            if (categories.isEmpty()) {
                EmptyState(title = "Nessuna categoria", description = "Il server non ha restituito categorie live.", scale = scale, modifier = Modifier.weight(0.3f))
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
                    testTagPrefix = "live",
                    favoriteCategoryIds = favoriteCategoryIds,
                    onLongPressCategory = onLongPressCategory,
                    modifier = Modifier
                )
            }

            Box(modifier = Modifier.weight(1f).fillMaxHeight()) {
                Column(modifier = Modifier.fillMaxSize()) {
                    if (filtered.isEmpty()) {
                        EmptyState(title = "Nessun canale", description = "Seleziona una categoria per vedere i canali.", scale = scale)
                    } else {
                        // Lista un po' più stretta dell'area a destra delle categorie,
                        // allineata a sinistra: il resto resta sfondo. Il contenitore è
                        // un vetro senza sfocatura (bianco al 4%, bordo bianco al 10%).
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(LIVE_LIST_WIDTH_FRACTION)
                                .fillMaxHeight()
                                .background(FvpColors.GlassFill, RoundedCornerShape(scale.surfaceCorner))
                                .border(
                                    width = scale.glassBorder,
                                    color = FvpColors.GlassBorder,
                                    shape = RoundedCornerShape(scale.surfaceCorner),
                                ),
                        ) {
                            LazyColumn(
                                state = channelsListState,
                                verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                                // Ingrandimento e cornice del focus restano dentro la lista.
                                contentPadding = PaddingValues(scale.focusSafePadding),
                                modifier = Modifier.fillMaxSize().testTag("live_channels_list"),
                            ) {
                                itemsIndexed(filtered, key = { _, ch -> ch.streamId }) { index, channel ->
                                    val isFav = channel.streamId in myChannelIds
                                    val channelFr = channelFocusRequesters[channel.streamId]
                                    var focused by remember(channel.streamId) { mutableStateOf(false) }
                                    // Riga compatta: altezza e logo ridotti, testo invariato.
                                    // L'identificativo EPG resta visibile, in linea con il nome,
                                    // così la voce rimane su una sola riga.
                                    DenseListItem(
                                        selected = false,
                                        onClick = { onSelectChannel(channel) },
                                        headlineContent = {
                                            Column {
                                                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
                                                    FocusMarqueeText(
                                                        text = channel.name,
                                                        focused = focused,
                                                        fontSize = scale.rowText,
                                                        fontWeight = FontWeight.Medium,
                                                        modifier = Modifier.weight(1f, fill = false),
                                                    )
                                                    channel.epgChannelId?.let { epg ->
                                                        Text(
                                                            text = epg,
                                                            color = FvpColors.TextSecondary,
                                                            fontSize = scale.sp(12f),
                                                            maxLines = 1,
                                                        )
                                                    }
                                                    if (isFav) {
                                                        Box(
                                                            modifier = Modifier.size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("live_channel_${channel.streamId}_fav_star"),
                                                            contentAlignment = Alignment.Center
                                                        ) {
                                                            Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
                                                        }
                                                    }
                                                }
                                                ChannelScheduleInfo(
                                                    programs = schedulePrograms[channel.streamId],
                                                    nowMillis = scheduleNow,
                                                    scale = scale,
                                                    showNext = false,
                                                    textSizeBase = 11f,
                                                    testTagPrefix = "live_channel_schedule_${channel.streamId}",
                                                )
                                            }
                                        },
                                        leadingContent = {
                                            ChannelLogoImage(imageUrl = channel.streamIcon, name = channel.name, scale = scale, modifier = Modifier.size(scale.rowLogo))
                                        },
                                        trailingContent = {
                                            channel.num?.let { Text(text = "#$it") }
                                        },
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .testTag("live_channel_${channel.streamId}")
                                            .then(if (channelFr != null) Modifier.focusRequester(channelFr) else Modifier)
                                            .then(if (index == 0) Modifier.focusRequester(contentFocusRequester) else Modifier)
                                            .onFocusChanged { focusState ->
                                                focused = focusState.isFocused
                                                if (focusState.isFocused) {
                                                    categoryExpanded = false
                                                    focusedChannelIndex = index
                                                }
                                            }
                                            .onPreviewKeyEvent { event ->
                                                if (event.key == Key.DirectionLeft) {
                                                    val active = debouncedCategoryId ?: categories.firstOrNull()?.categoryId
                                                    active?.let { categoryFocusRequesters[it]?.requestFocus() }
                                                    categoryExpanded = true
                                                    true
                                                } else false
                                            }
                                            .fvpLongPress { onLongPressChannel(channel) },
                                        colors = ListItemDefaults.colors(
                                            // Riga leggermente trasparente; con il focus il
                                            // verde resta pieno come prima.
                                            containerColor = FvpColors.Surface.copy(alpha = CHANNEL_ROW_ALPHA),
                                            contentColor = FvpColors.TextPrimary,
                                            focusedContainerColor = FvpColors.SurfaceElevated,
                                        ),
                                        scale = ListItemDefaults.scale(focusedScale = 1.02f),
                                        border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                                        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }

        // Contatore "N / Totale" e barra di scorrimento dell'elenco canali.
        PositionIndicator(
            position = listPosition(
                listState = channelsListState,
                focusedIndex = focusedChannelIndex,
                totalItems = filtered.size,
            ),
            scale = scale,
        )

        ChannelNumberIndicator(
            overlay = channelNumberOverlay,
            scale = scale,
            modifier = Modifier
                .align(Alignment.TopEnd)
                .padding(top = scale.dp(28f), end = scale.dp(20f)),
        )
    }
}
