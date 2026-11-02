package it.felixvision.tv.data.catalog

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
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
        assertTrue(rows.all { it.progressFraction == 0f })
        assertTrue(rows.all { !it.isIndeterminate })
        assertFalse(CatalogRefresh.isFinished(rows))
    }

    @Test
    fun `scaricamento con totale noto senza totale elaborazione e completamento`() {
        var rows = CatalogRefresh.idle()

        // Scaricamento con totale noto: 62% · 14,8 di 23,9 MB
        val totalBytes = (23.9 * CATALOG_BYTES_PER_MB).toLong()
        val receivedBytes = (totalBytes * 0.62).toLong()
        rows = CatalogRefresh.apply(
            rows,
            CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.DOWNLOADING,
                bytesReceived = receivedBytes,
                bytesTotal = totalBytes,
            ),
        )
        assertEquals(CatalogSectionStatus.DOWNLOADING, rows[0].status)
        assertEquals("62% · 14,8 di 23,9 MB", rows[0].statusLabel)
        assertEquals(62, rows[0].progressPercent)
        assertFalse(rows[0].isIndeterminate)
        assertEquals(0.62f, rows[0].progressFraction, 0.01f)
        assertEquals(CatalogSectionStatus.PENDING, rows[1].status)

        // Scaricamento senza totale noto: 14,8 MB
        val unknownTotalReceived = (14.8 * CATALOG_BYTES_PER_MB).toLong()
        rows = CatalogRefresh.apply(
            rows,
            CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.DOWNLOADING,
                bytesReceived = unknownTotalReceived,
                bytesTotal = null,
            ),
        )
        assertEquals("14,8 MB", rows[0].statusLabel)
        assertNull(rows[0].progressPercent)
        assertTrue(rows[0].isIndeterminate)
        assertFalse(CatalogRefresh.isFinished(rows))

        // Elaborazione in corso: barra piena e "Elaborazione…"
        rows = CatalogRefresh.apply(
            rows,
            CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.PROCESSING,
                bytesReceived = totalBytes,
                bytesTotal = totalBytes,
            ),
        )
        assertEquals(CatalogSectionStatus.PROCESSING, rows[0].status)
        assertEquals("Elaborazione…", rows[0].statusLabel)
        assertEquals(1f, rows[0].progressFraction, 0f)
        assertFalse(rows[0].isIndeterminate)
        assertFalse(CatalogRefresh.isFinished(rows))

        // Completato con punto delle migliaia
        rows = CatalogRefresh.apply(
            rows,
            CatalogStage(
                section = CatalogSection.LIVE,
                status = CatalogSectionStatus.COMPLETED,
                itemCount = 21_277,
                bytesReceived = totalBytes,
                bytesTotal = totalBytes,
            ),
        )
        assertEquals(CatalogSectionStatus.COMPLETED, rows[0].status)
        assertEquals("Completato · 21.277 elementi", rows[0].statusLabel)
        assertEquals(1f, rows[0].progressFraction, 0f)
        assertEquals(21_277, rows[0].itemCount)
    }

    @Test
    fun `errore sulla categoria in corso e stato finale`() {
        var rows = CatalogRefresh.idle()
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 220))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.DOWNLOADING))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR))

        assertEquals("Completato · 220 elementi", rows[0].statusLabel)
        assertEquals("Errore", rows[1].statusLabel)
        assertEquals(1f, rows[1].progressFraction, 0f)
        assertEquals("In attesa", rows[2].statusLabel)
        assertTrue(CatalogRefresh.hasError(rows))
        // La serie non è mai partita: l'aggiornamento non è "finito".
        assertFalse(CatalogRefresh.isFinished(rows))
    }

    @Test
    fun `tutte le righe concluse chiudono l'aggiornamento`() {
        var rows = CatalogRefresh.idle()
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, 220))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.FILM, CatalogSectionStatus.COMPLETED, 1_440))
        rows = CatalogRefresh.apply(rows, CatalogStage(CatalogSection.SERIES, CatalogSectionStatus.COMPLETED, 42))

        assertTrue(CatalogRefresh.isFinished(rows))
        assertFalse(CatalogRefresh.hasError(rows))
        assertEquals("Completato · 1.440 elementi", rows[1].statusLabel)
        assertEquals("Completato · 42 elementi", rows[2].statusLabel)
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
