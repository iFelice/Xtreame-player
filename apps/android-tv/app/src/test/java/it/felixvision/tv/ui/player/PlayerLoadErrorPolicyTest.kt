@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.net.Uri
import androidx.media3.common.C
import androidx.media3.common.ParserException
import androidx.media3.common.PlaybackException
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.HttpDataSource
import androidx.media3.exoplayer.ExoPlaybackException
import androidx.media3.exoplayer.source.LoadEventInfo
import androidx.media3.exoplayer.source.MediaLoadData
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.io.IOException
import java.net.ConnectException
import java.net.SocketTimeoutException
import java.net.UnknownHostException
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowLog

/**
 * Politica dei nuovi tentativi del player: errori di rete, timeout e risposte
 * HTTP 500/502/503/504 fino a 3 nuovi tentativi dopo 1, 2 e 4 secondi; nessun
 * tentativo per 401/403/404, per gli altri codici HTTP (come 501 e 429) né per
 * gli altri errori. Il riavvio automatico del live resta solo per gli errori di
 * rete. Indirizzo e credenziali solo di esempio.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class PlayerLoadErrorPolicyTest {

    private val streamUrl = "http://server.esempio:8080/live/demo/demo/001.ts"
    private val dataSpec = DataSpec(Uri.parse(streamUrl))
    private val policy = PlayerLoadErrorPolicy(streamUrl)

    private fun loadError(exception: IOException, errorCount: Int) =
        LoadErrorHandlingPolicy.LoadErrorInfo(
            LoadEventInfo(LoadEventInfo.getNewId(), dataSpec, 0L),
            MediaLoadData(C.DATA_TYPE_MEDIA),
            exception,
            errorCount,
        )

    /** Connessione rifiutata, come la incapsula la sorgente HTTP di Media3. */
    private fun connectionFailed(): IOException =
        HttpDataSource.HttpDataSourceException.createForIOException(
            ConnectException("connessione rifiutata"),
            dataSpec,
            HttpDataSource.HttpDataSourceException.TYPE_OPEN,
        )

    /** Timeout di lettura, come lo incapsula la sorgente HTTP di Media3. */
    private fun readTimeout(): IOException =
        HttpDataSource.HttpDataSourceException.createForIOException(
            SocketTimeoutException("timeout"),
            dataSpec,
            HttpDataSource.HttpDataSourceException.TYPE_READ,
        )

    private fun httpError(code: Int): HttpDataSource.InvalidResponseCodeException =
        HttpDataSource.InvalidResponseCodeException(code, null, null, emptyMap(), dataSpec, ByteArray(0))

    @Test
    fun `errori di rete, tre nuovi tentativi dopo 1, 2 e 4 secondi`() {
        assertEquals(1_000L, policy.getRetryDelayMsFor(loadError(connectionFailed(), 1)))
        assertEquals(2_000L, policy.getRetryDelayMsFor(loadError(connectionFailed(), 2)))
        assertEquals(4_000L, policy.getRetryDelayMsFor(loadError(connectionFailed(), 3)))
        // Dopo il terzo nuovo tentativo l'errore arriva al player.
        assertEquals(C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(connectionFailed(), 4)))
    }

    @Test
    fun `timeout, tre nuovi tentativi dopo 1, 2 e 4 secondi`() {
        assertEquals(1_000L, policy.getRetryDelayMsFor(loadError(readTimeout(), 1)))
        assertEquals(2_000L, policy.getRetryDelayMsFor(loadError(readTimeout(), 2)))
        assertEquals(4_000L, policy.getRetryDelayMsFor(loadError(readTimeout(), 3)))
        assertEquals(C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(readTimeout(), 4)))
    }

    @Test
    fun `host non risolto e timeout grezzi contano come errori di rete`() {
        val unknownHost = IOException(UnknownHostException("server.esempio"))
        assertEquals(1_000L, policy.getRetryDelayMsFor(loadError(unknownHost, 1)))
        assertEquals(2_000L, policy.getRetryDelayMsFor(loadError(SocketTimeoutException("timeout"), 2)))
    }

    @Test
    fun `HTTP 401, 403 e 404, nessun nuovo tentativo`() {
        for (code in listOf(401, 403, 404)) {
            assertEquals("HTTP $code", C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(httpError(code), 1)))
            assertNull("HTTP $code", PlayerNetworkErrors.retryDelayMillis(httpError(code), 1))
            assertFalse("HTTP $code", PlayerNetworkErrors.isNetworkOrTimeout(httpError(code)))
        }
    }

    @Test
    fun `HTTP 500, 502, 503 e 504, tre nuovi tentativi dopo 1, 2 e 4 secondi poi stop`() {
        assertEquals(setOf(500, 502, 503, 504), PlayerNetworkConfig.RETRYABLE_HTTP_CODES)
        for (code in listOf(500, 502, 503, 504)) {
            assertEquals("HTTP $code", 1_000L, policy.getRetryDelayMsFor(loadError(httpError(code), 1)))
            assertEquals("HTTP $code", 2_000L, policy.getRetryDelayMsFor(loadError(httpError(code), 2)))
            assertEquals("HTTP $code", 4_000L, policy.getRetryDelayMsFor(loadError(httpError(code), 3)))
            // Dopo il terzo nuovo tentativo l'errore arriva al player.
            assertEquals("HTTP $code", C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(httpError(code), 4)))
            // Resta una risposta del server, non un errore di rete.
            assertFalse("HTTP $code", PlayerNetworkErrors.isNetworkOrTimeout(httpError(code)))
        }
    }

    @Test
    fun `HTTP 501 e 429 e gli errori dello stream, nessun nuovo tentativo`() {
        for (code in listOf(501, 429)) {
            assertEquals("HTTP $code", C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(httpError(code), 1)))
            assertNull("HTTP $code", PlayerNetworkErrors.retryDelayMillis(httpError(code), 1))
        }
        val malformed = ParserException.createForMalformedContainer("stream non valido", null)
        assertEquals(C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(malformed, 1)))
    }

    @Test
    fun `HTTP 503 sul live, nuovi tentativi ma nessun riavvio automatico`() {
        val response = httpError(503)
        val delays = (1..4).map { attempt -> policy.getRetryDelayMsFor(loadError(response, attempt)) }
        assertEquals(listOf(1_000L, 2_000L, 4_000L, C.TIME_UNSET), delays)

        // Tentativi esauriti: ExoPlayer crea l'errore del player come in handleIoException.
        val playerError = ExoPlaybackException.createForSource(response, response.reason)
        assertEquals(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS, playerError.errorCode)
        assertFalse(PlayerNetworkErrors.isNetworkError(playerError))

        val restart = LiveAutoRestart()
        assertEquals(PlayerErrorAction.SHOW_ERROR, restart.onPlayerError(PlaybackKind.LIVE, playerError))
        assertEquals(0, restart.restartsUsed)
    }

    @Test
    fun `il player segnala l'errore solo dopo i tre nuovi tentativi`() {
        assertEquals(3, policy.getMinimumLoadableRetryCount(C.DATA_TYPE_MEDIA))
        assertEquals(3, policy.getMinimumLoadableRetryCount(C.DATA_TYPE_MEDIA_PROGRESSIVE_LIVE))
        assertEquals(3, policy.getMinimumLoadableRetryCount(C.DATA_TYPE_MANIFEST))
    }

    @Test
    fun `i log hanno il numero del tentativo e l'URL oscurato`() {
        policy.getRetryDelayMsFor(loadError(connectionFailed(), 2))
        policy.getRetryDelayMsFor(loadError(httpError(403), 1))
        policy.getRetryDelayMsFor(loadError(httpError(503), 1))
        policy.getRetryDelayMsFor(loadError(httpError(503), 4))

        val messages = ShadowLog.getLogsForTag("FelixVP").map { it.msg }
        assertTrue(messages.any { "tentativo 2 di 3" in it && "/live/***/***/001.ts" in it })
        assertTrue(messages.any { "HTTP 403" in it && "/live/***/***/001.ts" in it })
        assertTrue(
            messages.any {
                "risposta HTTP 503, nuovo tentativo 1 di 3 tra 1000 ms" in it && "/live/***/***/001.ts" in it
            },
        )
        assertTrue(messages.any { "risposta HTTP 503, tentativi esauriti (3 di 3)" in it })
        assertTrue(messages.none { "demo" in it })
    }
}
