package it.felixvision.tv.ui.catalog

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpCompactButtonStyle
import it.felixvision.tv.ui.components.UiScale

/** Tag di test del pulsante di ordinamento della griglia dei film. */
const val FILM_SORT_BUTTON_TAG = "film_sort_button"

/** Tag di test del pulsante di ordinamento della griglia delle serie. */
const val SERIES_SORT_BUTTON_TAG = "series_sort_button"

/**
 * Altezza riservata alla riga del pulsante di ordinamento, in unità di
 * progetto: la griglia comincia sotto, così il pulsante e il contatore non
 * coprono la prima riga di copertine. Comprende l'ingrandimento del focus
 * (1,05) e la cornice del pulsante.
 */
const val SORT_ROW_HEIGHT_BASE = 34f

/**
 * Margine verticale interno del pulsante di ordinamento, in unità di progetto:
 * più basso del valore predefinedito dei pulsanti compatti, così la cornice
 * resta bassa.
 */
const val SORT_BUTTON_VERTICAL_PADDING_BASE = 4f

/**
 * Altezza massima del pulsante di ordinamento, in unità di progetto: scavalca
 * l'altezza minima di 40 dp che tv-material impone a ogni pulsante, così la
 * cornice (anche ingrandita dal focus) non arriva sulla prima riga di
 * copertine. Il testo resta leggibile: dentro restano 14sp di testo più il
 * margine.
 */
const val SORT_BUTTON_MAX_HEIGHT_BASE = 32f

/** [SORT_ROW_HEIGHT_BASE] nella scala corrente. */
val UiScale.sortRowHeight: Dp get() = dp(SORT_ROW_HEIGHT_BASE)

/**
 * Pulsante di ordinamento della categoria aperta: "Ordina: Aggiunti di
 * recente", "Ordina: A-Z", "Ordina: Anno". OK passa all'ordine successivo, a
 * ciclo.
 *
 * Sta sulla riga del contatore "N / Totale", in alto a destra della griglia: il
 * tag, il focus e i tasti arrivano da chi compone (`modifier`), insieme al
 * resto della riga. Nella categoria NOVITÀ non c'è: quella resta nell'ordine
 * dei contenuti recenti.
 */
@Composable
fun CatalogSortButton(
    sort: CatalogSort,
    scale: UiScale,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    FvpCompactButton(
        text = sort.buttonLabel(),
        onClick = onClick,
        scale = scale,
        modifier = modifier,
        fontWeight = FvpCompactButtonStyle.SECONDARY_WEIGHT,
        verticalPaddingBase = SORT_BUTTON_VERTICAL_PADDING_BASE,
        maxHeightBase = SORT_BUTTON_MAX_HEIGHT_BASE,
    )
}
