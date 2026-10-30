@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.detail

import androidx.compose.foundation.background
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil3.ImageLoader
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.DetailTarget
import it.felixvision.mobile.ui.catalog.PlayTarget
import it.felixvision.mobile.ui.components.ChannelLogoImage
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.rememberChannelSchedulePrograms
import it.felixvision.mobile.ui.components.rememberMinuteNow
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules

/**
 * Dettaglio canale con la guida dei programmi ("Guida" apre questa pagina):
 * logo, numero, nome e l'elenco dei programmi del giorno (oggi) con
 * avanzamento in diretta. I programmi riguardabili secondo
 * [CatchupRules.isProgramReplayable] sono marcati "Catch-up" e al tocco
 * chiedono la riproduzione dell'archivio (avviso temporaneo del PR2).
 *
 * Il caricamento usa il [ChannelScheduleLoader] condiviso (debounce 300 ms,
 * cache del client EPG), solo per questo canale.
 */
@Composable
fun LiveGuideScreen(
    target: DetailTarget.LiveGuide,
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    scheduleLoader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
    clock: Clock,
    modifier: Modifier = Modifier,
) {
    val channel = target.stream
    val nowMillis = rememberMinuteNow(clock)
    val programs = rememberChannelSchedulePrograms(
        streamIds = listOf(channel.streamId),
        loader = scheduleLoader,
        server = server,
        username = username,
        password = password,
    )[channel.streamId].orEmpty()
    val compatible = EpgRules.normalize(programs)

    DetailShell(
        title = "Guida",
        onBack = viewModel::closeDetail,
        modifier = modifier.testTag("guide_detail"),
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(14.dp),
            ) {
                ChannelLogoImage(
                    imageUrl = channel.streamIcon,
                    name = channel.name,
                    imageLoader = imageLoader,
                    modifier = Modifier.size(54.dp),
                    corner = 12.dp,
                )
                Column {
                    Text(
                        text = channel.name,
                        color = FvpColors.TextPrimary,
                        fontSize = 19.sp,
                        fontWeight = FontWeight.Bold,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                    )
                    channel.num?.let { num ->
                        SecondaryText(text = "Canale $num")
                    }
                }
            }

            if (compatible.isEmpty()) {
                EmptyState(
                    title = "Guida non disponibile",
                    description = "Il server non fornisce programmi per questo canale.",
                    modifier = Modifier.fillMaxSize().testTag("guide_empty"),
                )
            } else {
                LazyColumn(
                    verticalArrangement = Arrangement.spacedBy(6.dp),
                    contentPadding = PaddingValues(bottom = 20.dp),
                    modifier = Modifier.fillMaxWidth().testTag("guide_list"),
                ) {
                    items(compatible, key = { "guide_${it.start}_${it.end}" }) { program ->
                        GuideProgramRow(
                            program = program,
                            channel = channel,
                            nowMillis = nowMillis,
                            onCatchupPlay = {
                                viewModel.onPlayRequest(
                                    PlayTarget.CatchupProgram(
                                        streamId = channel.streamId,
                                        programStartSeconds = program.start,
                                        programTitle = program.title,
                                    ),
                                )
                            },
                        )
                    }
                }
            }
        }
    }
}

/** Riga guida: orari, titolo; catch-up marchiato e cliccabile. */
@Composable
private fun GuideProgramRow(
    program: EpgProgram,
    channel: LiveStream,
    nowMillis: Long,
    onCatchupPlay: () -> Unit,
) {
    val nowSeconds = nowMillis / 1_000L
    val isReplayable = CatchupRules.isProgramReplayable(program, channel, nowSeconds)
    val isOnAir = CatchupRules.isOnAir(program, nowSeconds)
    val timeRange = "${EpgRules.time(program.start)} - ${EpgRules.time(program.end)}"

    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(10.dp))
            .background(
                when {
                    isOnAir -> FvpColors.LiveActive.copy(alpha = 0.16f)
                    else -> FvpColors.Surface
                },
            )
            .combinedClickable(
                enabled = isReplayable,
                onClick = { if (isReplayable) onCatchupPlay() },
                onClickLabel = if (isReplayable) "Ri guarda con catch-up" else null,
            )
            .padding(horizontal = 12.dp, vertical = 10.dp)
            .testTag("guide_row_${program.start}"),
    ) {
        Text(
            text = timeRange,
            color = if (isOnAir) FvpColors.LiveActive else FvpColors.TextSecondary,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
        )
        Text(
            text = program.title.ifBlank { "Programma" },
            color = FvpColors.TextPrimary,
            fontSize = 15.sp,
            fontWeight = if (isOnAir) FontWeight.SemiBold else FontWeight.Medium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.padding(start = 12.dp).weight(1f),
        )
        if (isReplayable) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .clip(RoundedCornerShape(6.dp))
                    .background(FvpColors.LiveActive.copy(alpha = 0.18f))
                    .padding(horizontal = 8.dp, vertical = 4.dp)
                    .testTag("guide_catchup_chip"),
            ) {
                Text(
                    text = "Catch-up",
                    color = FvpColors.LiveActive,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                )
                Icon(
                    imageVector = FvpIcons.Play,
                    contentDescription = null,
                    tint = FvpColors.LiveActive,
                    modifier = Modifier
                        .padding(start = 4.dp)
                        .size(12.dp),
                )
            }
        } else if (isOnAir) {
            Text(
                text = "In onda",
                color = FvpColors.LiveActive,
                fontSize = 11.sp,
                fontWeight = FontWeight.Bold,
            )
        }
    }
}
