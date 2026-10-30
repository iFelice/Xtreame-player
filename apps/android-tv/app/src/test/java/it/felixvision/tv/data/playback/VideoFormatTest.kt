package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Formato dello schermo nel player: le quattro voci, l'ordine con cui compaiono
 * nel pannello, le etichette viste dall'utente e la lettura dall'archivio.
 */
class VideoFormatTest {

    @Test
    fun `quattro voci nell ordine Originale Zoom sedici noni e quattro terzi`() {
        assertEquals(
            listOf(
                VideoFormat.FIT,
                VideoFormat.ZOOM,
                VideoFormat.RATIO_16_9,
                VideoFormat.RATIO_4_3,
            ),
            VideoFormat.entries.toList(),
        )
    }

    @Test
    fun `etichetta di ogni voce`() {
        assertEquals("Originale", VideoFormat.FIT.label)
        assertEquals("Zoom", VideoFormat.ZOOM.label)
        assertEquals("16:9", VideoFormat.RATIO_16_9.label)
        assertEquals("4:3", VideoFormat.RATIO_4_3.label)
    }

    @Test
    fun `chiave di archiviazione di ogni voce`() {
        assertEquals("fit", VideoFormat.FIT.storageKey)
        assertEquals("zoom", VideoFormat.ZOOM.storageKey)
        assertEquals("16_9", VideoFormat.RATIO_16_9.storageKey)
        assertEquals("4_3", VideoFormat.RATIO_4_3.storageKey)
    }

    @Test
    fun `dall archivio si riconoscono le quattro chiavi`() {
        assertEquals(VideoFormat.FIT, VideoFormat.fromStorage("fit"))
        assertEquals(VideoFormat.ZOOM, VideoFormat.fromStorage("zoom"))
        assertEquals(VideoFormat.RATIO_16_9, VideoFormat.fromStorage("16_9"))
        assertEquals(VideoFormat.RATIO_4_3, VideoFormat.fromStorage("4_3"))
    }

    @Test
    fun `dall archivio un valore sconosciuto o nullo non da alcun formato`() {
        // Nessuna eccezione: chi non si riconosce riparte da "Originale".
        assertNull(VideoFormat.fromStorage("boh"))
        assertNull(VideoFormat.fromStorage(""))
        assertNull(VideoFormat.fromStorage(null))
    }
}
