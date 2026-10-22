package it.felixvision.tv.ui.components

import androidx.compose.runtime.remember
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Border
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.BorderStroke
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.ui.theme.FvpColors

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
    modifier: Modifier = Modifier
) {
    val animatedWidth by animateDpAsState(
        targetValue = if (expanded) scale.dp(260f) else scale.dp(56f),
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
            verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
            modifier = Modifier.fillMaxHeight()
                .then(if (!expanded) Modifier.testTag("${testTagPrefix}_category_collapsed") else Modifier)
        ) {
            itemsIndexed(categories, key = { _, c -> c.categoryId }) { index, cat ->
                val selected = cat.categoryId == debouncedCategoryId
                val fr = remember(cat.categoryId, focusRequesters) { focusRequesters[cat.categoryId] ?: FocusRequester() }
                if (expanded) {
                    ListItem(
                        selected = selected,
                        onClick = { onFocusedCategoryId(cat.categoryId) },
                        headlineContent = {
                            Text(
                                text = cat.categoryName ?: "Senza nome",
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("${testTagPrefix}_category_${cat.categoryId}")
                            .focusRequester(fr)
                            .onFocusChanged {
                                if (it.isFocused) {
                                    onExpandedChange(true)
                                    onFocusedCategoryId(cat.categoryId)
                                }
                            },
                        colors = ListItemDefaults.colors(
                            containerColor = if (selected) FvpColors.SurfaceElevated else FvpColors.Surface,
                            contentColor = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
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
                            .padding(vertical = scale.dp(8f)),
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
