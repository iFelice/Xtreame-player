package it.felixvision.tv.data.epg

import java.time.Instant
import java.time.ZoneId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class GuideScheduleRulesTest {

    @Test
    fun `finestra di tre ore parte dall'ora locale intera`() {
        val now = Instant.parse("2026-11-06T13:27:45Z").toEpochMilli()
        val window = GuideScheduleRules.window(now, ZoneId.of("UTC"))

        assertEquals(Instant.parse("2026-11-06T13:00:00Z").epochSecond, window.startEpochSeconds)
        assertEquals(Instant.parse("2026-11-06T16:00:00Z").epochSecond, window.endEpochSeconds)
        assertEquals(10_800L, window.durationSeconds)
    }

    @Test
    fun `ricerca binaria trova l'indice e il programma in onda`() {
        val programs = listOf(
            program("prima", 100, 200),
            program("seconda", 200, 350),
            program("terza", 350, 500),
            program("quarta", 500, 700),
        )

        assertEquals(1, GuideScheduleRules.firstIndexEndingAfter(programs, 200))
        assertEquals(3, GuideScheduleRules.firstIndexEndingAfter(programs, 500))
        assertEquals("seconda", GuideScheduleRules.findAt(programs, 200)?.title)
        assertEquals("quarta", GuideScheduleRules.findAt(programs, 699)?.title)
        assertNull(GuideScheduleRules.findAt(programs, 700))
        assertEquals(2, GuideScheduleRules.indexOfStart(programs, 350))
        assertEquals(-1, GuideScheduleRules.indexOfStart(programs, 351))
    }

    @Test
    fun `intervallo restituisce solo i programmi sovrapposti alla finestra`() {
        val programs = listOf(
            program("passato", 0, 100),
            program("in corso", 100, 250),
            program("successivo", 250, 450),
            program("fuori", 450, 600),
        )

        val selected = GuideScheduleRules.programsInWindow(programs, GuideTimeWindow(200, 500))

        assertEquals(listOf("in corso", "successivo", "fuori"), selected.map { it.title })
        assertEquals(0f, GuideScheduleRules.bounds(programs[1], GuideTimeWindow(200, 500))!!.startFraction, 0.0001f)
        assertEquals(1f / 6f, GuideScheduleRules.bounds(programs[1], GuideTimeWindow(200, 500))!!.widthFraction, 0.0001f)
        assertNull(GuideScheduleRules.bounds(programs[0], GuideTimeWindow(200, 500)))
    }

    @Test
    fun `spostamento mantiene il focus su un confine di ora`() {
        val zone = ZoneId.of("UTC")
        val currentStart = Instant.parse("2026-11-06T13:00:00Z").epochSecond
        val nextHour = program("oltre", Instant.parse("2026-11-06T17:18:00Z").epochSecond, Instant.parse("2026-11-06T18:00:00Z").epochSecond)
        val moved = GuideScheduleRules.windowStartFor(currentStart, nextHour, zone)

        assertEquals(Instant.parse("2026-11-06T17:00:00Z").epochSecond, moved)
        assertTrue(moved % GuideScheduleRules.HOUR_SECONDS == 0L)
        val spanningWindow = program(
            "già iniziato",
            Instant.parse("2026-11-06T12:30:00Z").epochSecond,
            Instant.parse("2026-11-06T14:00:00Z").epochSecond,
        )
        assertEquals(currentStart, GuideScheduleRules.windowStartFor(currentStart, spanningWindow, zone))
        assertNull(GuideScheduleRules.nowFraction(Instant.parse("2026-11-06T16:00:00Z").toEpochMilli(), GuideScheduleRules.windowAt(currentStart)))
    }

    private fun program(title: String, start: Long, end: Long) =
        EpgProgram(title, "", start, end, false)
}
