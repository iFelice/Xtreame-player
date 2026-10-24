package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import it.felixvision.tv.ui.theme.FvpColors

/** Tag di test del pannello dei contenuti. */
const val CONTENT_PANEL_TAG = "content_panel"

/** Raggio degli angoli del pannello, in unità di progetto. */
const val CONTENT_PANEL_CORNER_BASE = 16f

/** Opacità del pannello: [FvpColors.Surface] al 38%. */
const val CONTENT_PANEL_ALPHA = 0.38f

/**
 * Pannello che delimita l'area dei contenuti (canali, copertine, righe) dal
 * menu laterale e dalla colonna delle categorie: rettangolo con angoli
 * arrotondati [CONTENT_PANEL_CORNER_BASE], colore [FvpColors.Surface] al 38%,
 * nessun bordo e nessuna sfocatura. Il fondo dell'app resta
 * [FvpColors.Background].
 *
 * Il pannello è solo lo sfondo, disegnato dietro a [content]: il margine
 * [focusSafePadding] vale per il pannello e non per il contenuto, che occupa
 * tutta l'area. Le griglie quindi non perdono spazio (le 5 colonne restano) e
 * il pannello non applica clip né margini ai figli, così la cornice del focus
 * non viene tagliata. La colonna delle categorie resta fuori dal pannello.
 */
@Composable
fun ContentPanel(
    scale: UiScale,
    modifier: Modifier = Modifier,
    content: @Composable BoxScope.() -> Unit,
) {
    Box(modifier = modifier) {
        // Stessa area del contenuto: il margine è solo del pannello.
        Box(
            modifier = Modifier
                .matchParentSize()
                .padding(scale.focusSafePadding),
        ) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .clip(RoundedCornerShape(scale.dp(CONTENT_PANEL_CORNER_BASE)))
                    .background(FvpColors.Surface.copy(alpha = CONTENT_PANEL_ALPHA))
                    .testTag(CONTENT_PANEL_TAG),
            )
        }
        content()
    }
}
