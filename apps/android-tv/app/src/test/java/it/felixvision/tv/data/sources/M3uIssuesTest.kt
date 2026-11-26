package it.felixvision.tv.data.sources

import it.felixvision.tv.data.log.IssueLog
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Problemi delle liste M3U che finiscono nel Log: una lista sparita
 * dall'indice, l'indice non raggiungibile, gli errori definitivi delle liste.
 * Nessun errore passeggero.
 */
class M3uIssuesTest {

    private val lista1 = Source(
        id = Sources.m3uId("http://server.esempio:8080/lista1.m3u8"),
        type = SourceType.M3U,
        label = "M1",
        m3uUrl = "http://server.esempio:8080/lista1.m3u8",
    )

    private val lista2 = Source(
        id = Sources.m3uId("http://server.esempio:8080/lista2.m3u8"),
        type = SourceType.M3U,
        label = "M2",
        m3uName = "lista2",
    )

    @Test
    fun `una lista non più nell'indice ha la sua riga`() {
        val issues = M3uIssues.active(
            stored = listOf(lista1, lista2),
            indexedUrls = listOf("http://server.esempio:8080/lista1.m3u8"),
            indexError = null,
            permanentErrors = emptyList(),
        )

        assertEquals(1, issues.size)
        assertEquals(IssueLog.outOfIndexKey(lista2.id), issues.single().key)
        // Il nome resta quello ricordato alla creazione, anche senza indirizzo.
        assertEquals("lista2: non presente nell'indice", issues.single().message)
    }

    @Test
    fun `senza indice letto nessuna lista è fuori indice`() {
        // All'avvio, prima della prima risoluzione, non si sa quali liste ci
        // siano: nessun messaggio inventato.
        val issues = M3uIssues.active(
            stored = listOf(lista1, lista2),
            indexedUrls = emptyList(),
            indexError = null,
            permanentErrors = emptyList(),
        )

        assertTrue(issues.isEmpty())
    }

    @Test
    fun `con tutte le liste nell'indice il Log è vuoto`() {
        val issues = M3uIssues.active(
            stored = listOf(lista1),
            indexedUrls = listOf("http://server.esempio:8080/lista1.m3u8"),
            indexError = null,
            permanentErrors = emptyList(),
        )

        assertTrue(issues.isEmpty())
    }

    @Test
    fun `l'indice non raggiungibile ha la sua riga`() {
        val issues = M3uIssues.active(
            stored = listOf(lista1),
            indexedUrls = listOf("http://server.esempio:8080/lista1.m3u8"),
            indexError = "non raggiungibile",
            permanentErrors = emptyList(),
        )

        assertEquals(1, issues.size)
        assertEquals(IssueLog.KEY_INDEX, issues.single().key)
        assertEquals("Indice delle liste: non raggiungibile", issues.single().message)
    }

    @Test
    fun `un errore definitivo di una lista ha la sua riga`() {
        val issues = M3uIssues.active(
            stored = listOf(lista1),
            indexedUrls = listOf("http://server.esempio:8080/lista1.m3u8"),
            indexError = null,
            permanentErrors = listOf(
                M3uErrorRow(sourceId = lista1.id, title = "lista1", message = "Lista non raggiungibile"),
            ),
        )

        assertEquals(1, issues.size)
        assertEquals(IssueLog.listKey(lista1.id), issues.single().key)
        assertEquals("lista1: Lista non raggiungibile", issues.single().message)
    }

    @Test
    fun `l'ordine è liste fuori indice, indice, errori delle liste`() {
        val issues = M3uIssues.active(
            stored = listOf(lista1, lista2),
            indexedUrls = listOf("http://server.esempio:8080/lista1.m3u8"),
            indexError = "non valido",
            permanentErrors = listOf(
                M3uErrorRow(sourceId = lista1.id, title = "lista1", message = "Lista non raggiungibile"),
            ),
        )

        assertEquals(
            listOf(
                IssueLog.outOfIndexKey(lista2.id),
                IssueLog.KEY_INDEX,
                IssueLog.listKey(lista1.id),
            ),
            issues.map { it.key },
        )
    }

    @Test
    fun `senza liste salvate resta solo l'eventuale errore dell'indice`() {
        assertTrue(M3uIssues.active(emptyList(), emptyList(), null, emptyList()).isEmpty())

        val issues = M3uIssues.active(emptyList(), emptyList(), "non raggiungibile", emptyList())
        assertEquals(listOf(IssueLog.KEY_INDEX), issues.map { it.key })
    }
}
