package it.felixvision.tv.data.sources

import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Pulizia delle righe orfane: le righe degli account Xtream spariti si eliminano
 * se non hanno dati utente, quelle delle liste M3U **mai**. Una lista sparita
 * dall'indice esce dall'elenco (non ha indirizzo), ma la sua riga resta su
 * disco: il Log può continuare a dire perché è sparita e, se la lista tornasse,
 * preferiti, avanzamento e contenuti nascosti sarebbero ancora lì.
 */
class SourceRepositoryCleanupTest {

    private class FakeSourceStore(
        var rows: List<Source>,
        /** Righe che l'elenco non mostra più (account sparito con la sua riga). */
        private val hidden: Set<String> = emptySet(),
    ) : SourceStore {

        override suspend fun load(): List<Source> =
            rows.filter { source ->
                source.id !in hidden && (source.type != SourceType.M3U || source.m3uUrl != null)
            }

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

    /** Account Xtream sparito dall'elenco (per esempio dopo un ripristino). */
    private val oldAccount = Source(
        id = "src0",
        type = SourceType.XTREAM,
        label = "S1",
        xtream = StoredCredentials(
            server = "http://vecchio.esempio:8080",
            username = "vecchio",
            password = "vecchio-password",
        ),
    )

    @Test
    fun `la riga di una lista sparita resta salvata, anche senza dati utente`() = runTest {
        val store = FakeSourceStore(listOf(account, orphan))
        val repository = SourceRepository(store)

        val changed = repository.cleanupOrphans { false }

        assertFalse("le liste M3U non si eliminano", changed)
        assertEquals(listOf("src1", "s2"), store.rows.map { it.id })
        // Non compare comunque tra le sorgenti usabili: non ha indirizzo.
        assertEquals(listOf("src1"), repository.sources().map { it.id })
        // Ma resta leggibile per il Log, con la sua etichetta e il suo nome.
        assertEquals(listOf("s2"), repository.storedM3uSources().map { it.id })
    }

    @Test
    fun `la riga di un account sparito senza dati utente viene eliminata`() = runTest {
        val store = FakeSourceStore(listOf(account, oldAccount), hidden = setOf("src0"))
        val repository = SourceRepository(store)

        val changed = repository.cleanupOrphans { false }

        assertTrue("l'account sparito senza dati utente si elimina", changed)
        assertEquals(listOf("src1"), store.rows.map { it.id })
    }

    @Test
    fun `la riga di un account sparito con dati utente resta`() = runTest {
        val store = FakeSourceStore(listOf(account, oldAccount), hidden = setOf("src0"))
        val repository = SourceRepository(store)

        val changed = repository.cleanupOrphans { sourceId -> sourceId == "src0" }

        assertFalse(changed)
        assertEquals(listOf("src1", "src0"), store.rows.map { it.id })
    }

    @Test
    fun `senza righe orfane non cambia niente`() = runTest {
        val store = FakeSourceStore(listOf(account))
        val repository = SourceRepository(store)

        assertFalse(repository.cleanupOrphans { false })
        assertEquals(listOf("src1"), store.rows.map { it.id })
    }
}
