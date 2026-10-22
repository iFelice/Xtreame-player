package it.felixvision.tv.data.progress

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProgressStoreInMemoryTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val clock = Clock { 1_000L }

    @Test
    fun `archivio vuoto non restituisce avanzamenti`() {
        val store = ProgressStore.InMemory(clock)
        assertTrue(store.getAll(server, username).isEmpty())
        assertNull(store.get(server, username, "vod_1"))
    }

    @Test
    fun `salva e rilegge posizione e durata`() {
        val store = ProgressStore.InMemory(clock)
        val saved = store.save(server, username, "ep_301", 45_000L, 1_800_000L)
        assertTrue(saved)

        val progress = store.get(server, username, "ep_301")
        assertEquals(45_000L, progress?.positionMillis)
        assertEquals(1_800_000L, progress?.durationMillis)
        assertEquals(1_000L, progress?.updatedAtMillis)
        assertTrue(progress?.canResume == true)
        assertFalse(progress?.isWatched == true)
    }

    @Test
    fun `posizione sotto i 30 secondi non viene salvata`() {
        val store = ProgressStore.InMemory(clock)
        assertFalse(store.save(server, username, "vod_201", 29_999L, 600_000L))
        assertTrue(store.getAll(server, username).isEmpty())
    }

    @Test
    fun `durata zero mantiene quella salvata in precedenza`() {
        val store = ProgressStore.InMemory(clock)
        store.save(server, username, "vod_201", 60_000L, 600_000L)
        store.save(server, username, "vod_201", 120_000L, 0L)

        val progress = store.get(server, username, "vod_201")
        assertEquals(120_000L, progress?.positionMillis)
        assertEquals(600_000L, progress?.durationMillis)
    }

    @Test
    fun `avanzamento oltre il 90 per cento risulta visto`() {
        val store = ProgressStore.InMemory(clock)
        store.save(server, username, "vod_201", 540_000L, 600_000L)
        assertTrue(store.get(server, username, "vod_201")?.isWatched == true)
    }

    @Test
    fun `account separati non condividono l'archivio`() {
        val store = ProgressStore.InMemory(clock)
        store.save(server, username, "vod_201", 60_000L, 600_000L)
        store.save("http://altro.esempio:8080", username, "vod_202", 60_000L, 600_000L)

        assertEquals(1, store.getAll(server, username).size)
        assertEquals(1, store.getAll("http://altro.esempio:8080", username).size)
        assertNull(store.get(server, username, "vod_202"))
    }

    @Test
    fun `cancellazione rimuove solo l'account indicato`() {
        val store = ProgressStore.InMemory(clock)
        store.save(server, username, "vod_201", 60_000L, 600_000L)
        store.save("http://altro.esempio:8080", username, "vod_202", 60_000L, 600_000L)

        store.clear(server, username)

        assertTrue(store.getAll(server, username).isEmpty())
        assertEquals(1, store.getAll("http://altro.esempio:8080", username).size)
    }
}
