package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.ui.components.ChannelLogoImage
import it.felixvision.tv.ui.components.CollapsingCategoryColumn
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

@Composable
fun LiveSection(
    categories: List<Category>,
    streams: List<LiveStream>,
    scale: UiScale,
    onSelectChannel: (LiveStream) -> Unit,
    onLongPressChannel: (LiveStream) -> Unit = {},
    favorites: List<FavoriteItem> = emptyList(),
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    onBackToDrawer: (() -> Unit)? = null,
    initialCategoryId: String? = null,
    onLongPressCategory: ((Category) -> Unit)? = null,
    focusChannelId: String? = null,
    focusChannelTick: Int = 0,
    onChannelFocusRestored: () -> Unit = {},
) {
    val initialSelection = categories.firstOrNull { it.categoryId == initialCategoryId }?.categoryId
    var focusedCategoryId by remember(initialCategoryId) {
        mutableStateOf(initialSelection ?: categories.firstOrNull()?.categoryId)
    }
    var debouncedCategoryId by remember(initialCategoryId) { mutableStateOf(focusedCategoryId) }
    var categoryExpanded by remember(initialCategoryId) { mutableStateOf(initialSelection == null) }

    LaunchedEffect(focusedCategoryId) {
        delay(300L)
        debouncedCategoryId = focusedCategoryId
    }

    val filtered = remember(streams, debouncedCategoryId) {
        if (debouncedCategoryId == null) emptyList()
        else streams.filter { it.categoryId == debouncedCategoryId }
    }

    val categoryListState = rememberLazyListState()
    val channelsListState = rememberLazyListState()
    val channelFocusRequesters = remember(filtered) {
        filtered.associate { it.streamId to FocusRequester() }
    }

    val categoryFocusRequesters = remember(categories) {
        categories.associate { it.categoryId to FocusRequester() }
    }

    val favoriteCategoryIds = remember(favorites) {
        favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY }.mapNotNull { it.categoryId }.toSet()
    }

    // Only the Favorites entry path moves focus automatically. Normal Live entry is unchanged.
    LaunchedEffect(initialCategoryId, focusChannelTick) {
        if (focusChannelId != null) return@LaunchedEffect
        val index = categories.indexOfFirst { it.categoryId == initialCategoryId }
        if (initialCategoryId != null && index >= 0) {
            categoryListState.scrollToItem(index)
            if (filtered.isNotEmpty()) {
                channelsListState.scrollToItem(0)
                withFrameNanos { }
                channelFocusRequesters[filtered.first().streamId]?.requestFocus()
            } else {
                // A valid but empty category has no first channel: keep navigation usable.
                categoryExpanded = true
                withFrameNanos { }
                categoryFocusRequesters[initialCategoryId]?.requestFocus()
            }
        }
    }

    // Ritorno dal player: apre la categoria del canale guardato.
    LaunchedEffect(focusChannelId, focusChannelTick) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val targetCategory = streams.firstOrNull { it.streamId == targetId }?.categoryId
        if (targetCategory != null &&
            (targetCategory != focusedCategoryId || targetCategory != debouncedCategoryId)
        ) {
            val index = categories.indexOfFirst { it.categoryId == targetCategory }
            if (index >= 0) categoryListState.scrollToItem(index)
            focusedCategoryId = targetCategory
            debouncedCategoryId = targetCategory
        }
    }

    // Ritorno dal player: focus sull'ultimo canale guardato.
    LaunchedEffect(filtered, focusChannelId) {
        val targetId = focusChannelId ?: return@LaunchedEffect
        val target = filtered.firstOrNull { it.streamId == targetId }
        if (target == null) {
            val expectedCategory = streams.firstOrNull { it.streamId == targetId }?.categoryId
            if (expectedCategory == null || expectedCategory == debouncedCategoryId) {
                onChannelFocusRestored()
            }
            return@LaunchedEffect
        }
        val index = filtered.indexOfFirst { it.streamId == targetId }
        channelsListState.scrollToItem(index)
        withFrameNanos { }
        channelFocusRequesters[targetId]?.requestFocus()
        categoryExpanded = false
        onChannelFocusRestored()
    }

    // Il margine sicuro del focus sta nel contentPadding della lista: la Row
    // resta senza padding per non sommare due volte la stessa quantità.
    Row(modifier = modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
        if (categories.isEmpty()) {
            EmptyState(title = "Nessuna categoria", description = "Il server non ha restituito categorie live.", scale = scale, modifier = Modifier.weight(0.3f))
        } else {
            CollapsingCategoryColumn(
                categories = categories,
                debouncedCategoryId = debouncedCategoryId,
                scale = scale,
                expanded = categoryExpanded,
                onExpandedChange = { categoryExpanded = it },
                focusedCategoryId = focusedCategoryId,
                onFocusedCategoryId = { focusedCategoryId = it },
                listState = categoryListState,
                focusRequesters = categoryFocusRequesters,
                testTagPrefix = "live",
                favoriteCategoryIds = favoriteCategoryIds,
                onLongPressCategory = onLongPressCategory,
                modifier = Modifier
            )
        }

        Column(modifier = Modifier.weight(1f).fillMaxHeight()) {
            if (filtered.isEmpty()) {
                EmptyState(title = "Nessun canale", description = "Seleziona una categoria per vedere i canali.", scale = scale)
            } else {
                LazyColumn(
                    state = channelsListState,
                    verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
                    // Ingrandimento e cornice del focus restano dentro la lista.
                    contentPadding = PaddingValues(scale.focusSafePadding),
                    modifier = Modifier.fillMaxWidth().testTag("live_channels_list"),
                ) {
                    itemsIndexed(filtered, key = { _, ch -> ch.streamId }) { index, channel ->
                        val isFav = favorites.any { it.id == "live_${channel.streamId}" }
                        val channelFr = channelFocusRequesters[channel.streamId]
                        ListItem(
                            selected = false,
                            onClick = { onSelectChannel(channel) },
                            onLongClick = { onLongPressChannel(channel) },
                            headlineContent = {
                                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
                                    Text(text = channel.name, maxLines = 1, overflow = TextOverflow.Ellipsis, fontWeight = FontWeight.Medium, modifier = Modifier.weight(1f, fill = false))
                                    if (isFav) {
                                        Box(
                                            modifier = Modifier.size(scale.dp(22f)).clip(CircleShape).background(Color(0xCC1C1C1E)).testTag("live_channel_${channel.streamId}_fav_star"),
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
                                        }
                                    }
                                }
                            },
                            supportingContent = {
                                channel.epgChannelId?.let { Text(text = it, maxLines = 1) }
                            },
                            leadingContent = {
                                ChannelLogoImage(imageUrl = channel.streamIcon, name = channel.name, scale = scale, modifier = Modifier.size(scale.dp(48f)))
                            },
                            trailingContent = {
                                channel.num?.let { Text(text = "#$it") }
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .testTag("live_channel_${channel.streamId}")
                                .then(if (channelFr != null) Modifier.focusRequester(channelFr) else Modifier)
                                .then(if (index == 0) Modifier.focusRequester(contentFocusRequester) else Modifier)
                                .onFocusChanged { if (it.isFocused) categoryExpanded = false }
                                .onPreviewKeyEvent { event ->
                                    if (event.key == Key.DirectionLeft) {
                                        val active = debouncedCategoryId ?: categories.firstOrNull()?.categoryId
                                        active?.let { categoryFocusRequesters[it]?.requestFocus() }
                                        categoryExpanded = true
                                        true
                                    } else false
                                }
                                .fvpLongPress { onLongPressChannel(channel) },
                            colors = ListItemDefaults.colors(
                                containerColor = FvpColors.Surface,
                                contentColor = FvpColors.TextPrimary,
                                focusedContainerColor = FvpColors.SurfaceElevated,
                            ),
                            scale = ListItemDefaults.scale(focusedScale = 1.04f),
                            border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                            shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(10f))),
                        )
                    }
                }
            }
        }
    }
}
