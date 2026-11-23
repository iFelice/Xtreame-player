package it.felixvision.tv.data.sources

/**
 * Indirizzi delle liste attive.
 *
 * - [entries] sono le voci configurate alla compilazione (`FVP_M3U_URL`): ognuna
 *   può essere una lista M3U diretta oppure un indice di liste;
 * - [playlists] sono le liste effettive da mostrare, cioè l'esito della
 *   risoluzione dell'indice (per una lista diretta: sé stessa).
 *
 * Finché l'indice non è risolto [playlists] è vuoto: nessuna riga `M<n>` viene
 * creata "per sbaglio" per l'indirizzo di un indice. La prima risoluzione
 * avviene all'avvio e il registro viene aggiornato con le liste trovate.
 * [EncryptedSourceStore] legge da qui quali sorgenti M3U esistono.
 */
class M3uUrlRegistry(entries: List<String>) {

    private val configuredEntries: List<String> = entries
        .map { it.trim() }
        .filter { it.isNotEmpty() }
        .distinct()

    @Volatile
    private var resolvedLists: List<String> = emptyList()

    /** Voci configurate alla compilazione. */
    fun entries(): List<String> = configuredEntries

    /** Liste effettive (una sorgente per ciascuna). */
    fun playlists(): List<String> = resolvedLists

    /** Aggiorna le liste dopo la risoluzione dell'indice. */
    fun update(lists: List<String>) {
        val clean = lists.map { it.trim() }.filter { it.isNotEmpty() }.distinct()
        if (clean.isNotEmpty()) resolvedLists = clean
    }
}
