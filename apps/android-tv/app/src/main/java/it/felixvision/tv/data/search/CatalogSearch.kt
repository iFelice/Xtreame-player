package it.felixvision.tv.data.search

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import java.text.Normalizer
import java.util.Locale

/** Risultati della ricerca locale, una lista per riga della sezione. */
data class SearchResults(
    val live: List<LiveStream> = emptyList(),
    val vod: List<VodStream> = emptyList(),
    val series: List<SeriesItem> = emptyList(),
) {
    val isEmpty: Boolean get() = live.isEmpty() && vod.isEmpty() && series.isEmpty()
}

/**
 * Ricerca locale sul catalogo già in memoria: nessuna richiesta al server.
 *
 * Regole (funzione pura, senza Android):
 * - si cerca da [CatalogSearch.MIN_QUERY_LENGTH] caratteri in su;
 * - confronto senza maiuscole e senza accenti (Normalizer NFD + rimozione dei
 *   segni diacritici), su nome di canali, film e serie;
 * - prima le corrispondenze dirette (prefisso, poi contenuto), quindi quelle
 *   che ignorano spazi e punteggiatura, poi ordine alfabetico;
 * - al massimo [CatalogSearch.MAX_RESULTS_PER_ROW] risultati per riga.
 */
object CatalogSearch {

    /** Sotto i due caratteri non si cerca: il campo resta libero. */
    const val MIN_QUERY_LENGTH = 2

    /** Massimo numero di risultati per ciascuna riga (Live, Film, Serie). */
    const val MAX_RESULTS_PER_ROW = 50

    private val COMBINING_MARKS = "\\p{Mn}+".toRegex()

    private const val RANK_PREFIX = 0
    private const val RANK_CONTAINS = 1
    private const val RANK_COMPACT_PREFIX = 2
    private const val RANK_COMPACT_CONTAINS = 3

    /** Minuscole, senza accenti, senza spazi ai bordi. */
    fun normalize(text: String): String {
        val decomposed = Normalizer.normalize(text, Normalizer.Form.NFD)
        return decomposed
            .replace(COMBINING_MARKS, "")
            .lowercase(Locale.ROOT)
            .trim()
    }

    /** `0` se il nome inizia con il testo, `1` se lo contiene, `null` se non c'entra. */
    fun matchRank(normalizedQuery: String, normalizedName: String): Int? {
        if (normalizedQuery.isEmpty()) return null
        val index = normalizedName.indexOf(normalizedQuery)
        if (index < 0) return null
        return if (index == 0) RANK_PREFIX else RANK_CONTAINS
    }

    /** Normalizza già normalizzati rimuovendo spazi e punteggiatura. */
    private fun compactSearchKey(normalizedText: String): String =
        normalizedText.filter { it.isLetterOrDigit() }

    /** Compatto: permette di trovare ad esempio `X Factor` cercando `xfa`. */
    private fun compactMatchRank(compactQuery: String, normalizedName: String): Int? {
        if (compactQuery.length < MIN_QUERY_LENGTH) return null
        val compactName = compactSearchKey(normalizedName)
        val index = compactName.indexOf(compactQuery)
        if (index < 0) return null
        return if (index == 0) RANK_COMPACT_PREFIX else RANK_COMPACT_CONTAINS
    }

    /**
     * Filtra e ordina un elenco di elementi per nome. Il testo cercato non
     * raggiunge la lunghezza minima → lista vuota.
     */
    fun <T> filterRanked(
        items: List<T>,
        query: String,
        limit: Int = MAX_RESULTS_PER_ROW,
        name: (T) -> String,
    ): List<T> {
        val normalizedQuery = normalize(query)
        if (normalizedQuery.length < MIN_QUERY_LENGTH) return emptyList()
        val compactQuery = compactSearchKey(normalizedQuery)
        val matches = ArrayList<Candidate<T>>()
        for (item in items) {
            val displayName = name(item)
            val normalizedName = normalize(displayName)
            val rank = matchRank(normalizedQuery, normalizedName)
                ?: compactMatchRank(compactQuery, normalizedName)
                ?: continue
            matches.add(Candidate(item = item, rank = rank, normalizedName = normalizedName, displayName = displayName))
        }
        matches.sortWith(
            compareBy<Candidate<T>> { it.rank }
                .thenBy { it.normalizedName }
                .thenBy { it.displayName },
        )
        return matches.take(limit).map { it.item }
    }

    /** Ricerca nelle tre sezioni del catalogo. Catalogo assente → nessun risultato. */
    fun search(
        catalog: Catalog?,
        query: String,
        limit: Int = MAX_RESULTS_PER_ROW,
    ): SearchResults {
        if (catalog == null) return SearchResults()
        if (normalize(query).length < MIN_QUERY_LENGTH) return SearchResults()
        return SearchResults(
            live = filterRanked(catalog.liveStreams, query, limit) { it.name },
            vod = filterRanked(catalog.vodStreams, query, limit) { it.name },
            series = filterRanked(catalog.series, query, limit) { it.name },
        )
    }

    private data class Candidate<T>(
        val item: T,
        val rank: Int,
        val normalizedName: String,
        val displayName: String,
    )
}
