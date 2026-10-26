package it.felixvision.tv.data.epg

import java.time.Instant
import java.time.ZoneId
import kotlinx.serialization.json.Json
import org.junit.Assert.*
import org.junit.Test

class EpgRulesTest {
    @Test fun parsesFlexibleFieldsAndBase64() {
        val root = Json.parseToJsonElement("""[{"start_timestamp":"1792990800","stop_timestamp":1792994400,"title":"Q2F0dXJuaWE=","description":"descrizione", "has_archive":"1"}]""")
        val p = EpgRules.parse(root).single()
        assertEquals("Caturnia", p.title)
        assertEquals("descrizione", p.description)
        assertTrue(p.hasArchive)
    }
    @Test fun filtersLocalDaysAndProgress() {
        val zone = ZoneId.of("Europe/Rome")
        val now = Instant.parse("2026-10-26T12:00:00Z").toEpochMilli()
        val today = EpgProgram("Uno", "", now / 1000 - 1800, now / 1000 + 1800, false)
        val tomorrow = EpgProgram("Due", "", Instant.parse("2026-10-27T10:00:00Z").epochSecond, Instant.parse("2026-10-27T11:00:00Z").epochSecond, false)
        val days = EpgRules.days(listOf(tomorrow, today), now, zone)
        assertEquals(listOf(today), days.today)
        assertEquals(listOf(tomorrow), days.tomorrow)
        assertEquals(today, EpgRules.onAir(listOf(today), now))
        assertEquals(.5f, EpgRules.progress(today, now), .001f)
    }
}
