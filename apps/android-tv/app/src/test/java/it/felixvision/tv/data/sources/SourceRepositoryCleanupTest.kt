package it.felixvision.tv.data.sources

import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Pulizia delle righe orfane: una lista sparita dall'indice si elimina solo se
 * non ha dati utente; se ha preferiti, avanzamento o contenuti nascosti resta
 * salvata (quindi nascosta) come prima.
 */
class SourceRepositoryCleanupTest {

    private class FakeSourceStore(var rows: List<Source>) : SourceStore {

        override suspend fun load(): List<Source> =
            rows.filter { source -> source.type != SourceType.M3U || source.m3uUrl != null }

        override suspend fun loadAll(): List<Source> = rows

        override suspend fun save(sources: List<Source>) {
            rows = sources
        }
    }

    private val account = Source(
        id = "src1",
        type = SourceType.XTREAM,
        label = "S1",
        xtream = StoredCredentials(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo-password",
        ),
    )

    /** Lista senza indirizzo: la riga è rimasta, la lista non c'è più. */
    private val orphan = Source(id = "s2", type = SourceType.M3U, label = "M1")

    @Test
    fun `la riga sparita senza dati utente viene eliminata`() = runTest {
        val store = FakeSourceStore(listOf(account, orphan))
        val repository = SourceRepository(store)

        val changed = repository.cleanupOrphans { false }

        assertTrue(changed)
        assertEquals(listOf("src1"), store.rows.map { it.id })
        assertEquals(listOf("src1"), repository.sources().map { it.id })
    }

    @Test
    fun `la riga sparita con dati utente resta salvata e nascosta`() = runTest {
        val store = FakeSourceStore(listOf(account, orphan))
        val repository = SourceRepository(store)

        val changed = repository.cleanupOrphans { sourceId -> sourceId == "s2" }

        assertFalse(changed)
        assertEquals(listOf("src1", "s2"), store.rows.map { it.id })
        // Non compare comunque tra le sorgenti usabili: non ha indirizzo.
        assertEquals(listOf("src1"), repository.sources().map { it.id })
    }

    @Test
    fun `senza righe orfane non cambia niente`() = runTest {
        val store = FakeSourceStore(listOf(account))
        val repository = SourceRepository(store)

        assertFalse(repository.cleanupOrphans { false })
        assertEquals(listOf("src1"), store.rows.map { it.id })
    }
}
