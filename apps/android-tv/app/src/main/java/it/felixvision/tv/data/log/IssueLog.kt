package it.felixvision.tv.data.log

import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlinx.serialization.Serializable

/**
 * Una riga del Log: un problema **permanente** dell'app, con il momento in cui
 * è comparso.
 *
 * @property key identificativo stabile del problema (una lista, l'indice delle
 *   liste): due segnalazioni dello stesso problema sono una riga sola.
 * @property message testo da mostrare, senza data: per esempio
 *   `"lista.m3u: non presente nell'indice"`.
 * @property sinceMillis quando il problema è comparso la prima volta: la data e
 *   l'ora della riga. Se il problema rientra e si ripresenta, si riparte da qui.
 * @property muted vero dopo "Svuota log": la riga non si vede più e il problema
 *   non torna finché non rientra davvero (allora è una riga nuova, con data nuova).
 */
@Serializable
data class IssueEntry(
    val key: String,
    val message: String,
    val sinceMillis: Long,
    val muted: Boolean = false,
)

/** Un problema attivo in questo momento, come lo vede chi lo segnala. */
data class Issue(
    val key: String,
    val message: String,
)

/**
 * Regole del Log, senza Android: si compone e si prova con dati finti.
 *
 * Il Log contiene **solo i problemi in corso**: una lista non più nell'indice,
 * l'indice delle liste non raggiungibile, una lista che non risponde dopo tutti
 * i tentativi automatici. Gli errori passeggeri (un tentativo fallito e poi
 * riuscito) non entrano: chi segnala decide quando un problema è definitivo.
 *
 * ## Svuota log
 *
 * [clear] non cancella le righe: le **tacita**. Il problema svuotato non torna
 * finché resta in corso; quando rientra la sua riga esce dal Log e, se si
 * ripresenta, rientra con data e ora nuove ([reconcile] non trova più la riga).
 */
object IssueLog {

    /** Chiave dell'errore dell'indice delle liste. */
    const val KEY_INDEX = "index"

    /** Chiave dell'errore di una lista. */
    fun listKey(sourceId: String): String = "list:$sourceId"

    /** Chiave di una lista salvata che non è più nell'indice. */
    fun outOfIndexKey(sourceId: String): String = "out:$sourceId"

    /** "23/11 18:42 — lista.m3u: non presente nell'indice". */
    fun line(entry: IssueEntry, zone: ZoneId = ZoneId.systemDefault()): String =
        "${stamp(entry.sinceMillis, zone)} — ${entry.message}"

    /** "23/11 18:42": giorno e mese, ora e minuti. */
    fun stamp(millis: Long, zone: ZoneId = ZoneId.systemDefault()): String = runCatching {
        STAMP_FORMATTER.format(Instant.ofEpochMilli(millis).atZone(zone))
    }.getOrDefault("")

    /**
     * Allinea il Log ai problemi attivi: le righe dei problemi ancora in corso
     * restano (con la loro data e, se svuotate, il loro silenzio), quelle dei
     * problemi rientrati escono, i problemi nuovi entrano con [nowMillis].
     */
    fun reconcile(
        entries: List<IssueEntry>,
        active: List<Issue>,
        nowMillis: Long,
    ): List<IssueEntry> {
        if (active.isEmpty()) return emptyList()
        if (entries.isEmpty()) {
            return active.map { issue -> IssueEntry(issue.key, issue.message, nowMillis) }
        }
        val byKey = entries.associateBy { it.key }
        return active.map { issue ->
            val existing = byKey[issue.key]
            if (existing == null) {
                IssueEntry(issue.key, issue.message, nowMillis)
            } else {
                existing.copy(message = issue.message)
            }
        }
    }

    /** Le righe da mostrare, dalla più vecchia: quelle non svuotate. */
    fun visible(entries: List<IssueEntry>): List<IssueEntry> =
        entries.filterNot { it.muted }.sortedBy { it.sinceMillis }

    /** "Svuota log": tacita le righe visibili senza far rientrare i problemi. */
    fun clear(entries: List<IssueEntry>): List<IssueEntry> =
        if (entries.isEmpty()) entries else entries.map { it.copy(muted = true) }

    private val STAMP_FORMATTER: DateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM HH:mm")
}
