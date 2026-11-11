package it.felixvision.tv.data.epg

import java.time.ZoneId
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit

/**
 * Riga secondaria "in onda / a seguire" di un canale: il programma in onda con
 * la sua barretta di avanzamento e il programma successivo.
 */
data class ChannelScheduleLine(
    val onAir: EpgProgram? = null,
    val next: EpgProgram? = null,
    val progress: Float = 0f,
) {
    /**
     * La riga secondaria compare solo quando c'è un programma in onda: il
     * "Dopo" è un'informazione aggiuntiva, mai da solo. Senza guida non si
     * mostra nulla.
     */
    val isAvailable: Boolean get() = onAir != null

    companion object {
        val EMPTY = ChannelScheduleLine()
    }
}

/**
 * Regole pure della riga "in onda / a seguire": nessun messaggio quando la
 * guida non c'è, avanzamento calcolato sull'orologio dell'app.
 */
object ChannelScheduleRules {

    /** Attesa dopo l'ultima mossa di scorrimento prima di chiedere la guida. */
    const val DEBOUNCE_MILLIS = 300L

    /** L'ora corrente si aggiorna ogni minuto. */
    const val REFRESH_MILLIS = 60_000L

    /** Massimo di richieste alla guida contemporanee. */
    const val MAX_CONCURRENT_REQUESTS = 4

    fun line(programs: List<EpgProgram>, nowMillis: Long): ChannelScheduleLine {
        if (programs.isEmpty()) return ChannelScheduleLine.EMPTY
        val sorted = programs.sortedBy { it.start }
        val onAir = EpgRules.onAir(sorted, nowMillis)
        val next = sorted.firstOrNull { it.start * 1_000L > nowMillis }
        if (onAir == null && next == null) return ChannelScheduleLine.EMPTY
        val progress = if (onAir == null) 0f else EpgRules.progress(onAir, nowMillis)
        return ChannelScheduleLine(onAir = onAir, next = next, progress = progress)
    }

    /** "Ora: Titolo · HH:mm–HH:mm", `null` quando non c'è un programma in onda. */
    fun onAirText(
        line: ChannelScheduleLine,
        zone: ZoneId = ZoneId.systemDefault(),
    ): String? = line.onAir?.let { program ->
        "Ora: ${program.title} · ${EpgRules.time(program.start, zone)}–${EpgRules.time(program.end, zone)}"
    }

    /** "Dopo: Titolo HH:mm", `null` quando non c'è un programma successivo. */
    fun nextText(
        line: ChannelScheduleLine,
        zone: ZoneId = ZoneId.systemDefault(),
    ): String? = line.next?.let { program ->
        "Dopo: ${program.title} ${EpgRules.time(program.start, zone)}"
    }

    /** Formattazione completa in una sola chiamata, comoda per i test. */
    fun texts(
        programs: List<EpgProgram>,
        nowMillis: Long,
        zone: ZoneId = ZoneId.systemDefault(),
    ): Pair<String?, String?> {
        val current = line(programs, nowMillis)
        return onAirText(current, zone) to nextText(current, zone)
    }
}

/**
 * Carica la guida solo per i canali richiesti (quelli visibili a schermo),
 * riusando [ChannelEpgClient] per normalizzazione e cache.
 *
 * - i canali già in cache valida non generano nessuna richiesta: si riusa la
 *   guida già scaricata;
 * - al massimo [maxConcurrentRequests] richieste contemporanee (4);
 * - i canali senza guida restano fuori dalla mappa: la riga secondaria non
 *   compare.
 */
class ChannelScheduleLoader(
    private val client: ChannelEpgClient,
    private val maxConcurrentRequests: Int = ChannelScheduleRules.MAX_CONCURRENT_REQUESTS,
) {

    private val permits = Semaphore(maxConcurrentRequests)

    suspend fun load(
        server: String,
        username: String,
        password: String,
        streamIds: Collection<String>,
    ): Map<String, List<EpgProgram>> = coroutineScope {
        val unique = streamIds.filter { it.isNotBlank() }.distinct()
        unique.map { streamId ->
            async(Dispatchers.IO) {
                val cached = client.cached(server, username, streamId)
                val programs = if (cached != null) {
                    cached
                } else {
                    permits.withPermit {
                        client.load(server, username, password, streamId)
                    }
                }
                streamId to programs
            }
        }.awaitAll()
            .filter { (_, programs) -> programs.isNotEmpty() }
            .toMap()
    }

    /** Vero quando la guida del canale è già in cache valida. */
    suspend fun isCached(server: String, username: String, streamId: String): Boolean =
        client.cached(server, username, streamId) != null
}
