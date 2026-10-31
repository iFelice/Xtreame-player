package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Immutable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.tv.ui.theme.FvpColors
import kotlin.math.max
import kotlin.math.min

/**
 * Le TV Android dichiarano densità diverse (1080p in genere xhdpi, 720p in
 * genere tvdpi) ma lo spazio in dp resta circa 960×540. Il layout è quindi
 * disegnato su una tela di 960×600 unità e scalato in base allo spazio reale:
 * resta leggibile e senza scorrimento da 1280×720 in su.
 */
@Immutable
data class UiScale(val factor: Float, val designFactor: Float = factor) {

    fun dp(base: Float): Dp = (base * factor).dp

    /** I testi piccoli mantengono almeno la loro dimensione di progetto sulla TV. */
    fun sp(base: Float): TextUnit = max(base * factor, min(base, TEXT_FLOOR_BASE) * designFactor).sp
}

/** Soglia di protezione dei testi, in unità di progetto. */
const val TEXT_FLOOR_BASE = 13f

/**
 * Margine minimo, su tutti i lati, delle liste e delle griglie con elementi
 * focalizzabili: contiene l'ingrandimento dell'elemento con il focus
 * (1.04–1.05) e la sua cornice, così nessun bordo viene tagliato dal
 * contenitore. Unico punto di verità per tutte le liste dell'app.
 */
const val FOCUS_SAFE_PADDING_BASE = 12f

/** [FOCUS_SAFE_PADDING_BASE] nella scala corrente. */
val UiScale.focusSafePadding: Dp get() = dp(FOCUS_SAFE_PADDING_BASE)

const val DESIGN_WIDTH_DP = 960f
const val DESIGN_HEIGHT_DP = 600f

/** Scala di progetto per lo spazio reale della TV, prima della dimensione scelta. */
fun designScaleFactor(widthDp: Float, heightDp: Float): Float =
    min(widthDp / DESIGN_WIDTH_DP, heightDp / DESIGN_HEIGHT_DP).coerceIn(MIN_SCALE, MAX_SCALE)

/**
 * Scala dell'interfaccia per uno spazio reale di [widthDp]×[heightDp] e una
 * dimensione dell'interfaccia [sizeFactor] (1 = progetto, 0,70 = Compatta).
 *
 * Il moltiplicatore si applica **dopo** `coerceIn`. Una TV 1080p espone di
 * norma 960×540 dp (densità xhdpi): la scala di progetto vale quindi
 * min(960 / 960, 540 / 600) = 0,9, "Media" la porta a 0,765 e "Compatta" a 0,63.
 * Senza applicare il moltiplicatore dopo il limite, il minimo 0,75 riporterebbe
 * "Compatta" a 0,75 e la scelta non si vedrebbe.
 *
 * Funzione pura, così si può verificare senza comporre nulla.
 */
fun uiScaleFactor(widthDp: Float, heightDp: Float, sizeFactor: Float): Float =
    designScaleFactor(widthDp, heightDp) * sizeFactor

/**
 * Tela di progetto dell'app: tutto passa da qui. Con [sizeFactor] la TV applica
 * la dimensione scelta nelle Impostazioni (predefinita "Compatta").
 */
@Composable
fun FvpScreen(
    sizeFactor: Float = 1f,
    content: @Composable (UiScale) -> Unit,
) {
    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(FvpColors.Background),
    ) {
        val designFactor = designScaleFactor(maxWidth.value, maxHeight.value)
        content(UiScale(factor = designFactor * sizeFactor, designFactor = designFactor))
    }
}

private const val MIN_SCALE = 0.75f
private const val MAX_SCALE = 2.0f
