package it.felixvision.tv.data.continuewatching

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import it.felixvision.tv.core.Clock
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ContinueWatchingStoreTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private var now = 1_700_000_000_000L
    private val clock = Clock { now }

    private fun store(): ContinueWatchingStore {
        val context = ApplicationProvider.getApplicationContext<Context>()
        return ContinueWatchingStore(context = context, clock = clock)
    }

    private fun movie(id: String = "201", title: String = "Il film") = ContinueEntry.movie(
        streamId = id,
        title = title,
        poster = "http://server.esempio:8080/poster/$id.jpg",
        categoryId = "cat_$id",
        containerExtension = "mp4",
    )

    private fun series(episodeId: String, num: String = "5") = ContinueEntry.series(
        seriesId = "301",
        title = "Serie di prova",
        poster = "http://server.esempio:8080/poster/301.jpg",
        categoryId = "cat_301",
        episode = ContinueEpisode(
            episodeId = episodeId,
            seasonNumber = "2",
            episodeNum = num,
            title = "Episodio $num",
            containerExtension = "mkv",
        ),
    )

    @Test
    fun `archivio persistente vuoto`() = runTest {
        val store = store()
        assertTrue(store.getAll(server, username).isEmpty())
        assertTrue(store.getAllIncludingHidden(server, username).isEmpty())
        assertNull(ContinueWatchingRules.find(emptyList(), "vod_201"))
    }

    @Test
    fun `film salvato e riletto`() = runTest {
        val store = store()
        assertTrue(store.recordMovie(server, username, movie(), 120_000L, 600_000L))

        val entry = store.getAll(server, username).single()
        assertEquals("vod_201", entry.key)
        assertEquals("Il film", entry.title)
        assertEquals("cat_201", entry.categoryId)
        assertEquals("mp4", entry.containerExtension)
        assertEquals(now, entry.updatedAtMillis)
        assertTrue(store.revision.value > 0L)
    }

    @Test
    fun `posizione sotto i trenta secondi non scrive nulla`() = runTest {
        val store = store()
        assertFalse(store.recordMovie(server, username, movie(), 10_000L, 600_000L))
        assertTrue(store.getAll(server, username).isEmpty())
    }

    @Test
    fun `film visto al novanta per cento viene rimosso`() = runTest {
        val store = store()
        store.recordMovie(server, username, movie(), 60_000L, 600_000L)
        store.recordMovie(server, username, movie(), 545_000L, 600_000L)
        assertTrue(store.getAll(server, username).isEmpty())
    }

    @Test
    fun `serie con episodio successivo aggiorna la voce`() = runTest {
        val store = store()
        store.recordEpisode(server, username, series("ep_1"), nextEpisode = null, positionMillis = 90_000L, durationMillis = 600_000L)
        assertEquals("ep_1", store.getAll(server, username).single().episodeId)

        val next = ContinueEpisode(
            episodeId = "ep_2",
            seasonNumber = "2",
            episodeNum = "6",
            title = "Episodio 6",
            containerExtension = "mkv",
        )
        store.recordEpisode(server, username, series("ep_1"), next, 590_000L, 600_000L)
        val entry = store.getAll(server, username).single()
        assertEquals("ep_2", entry.episodeId)
        assertEquals("S2 E6", entry.episodeLabel)
    }

    @Test
    fun `ultimo episodio al novanta per cento toglie la serie`() = runTest {
        val store = store()
        store.recordEpisode(server, username, series("ep_9"), nextEpisode = null, positionMillis = 90_000L, durationMillis = 600_000L)
        store.recordEpisode(server, username, series("ep_9"), nextEpisode = null, positionMillis = 600_000L, durationMillis = 600_000L)
        assertTrue(store.getAll(server, username).isEmpty())
        assertTrue(store.getAllIncludingHidden(server, username).isEmpty())
    }

    @Test
    fun `nascosta e di nuovo visibile quando il contenuto viene ripreso`() = runTest {
        val store = store()
        store.recordMovie(server, username, movie(), 60_000L, 600_000L)
        assertTrue(store.hide(server, username, "vod_201"))
        assertTrue(store.getAll(server, username).isEmpty())
        assertTrue(store.getAllIncludingHidden(server, username).single().hidden)

        now += 60_000L
        assertTrue(store.recordMovie(server, username, movie(), 150_000L, 600_000L))
        val entry = store.getAll(server, username).single()
        assertFalse(entry.hidden)
        assertEquals(now, entry.updatedAtMillis)
    }

    @Test
    fun `rimozione definitiva con segna come visto`() = runTest {
        val store = store()
        store.recordMovie(server, username, movie(), 60_000L, 600_000L)
        assertTrue(store.remove(server, username, ContinueEntry.movieKey("201")))
        assertTrue(store.getAllIncludingHidden(server, username).isEmpty())
        // Rimuovere una voce assente non cambia nulla.
        assertFalse(store.remove(server, username, ContinueEntry.movieKey("201")))
    }

    @Test
    fun `archivio in memoria segue le stesse regole`() {
        var memoryNow = 1_000L
        val archive = ContinueWatchingStore.InMemory(Clock { memoryNow })
        assertTrue(archive.getAll(server, username).isEmpty())

        archive.recordMovie(server, username, movie(), 60_000L, 600_000L)
        assertEquals("vod_201", archive.getAll(server, username).single().key)

        memoryNow += 1_000L
        archive.recordMovie(server, username, movie(id = "202"), 90_000L, 600_000L)
        assertEquals(listOf("vod_202", "vod_201"), archive.getAll(server, username).map { it.key })

        archive.hide(server, username, "vod_202")
        assertEquals(listOf("vod_201"), archive.getAll(server, username).map { it.key })

        archive.recordMovie(server, username, movie(id = "202"), 120_000L, 600_000L)
        assertEquals(2, archive.getAll(server, username).size)

        archive.recordMovie(server, username, movie(), 600_000L, 600_000L)
        assertEquals(listOf("vod_202"), archive.getAll(server, username).map { it.key })
    }

    @Test
    fun `separazione per account`() = runTest {
        val store = store()
        store.recordMovie(server, username, movie(), 60_000L, 600_000L)
        assertTrue(store.getAll(server, "altro").isEmpty())
        store.clearForAccount(server, username)
        assertTrue(store.getAll(server, username).isEmpty())
    }
}
