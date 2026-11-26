package it.felixvision.tv.data.sources

import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Posizioni delle liste M3U: la posizione **è** il numero dell'etichetta
 * (`M1` prima riga, `M2` seconda, …). Le liste accese stanno davanti, quelle
 * spente in coda, i numeri restano compatti da 1 a n.
 */
class SourceOrderTest {

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

    private fun list(number: Int, enabled: Boolean = true, id: String = "s$number") = Source(
        id = id,
        type = SourceType.M3U,
        label = "M$number",
        enabled = enabled,
        m3uUrl = "http://server.esempio:8080/lista$number.m3u8",
    )

    private fun labels(sources: List<Source>): List<String> =
        Sources.m3uPageOrder(sources).map { it.label }

    @Test
    fun `le accese stanno davanti e le spente in coda`() {
        val sources = listOf(
            account,
            list(1, enabled = false),
            list(2),
            list(3, enabled = false),
            list(4),
        )

        assertEquals(listOf("M2", "M4", "M1", "M3"), labels(sources))
    }

    @Test
    fun `i numeri si ricompattano da 1 a n senza buchi`() {
        val sources = listOf(account, list(2), list(5), list(9))

        val normalized = Sources.normalizeM3uPositions(sources)

        assertEquals(listOf("M1", "M2", "M3"), labels(normalized))
        // Gli account Xtream non sono posizioni: l'etichetta resta S1.
        assertEquals("S1", normalized.first { it.type == SourceType.XTREAM }.label)
    }

    @Test
    fun `una lista nuova va prima della prima spenta`() {
        val existing = listOf(account, list(1), list(2, enabled = false))
        // La coda è "M<massimo+1>", poi la normalizzazione compatta.
        val appended = existing + list(3, id = "s9").copy(
            label = Sources.appendM3uLabel(existing.map { it.label }),
        )

        val normalized = Sources.normalizeM3uPositions(appended)

        assertEquals(listOf("M1", "M2", "M3"), labels(normalized))
        // La nuova (accesa) è davanti alla spenta, che scende in fondo.
        assertEquals(listOf("s1", "s9", "s2"), Sources.m3uPageOrder(normalized).map { it.id })
    }

    @Test
    fun `sposta su e giu scambiano due vicine e rinumerano`() {
        val sources = listOf(account, list(1), list(2), list(3))

        val down = Sources.moveM3u(sources, "s1", up = false)
        assertEquals(listOf("s2", "s1", "s3"), Sources.m3uPageOrder(down).map { it.id })
        assertEquals(listOf("M1", "M2", "M3"), labels(down))

        // La quinta portata alla seconda: le altre scalano di una.
        val five = listOf(account, list(1), list(2), list(3), list(4), list(5))
        var moved = five
        repeat(3) { moved = Sources.moveM3u(moved, "s5", up = true) }
        assertEquals(listOf("s1", "s5", "s2", "s3", "s4"), Sources.m3uPageOrder(moved).map { it.id })
        assertEquals(listOf("M1", "M2", "M3", "M4", "M5"), labels(moved))
    }

    @Test
    fun `ai bordi del gruppo lo spostamento non cambia niente`() {
        val sources = listOf(account, list(1), list(2, enabled = false))

        assertFalse(Sources.canMoveM3u(sources, "s1", up = true))
        assertFalse(Sources.canMoveM3u(sources, "s2", up = false))
        // Il confine fra accese e spente non si attraversa.
        assertFalse(Sources.canMoveM3u(sources, "s1", up = false))
        assertFalse(Sources.canMoveM3u(sources, "s2", up = true))
        assertEquals(sources, Sources.moveM3u(sources, "s1", up = true))
        assertEquals(sources, Sources.moveM3u(sources, "s1", up = false))
    }

    @Test
    fun `spegnere una lista la porta in fondo, riaccenderla in coda alle accese`() = runTest {
        val store = FakeStore(listOf(account, list(1), list(2), list(3)))
        val repository = SourceRepository(store)

        repository.setEnabled("s2", false)
        assertEquals(listOf("s1", "s3", "s2"), Sources.m3uPageOrder(store.rows).map { it.id })
        assertEquals(listOf("M1", "M2", "M3"), Sources.m3uPageOrder(store.rows).map { it.label })

        repository.setEnabled("s2", true)
        assertEquals(listOf("s1", "s3", "s2"), Sources.m3uPageOrder(store.rows).map { it.id })
        assertTrue(store.rows.first { it.id == "s2" }.enabled)
    }

    @Test
    fun `lo spostamento salva e fa avanzare la revisione`() = runTest {
        val store = FakeStore(listOf(account, list(1), list(2)))
        val repository = SourceRepository(store)
        val before = repository.revision.value

        repository.moveM3u("s2", up = true)

        assertEquals(listOf("s2", "s1"), Sources.m3uPageOrder(store.rows).map { it.id })
        assertEquals(listOf("M1", "M2"), Sources.m3uPageOrder(store.rows).map { it.label })
        assertTrue(repository.revision.value > before)
    }

    @Test
    fun `con l'interruttore generale spento nessuna lista entra nel catalogo`() = runTest {
        val visibility = FakeVisibility(true)
        val store = FakeStore(listOf(account, list(1), list(2)))
        val repository = SourceRepository(store, visibility)

        assertEquals(listOf("src1", "s1", "s2"), repository.enabledSources().map { it.id })

        repository.setM3uListsVisible(false)
        assertEquals(listOf("src1"), repository.enabledSources().map { it.id })
        // Le singole liste restano accese: si spengono solo col loro interruttore.
        assertTrue(store.rows.filter { it.type == SourceType.M3U }.all { it.enabled })

        repository.setM3uListsVisible(true)
        assertEquals(listOf("src1", "s1", "s2"), repository.enabledSources().map { it.id })
    }

    private class FakeStore(var rows: List<Source>) : SourceStore {

        override suspend fun load(): List<Source> =
            rows.filter { source -> source.type != SourceType.M3U || source.m3uUrl != null }

        override suspend fun loadAll(): List<Source> = rows

        override suspend fun save(sources: List<Source>) {
            rows = sources
        }
    }

    private class FakeVisibility(var visible: Boolean) : M3uListsVisibility {
        override fun listsVisible(): Boolean = visible
        override fun setListsVisible(visible: Boolean) {
            this.visible = visible
        }
    }
}
