@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.ui.AspectRatioFrameLayout
import it.felixvision.tv.data.playback.VideoFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Traduzione dei quattro formati nei valori della superficie del video: la
 * modalità di ridimensionamento di PlayerView e il rapporto del riquadro.
 * `AspectRatioFrameLayout` è API Media3 instabile, da qui l'`@file:OptIn` come
 * nel file sorgente.
 */
class VideoFormatLayoutTest {

    @Test
    fun `modalita di ridimensionamento per ogni formato`() {
        assertEquals(
            AspectRatioFrameLayout.RESIZE_MODE_FIT,
            VideoFormatLayout.resizeModeFor(VideoFormat.FIT),
        )
        assertEquals(
            AspectRatioFrameLayout.RESIZE_MODE_ZOOM,
            VideoFormatLayout.resizeModeFor(VideoFormat.ZOOM),
        )
        assertEquals(
            AspectRatioFrameLayout.RESIZE_MODE_FILL,
            VideoFormatLayout.resizeModeFor(VideoFormat.RATIO_16_9),
        )
        assertEquals(
            AspectRatioFrameLayout.RESIZE_MODE_FILL,
            VideoFormatLayout.resizeModeFor(VideoFormat.RATIO_4_3),
        )
    }

    @Test
    fun `rapporto del riquadro solo per sedici noni e quattro terzi`() {
        assertNull(VideoFormatLayout.aspectRatioFor(VideoFormat.FIT))
        assertNull(VideoFormatLayout.aspectRatioFor(VideoFormat.ZOOM))
        assertEquals(
            16f / 9f,
            checkNotNull(VideoFormatLayout.aspectRatioFor(VideoFormat.RATIO_16_9)),
            0.0001f,
        )
        assertEquals(
            4f / 3f,
            checkNotNull(VideoFormatLayout.aspectRatioFor(VideoFormat.RATIO_4_3)),
            0.0001f,
        )
    }
}
