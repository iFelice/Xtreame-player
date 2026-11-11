package it.felixvision.tv.ui.navigation

import java.time.ZoneId
import java.time.ZonedDateTime
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Ora e data del menu laterale, in italiano.
 *
 * Test puri, senza dispositivo: formattazione 24 ore `HH:mm`, data breve
 * `EEE d MMM` e attesa fino allo scatto del minuto (un solo aggiornamento per
 * minuto, nessun controllo al secondo).
 */
class DrawerClockFormattingTest {

    private val rome: ZoneId = ZoneId.of("Europe/Rome")

    /** Istante di riferimento: domenica 25 ottobre 2026, 21:07 a Roma. */
    private fun referenceMillis(): Long =
        ZonedDateTime.of(2026, 10, 25, 21, 7, 42, 0, rome).toInstant().toEpochMilli()

    /** Spazi normalizzati: le date brevi possono usare spazi non separabili. */
    private fun normalized(text: String): String =
        text.map { if (it.isWhitespace()) ' ' else it }.joinToString("")

    @Test
    fun `ora in formato 24 ore`() {
        assertEquals("21:07", DrawerClockFormatting.timeText(referenceMillis(), rome))
    }

    @Test
    fun `ora dopo mezzanotte con ore e minuti a due cifre`() {
        val midnight = ZonedDateTime.of(2026, 3, 1, 0, 5, 0, 0, rome).toInstant().toEpochMilli()
        assertEquals("00:05", DrawerClockFormatting.timeText(midnight, rome))
    }

    @Test
    fun `mezzogiorno resta 12 e non 00`() {
        val noon = ZonedDateTime.of(2026, 6, 12, 12, 0, 0, 0, rome).toInstant().toEpochMilli()
        assertEquals("12:00", DrawerClockFormatting.timeText(noon, rome))
    }

    @Test
    fun `data breve in italiano`() {
        assertEquals("dom 25 ott", normalized(DrawerClockFormatting.dateText(referenceMillis(), rome)))
    }

    @Test
    fun `data breve di un giorno infrasettimanale`() {
        val mercoledi = ZonedDateTime.of(2026, 11, 4, 8, 30, 0, 0, rome).toInstant().toEpochMilli()
        assertEquals("mer 4 nov", normalized(DrawerClockFormatting.dateText(mercoledi, rome)))
    }

    @Test
    fun `attesa allo scatto del minuto`() {
        assertEquals(60_000L, DrawerClockFormatting.millisUntilNextMinute(0L))
        assertEquals(60_000L, DrawerClockFormatting.millisUntilNextMinute(60_000L))
        assertEquals(1L, DrawerClockFormatting.millisUntilNextMinute(59_999L))
        assertEquals(59_999L, DrawerClockFormatting.millisUntilNextMinute(60_001L))
    }

    @Test
    fun `attesa sempre tra 1 e 60000 millisecondi`() {
        for (millis in listOf(-1L, 1L, 999L, 30_000L, 123_456L, 1_700_000_000_123L)) {
            val wait = DrawerClockFormatting.millisUntilNextMinute(millis)
            assertTrue("attesa fuori intervallo per $millis: $wait", wait in 1..60_000L)
        }
    }
}
