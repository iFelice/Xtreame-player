package it.felixvision.tv.data.sources

import it.felixvision.tv.data.catalog.Catalog

/**
 * Catalogo di una sorgente con la sua etichetta: è l'unità che
 * [AggregatedCatalog] mette insieme.
 */
data class CatalogPart(
    val source: Source,
    val catalog: Catalog,
)

/**
 * Catalogo unito di tutte le sorgenti abilitate.
 *
 * Regole:
 * - una sola sorgente abilitata → il catalogo esce **identico** a quello della
 *   sorgente: nessun prefisso, nessuna etichetta (l'app si comporta come oggi);
 * - più sorgenti → le categorie di ogni sorgente restano separate (nessuna
 *   deduplicazione e nessuna fusione, anche con nomi uguali) e il nome porta
 *   l'etichetta della sorgente: "S1 · Azione", "M1 · Scaletta";
 * - l'ordine è quello delle etichette: prima gli account Xtream (S1, S2, S3),
 *   poi le liste M3U in ordine numerico (M1, M2, …, M10);
 * - gli identificativi delle voci M3U portano già il `sourceId`
 *   ([SourceIds.scoped]); quelli dell'account Xtream restano quelli di sempre,
 *   così preferiti e avanzamento salvati continuano a valere.
 *
 * Live, Serie e Guida restano quelli dell'account Xtream: in questa versione la
 * lista M3U porta solo Film.
 */
object AggregatedCatalog {

    /** Catalogo vuoto: nessuna sorgente abilitata. */
    val EMPTY: Catalog = Catalog()

    fun merge(parts: List<CatalogPart>): Catalog {
        if (parts.isEmpty()) return EMPTY
        val ordered = parts.sortedWith(compareBy(Sources.LABEL_COMPARATOR) { it.source.label })
        if (ordered.size == 1) return ordered.first().catalog
        return Catalog(
            liveCategories = ordered.flatMap { part ->
                part.catalog.liveCategories.map { it.copy(categoryName = label(part.source, it.categoryName)) }
            },
            liveStreams = ordered.flatMap { it.catalog.liveStreams },
            vodCategories = ordered.flatMap { part ->
                part.catalog.vodCategories.map { it.copy(categoryName = label(part.source, it.categoryName)) }
            },
            vodStreams = ordered.flatMap { it.catalog.vodStreams },
            seriesCategories = ordered.flatMap { part ->
                part.catalog.seriesCategories.map { it.copy(categoryName = label(part.source, it.categoryName)) }
            },
            series = ordered.flatMap { it.catalog.series },
            updatedAtMillis = ordered.maxOf { it.catalog.updatedAtMillis },
        )
    }

    /** Nome visibile della categoria: con una sola sorgente resta quello originale. */
    fun label(source: Source, categoryName: String?): String? {
        if (categoryName == null) return null
        return "${source.label}${Sources.LABEL_SEPARATOR}$categoryName"
    }

    /**
     * Etichetta della sorgente da mostrare accanto a una voce di Cerca,
     * Preferiti e Riprendi: `null` quando è abilitata una sola sorgente (in quel
     * caso l'app resta identica a oggi).
     */
    fun itemLabel(
        streamId: String,
        sessionXtream: Source?,
        enabledSources: List<Source>,
    ): String? {
        if (enabledSources.size < 2) return null
        val sourceId = SourceIds.sourceOf(streamId)
        val source = if (sourceId == null) {
            sessionXtream ?: enabledSources.firstOrNull { it.type == SourceType.XTREAM }
        } else {
            enabledSources.firstOrNull { it.id == sourceId }
        }
        return source?.label
    }
}
