@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.tv.ui.components

import androidx.compose.foundation.basicMarquee
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Text
import it.felixvision.tv.ui.theme.FvpColors

/** Attesa con il focus prima che il titolo scorra (una sola volta). */
const val FOCUS_MARQUEE_INITIAL_DELAY_MILLIS = 2_000

/** Velocità di scorrimento in dp al secondo: lenta, leggibile da lontano. */
val FOCUS_MARQUEE_VELOCITY: Dp = 34.dp

/**
 * Il titolo scorre solo con il focus e solo su una riga: così la lettura
 * avviene quando l'utente sta guardando quell'elemento, e la lista resta
 * ferma per tutti gli altri.
 */
internal fun shouldRunFocusMarquee(focused: Boolean, maxLines: Int): Boolean =
    focused && maxLines == 1

/**
 * Con il marquee attivo il testo non deve essere troncato dai puntini (il
 * contenuto viene misurato senza limite di larghezza e poi fatto scorrere);
 * senza focus torna l'ellissi.
 */
internal fun focusMarqueeOverflow(focused: Boolean, maxLines: Int): TextOverflow =
    if (shouldRunFocusMarquee(focused, maxLines)) TextOverflow.Clip else TextOverflow.Ellipsis

/**
 * Titolo di un elemento focalizzabile.
 *
 * Senza focus si comporta come un `Text` normale: una riga, puntini di
 * sospensione se il titolo non entra. Quando l'elemento riceve il focus, dopo
 * [FOCUS_MARQUEE_INITIAL_DELAY_MILLIS] il titolo scorre **una volta** da
 * destra a sinistra alla velocità di [FOCUS_MARQUEE_VELOCITY] e si ferma
 * all'inizio; perdendo il focus torna il testo con i puntini. Se il titolo
 * entra per intero non c'è nessun effetto, perché `basicMarquee` non anima un
 * contenuto più stretto del contenitore.
 *
 * Il focus arriva dal genitore (card o voce di lista che lo possiede): il
 * componente non è focalizzabile e non sposta il focus.
 */
@Composable
fun FocusMarqueeText(
    text: String,
    focused: Boolean,
    modifier: Modifier = Modifier,
    color: Color = FvpColors.TextPrimary,
    fontSize: TextUnit = TextUnit.Unspecified,
    fontWeight: FontWeight? = null,
    maxLines: Int = 1,
) {
    val marquee = shouldRunFocusMarquee(focused, maxLines)
    Text(
        text = text,
        color = color,
        fontSize = fontSize,
        fontWeight = fontWeight,
        maxLines = maxLines,
        softWrap = false,
        overflow = focusMarqueeOverflow(focused, maxLines),
        modifier = if (marquee) {
            modifier.basicMarquee(
                iterations = 1,
                initialDelayMillis = FOCUS_MARQUEE_INITIAL_DELAY_MILLIS,
                velocity = FOCUS_MARQUEE_VELOCITY,
            )
        } else {
            modifier
        },
    )
}
