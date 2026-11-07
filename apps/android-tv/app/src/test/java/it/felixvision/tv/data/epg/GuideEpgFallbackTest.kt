package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GuideEpgFallbackTest {

    @Test
    fun `un canale sempre in errore fa quattro richieste con backoff uno due quattro`() = runBlocking {
        val time = FakeTime()
        val fallback = GuideEpgFallback(clock = Clock { time.now }, sleep = time::sleep)
        var requests = 0

        val result = fallback.load(listOf(GuideEpgChannel("epg-news", "001"))) {
            requests++
            EpgFetchResult.Failure
        }

        assertEquals(4, requests)
        assertEquals(4, result.requestsMade)
        assertEquals(listOf(1_000L, 2_000L, 4_000L), time.delays)
        assertEquals(4, result.state.consecutiveRequestErrors)
        assertFalse(result.state.stopped)
    }

    @Test
    fun `il quinto errore consecutivo ferma la riserva per la sessione`() = runBlocking {
        val time = FakeTime()
        val fallback = GuideEpgFallback(clock = Clock { time.now }, sleep = time::sleep)
        var requests = 0
        val channels = listOf(
            GuideEpgChannel("epg-one", "001"),
            GuideEpgChannel("epg-two", "002"),
            GuideEpgChannel("epg-three", "003"),
        )

        val result = fallback.load(channels) {
            requests++
            EpgFetchResult.Failure
        }

        assertEquals(5, requests)
        assertEquals(5, result.requestsMade)
        assertEquals(2, result.state.channelsTried)
        assertEquals(5, result.state.consecutiveRequestErrors)
        assertTrue(result.state.stopped)
        // Le tre attese di retry del primo canale e la pausa minima prima del secondo.
        assertEquals(listOf(1_000L, 2_000L, 4_000L, 300L), time.delays)
    }

    @Test
    fun `un successo azzera gli errori e un risultato vuoto non viene ritentato`() = runBlocking {
        val time = FakeTime()
        val fallback = GuideEpgFallback(clock = Clock { time.now }, sleep = time::sleep)
        var requests = 0

        val result = fallback.load(listOf(GuideEpgChannel("epg-one", "001"))) {
            requests++
            if (requests == 1) EpgFetchResult.Failure else EpgFetchResult.Success(emptyList())
        }

        assertEquals(2, requests)
        assertEquals(0, result.state.consecutiveRequestErrors)
        assertFalse(result.state.stopped)
        assertTrue(result.programsByEpgChannelId.getValue("epg-one").programs.isEmpty())
        assertEquals(listOf(1_000L), time.delays)
    }

    @Test
    fun `deduplica per epg channel e distanza minima tra richieste`() = runBlocking {
        val time = FakeTime()
        val fallback = GuideEpgFallback(clock = Clock { time.now }, sleep = time::sleep)
        val channels = listOf(
            GuideEpgChannel("epg-shared", "001"),
            GuideEpgChannel("epg-shared", "099"),
            GuideEpgChannel("epg-other", "002"),
        )
        val requested = mutableListOf<GuideEpgChannel>()

        val result = fallback.load(channels) { channel ->
            requested += channel
            EpgFetchResult.Success(emptyList())
        }

        assertEquals(listOf("001", "002"), requested.map { it.streamId })
        assertEquals(2, result.requestsMade)
        assertEquals(listOf(300L), time.delays)
        assertEquals(setOf("epg-shared", "epg-other"), result.state.attemptedEpgIds)
    }

    @Test
    fun `dopo dieci canali senza dati non parte un'altra richiesta`() = runBlocking {
        val time = FakeTime()
        val fallback = GuideEpgFallback(clock = Clock { time.now }, sleep = time::sleep)
        val channels = (1..12).map { index ->
            GuideEpgChannel("epg-$index", index.toString().padStart(3, '0'))
        }
        var requests = 0

        val result = fallback.load(channels) {
            requests++
            EpgFetchResult.Success(emptyList())
        }

        assertEquals(10, requests)
        assertEquals(10, result.state.channelsTried)
        assertTrue(result.state.stopped)
        assertFalse(result.state.firstTenReturnedData)
        assertEquals(9, time.delays.size)
        assertTrue(time.delays.all { it == 300L })
    }

    private class FakeTime {
        var now: Long = 1_000L
        val delays = mutableListOf<Long>()

        suspend fun sleep(millis: Long) {
            delays += millis
            now += millis
        }
    }
}
