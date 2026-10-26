package it.felixvision.tv.ui.player

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.ui.unit.dp
import androidx.compose.runtime.withFrameNanos
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

enum class EpgPanelState { LOADING, UNAVAILABLE, PROGRAMS }

fun epgPanelState(loading: Boolean, unavailable: Boolean, programs: List<EpgProgram>): EpgPanelState = when {
    loading -> EpgPanelState.LOADING
    unavailable || programs.isEmpty() -> EpgPanelState.UNAVAILABLE
    else -> EpgPanelState.PROGRAMS
}

@Composable
fun PlayerEpgOverlay(
    channelName: String, programs: List<EpgProgram>, loading: Boolean, unavailable: Boolean,
    expanded: Long?, scale: UiScale, clock: Clock, onDescription: (Long) -> Unit,
    modifier: Modifier = Modifier,
    listState: LazyListState = rememberLazyListState(),
) {
    var now by remember { mutableLongStateOf(clock.nowMillis()) }
    LaunchedEffect(Unit) { while (true) { delay(60_000L); now = clock.nowMillis() } }
    val dayData = remember(programs, now) { EpgRules.days(programs, now) }
    val displayed = remember(dayData) { dayData.today + dayData.tomorrow }
    val requesters = remember(displayed) { displayed.indices.map { FocusRequester() } }
    val focusedProgram = EpgRules.initialFocus(displayed, now)
    val targetIndex = displayed.indexOf(focusedProgram).coerceAtLeast(0)
    val headerOffset = (if (dayData.today.isNotEmpty()) 1 else 0) + if (dayData.tomorrow.isNotEmpty() && targetIndex >= dayData.today.size) 1 else 0

    LaunchedEffect(programs, loading, displayed) {
        if (!loading && displayed.isNotEmpty()) {
            listState.scrollToItem(targetIndex + headerOffset)
            withFrameNanos { }
            requesters.getOrNull(targetIndex)?.requestFocus()
        }
    }

    Column(
        modifier = modifier.fillMaxHeight().fillMaxWidth(.48f).padding(scale.dp(24f))
            .playerOverlay(scale).padding(scale.dp(18f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(5f)),
    ) {
        Text(channelName, color = FvpColors.TextPrimary, fontSize = scale.sp(20f), fontWeight = FontWeight.Bold, maxLines = 1, overflow = TextOverflow.Ellipsis)
        when (epgPanelState(loading, unavailable, programs)) {
            EpgPanelState.LOADING -> Text("Caricamento guida…", color = FvpColors.TextSecondary, modifier = Modifier.padding(top = scale.dp(18f)))
            EpgPanelState.UNAVAILABLE -> Text("Guida non disponibile per questo canale", color = FvpColors.TextSecondary, modifier = Modifier.padding(top = scale.dp(18f)))
            EpgPanelState.PROGRAMS -> LazyColumn(
                state = listState,
                modifier = Modifier.weight(1f).fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(scale.dp(3f)),
                contentPadding = PaddingValues(scale.focusSafePadding),
            ) {
                if (dayData.today.isNotEmpty()) {
                    item { DayTitle("Oggi", scale) }
                    itemsIndexed(dayData.today, key = { index, p -> "today-$index-${p.start}" }) { index, p ->
                        ProgramRow(p, expanded == p.start, p == EpgRules.onAir(displayed, now), now, scale,
                            requesters[index], onDescription)
                    }
                }
                if (dayData.tomorrow.isNotEmpty()) {
                    item { DayTitle("Domani", scale) }
                    itemsIndexed(dayData.tomorrow, key = { index, p -> "tomorrow-$index-${p.start}" }) { index, p ->
                        val global = dayData.today.size + index
                        ProgramRow(p, expanded == p.start, p == EpgRules.onAir(displayed, now), now, scale,
                            requesters[global], onDescription)
                    }
                }
            }
        }
    }
}

@Composable private fun DayTitle(title: String, scale: UiScale) {
    Text(title, color = FvpColors.Green, fontSize = scale.sp(15f), fontWeight = FontWeight.Bold,
        modifier = Modifier.padding(top = scale.dp(8f), bottom = scale.dp(3f)))
}

@Composable private fun ProgramRow(
    program: EpgProgram, expanded: Boolean, onAir: Boolean, now: Long, scale: UiScale,
    requester: FocusRequester, onDescription: (Long) -> Unit,
) {
    var focused by remember(program.start) { mutableStateOf(false) }
    val selectedText = Color(0xFF1C1C1E)
    DenseListItem(
        selected = false,
        onClick = { onDescription(program.start) },
        headlineContent = {
            Text("${EpgRules.time(program.start)}–${EpgRules.time(program.end)}  ${program.title}",
                color = if (focused) selectedText else if (onAir) FvpColors.TextPrimary else FvpColors.TextSecondary,
                fontSize = scale.sp(13f), maxLines = 2, overflow = TextOverflow.Ellipsis)
        },
        supportingContent = if (expanded) ({
            Text(program.description.ifBlank { "Nessuna descrizione" },
                color = if (focused) selectedText else FvpColors.TextSecondary,
                fontSize = scale.sp(12f))
        }) else null,
        modifier = Modifier.fillMaxWidth().focusRequester(requester).onFocusChanged { focused = it.isFocused },
        colors = ListItemDefaults.colors(
            containerColor = Color.Transparent,
            contentColor = FvpColors.TextSecondary,
            focusedContainerColor = FvpColors.Green,
            focusedContentColor = selectedText,
        ),
        scale = ListItemDefaults.scale(),
        border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(1.dp, FvpColors.Green))),
        shape = ListItemDefaults.shape(),
    )
    if (onAir) {
        // Indicator remains visible whether or not the row has focus.
        androidx.compose.foundation.layout.Box(Modifier.fillMaxWidth().padding(start = scale.dp(10f), end = scale.dp(10f)).height(scale.dp(3f))) {
            androidx.compose.foundation.layout.Box(Modifier.fillMaxWidth().then(Modifier).height(scale.dp(3f)).background(FvpColors.Green.copy(alpha = .25f)))
            androidx.compose.foundation.layout.Box(Modifier.fillMaxWidth(EpgRules.progress(program, now)).height(scale.dp(3f)).background(FvpColors.Green))
        }
    }
}
