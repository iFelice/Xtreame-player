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
import it.felixvision.tv.data.catalog.allCategoryIds
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

/**
 * Timeout del ripristino del focus sul canale guardato dopo il ritorno dal
 * player (2 s): trascorso quello, il segnaposto viene consumato comunque.
 */
private const val PLAYER_RETURN_FOCUS_TIMEOUT_MILLIS = 2_000L

/** Passo di attesa del canale nell'elenco durante il ripristino del focus. */
private const val PLAYER_RETURN_FOCUS_POLL_MILLIS = 50L

/**
 * Canali Live della categoria scelta, nell'ordine dell'elenco del provider.
 *
 * Appartenenza, non uguaglianza: un canale compare in OGNI categoria che il
 * provider gli assegna (`category_id` principale + `category_ids`), non solo
 * nella principale. Categoria non scelta = nessun canale.
 */
fun liveStreamsForCategory(categoryId: String?, streams: List<LiveStream>): List<LiveStream> {
    if (categoryId == null) return emptyList()
    return streams.filter { categoryId in it.allCategoryIds }
}

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
        liveStreamsForCategory(debouncedCategoryId, streams)
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
    // Requester per streamId su tutti i canali (non solo quelli filtrati):
    // restano validi quando il ripristino del focus cambia categoria e
    // `filtered` viene ricreato.
    val channelFocusRequesters = remember(streams) {
        streams.associate { it.streamId to FocusRequester() }
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

    val latestStreams by rememberUpdatedState(streams)
    val latestCategories by rememberUpdatedState(categories)

    // Ritorno dal player: apre la categoria del canale guardato e gli dà il
    // focus. La categoria da aprire è la principale del canale, oppure la
    // prima delle sue categorie (allCategoryIds, che mette la principale in
    // testa) presente tra quelle del catalogo. L'elenco usa l'appartenenza
    // (`categoryId in allCategoryIds`), non l'uguaglianza: si aspetta che il
    // canale compaia in `filtered` prima di dargli il focus. Il segnaposto
    // (`focusChannelId`) viene consumato SEMPRE — ripristino riuscito,
    // impossibile o dopo 2 s di timeout — così non può più guidare il focus
    // dopo (per esempio quando l'utente cambia categoria a mano: questo
    // effetto non riparte al cambio di categoria).
    LaunchedEffect(focusChannelId, focusChannelTick) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val target = latestStreams.firstOrNull { it.streamId == targetId }
        if (target == null) {
            onChannelFocusRestored()
            return@LaunchedEffect
        }
        val categoryIds = latestCategories.mapTo(HashSet()) { it.categoryId }
        val targetCategory = target.allCategoryIds.firstOrNull { it in categoryIds }
        val restoreCategory = targetCategory ?: debouncedCategoryId
        if (targetCategory != null) {
            val index = latestCategories.indexOfFirst { it.categoryId == targetCategory }
            if (index >= 0) categoryListState.scrollToItem(index)
            focusedCategoryId = targetCategory
            debouncedCategoryId = targetCategory
        }
        var waitedMillis = 0L
        while (waitedMillis < PLAYER_RETURN_FOCUS_TIMEOUT_MILLIS) {
            // Riafferma la categoria da aprire: mentre la lista cambiava,
            // il focus può essere finito su una voce della colonna delle
            // categorie, che la riaprirebbe (onFocusedCategoryId + debounce).
            if (focusedCategoryId != restoreCategory) focusedCategoryId = restoreCategory
            if (debouncedCategoryId != restoreCategory) debouncedCategoryId = restoreCategory
            val current = liveStreamsForCategory(debouncedCategoryId, latestStreams)
            val index = current.indexOfFirst { it.streamId == targetId }
            if (index >= 0) {
                // Scorre solo quando la lista ha già ricaricato la categoria.
                if (index < channelsListState.layoutInfo.totalItemsCount) {
                    channelsListState.scrollToItem(index)
                }
                withFrameNanos { }
                // Il focus va dato solo quando la riga del canale è composta.
                if (channelsListState.layoutInfo.visibleItemsInfo.any { it.key == targetId }) {
                    categoryExpanded = false
                    if (channelFocusRequesters[targetId]?.requestFocus() == true) {
                        focusedCategoryId = restoreCategory
                        debouncedCategoryId = restoreCategory
                        break
                    }
                }
            }
            delay(PLAYER_RETURN_FOCUS_POLL_MILLIS)
            waitedMillis += PLAYER_RETURN_FOCUS_POLL_MILLIS
        }
        onChannelFocusRestored()
    }

    // OK su una voce della colonna: la categoria diventa subito quella scelta
    // (senza i 300 ms di debounce) e il focus va al primo canale, scorrendo
    // all'inizio. Con la categoria vuota non c'è nessun canale da focalizzare:
    // il focus resta sulla voce e la colonna resta aperta.
    var pendingFirstChannelFocus by remember { mutableStateOf<String?>(null) }
    val confirmCategory: (String) -> Unit = { categoryId ->
        focusedCategoryId = categoryId
        debouncedCategoryId = categoryId
        pendingFirstChannelFocus = categoryId
    }
    LaunchedEffect(pendingFirstChannelFocus, filtered) {
        val categoryId = pendingFirstChannelFocus ?: return@LaunchedEffect
        if (categoryId != debouncedCategoryId) return@LaunchedEffect
        // Categoria vuota: non c'è nessun canale da focalizzare, la richiesta si
        // consuma qui e il focus resta sulla voce della colonna.
        if (filtered.isEmpty()) {
            pendingFirstChannelFocus = null
            return@LaunchedEffect
        }
        val first = filtered.first()
        channelsListState.scrollToItem(0)
        withFrameNanos { }
        channelFocusRequesters[first.streamId]?.requestFocus()
        pendingFirstChannelFocus = null
    }

    val scope = rememberCoroutineScope()
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
                    onCategoryConfirmed = confirmCategory,
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
