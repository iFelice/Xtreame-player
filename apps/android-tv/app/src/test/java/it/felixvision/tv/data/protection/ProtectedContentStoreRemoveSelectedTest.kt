package it.felixvision.tv.data.protection

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

/** Una rimozione multipla deve produrre UNA sola revisione dell'archivio. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ProtectedContentStoreRemoveSelectedTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"

    private fun store(): ProtectedContentStore =
        ProtectedContentStore(context = ApplicationProvider.getApplicationContext<Context>())

    @Test
    fun `due voci rimosse insieme avanzano la revisione di uno`() = runTest {
        val store = store()
        store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "Categoria uno")
        store.toggleItem(server, username, ProtectedKind.VOD, "201", "001", "Film uno")
        val before = store.revision.value

        val updated = store.removeSelected(
            server,
            username,
            listOf(
                ProtectedEntryKey(ProtectedKind.LIVE, "001", isCategory = true),
                ProtectedEntryKey(ProtectedKind.VOD, "201", isCategory = false),
            ),
        )

        assertEquals(0, updated.hiddenCount)
        assertEquals(0, store.get(server, username).hiddenCount)
        // Una sola scrittura: non due revisioni (una per voce).
        assertEquals(before + 1L, store.revision.value)
    }

    @Test
    fun `selezione vuota non scrive e non cambia la revisione`() = runTest {
        val store = store()
        store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "Categoria uno")
        val before = store.revision.value
        store.removeSelected(server, username, emptyList())
        assertEquals(before, store.revision.value)
        assertEquals(1, store.get(server, username).hiddenCount)
    }
}
