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
    @Test fun normalizesExactDuplicates() {
        val original = EpgProgram("Ombre sul lago", "nota", 100, 200, false)
        val richerDuplicate = original.copy(description = "una descrizione più lunga", hasArchive = true)
        assertEquals(
            listOf(original.copy(description = "una descrizione più lunga", hasArchive = true)),
            EpgRules.normalize(listOf(original, richerDuplicate)),
        )
    }

    @Test fun keepsMostCompleteProgramWhenStartMatches() {
        val short = EpgProgram("", "descrizione breve", 100, 200, false)
        val longerProgram = EpgProgram("", "altro", 100, 300, false)
        assertEquals(listOf(longerProgram), EpgRules.normalize(listOf(short, longerProgram)))

        val shortDescription = EpgProgram("", "breve", 400, 500, false)
        val longerDescription = EpgProgram("", "descrizione più completa", 400, 500, false)
        assertEquals(listOf(longerDescription), EpgRules.normalize(listOf(shortDescription, longerDescription)))

        val titleBreaksTie = EpgProgram("", "pari", 600, 700, false)
        val withTitle = EpgProgram("Notte inventata", "pari", 600, 700, false)
        assertEquals(listOf(withTitle), EpgRules.normalize(listOf(titleBreaksTie, withTitle)))
    }

    @Test fun truncatesOverlapsAndDropsInvalidPrograms() {
        val long = EpgProgram("Alba inventata", "", 100, 300, false)
        val middle = EpgProgram("Bosco inventato", "", 200, 250, false)
        val last = EpgProgram("Cielo inventato", "", 250, 400, false)
        assertEquals(
            listOf(long.copy(end = 200), middle, last),
            EpgRules.normalize(listOf(last, long, middle)),
        )
        assertEquals(emptyList<EpgProgram>(), EpgRules.normalize(listOf(long.copy(end = long.start))))
    }

    @Test fun sortsByStart() {
        val later = EpgProgram("Dopo", "", 300, 400, false)
        val earlier = EpgProgram("Prima", "", 100, 200, false)
        val middle = EpgProgram("In mezzo", "", 200, 300, false)
        assertEquals(listOf(earlier, middle, later), EpgRules.normalize(listOf(later, middle, earlier)))
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
