package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.Dp
import it.felixvision.tv.ui.theme.FvpColors

/** Tag di test predefinito del pallino di aggiornamento disponibile. */
const val UPDATE_BADGE_TAG = "update_badge"

/** Diametro del pallino nella scala di progetto (fattore 1.0). */
const val UPDATE_BADGE_SIZE_BASE = 9f

/** Bordo sottile che stacca il pallino dall'icona su cui è appoggiato. */
const val UPDATE_BADGE_BORDER_BASE = 1f

/**
 * Pallino arancio pieno di notifica: è disponibile un aggiornamento dell'app.
 *
 * È puro disegno, senza modificatori di focus né di click: non è raggiungibile
 * dal telecomando e non aggiunge nodi focalizzabili al menu. Il bordo sottile
 * [FvpColors.UpdateBadgeBorder] lo separa dall'icona quando ci si sovrappone.
 *
 * @param tag tag di test, diverso per ogni posizione (icona del menu, etichetta
 *   del menu, riga delle Impostazioni).
 * @param size diametro nella scala corrente; di base [UPDATE_BADGE_SIZE_BASE].
 */
@Composable
fun UpdateBadge(
    scale: UiScale,
    modifier: Modifier = Modifier,
    tag: String = UPDATE_BADGE_TAG,
    size: Dp = scale.dp(UPDATE_BADGE_SIZE_BASE),
) {
    Box(
        modifier = modifier
            .size(size)
            .background(color = FvpColors.UpdateBadge, shape = CircleShape)
            .border(
                width = scale.dp(UPDATE_BADGE_BORDER_BASE),
                color = FvpColors.UpdateBadgeBorder,
                shape = CircleShape,
            )
            .testTag(tag),
    )
}
