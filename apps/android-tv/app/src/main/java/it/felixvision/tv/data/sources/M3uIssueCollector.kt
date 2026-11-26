package it.felixvision.tv.data.sources

import it.felixvision.tv.data.log.Issue
import it.felixvision.tv.data.log.IssueLogStore

/**
 * Raccoglie i problemi **permanenti** delle liste M3U e li riporta nel Log.
 *
 * Nel Log entrano solo i problemi che non si risolvono da soli:
 * - una lista salvata che non è più nell'indice (esce dall'elenco, i suoi dati
 *   restano, e il Log dice perché);
 * - l'indice delle liste non raggiungibile o non valido: finché è così l'app usa
 *   l'ultima copia buona e non ritenta da sola;
 * - una lista che non risponde **dopo** tutti i tentativi automatici (prima è un
 *   errore passeggero e non entra nel Log).
 *
 * Un problema rientrato esce dal Log: se si ripresenta è una riga nuova, con
 * data e ora nuove. "Svuota log" tacita le righe e non le fa tornare finché il
 * problema resta in corso.
 */
class M3uIssueCollector(
    private val service: M3uSourceService,
    private val sources: SourceRepository,
    private val log: IssueLogStore,
) {

    /** Rilegge i problemi attivi e allinea il Log. */
    suspend fun refresh() {
        log.update(collect())
    }

    /** I problemi attivi in questo momento, nell'ordine in cui si mostrano. */
    suspend fun collect(): List<Issue> = M3uIssues.active(
        stored = sources.storedM3uSources(),
        indexedUrls = service.indexedListUrls(),
        indexError = service.indexError.value,
        permanentErrors = service.permanentErrorRows(sources.sources()),
    )
}
