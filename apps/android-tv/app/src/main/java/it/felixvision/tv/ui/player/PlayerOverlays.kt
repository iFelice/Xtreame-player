package it.felixvision.tv.ui.player

import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.watch.StillWatchingTexts
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.playback.NextEpisodeRules
import it.felixvision.tv.data.playback.PlaybackFormatting
import it.felixvision.tv.data.playback.SeekFeedback
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.data.volume.PlayerVolume
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.ChannelScheduleInfo
import it.felixvision.tv.ui.components.MinuteClockText
import it.felixvision.tv.ui.components.PLAYER_BANNER_CLOCK_TAG
import it.felixvision.tv.ui.components.FocusMarqueeText
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.ignoreHeldOkUntilReleased
import it.felixvision.tv.ui.components.rememberChannelSchedulePrograms
import it.felixvision.tv.ui.components.rememberMinuteNow
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.glassBorder
import it.felixvision.tv.ui.theme.rowLogoPlayer
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import it.felixvision.tv.ui.theme.surfaceCorner
import it.felixvision.tv.ui.theme.volumeBarHeight
import it.felixvision.tv.ui.theme.volumeBarWidth
import it.felixvision.tv.ui.theme.volumeIcon
import it.felixvision.tv.ui.theme.volumeLevelText

/**
 * Opacità delle righe a riposo della lista canali del player: 25% di
 * trasparenza, così il video resta visibile dietro la lista. Con il focus la
 * riga torna piena.
 */
const val PLAYER_CHANNEL_ROW_REST_ALPHA = 0.75f

/**
 * Unico aspetto degli elementi del player che stanno sopra il video: fondo
 * [FvpColors.PlayerOverlay], angoli [it.felixvision.tv.ui.theme.FvpDimens.SURFACE_CORNER_BASE]
 * e bordo sottile [FvpColors.GlassBorder], gli stessi della lista canali Live.
 * Il pannello del formato può fornire un fondo alternativo, mantenendo gli
 * stessi angoli e bordo. Pannello del volume, banner, lista canali, barra comandi, pannello tracce,
 * prossimo episodio, Riprendi, etichetta dei salti ed errori passano tutti da qui.
 */
internal fun Modifier.playerOverlay(
    scale: UiScale,
    backgroundColor: Color = FvpColors.PlayerOverlay,
): Modifier = this
    .clip(RoundedCornerShape(scale.surfaceCorner))
    .background(backgroundColor)
    .border(
        width = scale.glassBorder,
        color = FvpColors.GlassBorder,
        shape = RoundedCornerShape(scale.surfaceCorner),
    )

/**
 * Banner canale: numero, nome, categoria e logo, visibile per 4 secondi.
 *
 * Con [onZapping] la barra info mostra anche il pulsante "Zapping" (solo Live:
 * film e serie non aprono questo banner). [zappingModifier] serve al player per
 * il focus del pulsante, senza spostare qui il resto della gestione dei tasti.
 *
 * La barra si apre con OK mentre il tasto è ancora giù e il focus passa subito
 * su "Zapping": [ignoreHeldOkUntilReleased] consuma le ripetizioni e il rilascio
 * di quel tasto, così lo zapping parte solo con un OK nuovo e completo. Lo
 * stato del blocco vive quanto la composizione della barra, quindi riparte a
 * ogni apertura.
 */
@Composable
fun PlayerChannelBanner(
    banner: ChannelBanner,
    scale: UiScale,
    modifier: Modifier = Modifier,
    audioFormatLabel: String = "",
    ffmpegActive: Boolean = false,
    schedulePrograms: List<EpgProgram>? = null,
    scheduleNowMillis: Long = 0L,
    onZapping: (() -> Unit)? = null,
    zappingModifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier
            // L'OK che ha aperto la barra non deve attivare "Zapping": il
            // blocco sta sul contenitore della barra, prima del pulsante.
            .ignoreHeldOkUntilReleased()
            .playerOverlay(scale)
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
        Column(
            // Larghezza massima per la riga "in onda / a seguire": il banner
            // resta compatto sopra il video.
            modifier = Modifier.widthIn(max = scale.dp(420f)),
            verticalArrangement = Arrangement.spacedBy(scale.dp(2f)),
        ) {
            // Ora corrente, lo stesso orologio della home: nel Live è l'unico
            // riferimento temporale, perché non c'è una posizione nel video.
            MinuteClockText(
                scale = scale,
                fontSize = scale.sp(13f),
                color = FvpColors.TextSecondary,
                modifier = Modifier.testTag(PLAYER_BANNER_CLOCK_TAG),
            )
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
            // In onda con avanzamento e a seguire, quando la guida c'è.
            if (schedulePrograms != null && scheduleNowMillis > 0L) {
                ChannelScheduleInfo(
                    programs = schedulePrograms,
                    nowMillis = scheduleNowMillis,
                    scale = scale,
                    showNext = true,
                    textSizeBase = 12f,
                    testTagPrefix = "player_banner_schedule",
                )
            }
        }
        onZapping?.let { startZapping ->
            FvpCompactButton(
                text = PlayerZappingTexts.BUTTON,
                onClick = startZapping,
                scale = scale,
                modifier = zappingModifier.testTag("player_zapping_button"),
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
    epgClient: ChannelScheduleLoader? = null,
    epgServer: String = "",
    epgUsername: String = "",
    epgPassword: String = "",
    clock: Clock = SystemClock,
    myChannelIds: Set<String> = emptySet(),
) {
    val listState = rememberLazyListState()
    val focusRequesters = remember(channels) { channels.map { FocusRequester() } }
    val safeIndex = currentIndex.coerceIn(0, (channels.size - 1).coerceAtLeast(0))
    // Guida solo per i canali visibili nella lista del player.
    val visibleIds by remember(channels) {
        androidx.compose.runtime.derivedStateOf {
            listState.layoutInfo.visibleItemsInfo.mapNotNull { info ->
                channels.getOrNull(info.index)?.streamId
            }
        }
    }
    val schedulePrograms = rememberChannelSchedulePrograms(
        streamIds = visibleIds,
        loader = epgClient,
        server = epgServer,
        username = epgUsername,
        password = epgPassword,
    )
    val scheduleNow = rememberMinuteNow(clock)

    LaunchedEffect(channels) {
        if (channels.isNotEmpty()) {
            listState.scrollToItem(safeIndex)
            withFrameNanos { }
            focusRequesters.getOrNull(safeIndex)?.requestFocus()
        }
    }

    // Nessun velo nero a tutto schermo: resta solo il pannello, con lo stesso
    // fondo semitrasparente degli altri elementi sopra il video.
    Box(modifier = Modifier.fillMaxSize()) {
        Column(
            modifier = Modifier
                .align(Alignment.CenterStart)
                .fillMaxHeight()
                .fillMaxWidth(0.44f)
                .padding(scale.dp(24f))
                .playerOverlay(scale)
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
                verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                // Ingrandimento e cornice delle voci restano nella lista.
                contentPadding = PaddingValues(scale.focusSafePadding),
                modifier = Modifier.fillMaxWidth().weight(1f),
            ) {
                itemsIndexed(channels, key = { _, stream -> stream.streamId }) { index, channel ->
                    val isCurrent = index == safeIndex
                    val requester = focusRequesters.getOrNull(index)
                    var focused by remember(channel.streamId) { mutableStateOf(false) }
                    // Riga compatta: altezza ridotta, logo proporzionato.
                    DenseListItem(
                        selected = false,
                        onClick = { onSelect(index) },
                        headlineContent = {
                            Column {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                                ) {
                                    FocusMarqueeText(
                                        text = channel.name,
                                        focused = focused,
                                        color = if (isCurrent) FvpColors.Green else FvpColors.TextPrimary,
                                        fontSize = scale.rowText,
                                        modifier = Modifier.weight(1f, fill = false),
                                    )
                                    if (isCurrent) {
                                        Text(text = "●", color = FvpColors.Green, fontSize = scale.sp(12f))
                                    }
                                    if (channel.streamId in myChannelIds) {
                                        Text(
                                            text = "★",
                                            color = Color(0xFFFBBF24),
                                            fontSize = scale.sp(12f),
                                            modifier = Modifier.testTag("player_channel_${channel.streamId}_fav_star"),
                                        )
                                    }
                                }
                                ChannelScheduleInfo(
                                    programs = schedulePrograms[channel.streamId],
                                    nowMillis = scheduleNow,
                                    scale = scale,
                                    showNext = true,
                                    textSizeBase = 11f,
                                    testTagPrefix = "player_channel_schedule_${channel.streamId}",
                                )
                            }
                        },
                        leadingContent = {
                            ChannelLogoImage(
                                imageUrl = channel.streamIcon,
                                name = channel.name,
                                scale = scale,
                                modifier = Modifier.size(scale.rowLogoPlayer),
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
                            .onFocusChanged { focused = it.isFocused }
                            .testTag("player_channel_${channel.streamId}"),
                        colors = ListItemDefaults.colors(
                            // Riga a riposo al 90%: lascia intravedere il video
                            // attraverso il contenitore PlayerOverlay. Con il focus
                            // la superficie resta piena, come prima.
                            containerColor = FvpColors.SurfaceElevated
                                .copy(alpha = PLAYER_CHANNEL_ROW_REST_ALPHA),
                            contentColor = FvpColors.TextPrimary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                            focusedSelectedContainerColor = FvpColors.SurfaceElevated,
                            focusedSelectedContentColor = FvpColors.TextPrimary,
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
    progressFocusRequester: FocusRequester,
    onTogglePlay: () -> Unit,
    onSeek: (Int) -> Unit,
    onAudio: () -> Unit,
    onSubtitles: () -> Unit,
    onVolume: () -> Unit,
    onFormat: () -> Unit,
    modifier: Modifier = Modifier,
    audioFormatLabel: String = "",
    ffmpegActive: Boolean = false,
) {
    var progressFocused by remember { mutableStateOf(false) }
    Column(
        modifier = modifier
            .fillMaxWidth()
            .playerOverlay(scale)
            .padding(horizontal = scale.dp(28f), vertical = scale.dp(16f))
            .testTag("player_controls_bar"),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(16f)),
        ) {
            Text(
                text = state.currentTitle,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.weight(1f),
            )
            // Ora corrente anche in film e serie: sta nella barra comandi, dove
            // c'è già il titolo, e non copre il minutaggio della riproduzione.
            MinuteClockText(
                scale = scale,
                fontSize = scale.sp(15f),
                color = FvpColors.TextSecondary,
            )
        }
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(scale.dp(3f))
                .focusRequester(progressFocusRequester)
                .onFocusChanged { progressFocused = it.isFocused }
                .onPreviewKeyEvent { event ->
                    if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                    when (event.key) {
                        Key.DirectionCenter, Key.Enter -> { onTogglePlay(); true }
                        Key.DirectionLeft -> { onSeek(-1); true }
                        Key.DirectionRight -> { onSeek(1); true }
                        Key.DirectionDown -> { audioFocusRequester.requestFocus(); true }
                        Key.DirectionUp -> true
                        else -> false
                    }
                }
                .focusable()
                .testTag("player_progress"),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(10f)),
        ) {
            Text(
                text = if (state.isPlaying) "▶" else "❚❚",
                color = FvpColors.TextPrimary,
                modifier = Modifier.testTag("player_play_state"),
            )
            Text(
                text = PlaybackFormatting.formatTime(state.positionMillis),
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
            val knobDiameter = scale.dp(14f)
            val barHeight = scale.dp(if (progressFocused) 8f else 4f)
            val fraction = state.progressFraction
            BoxWithConstraints(
                modifier = Modifier.weight(1f).height(knobDiameter),
                contentAlignment = Alignment.CenterStart,
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(barHeight)
                        .clip(RoundedCornerShape(barHeight / 2f))
                        .background(FvpColors.SurfaceElevated)
                        .testTag("player_progress_track"),
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth(fraction)
                            .fillMaxHeight()
                            .background(FvpColors.Green),
                    )
                }
                if (progressFocused) {
                    // Il pallino resta interamente entro la barra anche agli estremi.
                    val knobX = (maxWidth * fraction - knobDiameter / 2f)
                        .coerceIn(0.dp, (maxWidth - knobDiameter).coerceAtLeast(0.dp))
                    Box(
                        modifier = Modifier
                            .offset(x = knobX)
                            .size(knobDiameter)
                            .background(FvpColors.Green, CircleShape)
                            .testTag("player_progress_knob"),
                    )
                }
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
        Row(
            modifier = Modifier.onPreviewKeyEvent { event ->
                if (event.type == KeyEventType.KeyDown && event.key == Key.DirectionUp) {
                    progressFocusRequester.requestFocus()
                    true
                } else false
            },
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        ) {
            FvpCompactButton(
                text = "Audio",
                onClick = onAudio,
                scale = scale,
                modifier = Modifier
                    .focusRequester(audioFocusRequester)
                    .testTag("player_audio_button"),
            )
            FvpCompactButton(
                text = "Sottotitoli",
                onClick = onSubtitles,
                scale = scale,
                modifier = Modifier.testTag("player_subtitles_button"),
            )
            // Volume del nostro player: si apre anche con la freccia Giù a
            // barra chiusa.
            FvpCompactButton(
                text = "Volume ${state.volumeLevel}",
                onClick = onVolume,
                scale = scale,
                modifier = Modifier.testTag("player_volume_button"),
            )
            FvpCompactButton(
                text = "Formato",
                onClick = onFormat,
                scale = scale,
                modifier = Modifier.testTag("player_format_button"),
            )
        }
    }
}

/**
 * Pannello del volume sul lato destro: barra verticale a capsula con riempimento
 * proporzionale, numero del livello e icona Lucide "volume-2" ("volume-x" a zero).
 * Riguarda solo il volume del nostro player, non quello del televisore.
 */
@Composable
fun PlayerVolumePanel(
    level: Int,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val muted = PlayerVolume.isMuted(level)
    Row(
        modifier = modifier
            .playerOverlay(scale)
            .padding(horizontal = scale.dp(14f), vertical = scale.dp(12f))
            .testTag("player_volume_panel"),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
        ) {
            Image(
                painter = painterResource(
                    id = if (muted) R.drawable.ic_volume_x else R.drawable.ic_volume_2,
                ),
                contentDescription = if (muted) "Volume muto" else "Volume",
                colorFilter = ColorFilter.tint(FvpColors.TextPrimary),
                modifier = Modifier
                    .size(scale.volumeIcon)
                    .testTag(if (muted) "player_volume_icon_muted" else "player_volume_icon"),
            )
            Text(
                text = level.toString(),
                color = FvpColors.TextPrimary,
                fontSize = scale.volumeLevelText,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.testTag("player_volume_level"),
            )
        }
        // Barra verticale a capsula: la parte verde cresce dal basso, mentre
        // la traccia conserva il fondo elevato per indicare il volume restante.
        Box(
            modifier = Modifier
                .width(scale.volumeBarWidth)
                .height(scale.volumeBarHeight)
                .clip(CircleShape)
                .background(FvpColors.SurfaceElevated)
                .testTag("player_volume_bar_track"),
            contentAlignment = Alignment.BottomCenter,
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .fillMaxHeight(PlayerVolume.levelFraction(level))
                    .clip(CircleShape)
                    .background(FvpColors.Green)
                    .testTag("player_volume_bar_fill"),
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
            .testTag("player_track_panel"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.56f)
                .heightIn(max = scale.dp(480f))
                .playerOverlay(scale)
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
                LazyColumn(
                    verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                    // Ingrandimento e cornice delle voci restano nella lista.
                    contentPadding = PaddingValues(scale.focusSafePadding),
                ) {
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
    focusedSelectedContainerColor = FvpColors.Green,
    focusedSelectedContentColor = FvpColors.OnGreen,
)

/**
 * Pannello del formato dello schermo, sul modello del pannello Audio e
 * Sottotitoli: quattro voci nell'ordine di [VideoFormat], il formato in vigore
 * è selezionato e prende il focus all'apertura, OK (o il click) lo applica.
 */
@Composable
fun PlayerFormatPanel(
    current: VideoFormat,
    scale: UiScale,
    onSelect: (VideoFormat) -> Unit,
    modifier: Modifier = Modifier,
) {
    val currentFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { currentFocus.requestFocus() }
    }
    Box(
        modifier = modifier
            .fillMaxSize()
            .testTag("player_format_panel"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .width(IntrinsicSize.Max)
                .playerOverlay(scale)
                .padding(scale.dp(18f)),
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
        ) {
            Text(
                text = "Formato",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
            )
            VideoFormat.entries.forEach { format ->
                ListItem(
                    selected = format == current,
                    onClick = { onSelect(format) },
                    headlineContent = {
                        Text(
                            text = (if (format == current) "✓ " else "") + format.label,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .then(if (format == current) Modifier.focusRequester(currentFocus) else Modifier)
                        .testTag("player_format_option_${format.storageKey}"),
                    colors = formatColors(),
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

@Composable
private fun formatColors() = ListItemDefaults.colors(
    containerColor = FvpColors.SurfaceElevated.copy(alpha = PLAYER_CHANNEL_ROW_REST_ALPHA),
    contentColor = FvpColors.TextPrimary,
    focusedContainerColor = FvpColors.SurfaceElevated,
    focusedContentColor = FvpColors.TextPrimary,
    selectedContainerColor = FvpColors.SurfaceElevated.copy(alpha = PLAYER_CHANNEL_ROW_REST_ALPHA),
    selectedContentColor = FvpColors.TextPrimary,
    focusedSelectedContainerColor = FvpColors.SurfaceElevated,
    focusedSelectedContentColor = FvpColors.TextPrimary,
)

/** Errore di riproduzione: messaggio senza URL, Riprova e Indietro. */
@Composable
fun PlayerErrorOverlay(
    message: String,
    scale: UiScale,
    onRetry: () -> Unit,
    onBack: () -> Unit,
    showRetry: Boolean = true,
) {
    val retryFocus = remember { FocusRequester() }
    LaunchedEffect(showRetry) { retryFocus.requestFocus() }
    Box(
        modifier = Modifier
            .fillMaxSize()
            .testTag("player_error"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.68f)
                .playerOverlay(scale)
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
                if (showRetry) FvpPrimaryButton(
                    text = "Riprova",
                    onClick = onRetry,
                    scale = scale,
                    modifier = Modifier.focusRequester(retryFocus).testTag("player_retry"),
                )
                FvpSecondaryButton(
                    text = "Indietro",
                    onClick = onBack,
                    scale = scale,
                    modifier = (if (!showRetry) Modifier.focusRequester(retryFocus) else Modifier).testTag("player_back"),
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
            .testTag("player_resume_dialog"),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth(0.62f)
                .playerOverlay(scale)
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

/** Riquadro compatto "Prossimo episodio", con il focus iniziale su "Guarda ora". */
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
            .testTag("player_next_dialog"),
        contentAlignment = Alignment.BottomEnd,
    ) {
        Column(
            modifier = Modifier
                .padding(scale.dp(28f))
                .widthIn(max = scale.dp(340f))
                .playerOverlay(scale)
                .padding(scale.dp(14f)),
            horizontalAlignment = Alignment.Start,
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
        ) {
            Text(
                text = if (countdown != null) {
                    "Prossimo episodio tra ${NextEpisodeRules.formatCountdown(countdown)}"
                } else {
                    "Prossimo episodio"
                },
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(15f),
                fontWeight = FontWeight.SemiBold,
                modifier = Modifier.testTag("player_next_title"),
            )
            Text(
                text = prompt.title,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
                FvpCompactButton(
                    text = "Guarda ora",
                    onClick = onWatchNow,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(watchFocus)
                        .testTag("player_next_watch"),
                )
                FvpCompactButton(
                    text = "Posticipa",
                    onClick = onPostpone,
                    scale = scale,
                    modifier = Modifier.testTag("player_next_postpone"),
                )
                FvpCompactButton(
                    text = "Annulla",
                    onClick = onCancel,
                    scale = scale,
                    modifier = Modifier.testTag("player_next_cancel"),
                )
            }
        }
    }
}

/** Etichetta non focalizzabile mostrata dopo aver ridotto il riquadro. */
@Composable
fun PlayerNextEpisodeLabel(prompt: NextEpisodePrompt, scale: UiScale) {
    val countdown = prompt.countdownSeconds ?: return
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.BottomEnd) {
        Text(
            text = "Prossimo episodio tra ${NextEpisodeRules.formatCountdown(countdown)}",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(13f),
            modifier = Modifier
                .padding(scale.dp(28f))
                .playerOverlay(scale)
                .padding(horizontal = scale.dp(10f), vertical = scale.dp(6f))
                .testTag("player_next_label"),
        )
    }
}

/**
 * Valori dell'indicatore di caricamento del player: ritardo prima di
 * comparire, durata del giro, ampiezza dell'arco, e la condizione per cui
 * l'indicatore è richiesto (unica fonte per [PlayerScreen]).
 */
object PlayerBufferingIndicatorDefaults {

    /** L'indicatore compare solo se il caricamento dura più di questo tempo. */
    const val SHOW_DELAY_MILLIS = 300L

    /** Durata di un giro completo dell'arco, in millisecondi. */
    const val ROTATION_DURATION_MILLIS = 900

    /** Ampiezza dell'arco verde, in gradi. */
    const val ARC_SWEEP_DEGREES = 90f

    /**
     * L'indicatore è richiesto durante il caricamento, e mai sopra a un
     * errore (l'overlay dell'errore parla da sé) o a un pannello modale
     * aperto.
     */
    fun isRequested(
        isBuffering: Boolean,
        hasError: Boolean,
        hasModalOverlay: Boolean,
    ): Boolean = isBuffering && !hasError && !hasModalOverlay
}

/**
 * Anello sottile che gira, al posto della scritta "Caricamento…": una traccia
 * circolare completa a bassissima opacità e, sopra, un arco
 * [FvpColors.Green] di [PlayerBufferingIndicatorDefaults.ARC_SWEEP_DEGREES]°
 * che ruota a velocità costante (un giro ogni
 * [PlayerBufferingIndicatorDefaults.ROTATION_DURATION_MILLIS] ms). Nessun
 * testo e nessuno sfondo: il video resta visibile dietro.
 */
@Composable
fun PlayerBufferingIndicator(
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val transition = rememberInfiniteTransition(label = "player_buffering")
    val rotation by transition.animateFloat(
        initialValue = 0f,
        targetValue = 360f,
        animationSpec = infiniteRepeatable(
            animation = tween(
                durationMillis = PlayerBufferingIndicatorDefaults.ROTATION_DURATION_MILLIS,
                easing = LinearEasing,
            ),
            // A fine giro riparte da zero, senza inversioni.
            repeatMode = RepeatMode.Restart,
        ),
        label = "player_buffering_rotation",
    )
    val strokeWidth = scale.dp(3f)
    Canvas(
        modifier = modifier
            .size(scale.dp(40f))
            .testTag("player_buffering"),
    ) {
        val stroke = strokeWidth.toPx()
        val inset = stroke / 2f
        // L'anello resta dentro i bordi della tela, pennello compreso.
        val arcSize = Size(
            (size.width - stroke).coerceAtLeast(0f),
            (size.height - stroke).coerceAtLeast(0f),
        )
        val arcTopLeft = Offset(inset, inset)
        val arcStyle = Stroke(width = stroke, cap = StrokeCap.Round)
        drawArc(
            color = FvpColors.TextPrimary.copy(alpha = 0.18f),
            startAngle = 0f,
            sweepAngle = 360f,
            useCenter = false,
            topLeft = arcTopLeft,
            size = arcSize,
            style = arcStyle,
        )
        drawArc(
            color = FvpColors.Green,
            startAngle = rotation,
            sweepAngle = PlayerBufferingIndicatorDefaults.ARC_SWEEP_DEGREES,
            useCenter = false,
            topLeft = arcTopLeft,
            size = arcSize,
            style = arcStyle,
        )
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
            .playerOverlay(scale)
            .padding(horizontal = scale.dp(14f), vertical = scale.dp(10f))
            .testTag("player_seek_feedback"),
    )
}

/**
 * Avviso "Stai ancora guardando?".
 *
 * Stessa vestizione di tutti i pannelli sopra il video: superficie `playerOverlay`
 * (60% di nero, angoli 14 dp, bordo bianco al 10%), testo primario e secondario
 * della palette, pulsanti compatti del player. Centrato, con il focus iniziale
 * su "Sì, sto guardando": se il telecomando è in mano la risposta più probabile
 * è quella, e con il focus lì basta un OK.
 *
 * Il countdown alla scadenza non è disegnato qui: allo scadere il player esce da
 * solo (comportamento del chiamante), così l'avviso non introduce un secondo
 * tipo di timer da spiegare.
 */
@Composable
fun PlayerStillWatchingPrompt(
    autoEpisodes: Int,
    scale: UiScale,
    onContinue: () -> Unit,
    onExit: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val continueFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) { runCatching { continueFocus.requestFocus() } }
    Box(
        // L'avviso è modale: mentre è aperto il player sotto non riceve tasti
        // (`hasModalOverlay` nel player), quindi l'OK dato su "Sì" o "No" non
        // mette in pausa né apre pannelli. Indietro è consumato qui.
        modifier = modifier
            .fillMaxSize()
            .onPreviewKeyEvent { event -> event.key == Key.Back }
            .testTag(PLAYER_STILL_WATCHING_TAG),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .widthIn(max = scale.dp(520f))
                .playerOverlay(scale)
                .padding(scale.dp(22f)),
            horizontalAlignment = Alignment.Start,
            verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
        ) {
            Text(
                text = StillWatchingTexts.TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(20f),
                fontWeight = FontWeight.Bold,
            )
            Text(
                text = StillWatchingTexts.reason(autoEpisodes),
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(14f),
            )
            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(10f)),
                modifier = Modifier.padding(top = scale.dp(4f)),
            ) {
                FvpCompactButton(
                    text = StillWatchingTexts.CONTINUE,
                    onClick = onContinue,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(continueFocus)
                        .testTag(PLAYER_STILL_WATCHING_CONTINUE_TAG),
                )
                FvpSecondaryButton(
                    text = StillWatchingTexts.EXIT,
                    onClick = onExit,
                    scale = scale,
                    modifier = Modifier.testTag(PLAYER_STILL_WATCHING_EXIT_TAG),
                )
            }
        }
    }
}

const val PLAYER_STILL_WATCHING_TAG = "player_still_watching"
const val PLAYER_STILL_WATCHING_CONTINUE_TAG = "player_still_watching_continue"
const val PLAYER_STILL_WATCHING_EXIT_TAG = "player_still_watching_exit"
