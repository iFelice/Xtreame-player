package it.felixvision.mobile.ui.player

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules

@androidx.media3.common.util.UnstableApi
enum class PlayerPanel {
    GUIDE,
    CHANNELS,
    TRACKS,
}

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerOverlayPanel(
    panel: PlayerPanel,
    playbackSource: MobilePlaybackSource,
    state: MobilePlayerState,
    engine: PlayerEngine,
    programs: List<EpgProgram>,
    guideLoading: Boolean,
    onClose: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier.fillMaxSize(),
        color = Color.Black.copy(alpha = .75f),
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            horizontalArrangement = Arrangement.End,
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize(.72f)
                    // Pannello dentro l'area sicura: nessun contenuto sotto il
                    // ritaglio della fotocamera o sotto le barre di sistema
                    // quando ricompaiono con lo scorrimento dal bordo.
                    .windowInsetsPadding(WindowInsets.safeDrawing)
                    .background(FvpColors.Background.copy(alpha = .98f))
                    .padding(18.dp),
            ) {
                PanelHeader(panel, onClose)
                PanelContent(
                    panel = panel,
                    playbackSource = playbackSource,
                    state = state,
                    engine = engine,
                    programs = programs,
                    guideLoading = guideLoading,
                )
            }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerPortraitBrowsePanel(
    panel: PlayerPanel,
    playbackSource: MobilePlaybackSource,
    state: MobilePlayerState,
    engine: PlayerEngine,
    programs: List<EpgProgram>,
    guideLoading: Boolean,
    onPanelChange: (PlayerPanel) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(FvpColors.Background)
            .padding(horizontal = 12.dp, vertical = 8.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            PanelTab("Guida", panel == PlayerPanel.GUIDE) {
                onPanelChange(PlayerPanel.GUIDE)
            }
            PanelTab("Canali", panel == PlayerPanel.CHANNELS) {
                onPanelChange(PlayerPanel.CHANNELS)
            }
        }
        PanelContent(
            panel = panel,
            playbackSource = playbackSource,
            state = state,
            engine = engine,
            programs = programs,
            guideLoading = guideLoading,
        )
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerEpisodePanel(
    source: MobilePlaybackSource.Episode,
    state: MobilePlayerState,
    engine: PlayerEngine,
    modifier: Modifier = Modifier,
) {
    val seasons = remember(source.seriesId, source.queue) {
        source.queue.map { it.season }.distinct()
    }
    var selectedSeason by remember(source.seriesId, source.episodeId) {
        mutableStateOf(source.queue.firstOrNull { it.id == source.episodeId }?.season)
    }
    var menuExpanded by remember { mutableStateOf(false) }
    val episodes = source.queue.filter { it.season == selectedSeason }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(FvpColors.Background)
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text(source.seriesTitle, color = FvpColors.TextPrimary, fontSize = 20.sp)
        Box {
            TextButton(onClick = { menuExpanded = true }) {
                Text("Stagione ${selectedSeason.orEmpty()}", color = FvpColors.Green)
            }
            DropdownMenu(
                expanded = menuExpanded,
                onDismissRequest = { menuExpanded = false },
            ) {
                seasons.forEach { season ->
                    DropdownMenuItem(
                        text = { Text("Stagione $season") },
                        onClick = {
                            selectedSeason = season
                            menuExpanded = false
                        },
                    )
                }
            }
        }
        LazyColumn {
            items(episodes, key = { "player_episode_${it.id}" }) { episode ->
                val selected = episode.id == state.currentStreamId
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    color = if (selected) FvpColors.SurfaceElevated else Color.Transparent,
                    shape = RoundedCornerShape(10.dp),
                    onClick = { engine.selectEpisode(episode.id) },
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
                        horizontalArrangement = Arrangement.spacedBy(10.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        if (selected) {
                            Icon(
                                imageVector = FvpIcons.Play,
                                contentDescription = "Episodio in riproduzione",
                                tint = FvpColors.Green,
                            )
                        }
                        Text(
                            text = "${episode.episodeNumber}. ${episode.title}",
                            color = FvpColors.TextPrimary,
                        )
                    }
                }
            }
        }
        TextButton(onClick = engine::nextEpisode) {
            Text("Episodio successivo", color = FvpColors.Green)
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun PanelContent(
    panel: PlayerPanel,
    playbackSource: MobilePlaybackSource,
    state: MobilePlayerState,
    engine: PlayerEngine,
    programs: List<EpgProgram>,
    guideLoading: Boolean,
) {
    when (panel) {
        PlayerPanel.GUIDE -> GuidePanel(
            playbackSource = playbackSource,
            engine = engine,
            programs = programs,
            loading = guideLoading,
        )
        PlayerPanel.CHANNELS -> ChannelPanel(
            engine = engine,
            state = state,
        )
        PlayerPanel.TRACKS -> TrackPanel(
            engine = engine,
            state = state,
        )
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun PanelHeader(panel: PlayerPanel, onClose: () -> Unit) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = when (panel) {
                PlayerPanel.GUIDE -> "Guida"
                PlayerPanel.CHANNELS -> "Canali"
                PlayerPanel.TRACKS -> "Tracce"
            },
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
        )
        TextButton(onClick = onClose) {
            Text("Chiudi", color = FvpColors.Green)
        }
    }
}

@Composable
private fun PanelTab(
    label: String,
    selected: Boolean,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        modifier = Modifier
            .testTag(if (label == "Guida") "player_tab_guide" else "player_tab_channels")
            .background(
                color = if (selected) FvpColors.SurfaceElevated else Color.Transparent,
                shape = RoundedCornerShape(12.dp),
            ),
    ) {
        Text(label, color = if (selected) FvpColors.Green else FvpColors.TextPrimary)
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun GuidePanel(
    playbackSource: MobilePlaybackSource,
    engine: PlayerEngine,
    programs: List<EpgProgram>,
    loading: Boolean,
) {
    Column(Modifier.fillMaxSize()) {
        if (playbackSource is MobilePlaybackSource.Catchup) {
            TextButton(onClick = engine::returnToLive) {
                Text("Torna alla diretta", color = FvpColors.Green)
            }
        }
        when {
            loading -> Text("Caricamento guida…", color = FvpColors.TextSecondary)
            programs.isEmpty() -> Text("Guida non disponibile", color = FvpColors.TextSecondary)
            else -> LazyColumn {
                items(programs, key = { "player_epg_${it.start}_${it.end}" }) { program ->
                    GuideProgramRow(program, engine)
                }
            }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun GuideProgramRow(
    program: EpgProgram,
    engine: PlayerEngine,
) {
    val replayable = engine.canPlayCatchup(
        program,
        engine.nowMillis() / 1_000L,
    )
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(Modifier.weight(1f)) {
            Text(program.title, color = FvpColors.TextPrimary)
            Text(
                "${EpgRules.time(program.start)} – ${EpgRules.time(program.end)}",
                color = FvpColors.TextSecondary,
                fontSize = 12.sp,
            )
        }
        if (replayable) {
            TextButton(onClick = { engine.playCatchup(program) }) {
                Text("Catch-up", color = FvpColors.Green)
            }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun ChannelPanel(
    engine: PlayerEngine,
    state: MobilePlayerState,
) {
    LazyColumn(Modifier.fillMaxSize()) {
        items(engine.zappingChannels, key = { "player_channel_${it.streamId}" }) { channel ->
            val selected = channel.streamId == state.currentStreamId
            Surface(
                modifier = Modifier.fillMaxWidth().testTag("player_channel_${channel.streamId}"),
                color = if (selected) FvpColors.SurfaceElevated else Color.Transparent,
                shape = RoundedCornerShape(10.dp),
                onClick = {
                    val index = engine.zappingChannels.indexOfFirst {
                        it.streamId == channel.streamId
                    }
                    engine.selectChannel(index)
                },
            ) {
                Text(
                    text = channel.name,
                    color = FvpColors.TextPrimary,
                    modifier = Modifier.padding(horizontal = 14.dp, vertical = 13.dp),
                )
            }
        }
    }
}

@androidx.media3.common.util.UnstableApi
@Composable
private fun TrackPanel(
    engine: PlayerEngine,
    state: MobilePlayerState,
) {
    Column(Modifier.fillMaxSize()) {
        Text("Audio", color = FvpColors.TextSecondary)
        state.audioTracks.forEach { option ->
            TrackOptionRow(
                option = option,
                onClick = { engine.selectTrack(option) },
            )
        }
        Text("Sottotitoli", color = FvpColors.TextSecondary)
        TrackOptionRow(
            label = "Disattivati",
            selected = state.subtitleTracks.none { it.selected },
            onClick = { engine.selectSubtitle(null) },
        )
        state.subtitleTracks.forEach { option ->
            TrackOptionRow(
                option = option,
                onClick = { engine.selectSubtitle(option) },
            )
        }
    }
}

@Composable
private fun TrackOptionRow(
    option: MobileTrackOption,
    onClick: () -> Unit,
) {
    TrackOptionRow(
        label = option.label,
        selected = option.selected,
        onClick = onClick,
    )
}

@Composable
private fun TrackOptionRow(
    label: String,
    selected: Boolean,
    onClick: () -> Unit,
) {
    Surface(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 2.dp),
        color = if (selected) FvpColors.SurfaceElevated else Color.Transparent,
        shape = RoundedCornerShape(10.dp),
        onClick = onClick,
    ) {
        Text(
            text = if (selected) "✓ $label" else label,
            color = if (selected) FvpColors.Green else FvpColors.TextPrimary,
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
        )
    }
}
