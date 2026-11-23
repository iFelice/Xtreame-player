package it.felixvision.tv.data.m3u

import java.time.LocalDateTime
import java.time.ZoneId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Orari di rilettura delle liste M3U: 08:30, 14:30, 18:30 e 22:30 (ora locale).
 * Date di novembre, quindi fuori dall'ora legale: il fuso è fisso e il test non
 * dipende dal giorno in cui gira.
 */
class M3uRefreshScheduleTest {

    private val rome: ZoneId = ZoneId.of("Europe/Rome")

    private fun at(year: Int, month: Int, day: Int, hour: Int, minute: Int): Long =
        LocalDateTime.of(year, month, day, hour, minute)
            .atZone(rome)
            .toInstant()
            .toEpochMilli()

    @Test
    fun `i quattro orari sono quelli previsti`() {
        assertEquals(
            listOf(8 * 60 + 30, 14 * 60 + 30, 18 * 60 + 30, 22 * 60 + 30),
            M3uRefreshSchedule.SLOTS_MINUTES_OF_DAY,
        )
    }

    @Test
    fun `una lista mai scaricata va riletta`() {
        val now = at(2026, 11, 23, 9, 0)
        assertTrue(M3uRefreshSchedule.shouldRefresh(null, now, rome))
        assertTrue(M3uRefreshSchedule.shouldRefresh(0L, now, rome))
    }

    @Test
    fun `la copia vale fino al primo orario successivo`() {
        val fetched = at(2026, 11, 23, 8, 10)
        assertFalse(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 8, 29), rome))
        assertTrue(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 8, 30), rome))
        assertTrue(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 14, 31), rome))
    }

    @Test
    fun `dopo le 22 e 30 si rilegge alle 8 e 30 del giorno dopo`() {
        val fetched = at(2026, 11, 23, 22, 35)

        assertEquals(at(2026, 11, 24, 8, 30), M3uRefreshSchedule.nextRefreshAfter(fetched, rome))
        assertFalse(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 23, 59), rome))
        assertFalse(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 24, 8, 29), rome))
        assertTrue(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 24, 8, 30), rome))
    }

    @Test
    fun `un download esattamente a un orario vale fino al successivo`() {
        val fetched = at(2026, 11, 23, 18, 30)

        assertEquals(at(2026, 11, 23, 22, 30), M3uRefreshSchedule.nextRefreshAfter(fetched, rome))
        assertFalse(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 22, 29), rome))
        assertTrue(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 22, 30), rome))
    }

    @Test
    fun `un orologio indietro non fa riscaricare a ogni apertura`() {
        val fetched = at(2026, 11, 23, 15, 0)
        assertFalse(M3uRefreshSchedule.shouldRefresh(fetched, at(2026, 11, 23, 14, 0), rome))
    }
}
