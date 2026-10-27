@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.net.Uri
import androidx.media3.common.PlaybackException
import androidx.media3.common.ParserException
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.HttpDataSource
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.net.ConnectException
import java.net.SocketTimeoutException
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Riavvio automatico e silenzioso della sorgente: una sola volta e solo per i
 * canali live con errore di rete; mai per film, episodi e catch-up.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class LiveAutoRestartTest {

    private val dataSpec = DataSpec(Uri.parse("http://server.esempio:8080/live/demo/demo/001.ts"))

    private fun networkError() = PlaybackException(
        "rete assente",
        ConnectException("connessione rifiutata"),
        PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED,
    )

    private fun timeoutError() = PlaybackException(
        "timeout",
        SocketTimeoutException("timeout"),
        PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT,
    )

    private fun httpError(code: Int) = PlaybackException(
        "risposta HTTP",
        HttpDataSource.InvalidResponseCodeException(code, null, null, emptyMap(), dataSpec, ByteArray(0)),
        PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS,
    )

    private fun malformedStream() = PlaybackException(
        "stream non valido",
        ParserException.createForMalformedContainer("stream non valido", null),
        PlaybackException.ERROR_CODE_PARSING_CONTAINER_MALFORMED,
    )

    @Test
    fun `il riavvio vale per una sola volta`() {
        assertEquals(1, PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS)
    }

    @Test
    fun `live con errore di rete, un solo riavvio automatico poi l'errore`() {
        val restart = LiveAutoRestart()

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(1, restart.restartsUsed)
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, timeoutError()))
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(1, restart.restartsUsed)
    }

    @Test
    fun `film, episodi e catch-up non si riavviano mai`() {
        val restart = LiveAutoRestart()

        for (kind in listOf(PlaybackKind.MOVIE, PlaybackKind.EPISODE, PlaybackKind.CATCHUP)) {
            repeat(3) {
                assertEquals(kind.name, PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(kind, networkError()))
                assertEquals(kind.name, PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(kind, timeoutError()))
            }
        }
        assertEquals(0, restart.restartsUsed)
    }

    @Test
    fun `live con errore HTTP o dello stream, nessun riavvio`() {
        val restart = LiveAutoRestart()

        for (code in listOf(401, 403, 404, 500)) {
            assertEquals("HTTP $code", PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, httpError(code)))
        }
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, malformedStream()))
        assertEquals(0, restart.restartsUsed)
    }

    @Test
    fun `un nuovo avvio della riproduzione ridà il riavvio`() {
        val restart = LiveAutoRestart()

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        // Cambio canale, "Riprova" o stream pronto.
        restart.reset()
        assertEquals(0, restart.restartsUsed)
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
    }

    @Test
    fun `riconoscimento degli errori di rete del player`() {
        assertTrue(PlayerNetworkErrors.isNetworkError(networkError()))
        assertTrue(PlayerNetworkErrors.isNetworkError(timeoutError()))
        assertFalse(PlayerNetworkErrors.isNetworkError(httpError(403)))
        assertFalse(PlayerNetworkErrors.isNetworkError(malformedStream()))
    }
}
