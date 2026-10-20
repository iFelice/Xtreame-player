package it.felixvision.tv.ui.theme

import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.tv.material3.MaterialTheme
import androidx.tv.material3.darkColorScheme

/** Palette FelixVisionPlayer, condivisa con le altre app del prodotto. */
object FvpColors {
    val Background = Color(0xFF1C1C1E)
    val Surface = Color(0xFF2C2C2E)
    val SurfaceElevated = Color(0xFF3A3A3C)
    val TextPrimary = Color(0xFFFFFFFF)
    val TextSecondary = Color(0xFFAEAEB2)
    val Green = Color(0xFF10B981)
    val OnGreen = Color(0xFF1C1C1E)
    val GreenFocus = Color(0xFF34D399)
    val Error = Color(0xFFFF453A)
}

@Composable
fun FvpTheme(content: @Composable () -> Unit) {
    MaterialTheme(
        colorScheme = darkColorScheme(
            primary = FvpColors.Green,
            onPrimary = FvpColors.OnGreen,
            primaryContainer = FvpColors.SurfaceElevated,
            onPrimaryContainer = FvpColors.TextPrimary,
            secondary = FvpColors.GreenFocus,
            onSecondary = FvpColors.OnGreen,
            background = FvpColors.Background,
            onBackground = FvpColors.TextPrimary,
            surface = FvpColors.Surface,
            onSurface = FvpColors.TextPrimary,
            surfaceVariant = FvpColors.SurfaceElevated,
            onSurfaceVariant = FvpColors.TextSecondary,
            border = FvpColors.SurfaceElevated,
            borderVariant = FvpColors.GreenFocus,
            error = FvpColors.Error,
            onError = FvpColors.Background,
            errorContainer = FvpColors.SurfaceElevated,
            onErrorContainer = FvpColors.TextPrimary,
        ),
        content = content,
    )
}
