package it.felixvision.tv.data.epg

import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneId
import java.util.Base64
import java.util.TimeZone
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.Dispatcher
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.RecordedRequest
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

class ChannelEpgClientTest {
    private lateinit var server: MockWebServer
    private val now = AtomicLong(Instant.parse("2026-10-26T12:00:00Z").toEpochMilli())
    private fun client() = ChannelEpgClient(OkHttpClient(), { now.get() })
    private val validJson get() = """[{"start_timestamp":"1793016000","stop_timestamp":"1793019600","title":"${Base64.getEncoder().encodeToString("Nebbia d'argento".toByteArray())}","description":"","has_archive":"1"}]"""

    @Before fun setUp() { server = MockWebServer(); server.start() }
    @After fun tearDown() { server.shutdown() }

    @Test fun simpleDataAndShortEpgParseFlexibleData() {
        val encoded = Base64.getEncoder().encodeToString("Nebbia d'argento".toByteArray())
        val p = EpgRules.parse(kotlinx.serialization.json.Json.parseToJsonElement("""[{"start_timestamp":"100","stop_timestamp":"200","title":"$encoded","description":"testo libero","has_archive":"1"},{"start_timestamp":300,"stop_timestamp":400}]"""))
        assertEquals(2, p.size)
        assertEquals("Nebbia d'argento", p.first().title)
        assertEquals("testo libero", p.first().description)
        assertTrue(p.first().hasArchive)
        assertEquals("", p.last().title)
        val shortEpg = EpgRules.parse(kotlinx.serialization.json.Json.parseToJsonElement("""{"epg_listings":[{"start_timestamp":"500","stop_timestamp":"800","title":"${Base64.getEncoder().encodeToString("Riflessi blu".toByteArray())}","has_archive":0}]}"""))
        assertEquals("Riflessi blu", shortEpg.single().title)
        assertEquals("", shortEpg.single().description)
    }

    @Test fun base64IsDecodedOnlyWhenUtf8IsPrintable() {
        val encodedText = Base64.getEncoder().encodeToString("Titolo leggibile".toByteArray())
        val invalidUtf8 = Base64.getEncoder().encodeToString(byteArrayOf(0xC3.toByte(), 0x28))
        val controlText = Base64.getEncoder().encodeToString(("titolo" + 1.toChar()).toByteArray())
        val lineBreak = Base64.getEncoder().encodeToString("titolo\nseconda riga".toByteArray())

        assertEquals("Titolo leggibile", EpgRules.decode(encodedText))
        assertEquals(invalidUtf8, EpgRules.decode(invalidUtf8))
        assertEquals(controlText, EpgRules.decode(controlText))
        assertEquals(lineBreak, EpgRules.decode(lineBreak))
        assertEquals("testo libero", EpgRules.decode("testo libero"))
        assertEquals("", EpgRules.decode(null))
    }

    @Test fun apiTimestampsWithoutEpochUseLocalZoneAndEpochFieldsWin() {
        val original = TimeZone.getDefault()
        try {
            TimeZone.setDefault(TimeZone.getTimeZone("Europe/Rome"))
            val local = EpgRules.parse(
                kotlinx.serialization.json.Json.parseToJsonElement(
                    """[{"start":"2026-11-06 12:00:00","stop":"2026-11-06 13:00:00","title":"locale"}]""",
                ),
            ).single()
            assertEquals(
                LocalDateTime.of(2026, 11, 6, 12, 0).atZone(ZoneId.of("Europe/Rome")).toEpochSecond(),
                local.start,
            )
            val preferred = EpgRules.parse(
                kotlinx.serialization.json.Json.parseToJsonElement(
                    """[{"start_timestamp":"100","start":"2026-11-06 12:00:00","stop_timestamp":"200","stop":"2026-11-06 13:00:00"}]""",
                ),
            ).single()
            assertEquals(100L, preferred.start)
            assertEquals(200L, preferred.end)
        } finally {
            TimeZone.setDefault(original)
        }
    }

    @Test fun fallbackThenCachesNonEmptyForThirtyMinutes() = runBlocking {
        server.enqueue(MockResponse().setBody("[]"))
        server.enqueue(MockResponse().setBody(validJson))
        val api = client()
        val first = api.load(server.url("/").toString(), "demo", "demo", "001")
        assertEquals("Nebbia d'argento", first.single().title)
        assertEquals("get_simple_data_table", server.takeRequest().requestUrl!!.queryParameter("action"))
        val fallback = server.takeRequest()
        assertEquals("get_short_epg", fallback.requestUrl!!.queryParameter("action"))
        assertEquals("50", fallback.requestUrl!!.queryParameter("limit"))
        api.load(server.url("/").toString(), "demo", "demo", "001")
        assertNull(server.takeRequest(100, java.util.concurrent.TimeUnit.MILLISECONDS))
        now.addAndGet(ChannelEpgClient.PROGRAM_TTL_MILLIS + 1)
        server.enqueue(MockResponse().setBody(validJson))
        api.load(server.url("/").toString(), "demo", "demo", "001")
        assertNotNull(server.takeRequest())
    }

    @Test fun guideShortRequestUsesOneLimitedGetShortEpgCall() = runBlocking {
        server.enqueue(MockResponse().setBody(validJson))

        val result = client().loadShort(server.url("/").toString(), "demo", "demo", "001")

        assertTrue(result is EpgFetchResult.Success)
        assertEquals("Nebbia d'argento", (result as EpgFetchResult.Success).programs.single().title)
        assertEquals(1, server.requestCount)
        val request = server.takeRequest()
        assertEquals("get_short_epg", request.requestUrl!!.queryParameter("action"))
        assertEquals("001", request.requestUrl!!.queryParameter("stream_id"))
        assertEquals("50", request.requestUrl!!.queryParameter("limit"))
    }

    @Test fun emptyResultsAreCachedForTwoMinutesAndConcurrentCallsCoalesce() = runBlocking {
        server.enqueue(MockResponse().setBody("[]")); server.enqueue(MockResponse().setBody("[]"))
        val api = client(); val base = server.url("/").toString()
        api.load(base, "demo", "demo", "001")
        assertEquals(2, server.requestCount)
        api.load(base, "demo", "demo", "001")
        assertEquals(2, server.requestCount)
        now.addAndGet(ChannelEpgClient.EMPTY_TTL_MILLIS + 1)
        server.dispatcher = object : Dispatcher() {
            override fun dispatch(request: RecordedRequest): MockResponse {
                Thread.sleep(100)
                return MockResponse().setBody(validJson)
            }
        }
        val results = (1..5).map { async(Dispatchers.IO) { api.load(base, "demo", "demo", "002") } }.map { it.await() }
        assertTrue(results.all { it.isNotEmpty() })
        assertEquals(3, server.requestCount) // 2 per il canale 001 (vuoto + ripiego), 1 per il 002 (valido, niente ripiego)
    }

    @Test fun fixedZoneDayFilterAndFocusFallbackCases() {
        val nowMillis = Instant.parse("2026-10-26T12:00:00Z").toEpochMilli()
        val onAir = EpgProgram("Nebbia", "", nowMillis / 1000 - 60, nowMillis / 1000 + 60, false)
        val later = EpgProgram("Luna", "", nowMillis / 1000 + 600, nowMillis / 1000 + 1200, false)
        val tomorrow = EpgProgram("Bosco", "", Instant.parse("2026-10-27T10:00:00Z").epochSecond, Instant.parse("2026-10-27T11:00:00Z").epochSecond, false)
        val days = EpgRules.days(listOf(tomorrow, later, onAir), nowMillis, ZoneId.of("Europe/Rome"))
        assertEquals(listOf(onAir, later), days.today)
        assertEquals(listOf(tomorrow), days.tomorrow)
        assertEquals(onAir, EpgRules.initialFocus(listOf(later, onAir), nowMillis))
        assertEquals(later, EpgRules.initialFocus(listOf(later, tomorrow), nowMillis))
        assertEquals(onAir, EpgRules.initialFocus(listOf(onAir), onAir.end * 1000L + 1))
    }
}
