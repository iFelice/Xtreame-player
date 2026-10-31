package it.felixvision.tv.ui.components

import androidx.compose.runtime.remember
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.platform.testTag
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.BorderStroke
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.categoryCollapsedVertical
import it.felixvision.tv.ui.theme.categorySpacing
import it.felixvision.tv.ui.theme.rowText

@Composable
fun CollapsingCategoryColumn(
    categories: List<Category>,
    debouncedCategoryId: String?,
    scale: UiScale,
    expanded: Boolean,
    onExpandedChange: (Boolean) -> Unit,
    focusedCategoryId: String?,
    onFocusedCategoryId: (String) -> Unit,
    listState: LazyListState,
    focusRequesters: Map<String, FocusRequester>,
    testTagPrefix: String,
    modifier: Modifier = Modifier,
    favoriteCategoryIds: Set<String> = emptySet(),
    onLongPressCategory: ((Category) -> Unit)? = null,
) {
    // Il margine sicuro del focus sta dentro la colonna, quindi la larghezza
    // cresce di FocusSafePadding per lato: la voce con il focus (con il suo
    // ingrandimento e la sua cornice) resta interamente visibile senza
    // rimpicciolire il contenuto delle voci.
    val safePadding = scale.focusSafePadding
    val animatedWidth by animateDpAsState(
        targetValue = if (expanded) scale.dp(260f) + safePadding * 2f else scale.dp(56f) + safePadding * 2f,
        animationSpec = tween(durationMillis = 200),
        label = "categoryWidth"
    )
    val shape = RoundedCornerShape(scale.dp(12f))
    Column(
        modifier = modifier
            .width(animatedWidth)
            .fillMaxHeight()
            .clip(shape)
            .background(FvpColors.Surface)
            .testTag("${testTagPrefix}_category_column")
            .testTag(if (expanded) "${testTagPrefix}_category_column_expanded" else "${testTagPrefix}_category_column_collapsed")
            .testTag(if (expanded) "${testTagPrefix}_category_column_${debouncedCategoryId}_expanded" else "${testTagPrefix}_category_column_${debouncedCategoryId}_collapsed"),
        verticalArrangement = Arrangement.spacedBy(scale.dp(4f)),
    ) {
        LazyColumn(
            state = listState,
            verticalArrangement = Arrangement.spacedBy(scale.categorySpacing),
            contentPadding = PaddingValues(safePadding),
            modifier = Modifier.fillMaxHeight()
                .then(if (!expanded) Modifier.testTag("${testTagPrefix}_category_collapsed") else Modifier)
        ) {
            itemsIndexed(categories, key = { _, c -> c.categoryId }) { index, cat ->
                val selected = cat.categoryId == debouncedCategoryId
                val fr = remember(cat.categoryId, focusRequesters) { focusRequesters[cat.categoryId] ?: FocusRequester() }
                val isFavorite = cat.categoryId in favoriteCategoryIds
                // Il focus arriva dalla voce della lista: il nome scorre solo
                // quando la voce è focalizzata, come i titoli delle card.
                var focused by remember(cat.categoryId) { mutableStateOf(false) }
                val longPressModifier = if (onLongPressCategory != null) {
                    Modifier.fvpLongPress { onLongPressCategory(cat) }
                } else Modifier
                // Live keeps the same focusable item in both states, including during expansion.
                // Film/Serie retain their original collapsed presentation and behavior.
                if (expanded || onLongPressCategory != null) {
                    // Voce compatta: altezza ridotta dal ListItem denso.
                    DenseListItem(
                        selected = selected,
                        onClick = { onFocusedCategoryId(cat.categoryId) },
                        headlineContent = {
                            if (onLongPressCategory == null) {
                                FocusMarqueeText(
                                    text = cat.categoryName ?: "Senza nome",
                                    focused = focused,
                                    fontSize = scale.rowText,
                                    color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                )
                            } else if (expanded) {
                                Row(verticalAlignment = Alignment.CenterVertically) {
                                    // Il nome occupa lo spazio che resta a sinistra
                                    // della stella, che resta sempre visibile.
                                    FocusMarqueeText(
                                        text = cat.categoryName ?: "Senza nome",
                                        focused = focused,
                                        fontSize = scale.rowText,
                                        color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                        modifier = Modifier.weight(1f, fill = false),
                                    )
                                    if (isFavorite) CategoryFavoriteStar(scale, "${testTagPrefix}_category_${cat.categoryId}_fav_star")
                                }
                            } else {
                                Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxWidth()) {
                                    Text(
                                        text = cat.categoryName?.trim()?.firstOrNull()?.uppercase()
                                            ?: cat.categoryId.firstOrNull()?.uppercase() ?: "•",
                                        modifier = Modifier.testTag("${testTagPrefix}_category_collapsed_initial"),
                                    )
                                    if (isFavorite) CategoryFavoriteStar(
                                        scale,
                                        "${testTagPrefix}_category_${cat.categoryId}_fav_star",
                                        Modifier.align(Alignment.TopEnd),
                                    )
                                }
                            }
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("${testTagPrefix}_category_${cat.categoryId}")
                            .then(if (!expanded) Modifier.testTag("${testTagPrefix}_category_${cat.categoryId}_collapsed") else Modifier)
                            .then(longPressModifier)
                            .focusRequester(fr)
                            .onFocusChanged {
                                focused = it.isFocused
                                if (it.isFocused) {
                                    onExpandedChange(true)
                                    onFocusedCategoryId(cat.categoryId)
                                }
                            },
                        colors = ListItemDefaults.colors(
                            containerColor = if (selected) FvpColors.SurfaceElevated else FvpColors.Surface,
                            contentColor = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                            focusedSelectedContainerColor = FvpColors.SurfaceElevated,
                            focusedSelectedContentColor = FvpColors.TextPrimary,
                        ),
                        scale = ListItemDefaults.scale(focusedScale = 1.04f),
                        border = ListItemDefaults.border(focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))),
                        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                    )
                } else {
                    // Collapsed: show initial only, but keep same tag for test
                    val initial = cat.categoryName?.trim()?.firstOrNull()?.uppercase() ?: cat.categoryId.firstOrNull()?.uppercase() ?: "•"
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("${testTagPrefix}_category_${cat.categoryId}")
                            .testTag("${testTagPrefix}_category_${cat.categoryId}_collapsed")
                            .focusRequester(fr)
                            .onFocusChanged {
                                if (it.isFocused) {
                                    onExpandedChange(true)
                                    onFocusedCategoryId(cat.categoryId)
                                }
                            }
                            .background(if (selected) FvpColors.SurfaceElevated else FvpColors.Surface, shape = RoundedCornerShape(scale.dp(8f)))
                            .padding(vertical = scale.categoryCollapsedVertical),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = initial,
                            color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            modifier = Modifier.testTag("${testTagPrefix}_category_collapsed_initial")
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun CategoryFavoriteStar(scale: UiScale, tag: String, modifier: Modifier = Modifier) {
    Box(
        modifier = modifier.size(scale.dp(22f)).clip(CircleShape)
            .background(Color(0xCC1C1C1E)).testTag(tag),
        contentAlignment = Alignment.Center,
    ) {
        Text(text = "★", color = Color(0xFFFBBF24), fontSize = scale.sp(12f))
    }
}
