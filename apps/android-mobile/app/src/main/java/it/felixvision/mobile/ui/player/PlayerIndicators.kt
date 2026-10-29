package it.felixvision.mobile.ui.player

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import kotlinx.coroutines.delay
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors

@Composable
fun PlayerIndicatorTimeout(feedback: PlayerGestureFeedback) {
    LaunchedEffect(feedback.revision) {
        val revision = feedback.revision
        if (revision > 0) {
            delay(1_500L)
            feedback.clearIfCurrent(revision)
        }
    }
}

@Composable
fun PlayerIndicators(
    feedback: PlayerGestureFeedback,
    modifier: Modifier = Modifier,
) {
    val scale = feedback.volume ?: feedback.brightness
    val scaleIcon = when {
        feedback.volume != null -> FvpIcons.Volume
        feedback.brightness != null -> FvpIcons.Luminosita
        else -> null
    }
    val scaleLabel = when {
        feedback.volume != null -> "Volume"
        feedback.brightness != null -> "Luminosità"
        else -> null
    }
    val seekText = feedback.seekMessage ?: feedback.scrubPosition?.let(::formatPlayerTime)
    val zoomText = feedback.zoomMessage

    if (scale == null && seekText == null && zoomText == null) return

    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(18.dp),
        color = FvpColors.Background.copy(alpha = .92f),
        contentColor = FvpColors.TextPrimary,
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 18.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            if (scale != null && scaleIcon != null && scaleLabel != null) {
                VerticalScaleIndicator(
                    value = scale,
                    icon = scaleIcon,
                    label = scaleLabel,
                )
            }
            Column(
                verticalArrangement = Arrangement.spacedBy(6.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                if (seekText != null) {
                    Text(
                        text = seekText,
                        color = FvpColors.TextPrimary,
                        fontSize = 18.sp,
                    )
                }
                if (zoomText != null) {
                    Text(
                        text = zoomText,
                        color = FvpColors.TextPrimary,
                        fontSize = 18.sp,
                    )
                }
            }
        }
    }
}

@Composable
private fun VerticalScaleIndicator(
    value: Float,
    icon: ImageVector,
    label: String,
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = FvpColors.TextPrimary,
            modifier = Modifier.size(24.dp),
        )
        Box(
            modifier = Modifier
                .width(8.dp)
                .height(96.dp)
                .background(FvpColors.SurfaceElevated, RoundedCornerShape(8.dp)),
            contentAlignment = Alignment.BottomCenter,
        ) {
            Box(
                modifier = Modifier
                    .fillMaxHeight(value.coerceIn(0f, 1f))
                    .width(8.dp)
                    .background(FvpColors.Green, RoundedCornerShape(8.dp)),
            )
        }
        Text(
            text = "${(value * 100).toInt()}%",
            color = FvpColors.TextSecondary,
            fontSize = 11.sp,
        )
    }
}
