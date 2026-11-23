package it.felixvision.tv.data.m3u

import java.time.Instant
import java.time.LocalTime
import java.time.ZoneId
import java.time.ZonedDateTime

/**
 * Orari in cui le liste M3U vengono rilette: **08:30, 14:30, 18:30 e 22:30**
 * (ora locale del dispositivo).
 *
 * La copia salvata resta valida fino al primo di questi orari successivo al
 * download, quindi chi apre l'app alle 08:10 usa la copia della sera prima e
 * chi la apre alle 08:31 rilegge il file da GitHub. "Aggiorna catalogo" ignora
 * gli orari e riscarica subito.
 */
object M3uRefreshSchedule {

    /** Orari in minuti dalla mezzanotte, in ordine crescente. */
    val SLOTS_MINUTES_OF_DAY: List<Int> = listOf(
        8 * 60 + 30,
        14 * 60 + 30,
        18 * 60 + 30,
        22 * 60 + 30,
    )

    /**
     * Vero quando la copia scaricata a [fetchedAtMillis] ha superato il primo
     * orario previsto successivo al download. `null` o valori non validi
     * significano "mai scaricata": si rilegge.
     */
    fun shouldRefresh(
        fetchedAtMillis: Long?,
        nowMillis: Long,
        zone: ZoneId = ZoneId.systemDefault(),
    ): Boolean {
        if (fetchedAtMillis == null || fetchedAtMillis <= 0L) return true
        // Orologio indietro o download "nel futuro": meglio fidarsi della copia
        // che riscaricare a ogni apertura.
        if (fetchedAtMillis >= nowMillis) return false
        return nowMillis >= nextRefreshAfter(fetchedAtMillis, zone)
    }

    /**
     * Primo orario previsto **strettamente successivo** al download, in
     * millisecondi: se il download è avvenuto proprio alle 18:30, la copia vale
     * fino alle 22:30.
     */
    fun nextRefreshAfter(
        fetchedAtMillis: Long,
        zone: ZoneId = ZoneId.systemDefault(),
    ): Long {
        val fetched = ZonedDateTime.ofInstant(Instant.ofEpochMilli(fetchedAtMillis), zone)
        val slots = SLOTS_MINUTES_OF_DAY.sorted()
        for (minute in slots) {
            val candidate = fetched.toLocalDate()
                .atTime(LocalTime.of(minute / 60, minute % 60))
                .atZone(zone)
                .toInstant()
                .toEpochMilli()
            if (candidate > fetchedAtMillis) return candidate
        }
        val first = slots.first()
        return fetched.toLocalDate()
            .plusDays(1)
            .atTime(LocalTime.of(first / 60, first % 60))
            .atZone(zone)
            .toInstant()
            .toEpochMilli()
    }
}
