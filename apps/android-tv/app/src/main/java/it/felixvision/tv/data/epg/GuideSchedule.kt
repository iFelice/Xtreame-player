package it.felixvision.tv.data.epg

import java.time.Instant
import java.time.ZoneId

/** Finestra visibile della timeline, espressa in secondi Unix. */
data class GuideTimeWindow(val startEpochSeconds: Long, val endEpochSeconds: Long) {
    val durationSeconds: Long get() = (endEpochSeconds - startEpochSeconds).coerceAtLeast(0L)
}

/** Posizione e larghezza proporzionali di un programma nella timeline. */
data class GuideProgramBounds(val startFraction: Float, val widthFraction: Float)

/** Regole pure per la timeline EPG della Guida TV. */
object GuideScheduleRules {
    const val HOUR_SECONDS = 3_600L
    const val WINDOW_HOURS = 3L
    const val WINDOW_SECONDS = HOUR_SECONDS * WINDOW_HOURS

    /** Inizio dell'ora locale corrente, arrotondato all'ora intera. */
    fun currentHourStart(nowMillis: Long, zone: ZoneId = ZoneId.systemDefault()): Long =
        Instant.ofEpochMilli(nowMillis)
            .atZone(zone)
            .withMinute(0)
            .withSecond(0)
            .withNano(0)
            .toEpochSecond()

    fun window(nowMillis: Long, zone: ZoneId = ZoneId.systemDefault()): GuideTimeWindow {
        val start = currentHourStart(nowMillis, zone)
        return GuideTimeWindow(start, start + WINDOW_SECONDS)
    }

    fun windowAt(startEpochSeconds: Long): GuideTimeWindow =
        GuideTimeWindow(startEpochSeconds, startEpochSeconds + WINDOW_SECONDS)

    /** Ora locale a cui allineare lo scorrimento quando il focus esce dalla finestra. */
    fun hourStart(epochSeconds: Long, zone: ZoneId = ZoneId.systemDefault()): Long =
        Instant.ofEpochSecond(epochSeconds)
            .atZone(zone)
            .withMinute(0)
            .withSecond(0)
            .withNano(0)
            .toEpochSecond()

    /** Primo elemento della lista ordinata la cui fine supera l'inizio finestra. */
    fun firstIndexEndingAfter(programs: List<EpgProgram>, epochSeconds: Long): Int {
        var low = 0
        var high = programs.size
        while (low < high) {
            val middle = (low + high) ushr 1
            if (programs[middle].end <= epochSeconds) low = middle + 1 else high = middle
        }
        return low
    }

    /** Ricerca binaria del programma in onda all'istante indicato. */
    fun findAt(programs: List<EpgProgram>, epochSeconds: Long): EpgProgram? {
        var low = 0
        var high = programs.size
        while (low < high) {
            val middle = (low + high) ushr 1
            if (programs[middle].start <= epochSeconds) low = middle + 1 else high = middle
        }
        val candidate = programs.getOrNull(low - 1) ?: return null
        return candidate.takeIf { epochSeconds < it.end }
    }

    /** Programmi che si sovrappongono alla finestra, senza scandire quelli precedenti. */
    fun programsInWindow(
        sortedPrograms: List<EpgProgram>,
        window: GuideTimeWindow,
    ): List<EpgProgram> {
        if (window.endEpochSeconds <= window.startEpochSeconds || sortedPrograms.isEmpty()) return emptyList()
        val result = ArrayList<EpgProgram>()
        var index = firstIndexEndingAfter(sortedPrograms, window.startEpochSeconds)
        while (index < sortedPrograms.size) {
            val program = sortedPrograms[index]
            if (program.start >= window.endEpochSeconds) break
            if (program.end > window.startEpochSeconds) result += program
            index++
        }
        return result
    }

    /** Programma iniziale da mostrare nei dettagli: in onda, poi il prossimo, poi il più recente. */
    fun initialProgram(
        sortedPrograms: List<EpgProgram>,
        nowMillis: Long,
        window: GuideTimeWindow,
    ): EpgProgram? {
        val nowSeconds = Math.floorDiv(nowMillis, 1_000L)
        findAt(sortedPrograms, nowSeconds)?.let { current ->
            if (current.start < window.endEpochSeconds && current.end > window.startEpochSeconds) return current
        }
        programsInWindow(sortedPrograms, window)
            .firstOrNull { it.start > nowSeconds }
            ?.let { return it }
        return programsInWindow(sortedPrograms, window).lastOrNull()
    }

    /** Indici dei programmi adiacenti a quello selezionato nella lista completa ordinata. */
    fun indexOfStart(sortedPrograms: List<EpgProgram>, startEpochSeconds: Long): Int {
        var low = 0
        var high = sortedPrograms.size
        while (low < high) {
            val middle = (low + high) ushr 1
            if (sortedPrograms[middle].start < startEpochSeconds) low = middle + 1 else high = middle
        }
        return low.takeIf { it < sortedPrograms.size && sortedPrograms[it].start == startEpochSeconds } ?: -1
    }

    /** Bounds proporzionali, tagliati esattamente ai limiti della finestra. */
    fun bounds(program: EpgProgram, window: GuideTimeWindow): GuideProgramBounds? {
        val duration = window.durationSeconds
        if (duration <= 0L || program.end <= window.startEpochSeconds || program.start >= window.endEpochSeconds) return null
        val visibleStart = maxOf(program.start, window.startEpochSeconds)
        val visibleEnd = minOf(program.end, window.endEpochSeconds)
        return GuideProgramBounds(
            startFraction = ((visibleStart - window.startEpochSeconds).toFloat() / duration).coerceIn(0f, 1f),
            widthFraction = ((visibleEnd - visibleStart).toFloat() / duration).coerceIn(0f, 1f),
        )
    }

    /** Nuovo inizio ora-intera che porta [program] dentro la finestra. */
    fun windowStartFor(
        currentStartEpochSeconds: Long,
        program: EpgProgram,
        zone: ZoneId = ZoneId.systemDefault(),
    ): Long {
        val current = windowAt(currentStartEpochSeconds)
        if (program.start < current.endEpochSeconds && program.end > current.startEpochSeconds) {
            return currentStartEpochSeconds
        }
        return hourStart(program.start, zone)
    }

    /** Posizione della linea dell'ora corrente, o `null` se fuori dalla finestra. */
    fun nowFraction(nowMillis: Long, window: GuideTimeWindow): Float? {
        val nowSeconds = nowMillis / 1_000.0
        if (nowSeconds < window.startEpochSeconds || nowSeconds >= window.endEpochSeconds || window.durationSeconds <= 0L) return null
        return ((nowSeconds - window.startEpochSeconds) / window.durationSeconds).toFloat().coerceIn(0f, 1f)
    }
}
