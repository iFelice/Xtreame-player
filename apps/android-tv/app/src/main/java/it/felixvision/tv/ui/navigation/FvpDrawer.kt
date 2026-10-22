package it.felixvision.tv.ui.navigation

import androidx.annotation.DrawableRes
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.DrawerState
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.ExperimentalTvMaterial3Api
import androidx.tv.material3.Icon
import androidx.tv.material3.ListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.MaterialTheme
import androidx.tv.material3.NavigationDrawer
import androidx.tv.material3.NavigationDrawerItemDefaults
import androidx.tv.material3.Text
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.R
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

enum class DrawerSection(
    val label: String,
    @DrawableRes val iconRes: Int,
    val activeColor: Color,
) {
    Novita("Novità", R.drawable.ic_nav_sparkles, FvpColors.NovitaActive),
    Live("Live", R.drawable.ic_nav_tv, FvpColors.LiveActive),
    Film("Film", R.drawable.ic_nav_film, FvpColors.FilmActive),
    Serie("Serie", R.drawable.ic_nav_library, FvpColors.SerieActive),
    Preferiti("Preferiti", R.drawable.ic_nav_star, FvpColors.PreferitiActive),
    Impostazioni("Impostazioni", R.drawable.ic_nav_settings, FvpColors.ImpostazioniActive),
}

class DrawerFocusHandle {
    var requestFocus: () -> Unit = {}
}

@OptIn(ExperimentalTvMaterial3Api::class)
@Composable
fun FvpNavigationDrawer(
    selected: DrawerSection,
    onSelect: (DrawerSection) -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    drawerState: DrawerState = rememberDrawerState(initialValue = DrawerValue.Closed),
    contentFocusRequester: FocusRequester = remember { FocusRequester() },
    drawerFocusHandle: DrawerFocusHandle? = null,
    content: @Composable () -> Unit,
) {
    val itemFocusRequesters = remember { DrawerSection.entries.associateWith { FocusRequester() } }
    var pendingContentFocus by remember { mutableStateOf(false) }

    val textMeasurer = rememberTextMeasurer(cacheSize = DrawerSection.entries.size * 2)
    val density = LocalDensity.current
    val labelStyle = MaterialTheme.typography.titleMedium
    // Measure every label in both displayed weights: selecting an item must not resize the menu.
    val labelWidthPx = DrawerSection.entries.maxOf { section ->
        listOf(FontWeight.Medium, FontWeight.Bold).maxOf { weight ->
            textMeasurer.measure(
                text = section.label,
                style = labelStyle.copy(fontWeight = weight),
                softWrap = false,
                maxLines = 1,
            ).size.width
        }
    }
    // ListItem reserves 16dp on each side and 8dp after its leading slot internally.
    // Scale the open layout without going below those Material minimums; no fixed pixel sizes.
    val openInset = scale.dp(16f).coerceAtLeast(16.dp)
    val extraInset = openInset - 16.dp
    val openIconSlot = scale.dp(24f).coerceAtLeast(ListItemDefaults.IconSize)
    val openGap = scale.dp(8f).coerceAtLeast(8.dp)
    val expandedItemWidth = with(density) {
        // Match each layout element's density rounding so even the bold longest label fits.
        (16.dp.roundToPx() * 2 + extraInset.roundToPx() * 2 +
            openIconSlot.roundToPx() + 8.dp.roundToPx() +
            (openGap - 8.dp).roundToPx() + labelWidthPx).toDp()
    }

    LaunchedEffect(selected) {
        drawerFocusHandle?.requestFocus = {
            itemFocusRequesters[selected]?.requestFocus()
        }
    }

    LaunchedEffect(drawerState.currentValue, selected) {
        if (drawerState.currentValue == DrawerValue.Open) {
            itemFocusRequesters[selected]?.requestFocus()
        }
    }

    LaunchedEffect(selected, pendingContentFocus) {
        if (pendingContentFocus) {
            withFrameNanos { }
            contentFocusRequester.requestFocus()
            pendingContentFocus = false
        }
    }

    NavigationDrawer(
        drawerState = drawerState,
        modifier = modifier,
        drawerContent = { drawerValue ->
            val expanded = drawerValue == DrawerValue.Open
            Column(
                modifier = Modifier
                    .fillMaxHeight()
                    .padding(vertical = scale.dp(12f), horizontal = scale.dp(8f))
            ) {
                DrawerSection.entries.forEach { section ->
                    val isSelected = section == selected
                    // NavigationDrawerItem forces its own width internally. Keep its ListItem
                    // primitive (and closed dimensions), but let the open width fit the labels.
                    ListItem(
                        selected = isSelected,
                        onClick = {
                            onSelect(section)
                            drawerState.setValue(DrawerValue.Closed)
                            pendingContentFocus = true
                        },
                        leadingContent = {
                            Box(
                                modifier = if (expanded) {
                                    Modifier.padding(start = extraInset, end = openGap - 8.dp)
                                        .size(openIconSlot)
                                } else {
                                    Modifier.size(NavigationDrawerItemDefaults.IconSize)
                                },
                            ) {
                                Icon(
                                    painter = painterResource(id = section.iconRes),
                                    contentDescription = section.label,
                                    tint = if (isSelected) section.activeColor else FvpColors.Inactive,
                                    modifier = Modifier.size(scale.dp(20f))
                                )
                            }
                        },
                        headlineContent = {
                            if (expanded) {
                                Text(
                                    text = section.label,
                                    style = labelStyle,
                                    color = if (isSelected) section.activeColor else FvpColors.TextSecondary,
                                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                                    maxLines = 1,
                                    softWrap = false,
                                    modifier = Modifier.padding(end = extraInset),
                                )
                            }
                        },
                        modifier = Modifier
                            .width(if (expanded) expandedItemWidth else NavigationDrawerItemDefaults.CollapsedDrawerItemWidth)
                            .height(NavigationDrawerItemDefaults.ContainerHeightOneLine)
                            .focusRequester(itemFocusRequesters.getValue(section))
                            .onKeyEvent { event ->
                                if (event.key == Key.DirectionRight) {
                                    onSelect(section)
                                    drawerState.setValue(DrawerValue.Closed)
                                    pendingContentFocus = true
                                    true
                                } else false
                            }
                            .testTag("drawer_${section.name}"),
                        colors = ListItemDefaults.colors(
                            selectedContainerColor = FvpColors.SurfaceElevated,
                            selectedContentColor = if (isSelected) section.activeColor else FvpColors.TextPrimary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                            containerColor = Color.Transparent,
                            contentColor = FvpColors.Inactive,
                        ),
                        border = ListItemDefaults.border(
                            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))
                        ),
                        scale = ListItemDefaults.scale(focusedScale = 1.04f),
                        shape = ListItemDefaults.shape(shape = androidx.compose.foundation.shape.RoundedCornerShape(scale.dp(10f))),
                    )
                }
            }
        },
        content = content
    )
}
