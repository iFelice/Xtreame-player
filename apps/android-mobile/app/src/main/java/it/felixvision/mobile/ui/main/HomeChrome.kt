package it.felixvision.mobile.ui.main

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.NavigationRail
import androidx.compose.material3.NavigationRailItem
import androidx.compose.material3.NavigationRailItemDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.catalog.BackAction
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Chrome di navigazione dell'app tablet: barra laterale con le 8 sezioni
 * (finestra orizzontale larga), barra in basso con le 5 principali e
 * intestazione compatta con Cerca/Impostazioni. Le sezioni usano i colori di
 * FvpColors condivisi con la TV.
 */
@Composable
fun HomeNavigationRail(
    current: AppSection,
    onSelect: (AppSection) -> Unit,
    modifier: Modifier = Modifier,
) {
    NavigationRail(
        containerColor = FvpColors.Surface,
        modifier = modifier.testTag("home_rail"),
    ) {
        Column(
            modifier = Modifier.verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            AppSection.entries.forEach { section ->
                val selected = section == current
                NavigationRailItem(
                    selected = selected,
                    onClick = { onSelect(section) },
                    icon = {
                        Icon(
                            imageVector = section.icon,
                            contentDescription = section.title,
                            tint = if (selected) section.accent else FvpColors.Inactive,
                        )
                    },
                    label = {
                        Text(
                            text = section.title,
                            fontSize = 12.sp,
                            fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                            color = if (selected) section.accent else FvpColors.Inactive,
                        )
                    },
                    alwaysShowLabel = true,
                    colors = NavigationRailItemDefaults.colors(
                        indicatorColor = section.accent.copy(alpha = 0.16f),
                    ),
                    modifier = Modifier.testTag("rail_item_${section.stateKey}"),
                )
            }
        }
    }
}

/** Intestazione compatta: titolo della sezione corrente + icone Cerca/Impostazioni. */
@Composable
fun HomeCompactHeader(
    current: AppSection,
    onSelect: (AppSection) -> Unit,
    modifier: Modifier = Modifier,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 6.dp)
            .testTag("home_header"),
    ) {
        Text(
            text = "FVP",
            color = FvpColors.Green,
            fontSize = 18.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag("home_brand"),
        )
        Text(
            text = current.title,
            color = current.accent,
            fontSize = 16.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier
                .padding(start = 12.dp)
                .weight(1f)
                .testTag("home_header_title"),
        )
        IconButton(
            onClick = { onSelect(AppSection.CERCA) },
            modifier = Modifier.size(48.dp).testTag("header_cerca"),
        ) {
            Icon(
                imageVector = FvpIcons.Cerca,
                contentDescription = AppSection.CERCA.title,
                tint = if (current == AppSection.CERCA) FvpColors.CercaActive else FvpColors.TextPrimary,
            )
        }
        IconButton(
            onClick = { onSelect(AppSection.IMPOSTAZIONI) },
            modifier = Modifier.size(48.dp).testTag("header_impostazioni"),
        ) {
            Icon(
                imageVector = FvpIcons.Impostazioni,
                contentDescription = AppSection.IMPOSTAZIONI.title,
                tint = if (current == AppSection.IMPOSTAZIONI) FvpColors.ImpostazioniActive else FvpColors.TextPrimary,
            )
        }
    }
}

/** Barra in basso con le 5 sezioni di [AppSection.bottomBarSections]. */
@Composable
fun HomeBottomBar(
    current: AppSection,
    onSelect: (AppSection) -> Unit,
    modifier: Modifier = Modifier,
) {
    NavigationBar(
        containerColor = FvpColors.Surface,
        modifier = modifier.testTag("home_bottom_bar"),
    ) {
        AppSection.bottomBarSections.forEach { section ->
            val selected = section == current
            NavigationBarItem(
                selected = selected,
                onClick = { onSelect(section) },
                icon = {
                    Icon(
                        imageVector = section.icon,
                        contentDescription = section.title,
                        tint = if (selected) section.accent else FvpColors.Inactive,
                    )
                },
                label = {
                    Text(
                        text = section.title,
                        fontSize = 11.sp,
                        fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                        color = if (selected) section.accent else FvpColors.Inactive,
                        maxLines = 1,
                    )
                },
                alwaysShowLabel = true,
                colors = NavigationBarItemDefaults.colors(
                    indicatorColor = section.accent.copy(alpha = 0.16f),
                ),
                modifier = Modifier.testTag("nav_item_${section.stateKey}"),
            )
        }
    }
}

/** Marcatori del tasto Indietro: usati da HomeScreen per documentare l'esito. */
enum class BackActionSection {
    SHEET_CLOSED,
    DIALOG_CLOSED,
    DETAIL_CLOSED,
    DROPDOWN_CLOSED,
    HOME,
    EXIT_APP,
    ;

    companion object {
        fun of(action: BackAction): BackActionSection = when (action) {
            BackAction.SHEET_CLOSED -> SHEET_CLOSED
            BackAction.DIALOG_CLOSED -> DIALOG_CLOSED
            BackAction.DETAIL_CLOSED -> DETAIL_CLOSED
            BackAction.DROPDOWN_CLOSED -> DROPDOWN_CLOSED
            BackAction.HOME -> HOME
            BackAction.EXIT_APP -> EXIT_APP
        }
    }
}
