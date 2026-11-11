package it.felixvision.tv.data.epg

import java.time.Instant
import java.util.Base64
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.Dispatcher
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.RecordedRequest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Guida "in onda / a seguire": solo i canali richiesti, al massimo 4 richieste
 * contemporanee e nessuna richiesta per i canali già in cache valida.
 */
class ChannelScheduleLoaderTest {

    private lateinit var server: MockWebServer
    private val now = AtomicLong(Instant.parse("2026-10-26T12:00:00Z").toEpochMilli())
    private val inFlight = AtomicInteger(0)
    private val maxInFlight = AtomicInteger(0)
    private val requestsByChannel = ConcurrentHashMap<String, AtomicInteger>()

    private fun programJson(streamId: String): String {
        val title = Base64.getEncoder().encodeToString("Programma $streamId".toByteArray())
        val start = now.get() / 1000L - 600L
        val end = now.get() / 1000L + 600L
        return """[{"start_timestamp":"$start","stop_timestamp":"$end","title":"$title","description":"","has_archive":"0"}]"""
    }

    @Before
    fun setUp() {
        server = MockWebServer()
        server.dispatcher = object : Dispatcher() {
            override fun dispatch(request: RecordedRequest): MockResponse {
                val streamId = request.requestUrl?.queryParameter("stream_id").orEmpty()
                requestsByChannel.computeIfAbsent(streamId) { AtomicInteger(0) }.incrementAndGet()
                val current = inFlight.incrementAndGet()
                maxInFlight.updateAndGet { previous -> maxOf(previous, current) }
                try {
                    // Un attimo di lavoro per lasciare che le richieste si sovrappongano.
                    Thread.sleep(120L)
                    return MockResponse().setBody(programJson(streamId))
                } finally {
                    inFlight.decrementAndGet()
                }
            }
        }
        server.start()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    private fun loader(nowMillis: Long = now.get()) = ChannelScheduleLoader(
        client = ChannelEpgClient(OkHttpClient(), { nowMillis }),
    )

    private fun requestsFor(streamId: String): Int = requestsByChannel[streamId]?.get() ?: 0

    @Test
    fun `carica solo i canali richiesti con al massimo quattro richieste insieme`() = runBlocking {
        val scheduleLoader = loader()
        val ids = listOf("701", "702", "703", "704", "705", "706")

        val result = scheduleLoader.load(server.url("/").toString(), "demo", "demo", ids)

        assertEquals(ids.toSet(), result.keys)
        assertEquals(1, result.getValue("701").size)
        assertEquals("Programma 701", result.getValue("701").single().title)
        assertEquals("Programma 706", result.getValue("706").single().title)
        // Una sola richiesta per canale: nessun ripiego quando la guida c'è.
        assertEquals(1, requestsFor("701"))
        assertEquals(1, requestsFor("706"))
        assertEquals(6, server.requestCount)
        // Il limite è 4 e le richieste si sovrappongono davvero.
        assertTrue("richieste contemporanee: ${maxInFlight.get()}", maxInFlight.get() <= 4)
        assertTrue("richieste contemporanee: ${maxInFlight.get()}", maxInFlight.get() >= 2)
    }

    @Test
    fun `nessuna richiesta per i canali già in cache valida`() = runBlocking {
        val scheduleLoader = loader()
        val ids = listOf("701", "702", "703")
        val base = server.url("/").toString()

        scheduleLoader.load(base, "demo", "demo", ids)
        assertEquals(3, server.requestCount)
        assertTrue(scheduleLoader.isCached(base, "demo", "701"))
        assertTrue(scheduleLoader.isCached(base, "demo", "702"))
        assertFalse(scheduleLoader.isCached(base, "demo", "999"))

        val second = scheduleLoader.load(base, "demo", "demo", ids)

        assertEquals(ids.toSet(), second.keys)
        // La cache copre tutti e tre i canali: zero richieste nuove.
        assertEquals(3, server.requestCount)
        assertEquals(1, requestsFor("701"))
        assertEquals(1, requestsFor("703"))
    }

    @Test
    fun `canali ripetuti nella richiesta vengono chiesti una sola volta`() = runBlocking {
        val scheduleLoader = loader()
        val base = server.url("/").toString()

        val result = scheduleLoader.load(base, "demo", "demo", listOf("701", "701", "702", ""))

        assertEquals(setOf("701", "702"), result.keys)
        assertEquals(2, server.requestCount)
        assertEquals(1, requestsFor("701"))
    }

    @Test
    fun `cache scaduta chiede di nuovo la guida`() = runBlocking {
        var nowMillis = now.get()
        val scheduleLoader = ChannelScheduleLoader(
            client = ChannelEpgClient(OkHttpClient(), { nowMillis }),
        )
        val base = server.url("/").toString()

        scheduleLoader.load(base, "demo", "demo", listOf("701"))
        assertEquals(1, server.requestCount)

        nowMillis += ChannelEpgClient.PROGRAM_TTL_MILLIS + 1
        scheduleLoader.load(base, "demo", "demo", listOf("701"))
        assertEquals(2, server.requestCount)
    }
}
