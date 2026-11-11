package it.felixvision.tv.ui.navigation

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Ordine e voci del menu laterale (verifica senza simulazione D-pad).
 */
class DrawerSectionsOrderTest {

    @Test
    fun `ordine delle voci del menu`() {
        assertEquals(
            listOf(
                DrawerSection.Novita,
                DrawerSection.Preferiti,
                DrawerSection.Live,
                DrawerSection.Film,
                DrawerSection.Serie,
                DrawerSection.GuidaTv,
                DrawerSection.Cerca,
                DrawerSection.Impostazioni,
            ),
            DrawerSection.entries.toList(),
        )
    }

    @Test
    fun `etichette delle nuove voci`() {
        assertEquals("Guida TV", DrawerSection.GuidaTv.label)
        assertEquals("Cerca", DrawerSection.Cerca.label)
    }

    @Test
    fun `ogni voce ha la propria icona`() {
        val icons = DrawerSection.entries.map { it.iconRes }
        assertEquals(icons.size, icons.toSet().size)
        val labels = DrawerSection.entries.map { it.label }
        assertEquals(labels.size, labels.toSet().size)
    }
}
