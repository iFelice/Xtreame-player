package it.felixvision.tv.ui.catalog

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Dopo un cambio di sorgenti il catalogo si ricompone in memoria e resta a
 * schermo: nessun `isLoading`, nessuna sezione smontata, nessuna schermata di
 * caricamento sopra le Impostazioni. La rete serve solo quando l'account Xtream
 * è appena stato riacceso e la sua parte non è più in memoria.
 */
class SourceReloadTest {

    @Test
    fun `senza account Xtream si ricompone e basta`() {
        assertEquals(SourceReload.RECOMPOSE, sourceReload(xtreamSourceId = null, loadedXtreamSourceId = null))
        // Anche se una parte vecchia fosse rimasta in memoria, non si usa più.
        assertEquals(SourceReload.RECOMPOSE, sourceReload(xtreamSourceId = null, loadedXtreamSourceId = "src1"))
    }

    @Test
    fun `con lo stesso account gia in memoria si ricompone e basta`() {
        assertEquals(SourceReload.RECOMPOSE, sourceReload(xtreamSourceId = "src1", loadedXtreamSourceId = "src1"))
    }

    @Test
    fun `con l'account appena riacceso si ricarica in silenzio`() {
        assertEquals(SourceReload.RELOAD_XTREAM, sourceReload(xtreamSourceId = "src1", loadedXtreamSourceId = null))
        assertEquals(SourceReload.RELOAD_XTREAM, sourceReload(xtreamSourceId = "src2", loadedXtreamSourceId = "src1"))
    }
}
