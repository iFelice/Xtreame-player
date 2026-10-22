package it.felixvision.tv.ui.navigation

import androidx.annotation.DrawableRes
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
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
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.DrawerState
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.ExperimentalTvMaterial3Api
import androidx.tv.material3.Icon
import androidx.tv.material3.NavigationDrawer
import androidx.tv.material3.NavigationDrawerItem
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
                    NavigationDrawerItem(
                        selected = isSelected,
                        onClick = {
                            onSelect(section)
                            drawerState.setValue(DrawerValue.Closed)
                            pendingContentFocus = true
                        },
                        leadingContent = {
                            Icon(
                                painter = painterResource(id = section.iconRes),
                                contentDescription = section.label,
                                tint = if (isSelected) section.activeColor else FvpColors.Inactive,
                                modifier = Modifier.size(scale.dp(20f))
                            )
                        },
                        modifier = Modifier
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
                        colors = NavigationDrawerItemDefaults.colors(
                            selectedContainerColor = FvpColors.SurfaceElevated,
                            selectedContentColor = if (isSelected) section.activeColor else FvpColors.TextPrimary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                            containerColor = Color.Transparent,
                            contentColor = FvpColors.Inactive,
                        ),
                        border = NavigationDrawerItemDefaults.border(
                            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus))
                        ),
                        scale = NavigationDrawerItemDefaults.scale(focusedScale = 1.04f),
                        shape = NavigationDrawerItemDefaults.shape(shape = androidx.compose.foundation.shape.RoundedCornerShape(scale.dp(10f))),
                    ) {
                        Text(
                            text = section.label,
                            color = if (isSelected) section.activeColor else if (expanded) FvpColors.TextSecondary else Color.Transparent,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                        )
                    }
                }
            }
        },
        content = content
    )
}
