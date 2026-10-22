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

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ProgressStoreTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val clock = Clock { 1_700_000_000_000L }

    private fun store(): ProgressStore {
        val context = ApplicationProvider.getApplicationContext<Context>()
        return ProgressStore(context = context, clock = clock)
    }

    @Test
    fun `archivio persistente vuoto`() = runTest {
        val store = store()
        assertTrue(store.getAll(server, username).isEmpty())
        assertNull(store.get(server, username, "vod_201"))
    }

    @Test
    fun `salvataggio persistente e rilettura`() = runTest {
        val store = store()
        assertFalse(store.save(server, username, "vod_201", 10_000L, 600_000L))
        assertTrue(store.save(server, username, "vod_201", 120_000L, 600_000L))

        val progress = store.get(server, username, "vod_201")
        assertEquals(120_000L, progress?.positionMillis)
        assertEquals(600_000L, progress?.durationMillis)
        assertEquals("vod_201", store.getAll(server, username).keys.first())
        assertTrue(store.revision.value > 0L)
    }

    @Test
    fun `cancellazione per account`() = runTest {
        val store = store()
        store.save(server, username, "ep_301", 60_000L, 1_800_000L)
        store.clearForAccount(server, username)
        assertTrue(store.getAll(server, username).isEmpty())
    }
}
