package it.felixvision.tv.data.progress

import kotlinx.serialization.Serializable

/**
 * Avanzamento di un film o di un episodio. La durata è quella dichiarata dal
 * player al momento del salvataggio; `0` significa "non ancora nota".
 *
 * `markedWatched` ricorda il "Segna come visto" fatto a mano dal catalogo
 * quando la durata non è conosciuta: senza quel dato il solo rapporto
 * posizione/durata non basterebbe.
 *
 * Le regole di prodotto sono isolate in [WatchRules] per poterle verificare
 * senza Android e per condividerle tra player e cataloghi.
 */
@Serializable
data class WatchProgress(
    val positionMillis: Long = 0L,
    val durationMillis: Long = 0L,
    val updatedAtMillis: Long = 0L,
    val markedWatched: Boolean = false,
) {
    val fraction: Float get() = WatchRules.fraction(positionMillis, durationMillis)

    val isWatched: Boolean
        get() = markedWatched || WatchRules.isWatched(positionMillis, durationMillis)

    val canResume: Boolean get() = WatchRules.canResume(this)
}

object ProgressKeys {

    const val VOD_PREFIX = "vod_"
    const val EPISODE_PREFIX = "ep_"

    fun movie(streamId: String): String = VOD_PREFIX + streamId

    fun episode(episodeId: String): String = EPISODE_PREFIX + episodeId
}

object WatchRules {

    /** Posizioni sotto i 30 s non vengono salvate (né aggiornate). */
    const val MIN_SAVE_POSITION_MILLIS = 30_000L

    /** Visto quando la posizione raggiunge il 90% della durata. */
    const val WATCHED_PERCENT = 90

    fun shouldPersist(positionMillis: Long): Boolean =
        positionMillis >= MIN_SAVE_POSITION_MILLIS

    fun isWatched(positionMillis: Long, durationMillis: Long): Boolean {
        if (positionMillis <= 0L || durationMillis <= 0L) return false
        return positionMillis * 100L >= durationMillis * WATCHED_PERCENT
    }

    fun canResume(progress: WatchProgress?): Boolean {
        if (progress == null) return false
        if (progress.markedWatched) return false
        return shouldPersist(progress.positionMillis) && !progress.isWatched
    }

    fun fraction(positionMillis: Long, durationMillis: Long): Float {
        if (durationMillis <= 0L) return 0f
        return (positionMillis.toFloat() / durationMillis.toFloat()).coerceIn(0f, 1f)
    }

    /**
     * Voce dell'archivio per "Segna come visto": con la durata nota la
     * posizione è la durata stessa, altrimenti resta il solo contrassegno.
     */
    fun watchedEntry(durationMillis: Long, nowMillis: Long): WatchProgress {
        val duration = durationMillis.coerceAtLeast(0L)
        return WatchProgress(
            positionMillis = duration,
            durationMillis = duration,
            updatedAtMillis = nowMillis,
            markedWatched = true,
        )
    }

    /**
     * Durata in millisecondi dalle informazioni del catalogo: prima
     * `duration_secs`, altrimenti `hh:mm:ss` / `mm:ss` testuale.
     */
    fun durationMillis(durationSecs: Int?, durationText: String?): Long {
        if (durationSecs != null && durationSecs > 0) return durationSecs * 1_000L
        val text = durationText?.trim().orEmpty()
        if (text.isEmpty()) return 0L
        val parts = text.split(':').map { it.trim() }
        if (parts.size !in 2..3) return 0L
        val numbers = parts.map { it.toLongOrNull() ?: return 0L }
        val seconds = when (numbers.size) {
            3 -> numbers[0] * 3_600L + numbers[1] * 60L + numbers[2]
            else -> numbers[0] * 60L + numbers[1]
        }
        return if (seconds > 0L) seconds * 1_000L else 0L
    }
}
