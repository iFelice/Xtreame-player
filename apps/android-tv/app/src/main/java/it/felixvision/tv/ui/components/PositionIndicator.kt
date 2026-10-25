package it.felixvision.tv.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.platform.testTag
import androidx.tv.material3.Text
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.positionInset
import it.felixvision.tv.ui.theme.positionText
import it.felixvision.tv.ui.theme.scrollbarMinThumb
import it.felixvision.tv.ui.theme.scrollbarWidth

/** Tag di test del contatore "N / Totale". */
const val POSITION_COUNTER_TAG = "position_counter"

/** Tag di test della barra di scorrimento verticale. */
const val POSITION_SCROLLBAR_TAG = "position_scrollbar"

/**
 * Posizione nella lista: indice dell'elemento con il focus, totale degli
 * elementi e parte visibile in questo momento.
 */
data class ListPosition(
    /** Indice 0-based dell'elemento con il focus; `null` se nessun elemento è focalizzato. */
    val focusedIndex: Int? = null,
    /** Numero totale di elementi della lista o griglia. */
    val totalItems: Int = 0,
    /** Indice 0-based del primo elemento visibile. */
    val firstVisibleIndex: Int = 0,
    /** Quanti elementi sono visibili contemporaneamente. */
    val visibleItems: Int = 0,
)

/**
 * Calcoli del contatore e della barra di scorrimento: funzioni pure, provate
 * senza dispositivi né simulazione del telecomando.
 */
object PositionMath {

    /** Testo "N / Totale" dell'elemento con il focus; `null` se non serve mostrarlo. */
    fun counterText(focusedIndex: Int?, totalItems: Int): String? {
        if (focusedIndex == null) return null
        if (totalItems <= 0) return null
        if (focusedIndex !in 0 until totalItems) return null
        return "${focusedIndex + 1} / $totalItems"
    }

    /**
     * Vero solo quando gli elementi non stanno tutti in una schermata: la barra
     * resta nascosta se la lista entra interamente.
     */
    fun isScrollable(totalItems: Int, visibleItems: Int): Boolean =
        totalItems > 0 && visibleItems > 0 && totalItems > visibleItems

    /** Frazione dell'altezza occupata dal cursore, tra 0 e 1. */
    fun thumbFraction(totalItems: Int, visibleItems: Int): Float {
        if (totalItems <= 0) return 1f
        if (visibleItems <= 0) return 1f
        return (visibleItems.toFloat() / totalItems.toFloat()).coerceIn(0f, 1f)
    }

    /** Frazione di scorrimento (0 = inizio, 1 = fine) del cursore sul binario. */
    fun offsetFraction(firstVisibleIndex: Int, totalItems: Int, visibleItems: Int): Float {
        val scrollableItems = totalItems - visibleItems
        if (scrollableItems <= 0) return 0f
        return (firstVisibleIndex.toFloat() / scrollableItems.toFloat()).coerceIn(0f, 1f)
    }

    /** Altezza del cursore in pixel, mai sotto [minThumb] e mai oltre l'area. */
    fun thumbHeightPx(
        areaHeight: Float,
        totalItems: Int,
        visibleItems: Int,
        minThumb: Float,
    ): Float {
        if (areaHeight <= 0f) return 0f
        val height = areaHeight * thumbFraction(totalItems, visibleItems)
        return height.coerceIn(minOf(minThumb.coerceAtLeast(0f), areaHeight), areaHeight)
    }

    /** Distanza del cursore dall'inizio del binario, in pixel. */
    fun thumbOffsetPx(
        areaHeight: Float,
        thumbHeight: Float,
        firstVisibleIndex: Int,
        totalItems: Int,
        visibleItems: Int,
    ): Float {
        if (areaHeight <= 0f) return 0f
        val travel = (areaHeight - thumbHeight).coerceAtLeast(0f)
        return travel * offsetFraction(firstVisibleIndex, totalItems, visibleItems)
    }
}

/**
 * Indicatore di posizione: contatore "N / Totale" dell'elemento con il focus in
 * alto a destra dell'area e barra di scorrimento verticale sottile (3dp,
 * secondario al 40%, cursore verde) sul bordo destro. Entrambi restano nascosti
 * quando non servono: nessun focus, oppure tutti gli elementi già visibili.
 *
 * Il componente non è focalizzabile: non sposta né intercetta il focus.
 */
@Composable
fun PositionIndicator(
    position: ListPosition,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val counter = PositionMath.counterText(position.focusedIndex, position.totalItems)
    val scrollable = PositionMath.isScrollable(position.totalItems, position.visibleItems)
    if (counter == null && !scrollable) return

    Box(modifier = modifier.fillMaxSize()) {
        if (counter != null) {
            Text(
                text = counter,
                color = FvpColors.TextSecondary,
                fontSize = scale.positionText,
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(top = scale.positionInset, end = scale.positionInset)
                    .testTag(POSITION_COUNTER_TAG),
            )
        }
        if (scrollable) {
            ScrollbarThumb(
                position = position,
                scale = scale,
                modifier = Modifier
                    .align(Alignment.CenterEnd)
                    .fillMaxHeight()
                    .width(scale.scrollbarWidth)
                    .testTag(POSITION_SCROLLBAR_TAG),
            )
        }
    }
}

@Composable
private fun ScrollbarThumb(
    position: ListPosition,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val minThumb = scale.scrollbarMinThumb
    Canvas(modifier = modifier) {
        drawRect(
            color = FvpColors.TextSecondary.copy(alpha = 0.4f),
        )
        val thumbHeight = PositionMath.thumbHeightPx(
            areaHeight = size.height,
            totalItems = position.totalItems,
            visibleItems = position.visibleItems,
            minThumb = minThumb.toPx(),
        )
        val thumbOffset = PositionMath.thumbOffsetPx(
            areaHeight = size.height,
            thumbHeight = thumbHeight,
            firstVisibleIndex = position.firstVisibleIndex,
            totalItems = position.totalItems,
            visibleItems = position.visibleItems,
        )
        drawRect(
            color = FvpColors.Green,
            topLeft = Offset(0f, thumbOffset),
            size = Size(size.width, thumbHeight),
        )
    }
}

/**
 * Posizione in una lista verticale (`LazyColumn`).
 *
 * Funzione semplice, non una `remember`: legge lo stato della lista, quindi va
 * chiamata durante la composizione per restare aggiornata.
 */
fun listPosition(
    listState: LazyListState,
    focusedIndex: Int?,
    totalItems: Int,
): ListPosition = ListPosition(
    focusedIndex = focusedIndex,
    totalItems = totalItems,
    firstVisibleIndex = listState.firstVisibleItemIndex,
    visibleItems = listState.layoutInfo.visibleItemsInfo.size,
)

/** Posizione in una griglia (`LazyVerticalGrid`); come [listPosition], non è `remember`. */
fun gridPosition(
    gridState: LazyGridState,
    focusedIndex: Int?,
    totalItems: Int,
): ListPosition = ListPosition(
    focusedIndex = focusedIndex,
    totalItems = totalItems,
    firstVisibleIndex = gridState.firstVisibleItemIndex,
    visibleItems = gridState.layoutInfo.visibleItemsInfo.size,
)
