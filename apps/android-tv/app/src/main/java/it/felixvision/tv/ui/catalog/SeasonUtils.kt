package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.Season

data class SeasonDisplay(
    val seasonNumber: String,
    val name: String,
    val episodeCount: Int? = null
)

/**
 * Funzione pura per ricavare le stagioni da mostrare.
 * Regole:
 * - una stagione esiste solo se la chiave in episodes ha almeno 1 episodio;
 * - l'insieme è dato dalle chiavi di episodes con lista non vuota;
 * - seasons serve solo a recuperare il nome;
 * - stagioni in seasons senza episodi non mostrate;
 * - chiavi in episodes assenti da seasons mostrate come "Stagione N";
 * - duplicate in seasons (stesso season_number) non producono doppioni;
 * - ordinamento numerico (1,2,10), non numeriche in fondo alfabetico;
 * - nome da seasons se presente e non vuoto, altrimenti "Stagione N";
 * - episodeCount = numero reale in episodes (ignora provider).
 */
fun deriveSeasons(
    seasons: List<Season>,
    episodes: Map<String, List<Episode>>
): List<SeasonDisplay> {
    val validKeys = episodes.filterValues { it.isNotEmpty() }.keys
    if (validKeys.isEmpty()) return emptyList()

    // Dedup seasons per seasonNumber, preferisci nome non vuoto
    val seasonByNumber: Map<String, Season> = seasons.groupBy { it.seasonNumber.toString() }
        .mapValues { (_, list) ->
            list.firstOrNull { !it.name.isNullOrBlank() } ?: list.first()
        }

    val displays = validKeys.map { key ->
        val s = seasonByNumber[key]
        val name = s?.name?.takeIf { it.isNotBlank() } ?: "Stagione $key"
        SeasonDisplay(
            seasonNumber = key,
            name = name,
            episodeCount = episodes[key]?.size
        )
    }

    return displays.sortedWith(
        compareBy<SeasonDisplay> { it.seasonNumber.toIntOrNull() ?: Int.MAX_VALUE }
            .thenBy { it.seasonNumber }
    )
}
