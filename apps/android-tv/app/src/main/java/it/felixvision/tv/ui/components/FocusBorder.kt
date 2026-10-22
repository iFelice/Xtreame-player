package it.felixvision.tv.ui.components

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.unit.Dp
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Decorazione focus TV: bordo #34D399 e leggero ingrandimento, stile FVP
 * già usato nella PR1 (fondo #1C1C1E, superfici #2C2C2E/#3A3A3C,
 * testo secondario #AEAEB2). Sempre visibile quando l'elemento ha il focus.
 */
@Composable
fun Modifier.fvpFocusBorder(
    scale: UiScale,
    shape: RoundedCornerShape = RoundedCornerShape(scale.dp(12f)),
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    focusedBorderColor: androidx.compose.ui.graphics.Color = FvpColors.GreenFocus,
    unfocusedBorderColor: androidx.compose.ui.graphics.Color = FvpColors.Surface,
): Modifier {
    val focused by interactionSource.collectIsFocusedAsState()
    val scaleFactor by animateFloatAsState(
        targetValue = if (focused) 1.04f else 1f,
        label = "fvpFocusScale",
    )
    return this
        .graphicsLayer {
            scaleX = scaleFactor
            scaleY = scaleFactor
        }
        .clip(shape)
        .border(
            width = if (focused) scale.dp(2f) else scale.dp(1f),
            color = if (focused) focusedBorderColor else unfocusedBorderColor,
            shape = shape,
        )
}

@Composable
fun FvpCardContainer(
    scale: UiScale,
    modifier: Modifier = Modifier,
    onClick: (() -> Unit)? = null,
    content: @Composable () -> Unit,
) {
    val shape = RoundedCornerShape(scale.dp(12f))
    androidx.compose.foundation.layout.Box(
        modifier = modifier
            .clip(shape)
            .background(FvpColors.Surface),
    ) {
        content()
    }
}
