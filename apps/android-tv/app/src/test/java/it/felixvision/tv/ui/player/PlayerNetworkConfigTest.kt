@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.net.Uri
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.datasource.HttpDataSource
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.io.IOException
import java.net.InetAddress
import java.net.ServerSocket
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import kotlin.concurrent.thread
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Configurazione HTTP del player: valori in un solo posto, sorgente HTTP che li
 * usa, redirect da http a https seguiti e User-Agent invariato. Solo server
 * locali di prova e percorsi di esempio.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class PlayerNetworkConfigTest {

    private lateinit var server: MockWebServer

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    @Test
    fun `i valori di rete stanno in PlayerNetworkConfig`() {
        assertEquals(20_000, PlayerNetworkConfig.CONNECT_TIMEOUT_MILLIS)
        assertEquals(30_000, PlayerNetworkConfig.READ_TIMEOUT_MILLIS)
        assertTrue(PlayerNetworkConfig.ALLOW_CROSS_PROTOCOL_REDIRECTS)
        assertNull(PlayerNetworkConfig.USER_AGENT)
        assertEquals(3, PlayerNetworkConfig.MAX_NETWORK_RETRIES)
        assertEquals(1_000L, PlayerNetworkConfig.FIRST_RETRY_DELAY_MILLIS)
        assertEquals(setOf(401, 403, 404), PlayerNetworkConfig.NON_RETRYABLE_HTTP_CODES)
    }

    @Test
    fun `la sorgente HTTP del player usa quei valori`() {
        val factory = PlayerNetworkConfig.httpDataSourceFactory()

        assertEquals(20_000, factory.privateField("connectTimeoutMs"))
        assertEquals(30_000, factory.privateField("readTimeoutMs"))
        assertEquals(true, factory.privateField("allowCrossProtocolRedirects"))
        // Nessun User-Agent impostato: resta quello predefinito di sistema.
        assertNull(factory.privateField("userAgent"))
    }

    @Test
    fun `segue il redirect da http a https, che la sorgente predefinita non segue`() {
        ServerSocket(0, 50, InetAddress.getByName("127.0.0.1")).use { httpsTarget ->
            val httpsReached = CountDownLatch(1)
            // Finto indirizzo https: accetta le connessioni e le chiude subito.
            thread(isDaemon = true) {
                runCatching {
                    while (true) {
                        httpsTarget.accept().use { httpsReached.countDown() }
                    }
                }
            }
            val location = "https://127.0.0.1:${httpsTarget.localPort}/live/demo/demo/001.ts"
            val start = DataSpec(Uri.parse(server.url("/live/demo/demo/001.ts").toString()))

            // Sorgente predefinita di Media3: il 302 verso https resta un errore HTTP.
            server.enqueue(MockResponse().setResponseCode(302).setHeader("Location", location))
            val defaultError = openOnce(DefaultHttpDataSource.Factory(), start)
            assertTrue(defaultError is HttpDataSource.InvalidResponseCodeException)
            assertEquals(302, (defaultError as HttpDataSource.InvalidResponseCodeException).responseCode)
            assertFalse(httpsReached.await(200, TimeUnit.MILLISECONDS))

            // Sorgente del player: segue il redirect e si collega all'indirizzo https
            // (qui non c'è un vero server TLS, quindi l'apertura poi fallisce).
            server.enqueue(MockResponse().setResponseCode(302).setHeader("Location", location))
            val playerError = openOnce(PlayerNetworkConfig.httpDataSourceFactory(), start)
            assertTrue(httpsReached.await(10, TimeUnit.SECONDS))
            assertFalse(playerError is HttpDataSource.InvalidResponseCodeException)
            assertEquals(2, server.requestCount)
        }
    }

    @Test
    fun `lo User-Agent resta quello di prima`() {
        server.enqueue(MockResponse().setBody("ok"))
        server.enqueue(MockResponse().setBody("ok"))
        val dataSpec = DataSpec(Uri.parse(server.url("/movie/demo/demo/001.mp4").toString()))

        assertNull(openOnce(DefaultHttpDataSource.Factory(), dataSpec))
        val defaultAgent = server.takeRequest(5, TimeUnit.SECONDS)?.getHeader("User-Agent")
        assertNull(openOnce(PlayerNetworkConfig.httpDataSourceFactory(), dataSpec))
        val playerAgent = server.takeRequest(5, TimeUnit.SECONDS)?.getHeader("User-Agent")

        assertNotNull(defaultAgent)
        assertEquals(defaultAgent, playerAgent)
    }

    /** Apre e chiude una sorgente; restituisce l'errore di apertura, se c'è. */
    private fun openOnce(factory: HttpDataSource.Factory, dataSpec: DataSpec): IOException? {
        val source = factory.createDataSource()
        return try {
            source.open(dataSpec)
            null
        } catch (error: IOException) {
            error
        } finally {
            source.close()
        }
    }

    private fun Any.privateField(name: String): Any? {
        val field = javaClass.getDeclaredField(name)
        field.isAccessible = true
        return field.get(this)
    }
}
