@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.ui.AspectRatioFrameLayout
import it.felixvision.tv.data.playback.VideoFormat

/**
 * Traduzione del [VideoFormat] scelto nei due valori che governano la
 * superficie del video: la modalità di ridimensionamento di `PlayerView` e,
 * per i rapporti fissi, il rapporto d'aspetto del riquadro.
 *
 * Tutto qui dentro è puro e senza stato, così i quattro modi si possono
 * verificare con un test JVM. Le costanti di `AspectRatioFrameLayout` sono
 * API Media3 instabili: da qui l'`@file:OptIn`.
 */
object VideoFormatLayout {

    /** Per quanto resta visibile l'etichetta "Formato: <nome>" dopo la scelta. */
    const val INDICATOR_MILLIS = 2_000L

    /**
     * Modalità di ridimensionamento di `PlayerView`: "Adatta" lascia tutto il
     * video nello schermo, "Zoom" riempie tagliando i bordi, i due rapporti
     * fissi riempiono il riquadro con le proporzioni imposte dal riquadro
     * stesso (vedi [aspectRatioFor]).
     */
    fun resizeModeFor(format: VideoFormat): Int = when (format) {
        VideoFormat.FIT -> AspectRatioFrameLayout.RESIZE_MODE_FIT
        VideoFormat.ZOOM -> AspectRatioFrameLayout.RESIZE_MODE_ZOOM
        VideoFormat.RATIO_16_9,
        VideoFormat.RATIO_4_3,
        -> AspectRatioFrameLayout.RESIZE_MODE_FILL
    }

    /**
     * Rapporto d'aspetto del riquadro del video, `null` quando il riquadro
     * occupa tutto lo schermo ("Adatta" e "Zoom").
     */
    fun aspectRatioFor(format: VideoFormat): Float? = when (format) {
        VideoFormat.FIT,
        VideoFormat.ZOOM,
        -> null
        VideoFormat.RATIO_16_9 -> 16f / 9f
        VideoFormat.RATIO_4_3 -> 4f / 3f
    }
}
