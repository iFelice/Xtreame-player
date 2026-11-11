package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import java.time.Instant
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class XmlTvClientTest {
    private lateinit var server: MockWebServer

    @Before fun setUp() {
        server = MockWebServer()
        server.start()
    }

    @After fun tearDown() {
        server.shutdown()
    }

    @Test
    fun `fa una sola richiesta XMLTV con filtri e parse in streaming`() = runBlocking {
        val now = Instant.parse("2026-11-06T10:00:00Z").toEpochMilli()
        server.enqueue(
            MockResponse().setBody(
                """
                <tv><programme start="20261106110000 +0000" stop="20261106120000 +0000" channel="epg-x">
                  <title>Mattina</title><desc>Notizie &amp; meteo</desc>
                </programme><programme start="20261106110000Z" stop="20261106120000Z" channel="altro">
                  <title>Ignorato</title>
                </programme></tv>
                """.trimIndent(),
            ),
        )

        val result = XmlTvClient(OkHttpClient(), Clock { now }).fetch(
            server = server.url("/").toString(),
            username = "demo",
            password = "demo",
            catalogEpgChannelIds = setOf("epg-x"),
        )

        assertTrue(result.complete)
        assertEquals("Mattina", result.programsByEpgChannelId.getValue("epg-x").single().title)
        assertEquals("Notizie & meteo", result.programsByEpgChannelId.getValue("epg-x").single().description)
        assertEquals(1, server.requestCount)
        val request = server.takeRequest()
        assertEquals("/xmltv.php", request.requestUrl?.encodedPath)
        assertEquals("demo", request.requestUrl?.queryParameter("username"))
        assertEquals("demo", request.requestUrl?.queryParameter("password"))
        assertEquals(null, request.requestUrl?.queryParameter("action"))
    }
}
