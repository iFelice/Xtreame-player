package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.FvpDimens

/**
 * Riquadro a vetro medio: fondo [FvpColors.GlassSurface] (Surface al 60%),
 * bordo [FvpColors.GlassBorder] (bianco al 10%) e angoli arrotondati.
 *
 * È l'idioma unico dei riquadri delle Impostazioni (Account, Aspetto, Player,
 * Catalogo, App, Backup, VPN, Liste M3U, Log, Connessione remota), degli avvisi
 * in basso e dei pannelli sopra lo sfondo: stesso fondo, stesso bordo, stessa
 * misura degli angoli. Il player non lo usa.
 */
@Composable
fun Modifier.fvpGlassPanel(
    scale: UiScale,
    cornerBase: Float = FvpDimens.SURFACE_CORNER_BASE,
    fill: Color = FvpColors.GlassSurface,
): Modifier {
    val shape = remember(scale, cornerBase) { RoundedCornerShape(scale.dp(cornerBase)) }
    return this
        .clip(shape)
        .background(fill)
        .border(
            width = scale.dp(FvpDimens.GLASS_BORDER_BASE),
            color = FvpColors.GlassBorder,
            shape = shape,
        )
}
