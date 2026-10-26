package it.felixvision.tv.ui.player

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.*
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Text
import it.felixvision.tv.data.epg.*
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import java.time.ZoneId

@Composable
fun PlayerEpgOverlay(channelName: String, programs: List<EpgProgram>, loading: Boolean, unavailable: Boolean, expanded: Long?, scale: UiScale, onDescription: (Long) -> Unit, onClose: () -> Unit) {
    val current = EpgRules.onAir(programs, System.currentTimeMillis())
    val requester = remember { FocusRequester() }
    LaunchedEffect(current) { if (current != null) requester.requestFocus() }
    Column(Modifier.fillMaxHeight().fillMaxWidth(.48f).padding(scale.dp(24f)).playerOverlay(scale).padding(scale.dp(18f)).onPreviewKeyEvent { e -> if (e.type == KeyEventType.KeyDown && e.key == Key.Escape) { onClose(); true } else false }) {
        Text(channelName, color=FvpColors.TextPrimary, fontSize=scale.sp(20f), fontWeight=FontWeight.Bold, maxLines=1, overflow=TextOverflow.Ellipsis)
        when { loading -> Text("Caricamento guida…", color=FvpColors.TextSecondary, modifier=Modifier.padding(top=scale.dp(18f)))
            unavailable -> Text("Guida non disponibile per questo canale", color=FvpColors.TextSecondary, modifier=Modifier.padding(top=scale.dp(18f)))
            else -> {
                val days = EpgRules.days(programs, System.currentTimeMillis(), ZoneId.systemDefault())
                LazyColumn(Modifier.weight(1f), contentPadding=PaddingValues(vertical=scale.dp(8f))) {
                    if (days.today.isNotEmpty()) { item { DayTitle("Oggi", scale) }; items(days.today) { p -> EpgRow(p, p == current, expanded == p.start, scale, if (p == current) Modifier.focusRequester(requester) else Modifier, onDescription) } }
                    if (days.tomorrow.isNotEmpty()) { item { DayTitle("Domani", scale) }; items(days.tomorrow) { p -> EpgRow(p, false, expanded == p.start, scale, Modifier, onDescription) } }
                }
            }
        }
    }
}
@Composable private fun DayTitle(title: String, scale: UiScale) { Text(title, color=FvpColors.Green, fontSize=scale.sp(15f), fontWeight=FontWeight.Bold, modifier=Modifier.padding(top=scale.dp(10f), bottom=scale.dp(4f))) }
@Composable private fun EpgRow(p: EpgProgram, active: Boolean, expanded: Boolean, scale: UiScale, modifier: Modifier, click: (Long)->Unit) {
    Column(modifier.fillMaxWidth().focusable().onPreviewKeyEvent { e -> if (e.type == KeyEventType.KeyDown && (e.key == Key.DirectionCenter || e.key == Key.Enter)) { click(p.start); true } else false }.background(if (active) FvpColors.SurfaceElevated else Color.Transparent, RoundedCornerShape(scale.dp(5f))).padding(horizontal=scale.dp(8f), vertical=scale.dp(5f))) {
        Text("${EpgRules.time(p.start)}–${EpgRules.time(p.end)}  ${p.title}", color=if (active) FvpColors.TextPrimary else FvpColors.TextSecondary, fontSize=scale.sp(13f), maxLines=2, overflow=TextOverflow.Ellipsis)
        if (active) Box(Modifier.fillMaxWidth().padding(top=scale.dp(3f)).height(scale.dp(3f)).background(FvpColors.Green.copy(alpha=.25f))) { Box(Modifier.fillMaxWidth(EpgRules.progress(p, System.currentTimeMillis())).fillMaxHeight().background(FvpColors.Green)) }
        if (expanded && p.description.isNotBlank()) Text(p.description, color=FvpColors.TextSecondary, fontSize=scale.sp(12f), modifier=Modifier.padding(top=scale.dp(5f)))
    }
}
