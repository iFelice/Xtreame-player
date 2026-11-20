package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import it.felixvision.mobile.ui.components.rememberChannelSchedulePrograms
import it.felixvision.mobile.ui.components.rememberMinuteNow
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.mobile.ui.player.canReplayProgram
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules

/** Intersezione di un programma con la finestra della timeline, in secondi. */
internal fun guideInterval(program: EpgProgram, start: Long, end: Long): Pair<Long, Long>? {
    val left = maxOf(start, program.start)
    val right = minOf(end, program.end)
    return if (right > left) (left - start) to (right - left) else null
}

/** Guida multicanale: categoria, intestazione oraria condivisa e programmi delle sole righe visibili. */
@Composable
fun GuideTvSection(
    viewModel: CatalogViewModel,
    scheduleLoader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
    clock: Clock,
    modifier: Modifier = Modifier,
) {
    val state by viewModel.ui.collectAsStateWithLifecycle()
    val catalog = state.catalog
    val categories = catalog?.liveCategories.orEmpty()
    val selected = viewModel.sectionStates.selectedCategory("guide_tv")
        ?.takeIf { id -> categories.any { it.categoryId == id } } ?: categories.firstOrNull()?.categoryId
    val channels = remember(catalog, selected) { liveStreamsForCategory(selected, catalog?.liveStreams.orEmpty()) }
    val listState = rememberSectionListState(viewModel.sectionStates, "guide_tv_channels")
    LaunchedEffect(selected) { listState.scrollToItem(0) }
    val visibleIds by remember(channels) { derivedStateOf {
        listState.layoutInfo.visibleItemsInfo.mapNotNull { channels.getOrNull(it.index)?.streamId }
    } }
    val schedules = rememberChannelSchedulePrograms(visibleIds, scheduleLoader, server, username, password)
    val now = rememberMinuteNow(clock) / 1_000L
    val windowStart = (now / 3_600L) * 3_600L - 3_600L
    val windowEnd = windowStart + 6 * 3_600L
    val scroll = rememberScrollState()
    var menuOpen by remember { mutableStateOf(false) }
    Column(modifier = modifier.fillMaxSize().padding(12.dp).testTag("guide_tv")) {
        Box {
            TextButton(onClick = { menuOpen = true }, modifier = Modifier.testTag("guide_tv_categories")) {
                Text(categories.firstOrNull { it.categoryId == selected }?.categoryName ?: "Categorie", color = FvpColors.LiveActive)
            }
            DropdownMenu(expanded = menuOpen, onDismissRequest = { menuOpen = false }) {
                categories.forEach { category ->
                    DropdownMenuItem(text = { Text(category.categoryName.orEmpty()) }, onClick = {
                        viewModel.sectionStates.selectCategory("guide_tv", category.categoryId)
                        menuOpen = false
                    })
                }
            }
        }
        Row(Modifier.fillMaxWidth().height(36.dp)) {
            Text("Canale", color = FvpColors.TextSecondary, modifier = Modifier.width(130.dp).padding(8.dp))
            Row(Modifier.horizontalScroll(scroll).width(900.dp)) {
                repeat(6) { hour ->
                    Text(EpgRules.time(windowStart + hour * 3_600L), color = FvpColors.TextSecondary, modifier = Modifier.width(150.dp).padding(8.dp))
                }
            }
        }
        if (channels.isEmpty()) {
            Text("Nessun canale in questa categoria", color = FvpColors.TextSecondary, modifier = Modifier.padding(16.dp))
        } else LazyColumn(state = listState, modifier = Modifier.weight(1f).testTag("guide_tv_channels")) {
            items(channels, key = { it.streamId }) { channel ->
                Row(Modifier.fillMaxWidth().height(72.dp)) {
                    Text(
                        channel.name, maxLines = 2, overflow = TextOverflow.Ellipsis,
                        color = FvpColors.TextPrimary,
                        modifier = Modifier.width(130.dp).height(72.dp).clickable {
                            viewModel.onPlayRequest(PlayTarget.LiveChannel(channel.streamId))
                        }.padding(8.dp),
                    )
                    Box(Modifier.horizontalScroll(scroll).width(900.dp).height(72.dp)) {
                        schedules[channel.streamId].orEmpty().forEach { program ->
                            val interval = guideInterval(program, windowStart, windowEnd) ?: return@forEach
                            val left = (interval.first / 3_600f * 150f).dp
                            val width = (interval.second / 3_600f * 150f).dp
                            val replayable = canReplayProgram(program, channel, now)
                            Column(
                                Modifier.offset(x = left).width(width).height(68.dp).padding(2.dp)
                                    .background(FvpColors.SurfaceElevated)
                                    .clickable(enabled = replayable) {
                                        viewModel.onPlayRequest(PlayTarget.CatchupProgram(channel.streamId, program.start, program.title))
                                    }.padding(5.dp),
                            ) {
                                Text(program.title, color = FvpColors.TextPrimary, fontSize = 12.sp, maxLines = 2, overflow = TextOverflow.Ellipsis)
                                Text(EpgRules.time(program.start), color = FvpColors.TextSecondary, fontSize = 11.sp, maxLines = 1)
                            }
                        }
                    }
                }
            }
        }
    }
}
