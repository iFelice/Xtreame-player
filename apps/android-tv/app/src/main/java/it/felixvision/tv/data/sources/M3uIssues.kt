package it.felixvision.tv.data.sources

import it.felixvision.tv.data.log.Issue
import it.felixvision.tv.data.log.IssueLog

/**
 * Regole dei problemi delle liste M3U che finiscono nel Log, senza Android né
 * rete: si compongono e si provano con dati finti.
 *
 * Un problema **rientrato** non compare più: se si ripresenta, il Log lo tratta
 * come nuovo (data e ora nuove). Gli errori passeggeri non entrano: una lista in
 * errore compare solo quando l'errore è definitivo (dopo i tentativi
 * automatici), che è quello che decidono le righe passate in
 * [permanentErrors].
 */
object M3uIssues {

    /** Motivo della riga di una lista che non è più nell'indice. */
    const val OUT_OF_INDEX_MESSAGE = "non presente nell'indice"

    /**
     * I problemi attivi, nell'ordine in cui si mostrano: prima le liste uscite
     * dall'indice, poi l'indice stesso, poi le liste in errore definitivo.
     *
     * @param stored righe delle liste salvate, comprese quelle fuori indice.
     * @param indexedUrls indirizzi delle liste nell'ultima risoluzione
     *   dell'indice: **vuoto** se l'indice non è mai stato letto, nel qual caso
     *   nessuna lista è "fuori indice" (non si sa ancora).
     * @param indexError messaggio dell'indice non raggiungibile o non valido.
     * @param permanentErrors errori definitivi delle singole liste.
     */
    fun active(
        stored: List<Source>,
        indexedUrls: List<String>,
        indexError: String?,
        permanentErrors: List<M3uErrorRow>,
    ): List<Issue> {
        val issues = ArrayList<Issue>(stored.size + 1)
        if (stored.isNotEmpty() && indexedUrls.isNotEmpty()) {
            val names = Sources.displayNames(stored)
            val inIndex = indexedUrls.mapTo(HashSet(indexedUrls.size)) { url -> Sources.m3uId(url) }
            for (source in stored) {
                if (source.id in inIndex) continue
                val name = names[source.id] ?: source.label
                issues += Issue(
                    key = IssueLog.outOfIndexKey(source.id),
                    message = "$name: $OUT_OF_INDEX_MESSAGE",
                )
            }
        }
        if (indexError != null) {
            issues += Issue(
                key = IssueLog.KEY_INDEX,
                message = "${M3uSourceService.INDEX_ROW_TITLE}: $indexError",
            )
        }
        for (row in permanentErrors) {
            issues += Issue(
                key = IssueLog.listKey(row.sourceId),
                message = "${row.title}: ${row.message}",
            )
        }
        return issues
    }
}
