package it.felixvision.tv.ui.settings

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ConnectionsAdvisoryTest {

    @Test
    fun `avviso quando le connessioni attive raggiungono il massimo`() {
        assertTrue(ConnectionsAdvisory.shouldWarn(activeConnections = 2, maxConnections = 2, devicePlaying = false))
        assertTrue(ConnectionsAdvisory.shouldWarn(activeConnections = 3, maxConnections = 2, devicePlaying = false))
    }

    @Test
    fun `nessun avviso se questa TV sta riproducendo`() {
        assertFalse(ConnectionsAdvisory.shouldWarn(activeConnections = 4, maxConnections = 2, devicePlaying = true))
    }

    @Test
    fun `nessun avviso sotto il massimo o con dati assenti`() {
        assertFalse(ConnectionsAdvisory.shouldWarn(activeConnections = 1, maxConnections = 2, devicePlaying = false))
        assertFalse(ConnectionsAdvisory.shouldWarn(activeConnections = null, maxConnections = 2, devicePlaying = false))
        assertFalse(ConnectionsAdvisory.shouldWarn(activeConnections = 2, maxConnections = null, devicePlaying = false))
        assertFalse(ConnectionsAdvisory.shouldWarn(activeConnections = 2, maxConnections = 0, devicePlaying = false))
    }
}
