package it.felixvision.tv.data.sources

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.m3u.M3uLibrary

/**
 * Catalogo di una sorgente con la sua etichetta: è l'unità che
 * [AggregatedCatalog] mette insieme.
 */
data class CatalogPart(
    val source: Source,
    val catalog: Catalog,
)

/**
 * Catalogo di **tutte** le sorgenti abilitate, senza etichette.
 *
 * Serve a Cerca, Preferiti, Riprendi e ai contenuti protetti: le voci di ogni
 * sorgente stanno una dopo l'altra, con i loro identificativi. Le etichette
 * `S#`/`M#` non compaiono mai nell'interfaccia: la provenienza resta dentro
 * l'identificativo delle voci delle liste ([SourceIds.scoped]), quindi apertura
 * e riproduzione sanno sempre a quale sorgente appartiene un contenuto.
 *
 * La sezione Film non usa questo catalogo: lì si sceglie la sorgente e si
 * mostra un catalogo per volta (vedi `CatalogUiState.xtreamCatalog` e
 * `CatalogUiState.m3uCatalog`).
 */
object AggregatedCatalog {

    /** Catalogo vuoto: nessuna sorgente abilitata. */
    val EMPTY: Catalog = Catalog()

    /**
     * Catalogo Film delle sole liste M3U, unite in una sola voce.
     *
     * Le categorie con lo stesso nome (senza maiuscole e spazi ai bordi)
     * diventano una sola e le voci stanno in ordine di lista (come nell'indice)
     * e poi di comparsa nel file; "Senza categoria" resta una sola categoria.
     * Gli identificativi delle voci restano legati alla lista di appartenenza
     * ([SourceIds.scoped]): apertura e riproduzione sanno sempre da dove
     * arrivano.
     */
    fun mergeM3u(parts: List<CatalogPart>): Catalog {
        if (parts.isEmpty()) return EMPTY
        val keys = ArrayList<String>()
        val displayNames = HashMap<String, String>()
        val buckets = LinkedHashMap<String, MutableList<VodStream>>()
        fun bucket(key: String, name: String): MutableList<VodStream> {
            if (key !in displayNames) {
                displayNames[key] = name
                keys += key
            }
            return buckets.getOrPut(key) { ArrayList() }
        }
        for (part in parts) {
            val localKeys = HashMap<String, String>(part.catalog.vodCategories.size)
            for (category in part.catalog.vodCategories) {
                val key = M3uLibrary.categoryKey(category.categoryName)
                localKeys[category.categoryId] = key
                bucket(key, category.categoryName)
            }
            for (stream in part.catalog.vodStreams) {
                val key = localKeys[stream.categoryId]
                    ?: M3uLibrary.categoryKey(M3uLibrary.UNCATEGORIZED)
                bucket(key, M3uLibrary.UNCATEGORIZED) += stream
            }
        }
        val categories = keys.mapIndexed { index, key ->
            Category(
                categoryId = SourceIds.scoped(M3U_MERGED_ID, M3uLibrary.categoryId(index)),
                categoryName = displayNames.getValue(key),
            )
        }
        val streams = keys.flatMapIndexed { index, key ->
            val categoryId = categories[index].categoryId
            buckets.getValue(key).map { stream -> stream.copy(categoryId = categoryId) }
        }
        return Catalog(
            vodCategories = categories,
            vodStreams = streams,
            updatedAtMillis = parts.maxOf { it.catalog.updatedAtMillis },
        )
    }

    /** Sorgente fittizia delle categorie unite delle liste M3U. */
    const val M3U_MERGED_ID = "m3u_all"

    fun merge(parts: List<CatalogPart>): Catalog {
        if (parts.isEmpty()) return EMPTY
        if (parts.size == 1) return parts.first().catalog
        val ordered = parts.sortedWith { first, second ->
            val byLabel = Sources.LABEL_COMPARATOR.compare(first.source.label, second.source.label)
            if (byLabel != 0) byLabel else first.source.id.compareTo(second.source.id)
        }
        return Catalog(
            liveCategories = ordered.flatMap { it.catalog.liveCategories }.distinctBy { it.categoryId },
            liveStreams = ordered.flatMap { it.catalog.liveStreams },
            vodCategories = ordered.flatMap { it.catalog.vodCategories }.distinctBy { it.categoryId },
            vodStreams = ordered.flatMap { it.catalog.vodStreams },
            seriesCategories = ordered.flatMap { it.catalog.seriesCategories }.distinctBy { it.categoryId },
            series = ordered.flatMap { it.catalog.series },
            updatedAtMillis = ordered.maxOf { it.catalog.updatedAtMillis },
        )
    }
}
