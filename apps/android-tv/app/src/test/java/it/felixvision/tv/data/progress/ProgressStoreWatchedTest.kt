package it.felixvision.tv.data.progress

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

/** "Segna come visto" / "Segna come non visto" sull'archivio persistente. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ProgressStoreWatchedTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val clock = Clock { 1_700_000_000_000L }

    private fun store(): ProgressStore {
        val context = ApplicationProvider.getApplicationContext<Context>()
        return ProgressStore(context = context, clock = clock)
    }

    @Test
    fun `visto persistente con durata`() = runTest {
        val store = store()
        assertTrue(store.markWatched(server, username, "vod_201", 600_000L))

        val progress = store.get(server, username, "vod_201")
        assertEquals(600_000L, progress?.positionMillis)
        assertEquals(600_000L, progress?.durationMillis)
        assertTrue(progress?.isWatched == true)
        assertFalse(progress?.canResume == true)
        assertTrue(store.revision.value > 0L)
    }

    @Test
    fun `visto senza durata resta contrassegnato`() = runTest {
        val store = store()
        store.markWatched(server, username, "ep_301", 0L)
        val progress = store.get(server, username, "ep_301")
        assertTrue(progress?.isWatched == true)
        assertEquals(0L, progress?.durationMillis)
    }

    @Test
    fun `non visto cancella la voce`() = runTest {
        val store = store()
        store.save(server, username, "vod_201", 120_000L, 600_000L)
        assertTrue(store.remove(server, username, "vod_201"))
        assertNull(store.get(server, username, "vod_201"))
        assertFalse(store.remove(server, username, "vod_201"))
    }

    @Test
    fun `visto non tocca le altre voci dell'archivio`() = runTest {
        val store = store()
        store.save(server, username, "ep_301", 90_000L, 1_800_000L)
        store.markWatched(server, username, "vod_201", 600_000L)

        assertEquals(2, store.getAll(server, username).size)
        assertEquals(90_000L, store.get(server, username, "ep_301")?.positionMillis)
    }
}
