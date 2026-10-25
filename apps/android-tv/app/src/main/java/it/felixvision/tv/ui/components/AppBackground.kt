package it.felixvision.tv.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.platform.testTag
import it.felixvision.tv.ui.theme.FvpColors

/** Tag di test dello sfondo a tutto schermo dell'area dei contenuti. */
const val APP_BACKGROUND_TAG = "app_background"

/** Alone ampio in basso a destra: raggio pari al 70% della larghezza dell'area. */
const val GLOW_LARGE_RADIUS_FACTOR = 0.70f

/** Opacità al centro dell'alone ampio. */
const val GLOW_LARGE_ALPHA = 0.14f

/** Alone piccolo in alto a sinistra: raggio pari al 35% della larghezza dell'area. */
const val GLOW_SMALL_RADIUS_FACTOR = 0.35f

/** Opacità al centro dell'alone piccolo. */
const val GLOW_SMALL_ALPHA = 0.08f

/** Centro dell'alone ampio, in frazione di larghezza e altezza. */
const val GLOW_LARGE_CENTER_X = 0.92f
const val GLOW_LARGE_CENTER_Y = 0.96f

/** Centro dell'alone piccolo, in frazione di larghezza e altezza. */
const val GLOW_SMALL_CENTER_X = 0.08f
const val GLOW_SMALL_CENTER_Y = 0.10f

/**
 * Geometria degli aloni per un'area di [width] × [height]: centri e raggi in
 * pixel. I raggi si calcolano sulla larghezza, quindi gli aloni restano
 * proporzionati a qualunque risoluzione e rapporto d'aspetto.
 */
data class AppBackgroundGeometry(
    val largeCenter: Offset,
    val largeRadius: Float,
    val smallCenter: Offset,
    val smallRadius: Float,
) {
    companion object {
        fun forSize(width: Float, height: Float): AppBackgroundGeometry {
            val safeWidth = if (width.isFinite() && width > 0f) width else 0f
            val safeHeight = if (height.isFinite() && height > 0f) height else 0f
            return AppBackgroundGeometry(
                largeCenter = Offset(safeWidth * GLOW_LARGE_CENTER_X, safeHeight * GLOW_LARGE_CENTER_Y),
                largeRadius = safeWidth * GLOW_LARGE_RADIUS_FACTOR,
                smallCenter = Offset(safeWidth * GLOW_SMALL_CENTER_X, safeHeight * GLOW_SMALL_CENTER_Y),
                smallRadius = safeWidth * GLOW_SMALL_RADIUS_FACTOR,
            )
        }
    }
}

/**
 * Sfondo unico dell'area a destra del menu laterale (colonna categorie e
 * contenuti compresi): base [FvpColors.Background] e due aloni radiali verdi
 * molto tenui, uno ampio in basso a destra e uno più piccolo in alto a
 * sinistra. È disegnato nel codice, nessuna immagine, e si adatta a qualunque
 * risoluzione e rapporto d'aspetto.
 *
 * Il menu laterale resta fuori da questo sfondo: ha il proprio fondo pieno
 * [FvpColors.Background]. Le superfici esistenti (colonna categorie, card,
 * righe) non cambiano.
 */
@Composable
fun AppBackground(
    modifier: Modifier = Modifier,
    content: @Composable BoxScope.() -> Unit,
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .testTag(APP_BACKGROUND_TAG),
    ) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            val geometry = AppBackgroundGeometry.forSize(size.width, size.height)
            drawRect(
                brush = Brush.radialGradient(
                    0f to FvpColors.Green.copy(alpha = GLOW_LARGE_ALPHA),
                    1f to FvpColors.Green.copy(alpha = 0f),
                    center = geometry.largeCenter,
                    radius = geometry.largeRadius,
                ),
            )
            drawRect(
                brush = Brush.radialGradient(
                    0f to FvpColors.Green.copy(alpha = GLOW_SMALL_ALPHA),
                    1f to FvpColors.Green.copy(alpha = 0f),
                    center = geometry.smallCenter,
                    radius = geometry.smallRadius,
                ),
            )
        }
        content()
    }
}
