package it.felixvision.tv.data.catalog

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CatalogRefreshTest {

    @Test
    fun `stato iniziale tre righe in attesa nell'ordine Live Film Serie`() {
        val rows = CatalogRefresh.idle()
        assertEquals(3, rows.size)
        assertEquals(
            listOf(CatalogSection.LIVE, CatalogSection.FILM, CatalogSection.SERIES),
            rows.map { it.section },
        )
        assertEquals(listOf("Live", "Film", "Serie"), rows.map { it.section.label })
        assertTrue(rows.all { it.status == CatalogSectionStatus.PENDING })
        assertTrue(rows.all { it.statusLabel == "In attesa" })
        assertFalse(CatalogRefresh.isFinished(rows))
    }

    @Test
    fun `scaricamento e completamento aggiornano una sola riga`() {
        var rows = CatalogRefresh.idle()
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.DOWNLOADING))
        assertEquals(CatalogSectionStatus.DOWNLOADING, rows[0].status)
        assertEquals("Scaricamento…", rows[0].statusLabel)
        assertEquals(CatalogSectionStatus.PENDING, rows[1].status)

        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 220))
        assertEquals(CatalogSectionStatus.COMPLETED, rows[0].status)
        assertEquals("Completato (220 elementi)", rows[0].statusLabel)
        assertEquals(CatalogSectionStatus.PENDING, rows[1].status)
        assertEquals(220, rows[0].itemCount)
    }

    @Test
    fun `errore sulla categoria in corso e stato finale`() {
        var rows = CatalogRefresh.idle()
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 220))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.DOWNLOADING))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))

        assertEquals("Completato (220 elementi)", rows[0].statusLabel)
        assertEquals("Errore", rows[1].statusLabel)
        assertEquals("In attesa", rows[2].statusLabel)
        assertTrue(CatalogRefresh.hasError(rows))
        // La serie non è mai partita: l'aggiornamento non è "finito".
        assertFalse(CatalogRefresh.isFinished(rows))
    }

    @Test
    fun `tutte le righe concluse chiudono l'aggiornamento`() {
        var rows = CatalogRefresh.idle()
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 220))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.COMPLETED, 144))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.COMPLETED, 42))

        assertTrue(CatalogRefresh.isFinished(rows))
        assertFalse(CatalogRefresh.hasError(rows))
        assertEquals("Completato (42 elementi)", rows[2].statusLabel)
        assertEquals(
            listOf(CatalogSection.LIVE, CatalogSection.FILM, CatalogSection.SERIES),
            rows.map { it.section },
        )
    }

    @Test
    fun `lista vuota non risulta conclusa`() {
        assertFalse(CatalogRefresh.isFinished(emptyList()))
    }
}
