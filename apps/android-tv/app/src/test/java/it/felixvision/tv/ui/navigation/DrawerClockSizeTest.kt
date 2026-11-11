package it.felixvision.tv.ui.navigation

import it.felixvision.tv.ui.components.UiScale
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Dimensioni dell'ora e della data del menu laterale.
 *
 * Test puri, senza dispositivo: le due funzioni sommano [DRAWER_CLOCK_EXTRA]
 * dopo `UiScale.sp`, così l'aumento si vede anche in "Compatta", dove la
 * soglia minima dei testi piccoli restituirebbe la sola dimensione di progetto.
 * Il TV 1080p espone 960×540 dp: scala di progetto 0,9, "Compatta" 0,63.
 */
class DrawerClockSizeTest {

    /** I valori attesi sono in sp, con tolleranza 0,01. */
    private val tolerance = 0.01f

    @Test
    fun `TV 1080p in Compatta ingrandisce ora e data`() {
        val scale = UiScale(factor = 0.63f, designFactor = 0.9f)

        assertEquals(14.4f, drawerClockTimeSize(scale).value, tolerance)
        assertEquals(12.6f, drawerClockDateSize(scale).value, tolerance)
    }

    @Test
    fun `scala piena ora 16 e data 14`() {
        val scale = UiScale(factor = 1.0f, designFactor = 1.0f)

        assertEquals(16f, drawerClockTimeSize(scale).value, tolerance)
        assertEquals(14f, drawerClockDateSize(scale).value, tolerance)
    }

    @Test
    fun `la data resta piu piccola dell'ora`() {
        val compatto = UiScale(factor = 0.63f, designFactor = 0.9f)

        assertEquals(
            1.8f,
            drawerClockTimeSize(compatto).value - drawerClockDateSize(compatto).value,
            tolerance,
        )
    }
}
