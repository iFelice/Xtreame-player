package it.felixvision.tv.ui.player

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.playback.PlaybackFormatting
import it.felixvision.tv.data.playback.SeekFeedback
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

/** Banner canale: numero, nome, categoria e logo, visibile per 4 secondi. */
@Composable
fun PlayerChannelBanner(
    banner: ChannelBanner,
    scale: UiScale,
    modifier: Modifier = Modifier,
    audioFormatLabel: String = "",
    ffmpegActive: Boolean = false,
) {
    Row(
        modifier = modifier
            .clip(RoundedCornerShape(scale.dp(14f)))
            .background(FvpColors.Surface.copy(alpha = 0.96f))
            .padding(horizontal = scale.dp(18f), vertical = scale.dp(14f))
            .testTag("player_channel_banner"),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(scale.dp(14f)),
    ) {
        ChannelLogoImage(
            imageUrl = banner.logoUrl,
            name = banner.name,
            scale = scale,
            modifier = Modifier.size(scale.dp(64f)),
        )
        Column(verticalArrangement = Arrangement.spacedBy(scale.dp(2f))) {
            val number = banner.number?.let { "#$it · " }.orEmpty()
            Text(
                text = number + banner.name,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            banner.categoryName?.takeIf { it.isNotBlank() }?.let { category ->
                Text(
                    text = category,
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(14f),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
            PlayerAudioFormat(
                label = audioFormatLabel,
                ffmpegActive = ffmpegActive,
                scale = scale,
                modifier = Modifier.testTag("player_banner_audio"),
            )
        }
    }
}

/**
 * Formato della traccia audio in riproduzione e, quando presente, il piccolo
 * contrassegno "FFmpeg" del decoder software.
 */
@Composable
fun PlayerAudioFormat(
    label: String,
    ffmpegActive: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    if (label.isBlank() && !ffmpegActive) return
    Row(
        modifier = modifier,
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        if (label.isNotBlank()) {
            Text(
                text = label,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        if (ffmpegActive) {
            Text(
                text = "FFmpeg",
                color = FvpColors.Green,
                fontSize = scale.sp(12f),
                modifier = Modifier
                    .clip(RoundedCornerShape(scale.dp(6f)))
                    .background(FvpColors.SurfaceElevated)
                    .padding(horizontal = scale.dp(6f), vertical = scale.dp(2f))
                    .testTag("player_ffmpeg_badge"),
            )
        }
    }
}

/** Lista canali sovrapposta: categoria corrente, focus sul canale in onda. */
@Composable
fun PlayerChannelListOverlay(
    channels: List<LiveStream>,
    currentIndex: Int,
    categoryName: String?,
    scale: UiScale,
    onSelect: (Int) -> Unit,
) {
    val listState = rememberLazyListState()
    val focusRequesters = remember(channels) { channels.map { FocusRequester() } }
    val safeIndex = currentIndex.coerceIn(0, (channels.size - 1).coerceAtLeast(0))

    LaunchedEffect(channels) {
        if (channels.isNotEmpty()) {
            listState.scrollToItem(safeIndex)
            withFrameNanos { }
            focusRequesters.getOrNull(safeIndex)?.requestFocus()
        }
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.55f)),
    ) {
        Column(
            modifier = Modifier
                .align(Alignment.CenterStart)
                .fillMaxHeight()
                .fillMaxWidth(0.44f)
                .padding(scale.dp(24f))
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(16f))
                .testTag("player_channel_list"),
            verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
        ) {
            Text(
                text = categoryName?.takeIf { it.isNotBlank() }?.let { "Canali · $it" } ?: "Canali",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            LazyColumn(
                state = listState,
                verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                modifier = Modifier.fillMaxWidth().weight(1f),
            ) {
                itemsIndexed(channels, key = { _, stream -> stream.streamId }) { index, channel ->
                    val isCurrent = index == safeIndex
                    val requester = focusRequesters.getOrNull(index)
                    ListItem(
                        selected = false,
                        onClick = { onSelect(index) },
                        headlineContent = {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                            ) {
                                Text(
                                    text = channel.name,
                                    color = if (isCurrent) FvpColors.Green else FvpColors.TextPrimary,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                    modifier = Modifier.weight(1f, fill = false),
                                )
                                if (isCurrent) {
                                    Text(text = "●", color = FvpColors.Green, fontSize = scale.sp(12f))
                                }
                            }
                        },
                        leadingContent = {
                            ChannelLogoImage(
                                imageUrl = channel.streamIcon,
                                name = channel.name,
                                scale = scale,
                                modifier = Modifier.size(scale.dp(40f)),
                            )
                        },
                        trailingContent = {
                            channel.num?.let {
                                Text(text = "#$it", color = FvpColors.TextSecondary)
                            }
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .then(if (requester != null) Modifier.focusRequester(requester) else Modifier)
                            .testTag("player_channel_${channel.streamId}"),
                        colors = ListItemDefaults.colors(
                            containerColor = FvpColors.SurfaceElevated,
                            contentColor = FvpColors.TextPrimary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                        ),
                        scale = ListItemDefaults.scale(focusedScale = 1.03f),
                        border = ListItemDefaults.border(
                            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
                        ),
                        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                    )
                }
            }
        }
    }
}

/** Barra film/episodi: titolo, tempi, avanzamento e pulsanti tracce. */
@Composable
fun PlayerControlsBar(
    state: PlayerUiState,
    scale: UiScale,
    audioFocusRequester: FocusRequester,
    onAudio: () -> Unit,
    onSubtitles: () -> Unit,
    modifier: Modifier = Modifier,
    audioFormatLabel: String = "",
    ffmpegActive: Boolean = false,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(FvpColors.Surface.copy(alpha = 0.96f))
            .padding(horizontal = scale.dp(28f), vertical = scale.dp(16f))
            .testTag("player_controls_bar"),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        Text(
            text = state.currentTitle,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(20f),
            fontWeight = FontWeight.Bold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(10f)),
        ) {
            Text(
                text = PlaybackFormatting.formatTime(state.positionMillis),
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
            Box(
                modifier = Modifier
                    .weight(1f)
                    .height(scale.dp(4f))
                    .clip(RoundedCornerShape(scale.dp(2f)))
                    .background(FvpColors.SurfaceElevated),
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth(state.progressFraction)
                        .height(scale.dp(4f))
                        .background(FvpColors.Green),
                )
            }
            Text(
                text = PlaybackFormatting.formatTime(state.durationMillis),
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
        }
        PlayerAudioFormat(
            label = audioFormatLabel,
            ffmpegActive = ffmpegActive,
            scale = scale,
            modifier = Modifier.testTag("player_audio_format"),
        )
        Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
            FvpPrimaryButton(
                text = "Audio",
                onClick = onAudio,
                scale = scale,
                modifier = Modifier
                    .focusRequester(audioFocusRequester)
                    .testTag("player_audio_button"),
            )
            FvpPrimaryButton(
                text = "Sottotitoli",
                onClick = onSubtitles,
                scale = scale,
                modifier = Modifier.testTag("player_subtitles_button"),
            )
        }
    }
}

/** Elenco tracce Audio/Sottotitoli. I sottotitoli includono "Disattivati". */
@Composable
fun PlayerTrackPanel(
    panel: TrackPanelType,
    audioOptions: List<TrackOption>,
    subtitleOptions: List<TrackOption>,
    subtitlesDisabled: Boolean,
    scale: UiScale,
    onSelectAudio: (TrackOption) -> Unit,
    onSelectSubtitle: (TrackOption?) -> Unit,
) {
    val title = if (panel == TrackPanelType.AUDIO) "Audio" else "Sottotitoli"
    val options = if (panel == TrackPanelType.AUDIO) audioOptions else subtitleOptions
    val offFocus = remember { FocusRequester() }
    val optionRequesters = remember(options) {
        options.associate { it.id to FocusRequester() }
    }

    LaunchedEffect(panel, options) {
        withFrameNanos { }
        if (panel == TrackPanelType.SUBTITLES && subtitlesDisabled) {
            offFocus.requestFocus()
        } else {
            val selected = options.firstOrNull { it.selected } ?: options.firstOrNull()
            if (selected != null) {
                optionRequesters[selected.id]?.requestFocus()
            } else if (panel == TrackPanelType.SUBTITLES) {
                offFocus.requestFocus()
            }
        }
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.72f))
            .testTag("player_track_panel"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.56f)
                .heightIn(max = scale.dp(480f))
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(18f)),
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
        ) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
            )
            if (options.isEmpty() && panel == TrackPanelType.AUDIO) {
                Text(
                    text = "Nessuna traccia audio disponibile",
                    color = FvpColors.TextSecondary,
                )
            } else {
                LazyColumn(verticalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
                    if (panel == TrackPanelType.SUBTITLES) {
                        item(key = "off") {
                            ListItem(
                                selected = false,
                                onClick = { onSelectSubtitle(null) },
                                headlineContent = {
                                    Text(
                                        text = (if (subtitlesDisabled) "✓ " else "") + "Disattivati",
                                        maxLines = 1,
                                    )
                                },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .focusRequester(offFocus)
                                    .testTag("player_track_off"),
                                colors = trackColors(),
                                scale = ListItemDefaults.scale(focusedScale = 1.03f),
                                border = ListItemDefaults.border(
                                    focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
                                ),
                                shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                            )
                        }
                    }
                    itemsIndexed(options, key = { _, option -> option.id }) { _, option ->
                        val requester = optionRequesters[option.id]
                        ListItem(
                            selected = false,
                            onClick = {
                                if (panel == TrackPanelType.AUDIO) {
                                    onSelectAudio(option)
                                } else {
                                    onSelectSubtitle(option)
                                }
                            },
                            headlineContent = {
                                Text(
                                    text = (if (option.selected) "✓ " else "") + option.label,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .then(if (requester != null) Modifier.focusRequester(requester) else Modifier)
                                .testTag("player_track_${option.id}"),
                            colors = trackColors(),
                            scale = ListItemDefaults.scale(focusedScale = 1.03f),
                            border = ListItemDefaults.border(
                                focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
                            ),
                            shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun trackColors() = ListItemDefaults.colors(
    containerColor = FvpColors.SurfaceElevated,
    contentColor = FvpColors.TextPrimary,
    focusedContainerColor = FvpColors.Green,
    focusedContentColor = FvpColors.OnGreen,
)

/** Errore di riproduzione: messaggio senza URL, Riprova e Indietro. */
@Composable
fun PlayerErrorOverlay(
    message: String,
    scale: UiScale,
    onRetry: () -> Unit,
    onBack: () -> Unit,
) {
    val retryFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) { retryFocus.requestFocus() }
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.84f))
            .testTag("player_error"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.68f)
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(24f)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(scale.dp(16f)),
        ) {
            Text(
                text = message,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(19f),
                fontWeight = FontWeight.SemiBold,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
                FvpPrimaryButton(
                    text = "Riprova",
                    onClick = onRetry,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(retryFocus)
                        .testTag("player_retry"),
                )
                FvpSecondaryButton(
                    text = "Indietro",
                    onClick = onBack,
                    scale = scale,
                    modifier = Modifier.testTag("player_back"),
                )
            }
        }
    }
}

/** Ripresa da dove si era rimasti; Indietro annulla e riparte dall'inizio. */
@Composable
fun PlayerResumePrompt(
    positionMillis: Long,
    scale: UiScale,
    onResume: () -> Unit,
    onStartOver: () -> Unit,
) {
    val resumeFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) { resumeFocus.requestFocus() }
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.78f))
            .testTag("player_resume_dialog"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.62f)
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(24f)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
        ) {
            Text(
                text = "Riprendi da ${PlaybackFormatting.formatTime(positionMillis)}",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
                FvpPrimaryButton(
                    text = "Riprendi",
                    onClick = onResume,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(resumeFocus)
                        .testTag("player_resume"),
                )
                FvpSecondaryButton(
                    text = "Dall'inizio",
                    onClick = onStartOver,
                    scale = scale,
                    modifier = Modifier.testTag("player_start_over"),
                )
            }
        }
    }
}

/**
 * Prossimo episodio: proposta 3 minuti prima della fine e, dopo "Posticipa",
 * conto alla rovescia negli ultimi 15 secondi. Il focus è su "Guarda ora".
 */
@Composable
fun PlayerNextEpisodePrompt(
    prompt: NextEpisodePrompt,
    scale: UiScale,
    onWatchNow: () -> Unit,
    onPostpone: () -> Unit,
    onCancel: () -> Unit,
) {
    val watchFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) { watchFocus.requestFocus() }
    val countdown = prompt.countdownSeconds
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.35f))
            .testTag("player_next_dialog"),
        contentAlignment = Alignment.BottomCenter,
    ) {
        Column(
            modifier = Modifier
                .padding(scale.dp(28f))
                .fillMaxWidth(0.66f)
                .clip(RoundedCornerShape(scale.dp(16f)))
                .background(FvpColors.Surface)
                .padding(scale.dp(20f)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
        ) {
            Text(
                text = if (countdown != null) {
                    "Prossimo episodio tra $countdown s"
                } else {
                    "Prossimo episodio"
                },
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
                modifier = Modifier.testTag("player_next_title"),
            )
            Text(
                text = prompt.title,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(15f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
                FvpPrimaryButton(
                    text = "Guarda ora",
                    onClick = onWatchNow,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(watchFocus)
                        .testTag("player_next_watch"),
                )
                if (prompt.canPostpone) {
                    FvpSecondaryButton(
                        text = "Posticipa",
                        onClick = onPostpone,
                        scale = scale,
                        modifier = Modifier.testTag("player_next_postpone"),
                    )
                }
                FvpSecondaryButton(
                    text = "Annulla",
                    onClick = onCancel,
                    scale = scale,
                    modifier = Modifier.testTag("player_next_cancel"),
                )
            }
        }
    }
}

/**
 * Etichetta "+10 s" / "−10 s" dei salti, sul lato del tasto premuto; le
 * pressioni ravvicinate si sommano.
 */
@Composable
fun PlayerSeekFeedback(
    feedback: SeekFeedback,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Text(
        text = feedback.label,
        color = FvpColors.TextPrimary,
        fontSize = scale.sp(18f),
        fontWeight = FontWeight.Bold,
        modifier = modifier
            .clip(RoundedCornerShape(scale.dp(10f)))
            .background(FvpColors.Surface.copy(alpha = 0.92f))
            .padding(horizontal = scale.dp(14f), vertical = scale.dp(10f))
            .testTag("player_seek_feedback"),
    )
}
