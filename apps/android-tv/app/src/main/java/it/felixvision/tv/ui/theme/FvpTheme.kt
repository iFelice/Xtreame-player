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

    /**
     * Contenitori "a vetro" senza sfocatura (per esempio la lista canali Live):
     * riempimento bianco al 4% e bordo bianco al 10% sullo sfondo dell'area.
     */
    val GlassFill = Color.White.copy(alpha = 0.04f)
    val GlassBorder = Color.White.copy(alpha = 0.10f)

    /**
     * Unico fondo degli elementi del player sopra il video (pannello del volume,
     * banner del canale, lista canali, barra comandi, pannello tracce, prossimo
     * episodio, Riprendi, etichetta dei salti, errori): [Surface] al 60%.
     *
     * Il valore nasce dal pannello del volume preso come riferimento (0,85),
     * ridotto di 0,25: 0,85 − 0,25 = 0,60. Resta un fondo leggibile ma lascia
     * passare il video molto più di prima (era 0,78): sulle TV da 50" in su i
     * riquadri non coprono più l'inquadratura. Sta qui una volta sola, così ogni
     * elemento sopra il video ha esattamente lo stesso fondo.
     */
    val PlayerOverlay = Surface.copy(alpha = 0.60f)

    /** Fondo più leggero del pannello di scelta formato sul video. */
    val PlayerPanelLight = Surface.copy(alpha = 0.55f)

    /**
     * Pallino di notifica "aggiornamento disponibile" (menu laterale e riga
     * della versione nelle Impostazioni): arancio pieno su un bordo sottile del
     * colore di fondo, che lo stacca dall'icona su cui è appoggiato.
     */
    val UpdateBadge = Color(0xFFFF9F0A)
    val UpdateBadgeBorder = Color(0xFF1C1C1E)

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
