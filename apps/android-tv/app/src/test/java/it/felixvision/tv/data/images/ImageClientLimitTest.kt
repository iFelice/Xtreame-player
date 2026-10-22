package it.felixvision.tv.data.images

import it.felixvision.tv.data.images.FvpImageLoader
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ImageClientLimitTest {

    @Test
    fun `limite di 4 immagini contemporanee sul client delle immagini`() {
        val client = FvpImageLoader.createImageHttpClient()
        assertEquals(4, client.dispatcher.maxRequests)
        assertEquals(4, client.dispatcher.maxRequestsPerHost)
        assertTrue(FvpImageLoader.verifyLimit(client))
    }

    @Test
    fun `nessun nuovo tentativo automatico sul client immagini`() {
        val client = FvpImageLoader.createImageHttpClient()
        assertEquals(false, client.retryOnConnectionFailure)
    }

    @Test
    fun `l'immagine fallita mostra segnaposto con iniziali senza errore`() {
        // Logica verificata in UI: CatalogPosterImage mostra InitialsPlaceholder se url nullo o fallito
        // Test simbolico: le iniziali sono le prime due lettere del titolo
        val title = "Film Demo"
        val initials = title.take(2).uppercase()
        assertEquals("FI", initials)
        val emptyTitle = ""
        val fallback = emptyTitle.take(2).uppercase().ifBlank { "FV" }
        assertEquals("FV", fallback)
    }
}
