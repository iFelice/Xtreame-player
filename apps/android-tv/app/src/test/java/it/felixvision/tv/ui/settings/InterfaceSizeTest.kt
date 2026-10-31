package it.felixvision.tv.ui.settings

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Dimensione dell'interfaccia: fattori, etichette e lettura del valore salvato.
 *
 * Test puri: nessun dispositivo, nessun archivio.
 */
class InterfaceSizeTest {

    @Test
    fun `fattori ed etichette`() {
        assertEquals(0.70f, InterfaceSize.COMPACT.factor, 0.0001f)
        assertEquals(0.85f, InterfaceSize.MEDIUM.factor, 0.0001f)
        assertEquals(1.0f, InterfaceSize.LARGE.factor, 0.0001f)

        assertEquals("Compatta", InterfaceSize.COMPACT.label)
        assertEquals("Media", InterfaceSize.MEDIUM.label)
        assertEquals("Grande", InterfaceSize.LARGE.label)

        // I fattori crescono nell'ordine dei pulsanti: Compatta < Media < Grande.
        assertTrue(InterfaceSize.COMPACT.factor < InterfaceSize.MEDIUM.factor)
        assertTrue(InterfaceSize.MEDIUM.factor < InterfaceSize.LARGE.factor)
    }

    @Test
    fun `chiavi di archivio stabili e distinte`() {
        assertEquals("compact", InterfaceSize.COMPACT.storageKey)
        assertEquals("medium", InterfaceSize.MEDIUM.storageKey)
        assertEquals("large", InterfaceSize.LARGE.storageKey)
        assertEquals(
            InterfaceSize.entries.size,
            InterfaceSize.entries.map { it.storageKey }.distinct().size,
        )
    }

    @Test
    fun `il predefinito e' Compatta`() {
        assertEquals(InterfaceSize.COMPACT, InterfaceSize.fromStorage(null))
        // La prima voce dell'enum è quella predefinita.
        assertEquals(InterfaceSize.COMPACT, InterfaceSize.entries.first())
    }

    @Test
    fun `fromStorage legge le chiavi conosciute`() {
        InterfaceSize.entries.forEach { size ->
            assertEquals(size, InterfaceSize.fromStorage(size.storageKey))
        }
    }

    @Test
    fun `fromStorage con un valore sconosciuto o vuoto torna Compatta`() {
        assertEquals(InterfaceSize.COMPACT, InterfaceSize.fromStorage("enorme"))
        assertEquals(InterfaceSize.COMPACT, InterfaceSize.fromStorage(""))
        assertEquals(InterfaceSize.COMPACT, InterfaceSize.fromStorage("COMPACT"))
    }
}
