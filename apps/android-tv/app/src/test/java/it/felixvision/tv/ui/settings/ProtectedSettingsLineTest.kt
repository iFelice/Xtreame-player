package it.felixvision.tv.ui.settings

import org.junit.Assert.assertEquals
import org.junit.Test

class ProtectedSettingsLineTest {

    @Test
    fun `con PIN mostra solo PIN impostato`() {
        assertEquals("PIN impostato", protectedSettingsLine(ProtectedSummary(hasPin = true)))
    }

    @Test
    fun `senza PIN mostra solo PIN non impostato`() {
        assertEquals("PIN non impostato", protectedSettingsLine(ProtectedSummary(hasPin = false)))
    }
}
