package it.felixvision.tv.ui.catalog

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.SeriesInfoResponse
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.ignoreHeldOkUntilReleased
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.detail.FilmDetailOverlay
import it.felixvision.tv.ui.detail.SeriesDetailOverlay
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay

/**
 * Riga orizzontale "Continua a guardare" inserita nella schermata Novità.
 * Mantiene le stesse azioni della precedente schermata: OK riprende dal punto
 * salvato; la pressione lunga apre la scheda o permette di nascondere la voce.
 * Le serie mostrano l'episodio da riprendere e il relativo avanzamento.
 *
 * La chiamata resta composta anche con [entries] vuoto (senza produrre altezza
 * visibile), così un dettaglio aperto non viene smontato quando una voce sparisce.
 */
@Composable
fun ContinueWatchingRow(
    entries: List<ContinueEntry>,
    scale: UiScale,
    progress: Map<String, WatchProgress> = emptyMap(),
    loadingKey: String? = null,
    errorMessage: String? = null,
    onPlayEntry: (ContinueEntry) -> Unit = {},
    onRemoveEntry: (ContinueEntry) -> Unit = {},
    refocusTick: Int = 0,
    playerIsOpen: Boolean = false,
    onRowFocused: () -> Unit = {},
    catalogViewModel: CatalogViewModel? = null,
    favorites: List<FavoriteItem> = emptyList(),
    onToggleFavorite: (FavoriteItem) -> Unit = {},
    onPlayVod: (VodStream) -> Unit = {},
    onPlayEpisode: (Episode, SeriesPlayback) -> Unit = { _, _ -> },
    onSetEpisodeWatched: (Episode, Boolean, Long) -> Unit = { _, _, _ -> },
    onToggleWatched: (VodStream, Boolean, Long) -> Unit = { _, _, _ -> },
    focusEpisodeId: String? = null,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    modifier: Modifier = Modifier,
) {
    val listState = rememberLazyListState()
    val itemFocusRequesters = remember(entries) {
        entries.associate { it.key to FocusRequester() }
    }
    var lastOpenedKey by remember { mutableStateOf<String?>(null) }
    var handledTick by remember { mutableIntStateOf(refocusTick) }

    // Voce con il menu della pressione lunga aperto e dettaglio aperto.
    var menuEntry by remember { mutableStateOf<ContinueEntry?>(null) }
    var detailEntry by remember { mutableStateOf<ContinueEntry?>(null) }
    var detailVodInfo by remember { mutableStateOf<VodInfoResponse?>(null) }
    var detailSeriesInfo by remember { mutableStateOf<SeriesInfoResponse?>(null) }
    var detailIsLoading by remember { mutableStateOf(false) }
    var detailError by remember { mutableStateOf<String?>(null) }
    var retryKey by remember { mutableIntStateOf(0) }
    // Voce su cui riportare il focus quando il dettaglio o la voce scompaiono.
    var detailRefocusKey by remember { mutableStateOf<String?>(null) }
    var pendingRemovalKey by remember { mutableStateOf<String?>(null) }
    var pendingRemovalIndex by remember { mutableIntStateOf(-1) }

    // Caricamento della scheda, stesso schema di FavoritesSection.
    LaunchedEffect(detailEntry?.key, retryKey) {
        val entry = detailEntry
        if (entry == null || catalogViewModel == null) {
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
            if (entry.isSeries) {
                val info = catalogViewModel.loadSeriesInfo(
                    entry.seriesId ?: entry.key.removePrefix("series_"),
                )
                if (info == null) detailError = "Informazioni non disponibili" else detailSeriesInfo = info
            } else {
                val info = catalogViewModel.loadVodInfo(
                    entry.streamId ?: entry.key.removePrefix("vod_"),
                )
                if (info == null) detailError = "Informazioni non disponibili" else detailVodInfo = info
            }
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            detailError = "Informazioni non disponibili"
        } finally {
            detailIsLoading = false
        }
    }

    // Chiuso il dettaglio ("Indietro"): il focus torna alla voce, se ancora
    // presente; altrimenti alla prima sezione di Novità.
    LaunchedEffect(detailRefocusKey, entries) {
        val key = detailRefocusKey ?: return@LaunchedEffect
        delay(80L)
        withFrameNanos { }
        val index = entries.indexOfFirst { it.key == key }
        if (index < 0) {
            runCatching { contentFocusRequester.requestFocus() }
        } else {
            if (listState.layoutInfo.visibleItemsInfo.none { it.key == key }) {
                runCatching { listState.scrollToItem(index) }
                withFrameNanos { }
            }
            runCatching { itemFocusRequesters[key]?.requestFocus() }
        }
        detailRefocusKey = null
    }

    // Ritorno dal player: focus sulla voce appena aperta, oppure sulla prima se
    // nel frattempo è uscita dall'archivio (per esempio perché vista).
    LaunchedEffect(refocusTick, entries) {
        if (refocusTick == 0 || refocusTick == handledTick) return@LaunchedEffect
        delay(80L)
        handledTick = refocusTick
        if (entries.isEmpty()) {
            runCatching { contentFocusRequester.requestFocus() }
            return@LaunchedEffect
        }
        val target = lastOpenedKey?.takeIf { key -> entries.any { it.key == key } }
            ?: entries.first().key
        val index = entries.indexOfFirst { it.key == target }.coerceAtLeast(0)
        runCatching { listState.scrollToItem(index) }
        withFrameNanos { }
        runCatching { itemFocusRequesters[target]?.requestFocus() }
    }

    // Dopo la rimozione il focus passa alla voce che occupa l'indice rimosso
    // (o a quella precedente); se la riga è vuota, alla prima card di Novità.
    // Player e schede non perdono focus.
    LaunchedEffect(pendingRemovalKey, entries, playerIsOpen, menuEntry, detailEntry) {
        val key = pendingRemovalKey ?: return@LaunchedEffect
        if (entries.any { it.key == key } || playerIsOpen || menuEntry != null || detailEntry != null) {
            return@LaunchedEffect
        }
        if (entries.isEmpty()) {
            withFrameNanos { }
            runCatching { contentFocusRequester.requestFocus() }
        } else {
            val index = pendingRemovalIndex.coerceIn(0, entries.lastIndex)
            val target = entries[index]
            runCatching { listState.scrollToItem(index) }
            withFrameNanos { }
            runCatching { itemFocusRequesters[target.key]?.requestFocus() }
        }
        pendingRemovalKey = null
        pendingRemovalIndex = -1
    }

    // Il composable resta montato anche con lista vuota per non chiudere un
    // dettaglio aperto; il Box vuoto misura zero, quindi la riga è davvero assente.
    Box(modifier = modifier.fillMaxWidth()) {
        if (entries.isNotEmpty()) {
            Column(modifier = Modifier.fillMaxWidth()) {
                errorMessage?.let { message ->
                    Text(
                        text = message,
                        color = FvpColors.Error,
                        fontSize = scale.sp(15f),
                        modifier = Modifier
                            .padding(start = scale.focusSafePadding, end = scale.focusSafePadding, bottom = scale.dp(8f))
                            .testTag("continua_error"),
                    )
                }
                Text(
                    text = "Continua a guardare",
                    color = FvpColors.TextPrimary,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier
                        .padding(start = scale.focusSafePadding, bottom = scale.dp(8f))
                        .testTag("continua_heading"),
                )
                LazyRow(
                    state = listState,
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier.fillMaxWidth().testTag("continua_row"),
                ) {
                    itemsIndexed(entries, key = { _, entry -> entry.key }) { index, entry ->
                        val itemFr = remember(entry.key, itemFocusRequesters) {
                            itemFocusRequesters[entry.key] ?: FocusRequester()
                        }
                        var focused by remember(entry.key) { mutableStateOf(false) }
                        val movieProgress = progress[ProgressKeys.movie(entry.streamId.orEmpty())]
                        val episodeProgress = progress[ProgressKeys.episode(entry.episodeId.orEmpty())]
                        val shownProgress = if (entry.isSeries) episodeProgress else movieProgress
                        Card(
                            onClick = {
                                lastOpenedKey = entry.key
                                onPlayEntry(entry)
                            },
                            modifier = Modifier
                                .width(scale.dp(140f))
                                .testTag("continua_${entry.key}")
                                .focusRequester(itemFr)
                                .then(
                                    if (index == 0) Modifier.focusRequester(contentFocusRequester) else Modifier,
                                )
                                .onFocusChanged { focusState ->
                                    focused = focusState.isFocused
                                    if (focusState.isFocused) onRowFocused()
                                }
                                .fvpLongPress { menuEntry = entry },
                            scale = CardDefaults.scale(focusedScale = 1.04f),
                            border = CardDefaults.border(
                                focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
                            ),
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
                                        imageUrl = entry.poster,
                                        title = entry.title,
                                        scale = scale,
                                        modifier = Modifier.fillMaxSize(),
                                    )
                                    WatchProgressLine(
                                        progress = shownProgress,
                                        scale = scale,
                                        modifier = Modifier.align(Alignment.BottomCenter),
                                    )
                                    if (loadingKey == entry.key) {
                                        Box(
                                            modifier = Modifier
                                                .fillMaxSize()
                                                .background(FvpColors.Background.copy(alpha = 0.6f)),
                                            contentAlignment = Alignment.Center,
                                        ) {
                                            Text(
                                                text = "Caricamento…",
                                                color = FvpColors.TextPrimary,
                                                fontSize = scale.sp(14f),
                                                textAlign = TextAlign.Center,
                                                modifier = Modifier.testTag("continua_loading_${entry.key}"),
                                            )
                                        }
                                    }
                                }
                                FocusMarqueeText(
                                    text = entry.title,
                                    focused = focused,
                                    modifier = Modifier
                                        .padding(top = scale.dp(6f))
                                        .testTag("continua_title_${entry.key}"),
                                )
                                entry.episodeLabel?.let { label ->
                                    Text(
                                        text = label,
                                        color = FvpColors.TextSecondary,
                                        fontSize = scale.sp(13f),
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis,
                                        modifier = Modifier.testTag("continua_episode_${entry.key}"),
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Menu della pressione lunga, sul modello del menu del player: velo di
    // sfondo, riquadro con il titolo della voce e due pulsanti. Indietro
    // chiude senza fare nulla; il menu si apre con OK ancora premuto e il
    // rilascio non deve attivare "Apri scheda".
    menuEntry?.let { entry ->
        Dialog(
            onDismissRequest = { menuEntry = null },
            properties = DialogProperties(usePlatformDefaultWidth = false),
        ) {
            BackHandler { menuEntry = null }
            Box(
                modifier = Modifier
                    .ignoreHeldOkUntilReleased()
                    // Indietro si intercetta qui, sulla radice del Dialog: il
                    // KeyDown è consumato e il menu chiude al KeyUp, così il
                    // rilascio non arriva alla sezione sotto. BackHandler resta
                    // come ripiego.
                    .onPreviewKeyEvent { event ->
                        if (event.key == Key.Back) {
                            if (event.type == KeyEventType.KeyUp) menuEntry = null
                            true
                        } else false
                    }
                    .fillMaxSize()
                    .background(FvpColors.Background.copy(alpha = 0.85f))
                    .padding(scale.dp(32f)),
                contentAlignment = Alignment.Center,
            ) {
                ContinueMenuContent(
                    entry = entry,
                    scale = scale,
                    onOpenDetail = {
                        menuEntry = null
                        detailEntry = entry
                    },
                    onRemove = {
                        menuEntry = null
                        pendingRemovalKey = entry.key
                        pendingRemovalIndex = entries.indexOfFirst { it.key == entry.key }
                        onRemoveEntry(entry)
                    },
                )
            }
        }
    }

    // "Apri scheda": dettaglio dentro la sezione, come nei Preferiti.
    detailEntry?.let { entry ->
        val isFavorite = favorites.any { it.id == entry.key }
        val favorite = FavoriteItem(
            id = entry.key,
            type = if (entry.isSeries) FavoriteItem.SERIES else FavoriteItem.VOD,
            title = entry.title,
            poster = entry.poster,
            categoryId = entry.categoryId,
        )
        val dismissDetail: () -> Unit = {
            detailEntry = null
            detailRefocusKey = entry.key
        }
        if (entry.isSeries) {
            val seriesItem = SeriesItem(
                seriesId = entry.seriesId ?: entry.key.removePrefix("series_"),
                name = entry.title,
                cover = entry.poster,
                categoryId = entry.categoryId,
            )
            Box(modifier = Modifier.fillMaxSize().testTag("continue_series_detail_root")) {
                SeriesDetailOverlay(
                    serie = seriesItem,
                    info = detailSeriesInfo,
                    isLoading = detailIsLoading,
                    error = detailError,
                    scale = scale,
                    isFavorite = isFavorite,
                    contentFocusRequester = contentFocusRequester,
                    onDismiss = dismissDetail,
                    onToggleFavorite = { onToggleFavorite(favorite) },
                    onPlayEpisode = onPlayEpisode,
                    onRetry = { retryKey++ },
                    onSetEpisodeWatched = onSetEpisodeWatched,
                    refocusTick = refocusTick,
                    focusEpisodeId = entry.episodeId ?: focusEpisodeId,
                    progress = progress,
                )
            }
        } else {
            val vodStream = VodStream(
                streamId = entry.streamId ?: entry.key.removePrefix("vod_"),
                name = entry.title,
                streamIcon = entry.poster,
                categoryId = entry.categoryId,
            )
            Box(modifier = Modifier.fillMaxSize().testTag("continue_film_detail_root")) {
                FilmDetailOverlay(
                    film = vodStream,
                    info = detailVodInfo,
                    isLoading = detailIsLoading,
                    error = detailError,
                    scale = scale,
                    isFavorite = isFavorite,
                    contentFocusRequester = contentFocusRequester,
                    onDismiss = dismissDetail,
                    onPlay = { onPlayVod(vodStream) },
                    onToggleFavorite = { onToggleFavorite(favorite) },
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
    }
}

/**
 * Riquadro del menu: titolo della voce e i due pulsanti, "Apri scheda" per
 * primo con il focus iniziale. Stesso stile del menu del player.
 */
@Composable
private fun ContinueMenuContent(
    entry: ContinueEntry,
    scale: UiScale,
    onOpenDetail: () -> Unit,
    onRemove: () -> Unit,
) {
    val openFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { openFocus.requestFocus() }
    }
    Column(
        modifier = Modifier
            .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
            .padding(scale.dp(20f))
            .testTag("continue_menu"),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text(
            text = entry.title,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(20f),
            fontWeight = FontWeight.Bold,
        )
        FvpCompactButton(
            text = "Apri scheda",
            onClick = onOpenDetail,
            scale = scale,
            modifier = Modifier
                .focusRequester(openFocus)
                .testTag("continue_menu_open"),
        )
        FvpCompactButton(
            text = "Rimuovi da Continua a guardare",
            onClick = onRemove,
            scale = scale,
            modifier = Modifier.testTag("continue_menu_remove"),
        )
    }
}
