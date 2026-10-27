package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import java.time.Instant
import java.time.ZoneId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Riga "in onda / a seguire": programma corrente, successivo, avanzamento e
 * orari formattati. Fuso fisso per non dipendere dal fuso della macchina.
 *
 * Il 26 ottobre 2026 in Europa/Roma è già ora solare (CET, +1): mezzogiorno UTC
 * è le 13:00 locali.
 */
class ChannelScheduleRulesTest {

    private val zone: ZoneId = ZoneId.of("Europe/Rome")
    private val nowMillis = Instant.parse("2026-10-26T11:45:00Z").toEpochMilli()

    private val nebbia = EpgProgram(
        title = "Nebbia d'argento",
        description = "",
        start = Instant.parse("2026-10-26T10:30:00Z").epochSecond,
        end = Instant.parse("2026-10-26T12:00:00Z").epochSecond,
        hasArchive = false,
    )

    private val mappa = EpgProgram(
        title = "La mappa delle stelle",
        description = "",
        start = Instant.parse("2026-10-26T12:00:00Z").epochSecond,
        end = Instant.parse("2026-10-26T13:30:00Z").epochSecond,
        hasArchive = false,
    )

    @Test
    fun `programma in onda avanzamento e programma successivo`() {
        val line = ChannelScheduleRules.line(listOf(mappa, nebbia), nowMillis)

        assertEquals(nebbia, line.onAir)
        assertEquals(mappa, line.next)
        assertTrue(line.isAvailable)
        // 75 dei 90 minuti di "Nebbia d'argento": 0,8333.
        assertEquals(0.8333f, line.progress, 0.001f)
        assertEquals("Ora: Nebbia d'argento · 11:30–13:00", ChannelScheduleRules.onAirText(line, zone))
        assertEquals("Dopo: La mappa delle stelle 13:00", ChannelScheduleRules.nextText(line, zone))
    }

    @Test
    fun `prima del primo programma nessuna riga in onda ma il dopo c'è`() {
        val line = ChannelScheduleRules.line(listOf(nebbia, mappa), Instant.parse("2026-10-26T09:00:00Z").toEpochMilli())

        assertNull(line.onAir)
        assertEquals(nebbia, line.next)
        // Senza programma in onda la riga secondaria non compare.
        assertFalse(line.isAvailable)
        assertEquals(0f, line.progress, 0f)
        assertNull(ChannelScheduleRules.onAirText(line, zone))
        assertEquals("Dopo: Nebbia d'argento 11:30", ChannelScheduleRules.nextText(line, zone))
    }

    @Test
    fun `fine del programma non è più in onda`() {
        // Esattamente alla fine (13:00 locali) conta già il programma dopo.
        val line = ChannelScheduleRules.line(listOf(nebbia, mappa), Instant.parse("2026-10-26T12:00:00Z").toEpochMilli())

        assertEquals(mappa, line.onAir)
        assertNull(line.next)
        assertEquals(0f, line.progress, 0f)
        assertEquals("Ora: La mappa delle stelle · 13:00–14:30", ChannelScheduleRules.onAirText(line, zone))
        assertNull(ChannelScheduleRules.nextText(line, zone))
    }

    @Test
    fun `guida vuota non produce nessuna riga`() {
        val line = ChannelScheduleRules.line(emptyList(), nowMillis)
        assertEquals(ChannelScheduleLine.EMPTY, line)
        assertFalse(line.isAvailable)
        assertNull(ChannelScheduleRules.onAirText(line, zone))
        assertNull(ChannelScheduleRules.nextText(line, zone))
        val texts = ChannelScheduleRules.texts(emptyList(), nowMillis, zone)
        assertNull(texts.first)
        assertNull(texts.second)
    }

    @Test
    fun `avanzamento e ora seguono l'orologio iniettato`() {
        var now = nowMillis
        val clock = Clock { now }
        val before = ChannelScheduleRules.line(listOf(nebbia, mappa), clock.nowMillis()).progress

        now += 10 * 60_000L
        val after = ChannelScheduleRules.line(listOf(nebbia, mappa), clock.nowMillis()).progress

        assertEquals(0.8333f, before, 0.001f)
        // 11:55 UTC: 85 dei 90 minuti.
        assertEquals(0.9444f, after, 0.001f)
        assertTrue(after > before)
        // L'ora corrente si aggiorna ogni minuto mentre la riga è a schermo.
        assertEquals(60_000L, ChannelScheduleRules.REFRESH_MILLIS)
        assertEquals(300L, ChannelScheduleRules.DEBOUNCE_MILLIS)
        assertEquals(4, ChannelScheduleRules.MAX_CONCURRENT_REQUESTS)
    }

    @Test
    fun `testi completi in una sola chiamata`() {
        val texts = ChannelScheduleRules.texts(listOf(nebbia, mappa), nowMillis, zone)
        assertEquals("Ora: Nebbia d'argento · 11:30–13:00", texts.first)
        assertEquals("Dopo: La mappa delle stelle 13:00", texts.second)
    }
}
