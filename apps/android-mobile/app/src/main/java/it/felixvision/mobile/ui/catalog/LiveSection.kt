@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.CategorySideColumn
import it.felixvision.mobile.ui.components.ChannelLogoImage
import it.felixvision.mobile.ui.components.NowOnLine
import it.felixvision.mobile.ui.components.CollapsingCategoryHeader
import it.felixvision.mobile.ui.components.CollapsingCategoryPanel
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.TouchListRow
import it.felixvision.mobile.ui.components.rememberChannelSchedulePrograms
import it.felixvision.mobile.ui.components.rememberMinuteNow
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.favorites.FavoriteItem

/**
 * Sezione "Live" del tablet: stessa logica della LiveSection della TV.
 *
 * - categorie: colonna fissa a sinistra in orizzontale, intestazione a
 *   scomparsa in verticale; pressione lunga = preferito categoria;
 * - righe: numero (`num` del server, altrimenti progressivo nella categoria),
 *   logo, nome, programma in onda con avanzamento minuto per minuto — caricato
 *   SOLO per le righe visibili (chiavi `live_<streamId>`, debounce 300 ms,
 *   massimo 4 richieste parallele, cache del caricatore condiviso
 *   [ChannelScheduleLoader]);
 * - tocco riga = riproduzione (avviso temporaneo); icona "Guida" = dettaglio
 *   canale; pressione lunga = pannello azioni.
 */
@Composable
fun LiveSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    wideLayout: Boolean,
    scheduleLoader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
    clock: Clock,
    modifier: Modifier = Modifier,
) {
    val catalogState by viewModel.ui.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val catalog = catalogState.catalog

    val categories = catalog?.liveCategories.orEmpty()
    val streams = catalog?.liveStreams.orEmpty()
    val favoriteCategoryIds = remember(favorites) {
        favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY }
            .mapNotNull { it.categoryId }
            .toSet()
    }

    val sectionKey = "live"
    val selectedCategoryId = viewModel.sectionStates.selectedCategory(sectionKey)
        ?.takeIf { selected -> categories.any { it.categoryId == selected } }
        ?: categories.firstOrNull()?.categoryId
    val headerOpen = viewModel.sectionStates.isHeaderOpen(sectionKey)

    val filtered = remember(streams, selectedCategoryId) {
        liveStreamsForCategory(selectedCategoryId, streams)
    }

    val listState = rememberSectionListState(viewModel.sectionStates, "live_channels")
    val nowMillis = rememberMinuteNow(clock)

    // Al cambio di categoria la lista torna in cima (stessa regola della TV).
    LaunchedEffect(selectedCategoryId) {
        listState.scrollToItem(0)
    }

    // Solo i canali visibili a schermo, come nella sezione Live della TV.
    val visibleChannelIds by remember(filtered) {
        derivedStateOf {
            listState.layoutInfo.visibleItemsInfo.mapNotNull { info ->
                filtered.getOrNull(info.index)?.streamId
            }
        }
    }
    val schedulePrograms = rememberChannelSchedulePrograms(
        streamIds = visibleChannelIds,
        loader = scheduleLoader,
        server = server,
        username = username,
        password = password,
    )


    val listContent: @Composable (Modifier) -> Unit = { listModifier ->
        if (catalog == null) {
            EmptyState(
                title = "Catalogo Live non disponibile",
                description = "Apri di nuovo quando il catalogo è pronto",
                modifier = listModifier.testTag("live_empty"),
            )
        } else if (filtered.isEmpty()) {
            EmptyState(
                title = "Nessun canale",
                description = "Questa categoria non ha canali",
                modifier = listModifier.testTag("live_empty_list"),
            )
        } else {
            LazyColumn(
                state = listState,
                verticalArrangement = Arrangement.spacedBy(6.dp),
                contentPadding = PaddingValues(bottom = 16.dp),
                modifier = listModifier.testTag("live_list"),
            ) {
                items(filtered, key = { "live_${it.streamId}" }) { channel ->
                    LiveChannelRow(
                        channel = channel,
                        fallbackNumber = filtered.indexOfFirst { it.streamId == channel.streamId } + 1,
                        imageLoader = imageLoader,
                        nowMillis = nowMillis,
                        programs = schedulePrograms[channel.streamId],
                        onClick = {
                            viewModel.onPlayRequest(PlayTarget.LiveChannel(channel.streamId))
                        },
                        onLongClick = { viewModel.openActions(ActionTarget.Channel(channel)) },
                        onGuide = { viewModel.openDetail(DetailTarget.LiveGuide(channel)) },
                    )
                }
            }
        }
    }

    if (wideLayout) {
        Row(
            modifier = modifier.padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            CategorySideColumn(
                categories = categories,
                selectedCategoryId = selectedCategoryId,
                onSelect = { category ->
                    viewModel.sectionStates.selectCategory(sectionKey, category.categoryId)
                },
                sectionKey = sectionKey,
                favoriteCategoryIds = favoriteCategoryIds,
                onLongPressCategory = { category ->
                    viewModel.openActions(
                        ActionTarget.LiveCategory(
                            category.categoryId,
                            category.categoryName.orEmpty(),
                        ),
                    )
                },
                modifier = Modifier.width(240.dp),
            )
            listContent(Modifier.weight(1f).fillMaxSize())
        }
    } else {
        Box(modifier = modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                CollapsingCategoryHeader(
                    categories = categories,
                    selectedCategoryId = selectedCategoryId,
                    open = headerOpen,
                    onToggleOpen = {
                        viewModel.sectionStates.setHeaderOpen(sectionKey, !headerOpen)
                    },
                    sectionKey = sectionKey,
                )
                listContent(Modifier.weight(1f).fillMaxWidth())
            }
            if (headerOpen) {
                CollapsingCategoryPanel(
                    categories = categories,
                    selectedCategoryId = selectedCategoryId,
                    onSelect = { category ->
                        viewModel.sectionStates.selectCategory(sectionKey, category.categoryId)
                        viewModel.sectionStates.setHeaderOpen(sectionKey, false)
                    },
                    sectionKey = sectionKey,
                    favoriteCategoryIds = favoriteCategoryIds,
                    onLongPressCategory = { category ->
                        viewModel.sectionStates.setHeaderOpen(sectionKey, false)
                        viewModel.openActions(
                            ActionTarget.LiveCategory(
                                category.categoryId,
                                category.categoryName.orEmpty(),
                            ),
                        )
                    },
                    modifier = Modifier.padding(top = 56.dp),
                )
            }
        }
    }
}

/** Riga canale Live tattile: numero, logo, nome, "in onda" e icona Guida. */
@Composable
fun LiveChannelRow(
    channel: LiveStream,
    fallbackNumber: Int,
    imageLoader: ImageLoader,
    nowMillis: Long,
    programs: List<EpgProgram>?,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    onGuide: () -> Unit,
    modifier: Modifier = Modifier,
) {
    TouchListRow(
        onClick = onClick,
        onLongClick = onLongClick,
        modifier = modifier.testTag("live_row_${channel.streamId}"),
    ) {
        Text(
            text = (channel.num ?: fallbackNumber).toString(),
            color = FvpColors.TextSecondary,
            fontSize = 15.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.width(40.dp).testTag("live_num_${channel.streamId}"),
        )
        ChannelLogoImage(
            imageUrl = channel.streamIcon,
            name = channel.name,
            imageLoader = imageLoader,
            modifier = Modifier.size(42.dp),
            corner = 8.dp,
        )
        Column(modifier = Modifier.padding(start = 10.dp).weight(1f)) {
            Text(
                text = channel.name,
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            NowOnLine(
                programs = programs.orEmpty(),
                nowMillis = nowMillis,
                modifier = Modifier.testTag("live_schedule_${channel.streamId}"),
            )
        }
        IconButton(
            onClick = onGuide,
            modifier = Modifier
                .size(48.dp)
                .testTag("live_guide_${channel.streamId}"),
        ) {
            Icon(
                imageVector = FvpIcons.Guida,
                contentDescription = "Guida di ${channel.name}",
                tint = FvpColors.LiveActive,
            )
        }
    }
}
