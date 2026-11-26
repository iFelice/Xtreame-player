package it.felixvision.tv.ui.main

import it.felixvision.tv.ui.navigation.DrawerSection
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Gli stati globali dell'area contenuti ("Nessuna sorgente attiva", attesa del
 * primo catalogo, errore) non devono mai prendere il posto di Impostazioni e
 * Guida TV.
 *
 * Era un vicolo cieco: con tutte le sorgenti spente il ramo "Nessuna sorgente
 * attiva" sostituiva ogni scheda, Impostazioni compresa, e il messaggio
 * "attiva una sorgente in Impostazioni → Account" restava a schermo senza che
 * quelle Impostazioni si potessero più aprire.
 */
class ContentStateTest {

    @Test
    fun `impostazioni e guida non vengono mai sostituite dagli stati globali`() {
        assertFalse(tabAcceptsGlobalContentState(DrawerSection.Impostazioni))
        assertFalse(tabAcceptsGlobalContentState(DrawerSection.GuidaTv))
    }

    @Test
    fun `le sezioni dei contenuti accettano gli stati globali`() {
        val sections = DrawerSection.entries - DrawerSection.Impostazioni - DrawerSection.GuidaTv
        sections.forEach { section ->
            assertTrue(section.name, tabAcceptsGlobalContentState(section))
        }
    }
}
