package it.felixvision.tv.data.progress

import kotlinx.serialization.Serializable

/**
 * Avanzamento di un film o di un episodio. La durata è quella dichiarata dal
 * player al momento del salvataggio; `0` significa "non ancora nota".
 *
 * Le regole di prodotto sono isolate in [WatchRules] per poterle verificare
 * senza Android e per condividerle tra player e cataloghi.
 */
@Serializable
data class WatchProgress(
    val positionMillis: Long = 0L,
    val durationMillis: Long = 0L,
    val updatedAtMillis: Long = 0L,
) {
    val fraction: Float get() = WatchRules.fraction(positionMillis, durationMillis)

    val isWatched: Boolean get() = WatchRules.isWatched(positionMillis, durationMillis)

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
        return shouldPersist(progress.positionMillis) && !progress.isWatched
    }

    fun fraction(positionMillis: Long, durationMillis: Long): Float {
        if (durationMillis <= 0L) return 0f
        return (positionMillis.toFloat() / durationMillis.toFloat()).coerceIn(0f, 1f)
    }
}
