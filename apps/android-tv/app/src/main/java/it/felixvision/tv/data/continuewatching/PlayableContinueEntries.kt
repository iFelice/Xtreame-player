package it.felixvision.tv.data.continuewatching

import it.felixvision.tv.data.sources.SourceIds

/**
 * Regola di "Continua a guardare": si mostrano solo le voci che si possono
 * davvero riaprire, cioè quelle la cui **sorgente è ancora accesa**.
 *
 * Una voce di una lista M3U porta l'identificativo della sua lista
 * (`s2:<id>`): se la lista è spenta, o è uscita dall'indice, il film non è più
 * nel catalogo e la card sarebbe una porta chiusa (senza l'indirizzo diretto il
 * player non riuscirebbe ad avviare niente). L'interruttore generale "Mostra"
 * delle liste vale come spegnimento di tutte: [enabledSourceIds] è l'elenco
 * delle sorgenti **accese e visibili**.
 *
 * La voce non si cancella dall'archivio: se la lista tornasse, la card
 * ricomparirebbe con il punto di ripresa di prima. Le voci Xtream (id non
 * aggregati) restano come sempre.
 */
object PlayableContinueEntries {

    /** Le voci riproducibili, nell'ordine ricevuto (dal più recente). */
    fun playable(
        entries: List<ContinueEntry>,
        enabledSourceIds: Set<String>,
    ): List<ContinueEntry> {
        if (entries.isEmpty()) return entries
        val filtered = entries.filter { entry ->
            val sourceId = sourceIdOf(entry) ?: return@filter true
            sourceId in enabledSourceIds
        }
        return if (filtered.size == entries.size) entries else filtered
    }

    /** Sorgente della voce, `null` per le voci che non ne hanno una (Xtream). */
    private fun sourceIdOf(entry: ContinueEntry): String? =
        SourceIds.sourceOf(entry.streamId.orEmpty())
            ?: SourceIds.sourceOf(entry.seriesId.orEmpty())
}
