@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.common.PlaybackException
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Contenuto che si rivela HLS: la regola del secondo tentativo.
 *
 * Il caso vero è un indirizzo `.mp4` che il server rimanda (302) a una playlist
 * HLS con un percorso che non finisce in `.m3u8` (per esempio
 * `…/809445,_360p.mp4,.mp4,_720p.mp4,?c=9&sign=…`). Il browser e VLC lo
 * riconoscono dal contenuto, Media3 sceglie la sorgente dall'indirizzo e
 * sbaglia: l'errore è di analisi, non di rete.
 */
class MaskedHlsTest {

    private val notRecognized = PlaybackException.ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED
    private val manifestBroken = PlaybackException.ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED

    @Test
    fun `un mp4 che non si analizza si riprova come HLS`() {
        assertTrue(
            MaskedHls.shouldRetry(
                errorCode = notRecognized,
                url = "https://sito.esempio/get_file/809445/809445_360p.mp4",
                alreadyForced = false,
            ),
        )
    }

    @Test
    fun `un indirizzo senza estensione si riprova come HLS`() {
        assertTrue(
            MaskedHls.shouldRetry(
                errorCode = notRecognized,
                url = "https://sito.esempio/live/stream/12345?token=abc",
                alreadyForced = false,
            ),
        )
    }

    @Test
    fun `una playlist gia dichiarata non si riprova`() {
        assertFalse(
            MaskedHls.shouldRetry(
                errorCode = manifestBroken,
                url = "https://sito.esempio/lista/film.m3u8?token=1",
                alreadyForced = false,
            ),
        )
    }

    @Test
    fun `il secondo tentativo non si ripete`() {
        // Già riaperta come HLS: se fallisce ancora il contenuto è davvero
        // illeggibile, non si entra in un ciclo di riaperture.
        assertFalse(
            MaskedHls.shouldRetry(
                errorCode = notRecognized,
                url = "https://sito.esempio/get_file/809445/809445_360p.mp4",
                alreadyForced = true,
            ),
        )
    }

    @Test
    fun `gli errori di rete e le risposte HTTP non c'entrano`() {
        val url = "https://sito.esempio/get_file/809445/809445_360p.mp4"
        assertFalse(
            MaskedHls.shouldRetry(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS, url, alreadyForced = false),
        )
        assertFalse(
            MaskedHls.shouldRetry(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, url, alreadyForced = false),
        )
        assertFalse(
            MaskedHls.shouldRetry(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, url, alreadyForced = false),
        )
        assertFalse(MaskedHls.shouldRetry(notRecognized, url = null, alreadyForced = false))
    }

    @Test
    fun `riconosce l'estensione m3u8 anche con parametri e maiuscole`() {
        assertTrue(MaskedHls.looksLikeHls("https://server.esempio/live/demo/demo/001.M3U8?token=1"))
        assertTrue(MaskedHls.looksLikeHls("https://server.esempio/live/demo/demo/001.m3u8#t=10"))
        assertFalse(MaskedHls.looksLikeHls("https://server.esempio/live/demo/demo/001.ts"))
        assertFalse(MaskedHls.looksLikeHls("https://server.esempio/809445,_360p.mp4,.mp4,_720p.mp4,?c=9"))
        assertFalse(MaskedHls.looksLikeHls(null))
    }
}
