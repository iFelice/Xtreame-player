package it.felixvision.tv.data.store

import org.junit.Assert.assertEquals
import org.junit.Test

class ServerLabelTest {

    @Test
    fun `codice 001 è mostrato come etichetta`() {
        assertEquals("001", serverLabel("001"))
        assertEquals("001", serverLabel(StoredCredentials(server = "http://server.esempio:8080", username = "demo", password = "demo", serverCode = "001")))
    }

    @Test
    fun `nessun codice mostra Personalizzato`() {
        assertEquals("Personalizzato", serverLabel(null as String?))
        assertEquals("Personalizzato", serverLabel(""))
        assertEquals("Personalizzato", serverLabel("   "))
        assertEquals("Personalizzato", serverLabel(StoredCredentials(server = "http://server.esempio:8080", username = "demo", password = "demo", serverCode = null)))
        assertEquals("Personalizzato", serverLabel(StoredCredentials(server = "http://server.esempio:8080", username = "demo", password = "demo", serverCode = "")))
    }

    @Test
    fun `codice personalizzato rimane Personalizzato`() {
        assertEquals("Personalizzato", serverLabel(StoredCredentials(server = "http://server.esempio:8080", username = "demo", password = "demo")))
    }
}
