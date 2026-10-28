package it.felixvision.mobile.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

/**
 * Palette FelixVisionPlayer, condivisa con le altre app del prodotto.
 *
 * Stessi valori di `it.felixvision.tv.ui.theme.FvpTheme` (colori di brand:
 * verde #10B981, grigi #1C1C1E/#2C2C2E e i colori di sezione della palette
 * esistente). Il rosso [Error] è ammesso solo per gli errori.
 */
object FvpColors {
    val Background = Color(0xFF1C1C1E)
    val Surface = Color(0xFF2C2C2E)
    val SurfaceElevated = Color(0xFF3A3A3C)
    val TextPrimary = Color(0xFFFFFFFF)
    val TextSecondary = Color(0xFFAEAEB2)
    val Green = Color(0xFF10B981)
    val OnGreen = Color(0xFF1C1C1E)
    val GreenFocus = Color(0xFF34D399)

    /** Rosso riservato esclusivamente agli errori. */
    val Error = Color(0xFFFF453A)

    /**
     * Contenitori "a vetro" senza sfocatura: riempimento bianco al 4% e bordo
     * bianco al 10% sullo sfondo dell'area.
     */
    val GlassFill = Color.White.copy(alpha = 0.04f)
    val GlassBorder = Color.White.copy(alpha = 0.10f)

    // Colori di sezione della palette esistente (usati dai cataloghi nel PR2).
    val LiveActive = Color(0xFFFF9F0A)
    val FilmActive = Color(0xFF10B981)
    val SerieActive = Color(0xFF2DD4BF)
    val NovitaActive = Color(0xFFA3E635)
    val ContinuaActive = Color(0xFF38BDF8)
    val PreferitiActive = Color(0xFFFBBF24)
    val CercaActive = Color(0xFFA78BFA)
    val Inactive = Color(0xFFAEAEB2)
}

/**
 * Tema scuro unico (nessuna variante chiara): material3 del tablet, colori di
 * brand della TV, font di sistema (nessuna tipografia personalizzata).
 */
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
            outline = FvpColors.SurfaceElevated,
            outlineVariant = FvpColors.SurfaceElevated,
            error = FvpColors.Error,
            onError = FvpColors.Background,
            errorContainer = FvpColors.SurfaceElevated,
            onErrorContainer = FvpColors.TextPrimary,
        ),
        content = content,
    )
}
