package it.felixvision.mobile.ui.detail

import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.Season
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.playback.buildEpisodeQueue
import it.felixvision.tv.data.playback.indexOfEpisode
import it.felixvision.tv.data.playback.nextEpisode
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress

/**
 * Stagione mostrata nella scheda serie: stesso modello del `SeasonDisplay`
 * della TV (deriva da `ui/catalog/SeasonUtils.kt` della TV, qui non
 * compilato: questa è la trasposizione fedele).
 */
data class SeasonDisplay(
    val seasonNumber: String,
    val name: String,
    val episodeCount: Int? = null,
)

/**
 * Stagioni da mostrare, con le stesse regole della TV:
 * una stagione esiste solo se la chiave in [episodes] ha almeno un episodio;
 * [seasons] serve solo a recuperare il nome; ordinamento numerico con le
 * chiavi non numeriche in fondo alfabetico; doppioni per numero eliminati.
 */
fun deriveSeasons(
    seasons: List<Season>,
    episodes: Map<String, List<Episode>>,
): List<SeasonDisplay> {
    val validKeys = episodes.filterValues { it.isNotEmpty() }.keys
    if (validKeys.isEmpty()) return emptyList()

    val seasonByNumber: Map<String, Season> = seasons.groupBy { it.seasonNumber.toString() }
        .mapValues { (_, list) ->
            list.firstOrNull { !it.name.isNullOrBlank() } ?: list.first()
        }

    val displays = validKeys.map { key ->
        val season = seasonByNumber[key]
        val name = season?.name?.takeIf { it.isNotBlank() } ?: "Stagione $key"
        SeasonDisplay(
            seasonNumber = key,
            name = name,
            episodeCount = episodes[key]?.size,
        )
    }

    return displays.sortedWith(
        compareBy<SeasonDisplay> { it.seasonNumber.toIntOrNull() ?: Int.MAX_VALUE }
            .thenBy { it.seasonNumber },
    )
}

/**
 * Episodio puntato da "Continua a guardare" per questa serie, il più recente
 * (stessa regola della TV).
 */
fun continueEpisodeIdForSeries(
    entries: List<ContinueEntry>,
    seriesId: String,
): String? = entries
    .asSequence()
    .filter { it.isSeries && it.seriesId == seriesId && !it.episodeId.isNullOrBlank() }
    .maxByOrNull { it.updatedAtMillis }
    ?.episodeId

/** Stagione che contiene [episodeId], oppure null se non è nella scheda. */
fun seasonNumberOf(
    episodes: Map<String, List<Episode>>?,
    episodeId: String?,
): String? {
    if (episodeId.isNullOrBlank() || episodes.isNullOrEmpty()) return null
    return episodes.entries
        .firstOrNull { (_, list) -> list.any { it.id == episodeId } }
        ?.key
}

/**
 * Episodio iniziato più di recente: posizione salvata (> 0) e
 * [WatchProgress.updatedAtMillis] massimo; il solo "segna come visto" senza
 * posizione non conta come avvio (stessa regola della TV).
 */
fun mostRecentlyStartedEpisodeId(
    episodes: Map<String, List<Episode>>,
    progress: Map<String, WatchProgress>,
): String? {
    var bestId: String? = null
    var bestUpdated = Long.MIN_VALUE
    val seasons = episodes.keys.sortedWith(
        compareBy<String> { it.toIntOrNull() ?: Int.MAX_VALUE }.thenBy { it },
    )
    for (season in seasons) {
        for (episode in episodes[season].orEmpty()) {
            val watch = progress[ProgressKeys.episode(episode.id)] ?: continue
            if (watch.positionMillis <= 0L) continue
            if (watch.updatedAtMillis > bestUpdated) {
                bestUpdated = watch.updatedAtMillis
                bestId = episode.id
            }
        }
    }
    return bestId
}

/**
 * Coda di riproduzione di una serie: riusa le funzioni condivise di
 * `data.playback` della TV ([buildEpisodeQueue], [nextEpisode],
 * [indexOfEpisode]); l'ordine delle stagioni è quello di [deriveSeasons].
 */
data class SeriesQueueResult(
    val playback: SeriesPlayback,
    val seasonsShown: List<SeasonDisplay>,
) {
    /** Id dell'episodio da riprendere, se "Continua a guardare" ne ha uno. */
    fun continueEpisodeId(entries: List<ContinueEntry>): String? =
        continueEpisodeIdForSeries(entries, playback.seriesId)

    fun startIndexFor(episodeId: String?): Int =
        episodeId?.let { indexOfEpisode(playback.queue, it) }?.takeIf { it >= 0 } ?: 0

    fun nextAfter(episodeId: String) = nextEpisode(playback.queue, episodeId)
}

/**
 * Costruisce la coda di riproduzione per una scheda serie: episodi ordinati
 * come sulla TV (stagioni nell'ordine di [deriveSeasons], numero di episodio
 * crescente dentro la stagione).
 */
fun buildSeriesPlayback(
    seriesId: String,
    title: String,
    categoryId: String?,
    cover: String?,
    seasons: List<Season>,
    episodes: Map<String, List<Episode>>,
    startEpisodeId: String? = null,
): SeriesQueueResult {
    val seasonsShown = deriveSeasons(seasons, episodes)
    val queue = buildEpisodeQueue(
        seasonOrder = seasonsShown.map { it.seasonNumber },
        episodes = episodes,
    )
    val startIndex = startEpisodeId
        ?.let { indexOfEpisode(queue, it) }
        ?.takeIf { it >= 0 }
        ?: 0
    return SeriesQueueResult(
        playback = SeriesPlayback(
            seriesId = seriesId,
            title = title,
            categoryId = categoryId,
            queue = queue,
            startIndex = startIndex,
            cover = cover,
        ),
        seasonsShown = seasonsShown,
    )
}
