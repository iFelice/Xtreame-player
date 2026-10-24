package it.felixvision.tv.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.ui.theme.FvpColors
import kotlin.math.min

/** Tag di test della schermata di caricamento a marchio. */
const val BRAND_BACKDROP_TAG = "brand_backdrop"

/** Tag di test del logo vettoriale. */
const val BRAND_LOGO_TAG = "brand_backdrop_logo"

/** Tag di test della scritta "FelixVP". */
const val BRAND_TITLE_TAG = "brand_backdrop_title"

// Alone radiale: bassa intensità, centro leggermente sopra il centro (dove sta
// il logo) e raggio ampio, così la sfumatura resta morbida e non "macchia".
private const val GLOW_ALPHA = 0.16f
private const val GLOW_MID_ALPHA = 0.05f
private const val GLOW_CENTER_Y = 0.42f
private const val GLOW_RADIUS_FACTOR = 0.8f

/**
 * Sfondo unico delle schermate di caricamento a schermo intero: fondo opaco
 * [FvpColors.Background], alone radiale verde tenue, logo FelixVP in vettoriale
 * e, sotto, il contenuto passato dal chiamante (indicatore di caricamento o
 * messaggio di stato già esistenti).
 *
 * Usato all'avvio, durante l'accesso automatico e durante il caricamento del
 * catalogo, così l'attesa ha sempre lo stesso aspetto.
 */
@Composable
fun BrandBackdrop(
    scale: UiScale,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit = {},
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .testTag(BRAND_BACKDROP_TAG),
    ) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            drawRect(
                brush = Brush.radialGradient(
                    0f to FvpColors.Green.copy(alpha = GLOW_ALPHA),
                    0.55f to FvpColors.Green.copy(alpha = GLOW_MID_ALPHA),
                    1f to FvpColors.Green.copy(alpha = 0f),
                    center = Offset(size.width / 2f, size.height * GLOW_CENTER_Y),
                    radius = min(size.width, size.height) * GLOW_RADIUS_FACTOR,
                ),
            )
        }

        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = scale.dp(24f), vertical = scale.dp(18f)),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Image(
                painter = painterResource(R.drawable.fvp_logo),
                contentDescription = null,
                modifier = Modifier
                    .size(scale.dp(96f))
                    .testTag(BRAND_LOGO_TAG),
            )
            Spacer(Modifier.height(scale.dp(12f)))
            Text(
                text = "FelixVP",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(30f),
                fontWeight = FontWeight.Bold,
                modifier = Modifier.testTag(BRAND_TITLE_TAG),
            )
            Spacer(Modifier.height(scale.dp(16f)))
            content()
        }
    }
}
