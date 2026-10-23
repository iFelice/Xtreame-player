package it.felixvision.tv.data.progress

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class WatchToggleRulesTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val clock = Clock { 5_000L }

    @Test
    fun `visto con durata nota salva la posizione a fine contenuto`() {
        val entry = WatchRules.watchedEntry(durationMillis = 600_000L, nowMillis = 1_000L)
        assertEquals(600_000L, entry.positionMillis)
        assertEquals(600_000L, entry.durationMillis)
        assertEquals(1_000L, entry.updatedAtMillis)
        assertTrue(entry.markedWatched)
        assertTrue(entry.isWatched)
        assertFalse(entry.canResume)
        assertEquals(1f, entry.fraction, 0.0001f)
    }

    @Test
    fun `visto con durata ignota resta comunque visto`() {
        val entry = WatchRules.watchedEntry(durationMillis = 0L, nowMillis = 1_000L)
        assertEquals(0L, entry.positionMillis)
        assertTrue(entry.isWatched)
        assertFalse(entry.canResume)
        assertFalse(WatchRules.shouldPersist(entry.positionMillis))
    }

    @Test
    fun `durata dal catalogo tra duration_secs e testo`() {
        assertEquals(5_400_000L, WatchRules.durationMillis(durationSecs = 5_400, durationText = null))
        assertEquals(5_400_000L, WatchRules.durationMillis(5_400, "00:00:00"))
        assertEquals(5_520_000L, WatchRules.durationMillis(null, "01:32:00"))
        assertEquals(125_000L, WatchRules.durationMillis(null, "2:05"))
        assertEquals(0L, WatchRules.durationMillis(null, "sconosciuta"))
        assertEquals(0L, WatchRules.durationMillis(null, null))
    }

    @Test
    fun `archivio in memoria alterna visto e non visto`() {
        val store = ProgressStore.InMemory(clock)
        val key = ProgressKeys.movie("201")

        store.save(server, username, key, 120_000L, 600_000L)
        assertFalse(store.get(server, username, key)?.isWatched == true)

        store.markWatched(server, username, key, 600_000L)
        val watched = store.get(server, username, key)
        assertTrue(watched?.isWatched == true)
        assertFalse(watched?.canResume == true)

        assertTrue(store.remove(server, username, key))
        assertNull(store.get(server, username, key))
        assertTrue(store.getAll(server, username).isEmpty())
    }

    @Test
    fun `visto senza durata non cancella la durata gia nota`() {
        val store = ProgressStore.InMemory(clock)
        val key = ProgressKeys.movie("201")
        store.save(server, username, key, 120_000L, 600_000L)

        store.markWatched(server, username, key, 0L)
        val entry = store.get(server, username, key)
        assertEquals(600_000L, entry?.durationMillis)
        assertTrue(entry?.isWatched == true)
    }

    @Test
    fun `non visto non tocca le altre voci`() {
        val store = ProgressStore.InMemory(clock)
        store.save(server, username, "vod_201", 120_000L, 600_000L)
        store.save(server, username, "ep_301", 90_000L, 1_800_000L)

        assertTrue(store.remove(server, username, "vod_201"))
        assertNull(store.get(server, username, "vod_201"))
        assertEquals(90_000L, store.get(server, username, "ep_301")?.positionMillis)

        assertFalse(store.remove(server, username, "vod_201"))
    }

    @Test
    fun `visto a mano non propone la ripresa`() {
        val entry = WatchProgress(
            positionMillis = 120_000L,
            durationMillis = 600_000L,
            markedWatched = true,
        )
        assertFalse(WatchRules.canResume(entry))
        assertTrue(entry.isWatched)
    }
}
