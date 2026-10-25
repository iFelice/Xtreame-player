package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.itemsIndexed
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
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
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.ui.components.CatalogPosterImage
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.PositionIndicator
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.gridPosition
import it.felixvision.tv.ui.components.WatchProgressLine
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/**
 * Sezione "Continua a guardare": griglia a 5 colonne come Film e Serie, con
 * copertine 2:3 e titolo sotto. Per i film la barra verde dell'avanzamento
 * esistente; per le serie la riga "S2 E5" e la barra dell'episodio da riprendere.
 *
 * OK avvia subito il player dal punto salvato (senza finestra "Riprendi"),
 * la pressione lunga toglie la voce dall'archivio — in questa sezione non
 * aggiunge ai preferiti.
 */
@Composable
fun ContinueWatchingSection(
    entries: List<ContinueEntry>,
    scale: UiScale,
    progress: Map<String, WatchProgress> = emptyMap(),
    loadingKey: String? = null,
    errorMessage: String? = null,
    onPlayEntry: (ContinueEntry) -> Unit = {},
    onRemoveEntry: (ContinueEntry) -> Unit = {},
    refocusTick: Int = 0,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    modifier: Modifier = Modifier,
) {
    val columns = 5
    val gridState = rememberLazyGridState()
    // Indice dell'elemento con il focus, per il contatore "N / Totale".
    var focusedItemIndex by remember(entries) { mutableStateOf<Int?>(null) }
    val itemFocusRequesters = remember(entries) {
        entries.associate { it.key to FocusRequester() }
    }
    var lastOpenedKey by remember { mutableStateOf<String?>(null) }
    var handledTick by remember { mutableIntStateOf(refocusTick) }

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
        runCatching { gridState.scrollToItem(index) }
        withFrameNanos { }
        runCatching { itemFocusRequesters[target]?.requestFocus() }
    }

    // Il margine sicuro del focus sta nel contentPadding della griglia: il
    // contenitore resta senza padding per non sommare due volte la stessa quantità.
    Box(modifier = modifier.fillMaxSize()) {
        if (entries.isEmpty()) {
            Box(modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester)) {
                EmptyState(
                    title = "Niente da riprendere",
                    description = "Qui trovi film ed episodi che hai iniziato",
                    scale = scale,
                    modifier = Modifier.align(Alignment.Center),
                )
            }
        } else {
            Column(modifier = Modifier.fillMaxSize()) {
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
                LazyVerticalGrid(
                    state = gridState,
                    columns = GridCells.Fixed(columns),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                    // Ingrandimento e cornice del focus restano dentro la griglia.
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier.weight(1f).fillMaxHeight().testTag("continua_grid_5"),
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
                                .fillMaxWidth()
                                .testTag("continua_${entry.key}")
                                .focusRequester(itemFr)
                                .then(
                                    if (index == 0) {
                                        Modifier.focusRequester(contentFocusRequester)
                                    } else {
                                        Modifier
                                    },
                                )
                                .onFocusChanged { focusState ->
                                    focused = focusState.isFocused
                                    if (focusState.isFocused) focusedItemIndex = index
                                }
                                .fvpLongPress { onRemoveEntry(entry) },
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

        // Contatore "N / Totale" e barra di scorrimento della griglia.
        PositionIndicator(
            position = gridPosition(
                gridState = gridState,
                focusedIndex = focusedItemIndex,
                totalItems = entries.size,
            ),
            scale = scale,
        )
    }
}
