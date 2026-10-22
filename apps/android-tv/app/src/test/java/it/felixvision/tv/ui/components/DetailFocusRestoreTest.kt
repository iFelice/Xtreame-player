package it.felixvision.tv.ui.components

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DetailFocusRestoreTest {

    @Test
    fun `chiave presente non richiede fallback`() {
        val pending = "vod_123"
        val current = setOf("vod_123", "vod_456", "vod_789")
        assertFalse(shouldFallbackToContent(pending, current))
    }

    @Test
    fun `chiave assente richiede fallback`() {
        val pending = "vod_123"
        val current = setOf("vod_456", "vod_789")
        assertTrue(shouldFallbackToContent(pending, current))
    }

    @Test
    fun `chiave nulla non richiede fallback`() {
        assertFalse(shouldFallbackToContent(null, setOf("vod_123")))
        assertFalse(shouldFallbackToContent(null, emptySet()))
    }

    @Test
    fun `lista vuota con chiave presente richiede fallback`() {
        val pending = "vod_999"
        val current = emptySet<String>()
        assertTrue(shouldFallbackToContent(pending, current))
    }

    @Test
    fun `catalogo aggiornato rimuove chiave - fallback necessario`() {
        // Simula aggiornamento catalogo dove copertina non è più presente
        val pending = "series_42"
        val afterUpdate = setOf("series_1", "series_2")
        assertTrue(shouldFallbackToContent(pending, afterUpdate))
        // Se ancora presente, nessun fallback anche se requestFocus fallisce temporaneamente
        val stillPresent = setOf("series_42", "series_1")
        assertFalse(shouldFallbackToContent(pending, stillPresent))
    }
}
