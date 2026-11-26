package it.felixvision.tv.data.log

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Archivio del Log in memoria: allineamento ai problemi attivi e "Svuota log",
 * con un orologio finto per date e ore prevedibili.
 */
class IssueLogStoreTest {

    private var now = 1_000L

    private val clock = Clock { now }

    private val store = InMemoryIssueLogStore(clock)

    @Test
    fun `update porta nel Log i problemi attivi`() {
        now = 5_000L
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))

        val entries = store.entries.value
        assertEquals(1, entries.size)
        assertEquals(5_000L, entries.single().sinceMillis)
    }

    @Test
    fun `lo stesso problema non si duplica`() {
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))
        now = 9_000L
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))

        assertEquals(1, store.entries.value.size)
        assertEquals(1_000L, store.entries.value.single().sinceMillis)
    }

    @Test
    fun `clear svuota la vista e il problema non torna`() {
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))
        store.clear()

        assertTrue(IssueLog.visible(store.entries.value).isEmpty())

        now = 20_000L
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))
        assertTrue("il problema svuotato non deve tornare", IssueLog.visible(store.entries.value).isEmpty())
    }

    @Test
    fun `un problema rientrato e ripresentato dopo clear si vede`() {
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))
        store.clear()

        // La lista torna nell'indice: la riga tacitata esce dal Log.
        store.update(emptyList())
        assertTrue(store.entries.value.isEmpty())

        // E sparisce di nuovo: è un problema nuovo, con data nuova.
        now = 30_000L
        store.update(listOf(Issue("list:m2", "lista.m3u: non risponde")))
        val visible = IssueLog.visible(store.entries.value)
        assertEquals(1, visible.size)
        assertEquals(30_000L, visible.single().sinceMillis)
    }
}
