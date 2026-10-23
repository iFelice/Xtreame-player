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

    // Colori specifici per le voci del menu laterale (PR2)
    val LiveActive = Color(0xFFFF9F0A)
    val FilmActive = Color(0xFF10B981)
    val SerieActive = Color(0xFF2DD4BF)
    val NovitaActive = Color(0xFFA3E635)
    val ContinuaActive = Color(0xFF38BDF8)
    val PreferitiActive = Color(0xFFFBBF24)
    val CercaActive = Color(0xFFA78BFA)
    val ImpostazioniActive = Color(0xFFFFFFFF)
    val Inactive = Color(0xFFAEAEB2)
}

object DrawerColors {
    val Live = FvpColors.LiveActive
    val Film = FvpColors.FilmActive
    val Serie = FvpColors.SerieActive
    val Novita = FvpColors.NovitaActive
    val Continua = FvpColors.ContinuaActive
    val Preferiti = FvpColors.PreferitiActive
    val Cerca = FvpColors.CercaActive
    val Impostazioni = FvpColors.ImpostazioniActive
    val Inactive = FvpColors.Inactive
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
