package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.tv.ui.theme.FvpColors
import kotlin.math.min

/**
 * Le TV Android dichiarano densità diverse (1080p in genere xhdpi, 720p in
 * genere tvdpi) ma lo spazio in dp resta circa 960×540. Il layout è quindi
 * disegnato su una tela di 960×600 unità e scalato in base allo spazio reale:
 * resta leggibile e senza scorrimento da 1280×720 in su.
 */
@JvmInline
value class UiScale(val factor: Float) {

    fun dp(base: Float): Dp = (base * factor).dp

    fun sp(base: Float): TextUnit = (base * factor).sp
}

const val DESIGN_WIDTH_DP = 960f
const val DESIGN_HEIGHT_DP = 600f

@Composable
fun FvpScreen(content: @Composable (UiScale) -> Unit) {
    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(FvpColors.Background),
    ) {
        val factor = min(maxWidth.value / DESIGN_WIDTH_DP, maxHeight.value / DESIGN_HEIGHT_DP)
            .coerceIn(MIN_SCALE, MAX_SCALE)
        content(UiScale(factor))
    }
}

private const val MIN_SCALE = 0.75f
private const val MAX_SCALE = 2.0f
