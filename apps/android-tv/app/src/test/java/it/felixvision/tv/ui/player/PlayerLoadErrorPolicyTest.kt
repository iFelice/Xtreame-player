@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.net.Uri
import androidx.media3.common.C
import androidx.media3.common.ParserException
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.HttpDataSource
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
 * Politica dei nuovi tentativi del player: errori di rete e timeout fino a 3
 * nuovi tentativi dopo 1, 2 e 4 secondi; nessun tentativo per le risposte HTTP
 * 401/403/404 né per gli altri errori. Indirizzo e credenziali solo di esempio.
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

    private fun httpError(code: Int): IOException =
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
    fun `gli altri errori restano senza nuovi tentativi, come prima`() {
        assertEquals(C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(httpError(500), 1)))
        val malformed = ParserException.createForMalformedContainer("stream non valido", null)
        assertEquals(C.TIME_UNSET, policy.getRetryDelayMsFor(loadError(malformed, 1)))
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

        val messages = ShadowLog.getLogsForTag("FelixVP").map { it.msg }
        assertTrue(messages.any { "tentativo 2 di 3" in it && "/live/***/***/001.ts" in it })
        assertTrue(messages.any { "HTTP 403" in it && "/live/***/***/001.ts" in it })
        assertTrue(messages.none { "demo" in it })
    }
}
