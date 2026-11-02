package it.felixvision.mobile.data.catalog

import it.felixvision.tv.data.catalog.CatalogSection
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Test dell'interceptor che misura i byte ricevuti dalle richieste
 * get_live_streams, get_vod_streams e get_series (client del solo tablet):
 * percentuale reale rispetto al Content-Length, MB scaricati quando manca,
 * richieste non pertinenti o fallite non tracciate.
 */
class CatalogDownloadMonitorTest {

    private lateinit var server: MockWebServer
    private val monitor = CatalogDownloadMonitor()
    private val client = OkHttpClient.Builder()
        .addInterceptor(CatalogDownloadInterceptor(monitor))
        .build()

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
    fun `download con content-length - percentuale reale mentre il corpo viene letto`() {
        val body = buildString { repeat(5_000) { append("0123456789") } } // 50.000 byte
        server.enqueue(MockResponse().setBody(body))

        client.newCall(request("get_live_streams")).execute().use { response ->
            val source = response.body.source()
            // Prima lettura parziale: l'avanzamento segue i byte letti davvero
            // (la lettura può bufferingizzare qualche kB in più).
            val firstChunk = source.readUtf8(10_000L)
            assertEquals(10_000L, firstChunk.length.toLong())
            val partial = requireNotNull(monitor.progress.value[CatalogSection.LIVE])
            assertEquals(50_000L, partial.contentLength)
            assertTrue(
                "Byte letti ${partial.bytesRead} fuori dai limiti attesi",
                partial.bytesRead >= 10_000L && partial.bytesRead < 50_000L,
            )
            val fraction = requireNotNull(partial.fraction)
            assertTrue("Frazione $fraction non compresa (0, 1)", fraction > 0f && fraction < 1f)

            // Resto del corpo.
            val rest = source.readUtf8()
            assertEquals(body, firstChunk + rest)

            val complete = requireNotNull(monitor.progress.value[CatalogSection.LIVE])
            assertEquals(50_000L, complete.bytesRead)
            assertEquals(1f, complete.fraction)
        }
    }

    @Test
    fun `download senza content-length - mb scaricati e nessuna frazione`() {
        val body = buildString { repeat(30_000) { append("abcdefghij") } } // 300.000 byte
        server.enqueue(MockResponse().setChunkedBody(body, 8_192))

        client.newCall(request("get_vod_streams")).execute().use { response ->
            assertEquals(body, response.body.string())
            val progress = requireNotNull(monitor.progress.value[CatalogSection.FILM])
            assertNull(progress.contentLength)
            assertNull(progress.fraction)
            assertEquals(300_000L, progress.bytesRead)
            assertTrue("MB scaricati non positivi: ${progress.megabytes}", progress.megabytes > 0f)
        }
    }

    @Test
    fun `richieste fuori dal catalogo e risposte di errore non vengono tracciate`() {
        server.enqueue(MockResponse().setBody("[]"))
        client.newCall(request("get_live_categories")).execute().use { response ->
            assertEquals("[]", response.body.string())
        }
        assertTrue(monitor.progress.value.isEmpty())

        server.enqueue(MockResponse().setResponseCode(500).setBody("errore"))
        client.newCall(request("get_series")).execute().use { response ->
            assertEquals(500, response.code)
        }
        assertTrue(monitor.progress.value.isEmpty())
    }

    @Test
    fun `l'inizio di live azzera le righe dell'aggiornamento precedente`() {
        monitor.begin(CatalogSection.FILM, 1_000L)
        monitor.advance(CatalogSection.FILM, 1_000L)
        monitor.begin(CatalogSection.SERIES, 500L)

        val before = monitor.progress.value
        assertEquals(1_000L, before[CatalogSection.FILM]?.bytesRead)
        assertEquals(0L, before[CatalogSection.SERIES]?.bytesRead)

        // Ogni caricamento ricomincia da get_live_streams: la mappa si azzera.
        monitor.begin(CatalogSection.LIVE, 100L)
        val after = monitor.progress.value
        assertFalse(after.containsKey(CatalogSection.FILM))
        assertFalse(after.containsKey(CatalogSection.SERIES))
        assertEquals(0L, after[CatalogSection.LIVE]?.bytesRead)

        // I valori non crescenti vengono ignorati.
        monitor.advance(CatalogSection.LIVE, 40L)
        assertEquals(40L, monitor.progress.value[CatalogSection.LIVE]?.bytesRead)
        monitor.advance(CatalogSection.LIVE, 30L)
        assertEquals(40L, monitor.progress.value[CatalogSection.LIVE]?.bytesRead)

        // Frazione reale: byte letti / Content-Length.
        assertEquals(0.4f, monitor.progress.value[CatalogSection.LIVE]?.fraction)
    }

    private fun request(action: String): Request {
        val url = server.url("/player_api.php").newBuilder()
            .addQueryParameter("username", "demo")
            .addQueryParameter("password", "demo")
            .addQueryParameter("action", action)
            .build()
        return Request.Builder().url(url).get().build()
    }
}
