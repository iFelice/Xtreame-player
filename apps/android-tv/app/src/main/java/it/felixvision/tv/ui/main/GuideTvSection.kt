package it.felixvision.tv.ui.main

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
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
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
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
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.LocalTextStyle
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.EpgRules
import it.felixvision.tv.data.epg.GuideEpgDataSource
import it.felixvision.tv.data.epg.GuideEpgSnapshot
import it.felixvision.tv.data.epg.GuideScheduleRules
import it.felixvision.tv.data.epg.GuideTimeWindow
import it.felixvision.tv.data.playback.ChannelVideoFormatStore
import it.felixvision.tv.data.playback.LiveStreamFormat
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.rememberMinuteNow
import it.felixvision.tv.ui.navigation.DrawerClockFormatting
import it.felixvision.tv.ui.player.GuideMiniPlayer
import it.felixvision.tv.ui.player.GuidePreviewPlayerFactory
import it.felixvision.tv.ui.player.Media3GuidePreviewPlayerFactory
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.glassBorder
import it.felixvision.tv.ui.theme.rowLogo
import it.felixvision.tv.ui.theme.rowText
import it.felixvision.tv.ui.theme.surfaceCorner
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.launch
import java.time.ZoneId
import kotlin.math.abs

/** Categoria presentata dalla Guida, inclusa l'eventuale voce senza categoria. */
data class GuideCategory(val id: String, val name: String)

const val GUIDE_UNCATEGORIZED_CATEGORY_ID = "__guide_uncategorized__"
private const val GUIDE_HEADER_HEIGHT_BASE = 38f
private const val GUIDE_INFO_HEIGHT_BASE = 144f
private const val GUIDE_COLUMN_HEADER_HEIGHT_BASE = 34f
private const val GUIDE_CHANNEL_COLUMN_WIDTH_BASE = 230f
private const val GUIDE_CATEGORY_COLUMN_WIDTH_BASE = 172f
private const val GUIDE_ROW_HEIGHT_BASE = 56f
private const val GUIDE_PROGRAM_HEIGHT_BASE = 48f

private val GuideClockFont = FontFamily(Font(R.font.sora_medium, FontWeight.Medium))

/** Categorie senza doppioni, con voci per categorie mancanti e canali non assegnati. */
fun guideCategories(categories: List<Category>, streams: List<LiveStream>): List<GuideCategory> {
    val byId = LinkedHashMap<String, GuideCategory>()
    categories.forEach { category ->
        val id = category.categoryId.trim()
        if (id.isNotEmpty()) byId.putIfAbsent(id, GuideCategory(id, category.categoryName?.trim().orEmpty().ifEmpty { "Senza nome" }))
    }
    streams.forEach { stream ->
        stream.allCategoryIds.forEach { id ->
            if (id !in byId) byId[id] = GuideCategory(id, id)
        }
    }
    if (streams.any { it.allCategoryIds.isEmpty() }) {
        byId[GUIDE_UNCATEGORIZED_CATEGORY_ID] = GuideCategory(GUIDE_UNCATEGORIZED_CATEGORY_ID, "Senza categoria")
    }
    return byId.values.toList()
}

/** Canali visibili della categoria scelta; i non assegnati hanno una voce dedicata. */
fun guideStreamsForCategory(categoryId: String?, streams: List<LiveStream>): List<LiveStream> {
    if (categoryId == null) return emptyList()
    return if (categoryId == GUIDE_UNCATEGORIZED_CATEGORY_ID) {
        streams.filter { it.allCategoryIds.isEmpty() }
    } else {
        streams.filter { categoryId in it.allCategoryIds }
    }
}

private data class GuideProgramKey(val streamId: String, val start: Long)

private data class PendingGuidePlayer(
    val channel: LiveStream,
    val category: GuideCategory,
    val categoryStreams: List<LiveStream>,
)

/**
 * Pagina unica della Guida TV: categorie, canali, timeline EPG, dettagli e
 * mini-player. Riceve esclusivamente le liste già filtrate dalla schermata
 * principale.
 */
@Composable
fun GuideTvSection(
    contentFocusRequester: FocusRequester,
    modifier: Modifier = Modifier,
    categories: List<Category> = emptyList(),
    streams: List<LiveStream> = emptyList(),
    guideDataSource: GuideEpgDataSource? = null,
    server: String = "",
    username: String = "",
    password: String = "",
    allowedOutputFormats: List<String> = emptyList(),
    /** Formato Live scelto in Impostazioni → Player, per l'anteprima del mini-player. */
    liveFormat: LiveStreamFormat = LiveStreamFormat.DEFAULT,
    videoFormatStore: ChannelVideoFormatStore? = null,
    scale: UiScale = UiScale(1f),
    clock: Clock = SystemClock,
    focusChannelId: String? = null,
    focusChannelTick: Int = 0,
    onChannelFocusRestored: () -> Unit = {},
    onPlayFullscreen: (LiveStream, GuideCategory, List<LiveStream>) -> Unit = { _, _, _ -> },
    previewPlayerFactory: GuidePreviewPlayerFactory = Media3GuidePreviewPlayerFactory,
) {
    val categoryRows = remember(categories, streams) { guideCategories(categories, streams) }
    var activeCategoryId by remember(categoryRows) { mutableStateOf(categoryRows.firstOrNull()?.id) }
    val filteredStreams = remember(activeCategoryId, streams) {
        guideStreamsForCategory(activeCategoryId, streams)
    }
    val categoryListState = rememberLazyListState()
    val channelListState = rememberLazyListState()
    val categoryFocusRequesters = remember(categoryRows) {
        categoryRows.associate { it.id to FocusRequester() }
    }
    val channelFocusRequesters = remember(streams) {
        streams.associate { it.streamId to FocusRequester() }
    }
    val programFocusRequesters = remember { mutableStateMapOf<GuideProgramKey, FocusRequester>() }
    val scope = rememberCoroutineScope()

    var selectedChannelId by remember(categoryRows, streams) {
        mutableStateOf(guideStreamsForCategory(categoryRows.firstOrNull()?.id, streams).firstOrNull()?.streamId)
    }
    var selectedProgramStart by remember { mutableStateOf<Long?>(null) }
    var previewStreamId by remember { mutableStateOf<String?>(null) }
    var pendingFullscreen by remember { mutableStateOf<PendingGuidePlayer?>(null) }

    val guideFlow = remember(guideDataSource, server, username) {
        guideDataSource?.observe(server, username) ?: flowOf(GuideEpgSnapshot())
    }
    val guideState by guideFlow.collectAsState(initial = GuideEpgSnapshot())
    val nowMillis = rememberMinuteNow(clock)
    val zone = remember { ZoneId.systemDefault() }
    val currentHourStart = remember(nowMillis, zone) { GuideScheduleRules.currentHourStart(nowMillis, zone) }
    var windowStart by remember { mutableLongStateOf(currentHourStart) }
    var windowWasScrolled by remember { mutableStateOf(false) }
    val window = remember(windowStart) { GuideScheduleRules.windowAt(windowStart) }

    LaunchedEffect(currentHourStart, windowWasScrolled) {
        if (!windowWasScrolled) windowStart = currentHourStart
    }

    val visibleChannelIds by remember(filteredStreams) {
        derivedStateOf {
            channelListState.layoutInfo.visibleItemsInfo.mapNotNull { info ->
                filteredStreams.getOrNull(info.index)?.streamId
            }
        }
    }
    LaunchedEffect(guideDataSource, server, username, password, guideState.xmlTvResolved, visibleChannelIds) {
        val repository = guideDataSource ?: return@LaunchedEffect
        if (!guideState.xmlTvResolved || visibleChannelIds.isEmpty()) return@LaunchedEffect
        val visible = filteredStreams.filter { it.streamId in visibleChannelIds }
        // Lo scroll non annulla una richiesta già partita: la coda dati resta
        // seriale e la pagina può ancora annullare tutto quando viene rimossa.
        scope.launch { repository.loadVisible(server, username, password, visible) }
    }

    val formats by androidx.compose.runtime.produceState<Map<String, VideoFormat>>(
        initialValue = emptyMap(),
        videoFormatStore,
        server,
        username,
    ) {
        value = if (videoFormatStore == null) emptyMap() else {
            runCatching { videoFormatStore.getAll(server, username) }.getOrDefault(emptyMap())
        }
    }

    fun programsFor(channel: LiveStream?): List<EpgProgram> =
        guideState.programsFor(channel?.epgChannelId)

    fun defaultProgram(channel: LiveStream?): EpgProgram? =
        GuideScheduleRules.initialProgram(programsFor(channel), nowMillis, window)

    fun selectChannel(channel: LiveStream) {
        selectedChannelId = channel.streamId
        val existing = selectedProgramStart?.let { start -> programsFor(channel).firstOrNull { it.start == start } }
        selectedProgramStart = existing?.start ?: defaultProgram(channel)?.start
    }

    fun focusChannel(index: Int, preferredEpochSeconds: Long? = null) {
        if (filteredStreams.isEmpty()) return
        val targetIndex = index.coerceIn(0, filteredStreams.lastIndex)
        val channel = filteredStreams[targetIndex]
        selectChannel(channel)
        scope.launch {
            channelListState.scrollToItem(targetIndex)
            withFrameNanos { }
            val programs = programsFor(channel)
            val visiblePrograms = GuideScheduleRules.programsInWindow(programs, window)
            val preferred = preferredEpochSeconds?.let { epoch ->
                GuideScheduleRules.findAt(programs, epoch)
                    ?: visiblePrograms.minByOrNull { abs(it.start - epoch) }
            }
            val targetProgram = preferred ?: defaultProgram(channel)
            val programRequester = targetProgram?.let { programFocusRequesters[GuideProgramKey(channel.streamId, it.start)] }
            if (programRequester?.requestFocus() != true) {
                channelFocusRequesters[channel.streamId]?.requestFocus()
            }
        }
    }

    fun focusChannelRow(index: Int) {
        if (filteredStreams.isEmpty()) return
        val targetIndex = index.coerceIn(0, filteredStreams.lastIndex)
        val channel = filteredStreams[targetIndex]
        selectChannel(channel)
        scope.launch {
            channelListState.scrollToItem(targetIndex)
            withFrameNanos { }
            channelFocusRequesters[channel.streamId]?.requestFocus()
        }
    }

    fun focusCategory(categoryId: String?) {
        val requester = categoryId?.let { categoryFocusRequesters[it] } ?: return
        scope.launch {
            val index = categoryRows.indexOfFirst { it.id == categoryId }
            if (index >= 0) categoryListState.scrollToItem(index)
            withFrameNanos { }
            requester.requestFocus()
        }
    }

    fun focusProgram(channelIndex: Int, channel: LiveStream, program: EpgProgram) {
        val currentRowIndex = channelIndex.takeIf { filteredStreams.getOrNull(it)?.streamId == channel.streamId }
            ?: filteredStreams.indexOfFirst { it.streamId == channel.streamId }
        if (currentRowIndex < 0) return
        selectedChannelId = channel.streamId
        selectedProgramStart = program.start
        val targetWindowStart = GuideScheduleRules.windowStartFor(windowStart, program, zone)
        if (targetWindowStart != windowStart) {
            windowStart = targetWindowStart
            windowWasScrolled = true
        }
        scope.launch {
            channelListState.scrollToItem(currentRowIndex)
            withFrameNanos { }
            val requester = programFocusRequesters[GuideProgramKey(channel.streamId, program.start)]
            if (requester?.requestFocus() != true) channelFocusRequesters[channel.streamId]?.requestFocus()
        }
    }

    fun moveProgram(channelIndex: Int, channel: LiveStream, program: EpgProgram, direction: Int) {
        val programs = programsFor(channel)
        val currentIndex = GuideScheduleRules.indexOfStart(programs, program.start)
        val target = if (currentIndex >= 0) programs.getOrNull(currentIndex + direction) else null
        if (target == null) {
            if (direction < 0) focusChannelRow(channelIndex)
            return
        }
        focusProgram(channelIndex, channel, target)
    }

    fun focusFirstProgram(channelIndex: Int, channel: LiveStream) {
        val programs = programsFor(channel)
        val visible = GuideScheduleRules.programsInWindow(programs, window)
        val target = selectedProgramStart?.let { start -> visible.firstOrNull { it.start == start } }
            ?: defaultProgram(channel)
        if (target != null && GuideScheduleRules.bounds(target, window) != null) {
            focusProgram(channelIndex, channel, target)
        }
    }

    fun activate(channel: LiveStream) {
        val category = categoryRows.firstOrNull { it.id == activeCategoryId }
            ?: GuideCategory(GUIDE_UNCATEGORIZED_CATEGORY_ID, "Senza categoria")
        val channelGroup = filteredStreams
        if (previewStreamId == channel.streamId) {
            pendingFullscreen = PendingGuidePlayer(channel, category, channelGroup)
            previewStreamId = null
        } else {
            pendingFullscreen = null
            previewStreamId = channel.streamId
        }
    }

    val latestOnPlayFullscreen by rememberUpdatedState(onPlayFullscreen)
    val latestPending by rememberUpdatedState(pendingFullscreen)
    LaunchedEffect(pendingFullscreen, previewStreamId) {
        val pending = latestPending ?: return@LaunchedEffect
        if (previewStreamId != null) return@LaunchedEffect
        // Lascia un fotogramma perché AndroidView si stacchi e il mini-player
        // rilasci ExoPlayer prima della creazione del player fullscreen.
        withFrameNanos { }
        latestOnPlayFullscreen(pending.channel, pending.category, pending.categoryStreams)
        pendingFullscreen = null
    }

    BackHandler(enabled = previewStreamId != null) {
        pendingFullscreen = null
        previewStreamId = null
    }

    LaunchedEffect(categoryRows, filteredStreams, activeCategoryId, guideState.xmlTvPrograms, guideState.shortEpgPrograms) {
        val currentIndex = filteredStreams.indexOfFirst { it.streamId == selectedChannelId }
        if (currentIndex < 0) {
            val first = filteredStreams.firstOrNull()
            selectedChannelId = first?.streamId
            selectedProgramStart = defaultProgram(first)?.start
            if (first != null) channelListState.scrollToItem(0)
        } else {
            val current = filteredStreams[currentIndex]
            if (selectedProgramStart != null && programsFor(current).none { it.start == selectedProgramStart }) {
                selectedProgramStart = defaultProgram(current)?.start
            }
        }
    }

    LaunchedEffect(categoryRows) {
        val firstCategory = categoryRows.firstOrNull()?.let { category -> categoryFocusRequesters[category.id] }
        val initialFocusRequester = firstCategory ?: filteredStreams.firstOrNull()?.let { channelFocusRequesters[it.streamId] }
            ?: return@LaunchedEffect
        repeat(4) {
            withFrameNanos { }
            val focused = runCatching { initialFocusRequester.requestFocus() }.getOrDefault(false)
            if (focused) return@LaunchedEffect
        }
    }

    LaunchedEffect(focusChannelId, focusChannelTick, filteredStreams, categoryRows, activeCategoryId) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val target = streams.firstOrNull { it.streamId == targetId }
        if (target == null) {
            onChannelFocusRestored()
            return@LaunchedEffect
        }
        fun containsTarget(category: GuideCategory): Boolean =
            if (category.id == GUIDE_UNCATEGORIZED_CATEGORY_ID) target.allCategoryIds.isEmpty()
            else category.id in target.allCategoryIds
        val visibleCategory = categoryRows.firstOrNull { it.id == activeCategoryId && containsTarget(it) }
            ?: categoryRows.firstOrNull { category -> containsTarget(category) }
        val restoreCategoryId = visibleCategory?.id ?: activeCategoryId
        if (restoreCategoryId != null && restoreCategoryId != activeCategoryId) {
            val categoryIndex = categoryRows.indexOfFirst { it.id == restoreCategoryId }
            if (categoryIndex >= 0) categoryListState.scrollToItem(categoryIndex)
            activeCategoryId = restoreCategoryId
            return@LaunchedEffect
        }
        val index = filteredStreams.indexOfFirst { it.streamId == targetId }
        if (index >= 0) {
            selectedChannelId = targetId
            selectedProgramStart = defaultProgram(target)?.start
            channelListState.scrollToItem(index)
            withFrameNanos { }
            channelFocusRequesters[targetId]?.requestFocus()
        }
        onChannelFocusRestored()
    }

    val selectedChannel = filteredStreams.firstOrNull { it.streamId == selectedChannelId }
    val selectedPrograms = programsFor(selectedChannel)
    val selectedProgram = selectedProgramStart?.let { start -> selectedPrograms.firstOrNull { it.start == start } }
        ?: defaultProgram(selectedChannel)
    val currentWindow = window
    val nowFraction = GuideScheduleRules.nowFraction(nowMillis, currentWindow)
    val previewChannel = streams.firstOrNull { it.streamId == previewStreamId }
    val miniPlayerChannel = previewChannel ?: selectedChannel
    val clockTextStyle = LocalTextStyle.current.copy(fontFeatureSettings = "tnum")

    Box(
        modifier = modifier
            .fillMaxSize()
            .then(
                if (categoryRows.isEmpty()) Modifier.focusRequester(contentFocusRequester).focusable()
                else Modifier
            )
            .testTag("guide_tv_section"),
    ) {
        Column(modifier = Modifier.fillMaxSize(), verticalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(scale.dp(GUIDE_HEADER_HEIGHT_BASE))
                    .testTag("guide_header"),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Text(
                    text = "Guida",
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(22f),
                    fontWeight = FontWeight.SemiBold,
                )
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                    if (guideState.isLoading) {
                        Text("Caricamento guida…", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                    } else if (guideState.fallbackStopped && !guideState.hasPrograms) {
                        Text("Guida non disponibile", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                    }
                    Text(
                        text = DrawerClockFormatting.timeText(nowMillis),
                        color = FvpColors.TextSecondary,
                        fontSize = (scale.sp(20f).value + 2f * scale.designFactor).sp,
                        fontFamily = GuideClockFont,
                        fontWeight = FontWeight.Medium,
                        maxLines = 1,
                        softWrap = false,
                        style = clockTextStyle,
                        modifier = Modifier.testTag("guide_clock"),
                    )
                }
            }

            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(scale.dp(GUIDE_INFO_HEIGHT_BASE)),
                horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Column(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .background(FvpColors.GlassFill, RoundedCornerShape(scale.surfaceCorner))
                        .border(scale.glassBorder, FvpColors.GlassBorder, RoundedCornerShape(scale.surfaceCorner))
                        .padding(scale.dp(14f))
                        .testTag("guide_program_details"),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(5f)),
                ) {
                    Text(
                        text = selectedProgram?.title?.ifBlank { selectedChannel?.name.orEmpty() }
                            ?: selectedChannel?.name
                            ?: "Seleziona un canale",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.sp(19f),
                        fontWeight = FontWeight.SemiBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.testTag("guide_details_title"),
                    )
                    if (selectedProgram != null && selectedChannel != null) {
                        Text(
                            text = selectedChannel.name,
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(13f),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                    if (selectedProgram != null) {
                        Text(
                            text = "${EpgRules.time(selectedProgram.start, zone)}–${EpgRules.time(selectedProgram.end, zone)}",
                            color = FvpColors.GreenFocus,
                            fontSize = scale.sp(13f),
                            fontWeight = FontWeight.Medium,
                        )
                        if (selectedProgram.description.isNotBlank()) {
                            Text(
                                text = selectedProgram.description,
                                color = FvpColors.TextSecondary,
                                fontSize = scale.sp(13f),
                                maxLines = 3,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                    } else if (selectedChannel != null) {
                        Text(
                            text = "Guida non disponibile per questo canale",
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(13f),
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.testTag("guide_no_program_details"),
                        )
                    } else {
                        Text(
                            text = "Nessuna guida",
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(13f),
                        )
                    }
                }

                GuideMiniPlayer(
                    channel = miniPlayerChannel,
                    server = server,
                    username = username,
                    password = password,
                    allowedOutputFormats = allowedOutputFormats,
                    videoFormat = miniPlayerChannel?.let { formats[it.streamId] } ?: VideoFormat.FIT,
                    playing = previewChannel != null,
                    scale = scale,
                    onLifecycleStop = { previewStreamId = null },
                    modifier = Modifier.fillMaxHeight(),
                    playerFactory = previewPlayerFactory,
                    liveFormat = liveFormat,
                )
            }

            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .padding(top = scale.dp(2f)),
                horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
            ) {
                Column(
                    modifier = Modifier
                        .width(scale.dp(GUIDE_CATEGORY_COLUMN_WIDTH_BASE))
                        .fillMaxHeight()
                        .background(FvpColors.GlassFill, RoundedCornerShape(scale.surfaceCorner))
                        .border(scale.glassBorder, FvpColors.GlassBorder, RoundedCornerShape(scale.surfaceCorner))
                        .testTag("guide_category_column"),
                ) {
                    Text(
                        text = "Categorie",
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(13f),
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.height(scale.dp(GUIDE_COLUMN_HEADER_HEIGHT_BASE)).padding(horizontal = scale.dp(10f), vertical = scale.dp(8f)),
                    )
                    if (categoryRows.isEmpty()) {
                        Box(
                            modifier = Modifier.fillMaxSize().padding(scale.dp(8f)),
                            contentAlignment = Alignment.TopStart,
                        ) {
                            Text("Nessuna categoria", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                        }
                    } else {
                        LazyColumn(
                            state = categoryListState,
                            contentPadding = PaddingValues(scale.dp(6f)),
                            verticalArrangement = Arrangement.spacedBy(scale.dp(4f)),
                            modifier = Modifier.fillMaxSize().testTag("guide_categories"),
                        ) {
                            itemsIndexed(categoryRows, key = { _, category -> category.id }) { index, category ->
                                var focused by remember(category.id) { mutableStateOf(false) }
                                val selected = category.id == activeCategoryId
                                DenseListItem(
                                    selected = selected,
                                    onClick = { activeCategoryId = category.id },
                                    headlineContent = {
                                        Text(
                                            text = category.name,
                                            color = if (focused || selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                            fontSize = scale.rowText,
                                            maxLines = 1,
                                            overflow = TextOverflow.Ellipsis,
                                        )
                                    },
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .testTag("guide_category_${category.id}")
                                        .focusRequester(categoryFocusRequesters.getValue(category.id))
                                        .then(if (index == 0) Modifier.focusRequester(contentFocusRequester) else Modifier)
                                        .onFocusChanged {
                                            focused = it.isFocused
                                            if (it.isFocused) activeCategoryId = category.id
                                        }
                                        .onPreviewKeyEvent { event ->
                                            when (event.key) {
                                                Key.DirectionRight -> {
                                                    if (event.type == KeyEventType.KeyDown) focusChannelRow(0)
                                                    true
                                                }
                                                else -> false
                                            }
                                        },
                                    colors = guideListItemColors(selected),
                                    scale = ListItemDefaults.scale(focusedScale = 1.03f),
                                    border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                                    shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                                )
                            }
                        }
                    }
                }

                Column(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .background(FvpColors.GlassFill, RoundedCornerShape(scale.surfaceCorner))
                        .border(scale.glassBorder, FvpColors.GlassBorder, RoundedCornerShape(scale.surfaceCorner))
                        .testTag("guide_epg_column"),
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(scale.dp(GUIDE_COLUMN_HEADER_HEIGHT_BASE))
                            .padding(horizontal = scale.dp(5f)),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = "Canali",
                            color = FvpColors.TextSecondary,
                            fontSize = scale.sp(13f),
                            fontWeight = FontWeight.Medium,
                            modifier = Modifier
                                .width(scale.dp(GUIDE_CHANNEL_COLUMN_WIDTH_BASE))
                                .padding(start = scale.dp(7f))
                                .testTag("guide_channel_column"),
                        )
                        GuideHourRuler(
                            window = currentWindow,
                            scale = scale,
                            modifier = Modifier.weight(1f).fillMaxHeight(),
                        )
                    }
                    if (filteredStreams.isEmpty()) {
                        Box(modifier = Modifier.fillMaxSize().padding(scale.dp(8f)), contentAlignment = Alignment.TopStart) {
                            Text("Nessun canale", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
                        }
                    } else {
                        LazyColumn(
                            state = channelListState,
                            contentPadding = PaddingValues(horizontal = scale.dp(5f), vertical = scale.dp(5f)),
                            verticalArrangement = Arrangement.spacedBy(scale.dp(3f)),
                            modifier = Modifier.fillMaxSize().testTag("guide_channels"),
                        ) {
                            itemsIndexed(filteredStreams, key = { _, channel -> channel.streamId }) { index, channel ->
                                val programs = guideState.programsFor(channel.epgChannelId)
                                GuideChannelTimelineRow(
                                    channel = channel,
                                    index = index,
                                    programs = programs,
                                    window = currentWindow,
                                    nowMillis = nowMillis,
                                    nowFraction = nowFraction,
                                    scale = scale,
                                    selectedProgramStart = selectedProgramStart.takeIf { selectedChannelId == channel.streamId },
                                    channelFocusRequester = channelFocusRequesters[channel.streamId],
                                    programFocusRequesters = programFocusRequesters,
                                    onChannelFocus = { selectChannel(channel) },
                                    onProgramFocus = { program ->
                                        selectedChannelId = channel.streamId
                                        selectedProgramStart = program.start
                                    },
                                    onActivate = { activate(channel) },
                                    onFocusChannel = { targetIndex, preferred -> focusChannel(targetIndex, preferred) },
                                    onFocusChannelRow = { targetIndex -> focusChannelRow(targetIndex) },
                                    onFocusCategory = { focusCategory(activeCategoryId) },
                                    onFocusFirstProgram = { focusFirstProgram(index, channel) },
                                    onMoveProgram = { program, direction -> moveProgram(index, channel, program, direction) },
                                    onRegisterProgramRequester = { key, requester ->
                                        programFocusRequesters[key] = requester
                                    },
                                    onUnregisterProgramRequester = { key, requester ->
                                        if (programFocusRequesters[key] === requester) programFocusRequesters.remove(key)
                                    },
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun GuideChannelTimelineRow(
    channel: LiveStream,
    index: Int,
    programs: List<EpgProgram>,
    window: GuideTimeWindow,
    nowMillis: Long,
    nowFraction: Float?,
    scale: UiScale,
    selectedProgramStart: Long?,
    channelFocusRequester: FocusRequester?,
    programFocusRequesters: MutableMap<GuideProgramKey, FocusRequester>,
    onChannelFocus: () -> Unit,
    onProgramFocus: (EpgProgram) -> Unit,
    onActivate: () -> Unit,
    onFocusChannel: (Int, Long?) -> Unit,
    onFocusChannelRow: (Int) -> Unit,
    onFocusCategory: () -> Unit,
    onFocusFirstProgram: () -> Unit,
    onMoveProgram: (EpgProgram, Int) -> Unit,
    onRegisterProgramRequester: (GuideProgramKey, FocusRequester) -> Unit,
    onUnregisterProgramRequester: (GuideProgramKey, FocusRequester) -> Unit,
) {
    val visiblePrograms = remember(programs, window) { GuideScheduleRules.programsInWindow(programs, window) }
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(scale.dp(GUIDE_ROW_HEIGHT_BASE)),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        DenseListItem(
            selected = selectedProgramStart != null,
            onClick = onActivate,
            headlineContent = {
                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
                    ChannelLogoImage(
                        imageUrl = channel.streamIcon,
                        name = channel.name,
                        scale = scale,
                        modifier = Modifier.size(scale.rowLogo),
                    )
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = channel.name,
                            color = FvpColors.TextPrimary,
                            fontSize = scale.rowText,
                            fontWeight = FontWeight.Medium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                        channel.num?.let { number ->
                            Text("#$number", color = FvpColors.TextSecondary, fontSize = scale.sp(11f), maxLines = 1)
                        }
                    }
                }
            },
            modifier = Modifier
                .width(scale.dp(GUIDE_CHANNEL_COLUMN_WIDTH_BASE))
                .height(scale.dp(GUIDE_ROW_HEIGHT_BASE))
                .testTag("guide_channel_${channel.streamId}")
                .then(channelFocusRequester?.let(Modifier::focusRequester) ?: Modifier)
                .onFocusChanged {
                    if (it.isFocused) onChannelFocus()
                }
                .onPreviewKeyEvent { event ->
                    when (event.key) {
                        Key.DirectionLeft -> {
                            if (event.type == KeyEventType.KeyDown) onFocusCategory()
                            true
                        }
                        Key.DirectionRight -> {
                            if (event.type == KeyEventType.KeyDown) onFocusFirstProgram()
                            true
                        }
                        Key.DirectionUp -> {
                            if (event.type == KeyEventType.KeyDown) onFocusChannel(index - 1, selectedProgramStart)
                            true
                        }
                        Key.DirectionDown -> {
                            if (event.type == KeyEventType.KeyDown) onFocusChannel(index + 1, selectedProgramStart)
                            true
                        }
                        else -> false
                    }
                },
            colors = guideListItemColors(selectedProgramStart != null),
            scale = ListItemDefaults.scale(focusedScale = 1.02f),
            border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
            shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(7f))),
        )

        BoxWithConstraints(
            modifier = Modifier
                .weight(1f)
                .height(scale.dp(GUIDE_PROGRAM_HEIGHT_BASE))
                .testTag("guide_epg_row_${channel.streamId}"),
        ) {
            val gridWidth = maxWidth
            if (visiblePrograms.isEmpty()) {
                Text(
                    text = "Nessuna guida",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(13f),
                    modifier = Modifier.align(Alignment.CenterStart).padding(start = scale.dp(8f)).testTag("guide_no_program_${channel.streamId}"),
                )
            } else {
                visiblePrograms.forEach { program ->
                    val key = GuideProgramKey(channel.streamId, program.start)
                    val requester = remember(key) { FocusRequester() }
                    DisposableEffect(key, requester) {
                        onRegisterProgramRequester(key, requester)
                        onDispose { onUnregisterProgramRequester(key, requester) }
                    }
                    val bounds = GuideScheduleRules.bounds(program, window) ?: return@forEach
                    val left = gridWidth * bounds.startFraction
                    val blockWidth = gridWidth * bounds.widthFraction
                    val isOnAir = nowMillis / 1_000L in program.start until program.end
                    GuideProgramBlock(
                        channel = channel,
                        program = program,
                        isOnAir = isOnAir,
                        isSelected = selectedProgramStart == program.start,
                        scale = scale,
                        modifier = Modifier
                            .offset(x = left)
                            .width(blockWidth)
                            .fillMaxHeight()
                            .padding(horizontal = scale.dp(1f), vertical = scale.dp(1f))
                            .focusRequester(requester)
                            .testTag("guide_program_${channel.streamId}_${program.start}"),
                        onFocus = { onProgramFocus(program) },
                        onClick = {
                            onProgramFocus(program)
                            onActivate()
                        },
                        onLeft = { onMoveProgram(program, -1) },
                        onRight = { onMoveProgram(program, 1) },
                        onUp = { onFocusChannel(index - 1, program.start) },
                        onDown = { onFocusChannel(index + 1, program.start) },
                    )
                }
            }
            if (nowFraction != null) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .offset(x = gridWidth * nowFraction - scale.dp(1f))
                        .width(scale.dp(2f))
                        .fillMaxHeight()
                        .background(FvpColors.Orange.copy(alpha = 0.92f))
                        .testTag("guide_now_line_${channel.streamId}"),
                )
            }
        }
    }
}

@Composable
private fun GuideProgramBlock(
    channel: LiveStream,
    program: EpgProgram,
    isOnAir: Boolean,
    isSelected: Boolean,
    scale: UiScale,
    modifier: Modifier,
    onFocus: () -> Unit,
    onClick: () -> Unit,
    onLeft: () -> Unit,
    onRight: () -> Unit,
    onUp: () -> Unit,
    onDown: () -> Unit,
) {
    var focused by remember(channel.streamId, program.start) { mutableStateOf(false) }
    val shape = RoundedCornerShape(scale.dp(6f))
    Box(
        modifier = modifier
            .clip(shape)
            .background(
                when {
                    focused || isSelected -> FvpColors.SurfaceElevated
                    isOnAir -> FvpColors.Green.copy(alpha = 0.30f)
                    else -> FvpColors.Surface.copy(alpha = 0.78f)
                },
            )
            .border(
                width = if (focused) 2.dp else scale.glassBorder,
                color = when {
                    focused -> FvpColors.GreenFocus
                    isOnAir -> FvpColors.Orange
                    else -> FvpColors.GlassBorder
                },
                shape = shape,
            )
            .onFocusChanged {
                focused = it.isFocused
                if (it.isFocused) onFocus()
            }
            .onPreviewKeyEvent { event ->
                when (event.key) {
                    Key.DirectionLeft -> {
                        if (event.type == KeyEventType.KeyDown) onLeft()
                        true
                    }
                    Key.DirectionRight -> {
                        if (event.type == KeyEventType.KeyDown) onRight()
                        true
                    }
                    Key.DirectionUp -> {
                        if (event.type == KeyEventType.KeyDown) onUp()
                        true
                    }
                    Key.DirectionDown -> {
                        if (event.type == KeyEventType.KeyDown) onDown()
                        true
                    }
                    else -> false
                }
            }
            .clickable(onClick = onClick)
            .focusable(),
        contentAlignment = Alignment.CenterStart,
    ) {
        Column(
            modifier = Modifier.fillMaxSize().padding(horizontal = scale.dp(5f), vertical = scale.dp(3f)),
            verticalArrangement = Arrangement.Center,
        ) {
            Text(
                text = program.title.ifBlank { "Programma" },
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(12f),
                fontWeight = if (isOnAir) FontWeight.SemiBold else FontWeight.Medium,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = "${EpgRules.time(program.start)}–${EpgRules.time(program.end)}",
                color = if (isOnAir) FvpColors.GreenFocus else FvpColors.TextSecondary,
                fontSize = scale.sp(11f),
                maxLines = 1,
                overflow = TextOverflow.Clip,
            )
        }
    }
}

@Composable
private fun GuideHourRuler(
    window: GuideTimeWindow,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    BoxWithConstraints(modifier = modifier.testTag("guide_hour_ruler")) {
        val labelWidth = scale.dp(45f)
        for (hour in 0..GuideScheduleRules.WINDOW_HOURS.toInt()) {
            val x = maxWidth * (hour / GuideScheduleRules.WINDOW_HOURS.toFloat())
            val start = x - if (hour == GuideScheduleRules.WINDOW_HOURS.toInt()) labelWidth else 0.dp
            Box(
                modifier = Modifier
                    .offset(x = start)
                    .width(labelWidth)
                    .fillMaxHeight(),
                contentAlignment = if (hour == GuideScheduleRules.WINDOW_HOURS.toInt()) Alignment.CenterEnd else Alignment.CenterStart,
            ) {
                Text(
                    text = EpgRules.time(window.startEpochSeconds + hour * GuideScheduleRules.HOUR_SECONDS),
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(12f),
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    softWrap = false,
                )
            }
            if (hour > 0) {
                Box(
                    modifier = Modifier
                        .offset(x = x)
                        .width(scale.dp(1f))
                        .fillMaxHeight()
                        .background(FvpColors.GlassBorder),
                )
            }
        }
    }
}

@Composable
private fun guideListItemColors(selected: Boolean) = ListItemDefaults.colors(
    containerColor = if (selected) FvpColors.SurfaceElevated else FvpColors.Surface.copy(alpha = 0.74f),
    contentColor = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
    focusedContainerColor = FvpColors.SurfaceElevated,
    focusedContentColor = FvpColors.TextPrimary,
    selectedContainerColor = FvpColors.SurfaceElevated,
    selectedContentColor = FvpColors.TextPrimary,
    focusedSelectedContainerColor = FvpColors.SurfaceElevated,
    focusedSelectedContentColor = FvpColors.TextPrimary,
)
