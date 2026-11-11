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
 * Riavvio automatico e silenzioso della sorgente: tre tentativi con attese
 * crescenti e solo per i canali live con errore di rete; mai per film, episodi
 * e catch-up.
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
    fun `il riavvio vale per tre volte`() {
        assertEquals(3, PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS)
    }

    @Test
    fun `live con errore di rete, tre riavvii automatici poi l'errore`() {
        val restart = LiveAutoRestart()

        repeat(3) { attempt ->
            assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
            assertEquals(attempt + 1, restart.restartsUsed)
        }
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, timeoutError()))
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(3, restart.restartsUsed)
    }

    @Test
    fun `i riavvii sono immediati, solo l'ultimo aspetta un secondo`() {
        val restart = LiveAutoRestart()

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(0L, restart.delayForCurrentRestart())
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(0L, restart.delayForCurrentRestart())
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(1_000L, restart.delayForCurrentRestart())
        assertEquals(PlayerNetworkConfig.LIVE_AUTO_RESTART_DELAYS_MILLIS, listOf(0L, 0L, 1_000L))
    }

    /**
     * Il passaggio all'altro formato (`swapLiveFormatOnError`) avviene **prima**
     * di [LiveAutoRestart] e non consuma né i tre riavvii di rete né i due di
     * sessione: è un tentativo diverso, non un riavvio dello stesso indirizzo.
     */
    @Test
    fun `un cambio formato non consuma alcun budget`() {
        val restart = LiveAutoRestart()
        assertEquals(0, restart.restartsUsed)
        assertEquals(0, restart.sessionRestartsUsed)
        assertEquals(false, restart.shouldRefreshSource())
        // Subito dopo un flip, il primo errore di rete ha ancora tutto il budget.
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(1, restart.restartsUsed)
    }

    @Test
    fun `dopo due riavvii la sorgente si rigenera`() {
        val restart = LiveAutoRestart()
        assertEquals(PlayerNetworkConfig.RESTARTS_BEFORE_SOURCE_REFRESH, 2)

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(false, restart.shouldRefreshSource())
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        // Secondo riavvio: nuovo token e, se possibile, l'altro formato.
        assertTrue(restart.shouldRefreshSource())
        restart.reset()
        assertEquals(false, restart.shouldRefreshSource())
    }

    @Test
    fun `senza attese configurate il riavvio e immediato`() {
        val restart = LiveAutoRestart(maxRestarts = 1, delaysMillis = emptyList())

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(0L, restart.delayForCurrentRestart())
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
        assertEquals(0, restart.sessionRestartsUsed)
    }

    /**
     * 456 e 429 non sono un divieto ma un "riprova fra un attimo" (la linea non
     * è ancora stata liberata dal server). Hanno un budget **proprio**: due
     * riavvii, il primo immediato e il secondo dopo 1,5 s, e non consumano i
     * tre riavvii degli errori di rete.
     */
    @Test
    fun `456 e 429 hanno due riavvii propri, immediati poi dopo un secondo e mezzo`() {
        val restart = LiveAutoRestart()

        for (code in listOf(456, 429)) {
            val fresh = LiveAutoRestart()
            assertEquals("HTTP $code", PlayerErrorAction.SILENT_RESTART, fresh.onPlayerError(PlaybackKind.LIVE, httpError(code)))
            assertEquals("HTTP $code", 0L, fresh.delayForCurrentRestart())
            assertEquals("HTTP $code", 1, fresh.sessionRestartsUsed)

            assertEquals(PlayerErrorAction.SILENT_RESTART, fresh.onPlayerError(PlaybackKind.LIVE, httpError(code)))
            assertEquals(PlayerNetworkConfig.SESSION_RETRY_DELAY_MILLIS, fresh.delayForCurrentRestart())

            // Esaurito il budget di sessione: arriva il messaggio.
            assertEquals(PlayerErrorAction.SHOW_ERROR, fresh.onPlayerError(PlaybackKind.LIVE, httpError(code)))
            assertEquals(2, fresh.sessionRestartsUsed)
        }
        assertEquals(2, PlayerNetworkConfig.MAX_SESSION_RESTARTS)
        assertEquals(setOf(456, 429), PlayerNetworkConfig.SESSION_HTTP_CODES)
        // I riavvii di rete sono rimasti intatti: budget separato.
        assertEquals(0, restart.restartsUsed)
    }

    @Test
    fun `un 456 non consuma i riavvii degli errori di rete`() {
        val restart = LiveAutoRestart()

        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, httpError(456)))
        repeat(3) { restart.onPlayerError(PlaybackKind.LIVE, networkError()) }

        // Un solo 456: un solo riavvio di sessione, e i tre di rete intatti.
        assertEquals(1, restart.sessionRestartsUsed)
        assertEquals(3, restart.restartsUsed)
        // E il 456 può ancora valere, il suo budget è indipendente.
        restart.reset()
        assertEquals(0, restart.sessionRestartsUsed)
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, httpError(456)))
    }

    @Test
    fun `un nuovo avvio della riproduzione ridà i tre riavvii`() {
        val restart = LiveAutoRestart()

        repeat(3) { restart.onPlayerError(PlaybackKind.LIVE, networkError()) }
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        // Cambio canale, "Riprova" o stream di nuovo stabile.
        restart.reset()
        assertEquals(0, restart.restartsUsed)
        assertEquals(PlayerErrorAction.SILENT_RESTART, restart.onPlayerError(PlaybackKind.LIVE, networkError()))
        assertEquals(1, restart.restartsUsed)
        // Dopo l'azzeramento si riparte dal primo tentativo, immediato.
        assertEquals(0L, restart.delayForCurrentRestart())
    }

    @Test
    fun `riconoscimento degli errori di rete del player`() {
        assertTrue(PlayerNetworkErrors.isNetworkError(networkError()))
        assertTrue(PlayerNetworkErrors.isNetworkError(timeoutError()))
        assertFalse(PlayerNetworkErrors.isNetworkError(httpError(403)))
        assertFalse(PlayerNetworkErrors.isNetworkError(malformedStream()))
    }
}
