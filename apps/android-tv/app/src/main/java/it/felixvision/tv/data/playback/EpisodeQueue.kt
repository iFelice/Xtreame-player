package it.felixvision.tv.data.playback

import it.felixvision.tv.data.catalog.Episode

/**
 * Episodio con la stagione di appartenenza, nell'ordine di riproduzione:
 * prima le stagioni come restituite da `deriveSeasons`, poi il numero di
 * episodio crescente all'interno della stagione.
 */
data class EpisodeOrder(
    val seasonNumber: String,
    val episode: Episode,
) {
    val displayTitle: String
        get() = episode.title.ifBlank { "Episodio ${episode.episodeNum}" }
}

/**
 * Coda di riproduzione di una serie, ricavata dalla scheda episodi. Non
 * contiene credenziali: server, utente e password restano nel player.
 */
data class SeriesPlayback(
    val seriesId: String,
    val title: String,
    val categoryId: String?,
    val queue: List<EpisodeOrder>,
    val startIndex: Int,
    /** Copertina della serie, per l'archivio "Continua a guardare". */
    val cover: String? = null,
) {
    val current: EpisodeOrder? get() = queue.getOrNull(startIndex)
}

/**
 * Appiattisce le stagioni in una coda ordinata. Le stagioni senza episodi non
 * producono voci; gli episodi con numero non numerico restano in fondo alla
 * stagione, nell'ordine ricevuto dal pannello.
 */
fun buildEpisodeQueue(
    seasonOrder: List<String>,
    episodes: Map<String, List<Episode>>,
): List<EpisodeOrder> {
    val queue = mutableListOf<EpisodeOrder>()
    for (seasonNumber in seasonOrder) {
        val seasonEpisodes = episodes[seasonNumber] ?: continue
        val ordered = seasonEpisodes
            .withIndex()
            .sortedWith(
                compareBy<IndexedValue<Episode>> { episodeNumber(it.value) }
                    .thenBy { it.index },
            )
        for (entry in ordered) {
            queue.add(EpisodeOrder(seasonNumber = seasonNumber, episode = entry.value))
        }
    }
    return queue
}

/** Episodio successivo nella coda, `null` se è l'ultimo o non è presente. */
fun nextEpisode(queue: List<EpisodeOrder>, currentEpisodeId: String): EpisodeOrder? {
    val index = queue.indexOfFirst { it.episode.id == currentEpisodeId }
    if (index < 0) return null
    return queue.getOrNull(index + 1)
}

fun indexOfEpisode(queue: List<EpisodeOrder>, episodeId: String): Int =
    queue.indexOfFirst { it.episode.id == episodeId }

private fun episodeNumber(episode: Episode): Int =
    episode.episodeNum.trim().toIntOrNull() ?: Int.MAX_VALUE
