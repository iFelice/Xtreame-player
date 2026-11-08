@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.net.Uri
import androidx.media3.common.PlaybackException
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.HttpDataSource
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.net.ConnectException
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Messaggi e riconoscimenti degli errori del player. Il riconoscimento decide
 * se vale la pena scambiare il formato del Live: solo per gli errori che non
 * vengono da una risposta HTTP.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class PlaybackErrorsTest {

    private val dataSpec = DataSpec(Uri.parse("http://server.esempio:8080/live/demo/demo/001.ts"))

    private fun httpError(code: Int) = PlaybackException(
        "risposta HTTP",
        HttpDataSource.InvalidResponseCodeException(code, null, null, emptyMap(), dataSpec, ByteArray(0)),
        PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS,
    )

    private fun networkError() = PlaybackException(
        "rete assente",
        ConnectException("connessione rifiutata"),
        PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED,
    )

    @Test
    fun `ogni risposta HTTP di errore e riconosciuta come tale`() {
        for (code in listOf(401, 403, 404, 409, 429, 456, 500, 502, 503, 504)) {
            assertTrue("HTTP $code", PlaybackErrors.isHttpResponseError(httpError(code)))
        }
    }

    @Test
    fun `un errore di rete non e una risposta HTTP`() {
        assertFalse(PlaybackErrors.isHttpResponseError(networkError()))
        assertFalse(PlaybackErrors.isHttpResponseError(null))
    }

    @Test
    fun `l'accesso negato resta solo per i codici giusti`() {
        assertTrue(PlaybackErrors.isAccessDenied(httpError(401)))
        assertTrue(PlaybackErrors.isAccessDenied(httpError(456)))
        assertFalse(PlaybackErrors.isAccessDenied(httpError(404)))
        assertFalse(PlaybackErrors.isAccessDenied(networkError()))
        assertFalse(PlaybackErrors.isAccessDenied(null))
    }

    @Test
    fun `i messaggi non contengono indirizzi ne credenziali`() {
        val generic = PlaybackErrors.messageFor(networkError())
        assertFalse(generic, generic.contains("http"))
        assertFalse(generic, generic.contains("001.ts"))

        val denied = PlaybackErrors.messageFor(httpError(456))
        assertFalse(denied, denied.contains("http"))
        assertFalse(denied, denied.contains("demo"))
    }
}
