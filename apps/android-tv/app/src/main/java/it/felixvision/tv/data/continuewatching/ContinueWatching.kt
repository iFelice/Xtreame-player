package it.felixvision.tv.data.continuewatching

import it.felixvision.tv.data.progress.WatchRules
import kotlinx.serialization.Serializable

/**
 * Voce dell'archivio "Continua a guardare", salvata per server+utente come i
 * preferiti e l'avanzamento.
 *
 * Una voce per film (`kind = "movie"`, chiave `vod_<id>`) e una sola per serie
 * (`kind = "series"`, chiave `series_<seriesId>`): per le serie la voce punta
 * all'episodio da riprendere, non a tutti quelli guardati.
 *
 * Tutti i campi hanno un valore predefinito: un archivio vecchio o parziale si
 * legge comunque, senza perdere le voci già valide.
 */
@Serializable
data class ContinueEntry(
    val key: String = "",
    val kind: String = KIND_MOVIE,
    val title: String = "",
    val poster: String? = null,
    val categoryId: String? = null,
    /** Ultimo aggiornamento: l'archivio è ordinato dal più recente. */
    val updatedAtMillis: Long = 0L,
    /** Nascosta con la pressione lunga finché il contenuto non viene ripreso. */
    val hidden: Boolean = false,
    // --- film ---
    val streamId: String? = null,
    val containerExtension: String? = null,
    // --- serie ---
    val seriesId: String? = null,
    val episodeId: String? = null,
    val seasonNumber: String? = null,
    val episodeNum: String? = null,
    val episodeTitle: String? = null,
    val episodeContainerExtension: String? = null,
) {

    val isMovie: Boolean get() = kind == KIND_MOVIE

    val isSeries: Boolean get() = kind == KIND_SERIES

    /** Riga "S2 E5" mostrata sotto il titolo della serie, `null` se incompleta. */
    val episodeLabel: String?
        get() {
            if (!isSeries) return null
            val season = seasonNumber?.trim().orEmpty()
            val number = episodeNum?.trim().orEmpty()
            if (season.isEmpty() || number.isEmpty()) return null
            return "S$season E$number"
        }

    companion object {
        const val KIND_MOVIE = "movie"
        const val KIND_SERIES = "series"

        /** Chiave della voce film, la stessa dell'avanzamento (`vod_<id>`). */
        fun movieKey(streamId: String): String = "vod_$streamId"

        /** Chiave della voce serie: una sola per serie. */
        fun seriesKey(seriesId: String): String = "series_$seriesId"

        fun movie(
            streamId: String,
            title: String,
            poster: String?,
            categoryId: String?,
            containerExtension: String?,
        ): ContinueEntry = ContinueEntry(
            key = movieKey(streamId),
            kind = KIND_MOVIE,
            title = title,
            poster = poster,
            categoryId = categoryId,
            streamId = streamId,
            containerExtension = containerExtension,
        )

        fun series(
            seriesId: String,
            title: String,
            poster: String?,
            categoryId: String?,
            episode: ContinueEpisode?,
        ): ContinueEntry = ContinueEntry(
            key = seriesKey(seriesId),
            kind = KIND_SERIES,
            title = title,
            poster = poster,
            categoryId = categoryId,
            seriesId = seriesId,
            episodeId = episode?.episodeId,
            seasonNumber = episode?.seasonNumber,
            episodeNum = episode?.episodeNum,
            episodeTitle = episode?.title,
            episodeContainerExtension = episode?.containerExtension,
        )
    }
}

/**
 * Episodio puntato dall'archivio. Non contiene credenziali né URL: il player
 * ricostruisce il flusso dall'id e dall'estensione del contenitore.
 */
data class ContinueEpisode(
    val episodeId: String,
    val seasonNumber: String?,
    val episodeNum: String?,
    val title: String?,
    val containerExtension: String?,
)

/**
 * Regole pure dell'archivio "Continua a guardare": nessun Android, nessuna
 * scrittura. Il player chiama [recordMovie] e [recordEpisode] a ogni
 * salvataggio dell'avanzamento; la UI chiama [hide] e [remove].
 */
object ContinueWatchingRules {

    /** Massimo numero di voci conservate (le più recenti). */
    const val MAX_ENTRIES = 30

    /** Voci visibili, dalla più recente. */
    fun visible(entries: List<ContinueEntry>): List<ContinueEntry> =
        entries.filterNot { it.hidden }.sortedByDescending { it.updatedAtMillis }

    fun find(entries: List<ContinueEntry>, key: String): ContinueEntry? =
        entries.firstOrNull { it.key == key }

    /** Inserisce o sostituisce la voce, la porta in cima e applica il limite. */
    fun upsert(entries: List<ContinueEntry>, entry: ContinueEntry): List<ContinueEntry> {
        if (entry.key.isEmpty()) return entries
        val rest = entries.filterNot { it.key == entry.key }
        return (listOf(entry) + rest)
            .sortedByDescending { it.updatedAtMillis }
            .take(MAX_ENTRIES)
    }

    /** Rimozione manuale: la voce resta nascosta finché non viene ripresa. */
    fun hide(entries: List<ContinueEntry>, key: String): List<ContinueEntry> {
        if (entries.none { it.key == key && !it.hidden }) return entries
        return entries.map { if (it.key == key) it.copy(hidden = true) else it }
    }

    fun remove(entries: List<ContinueEntry>, key: String): List<ContinueEntry> {
        if (entries.none { it.key == key }) return entries
        return entries.filterNot { it.key == key }
    }

    /**
     * Avanzamento di un film. Sotto i 30 s non si tocca nulla (come l'archivio
     * dell'avanzamento); oltre il 90% la voce sparisce.
     */
    fun recordMovie(
        entries: List<ContinueEntry>,
        movie: ContinueEntry,
        positionMillis: Long,
        durationMillis: Long,
        nowMillis: Long,
    ): List<ContinueEntry> {
        if (!WatchRules.shouldPersist(positionMillis)) return entries
        if (isFinished(positionMillis, durationMillis)) return remove(entries, movie.key)
        return upsert(entries, movie.copy(hidden = false, updatedAtMillis = nowMillis))
    }

    /**
     * Avanzamento di un episodio. Oltre il 90% la voce della serie punta
     * all'episodio successivo; se non c'è, la voce sparisce.
     */
    fun recordEpisode(
        entries: List<ContinueEntry>,
        series: ContinueEntry,
        nextEpisode: ContinueEpisode?,
        positionMillis: Long,
        durationMillis: Long,
        nowMillis: Long,
    ): List<ContinueEntry> {
        if (!WatchRules.shouldPersist(positionMillis)) return entries
        if (isFinished(positionMillis, durationMillis)) {
            if (nextEpisode == null) return remove(entries, series.key)
            return upsert(entries, series.copyFrom(nextEpisode).copy(hidden = false, updatedAtMillis = nowMillis))
        }
        return upsert(entries, series.copy(hidden = false, updatedAtMillis = nowMillis))
    }

    /** Visto quando la posizione raggiunge il 90% della durata nota. */
    fun isFinished(positionMillis: Long, durationMillis: Long): Boolean =
        WatchRules.isWatched(positionMillis, durationMillis)
}

/** Copia la voce della serie puntandola a un altro episodio della stessa serie. */
internal fun ContinueEntry.copyFrom(episode: ContinueEpisode): ContinueEntry = copy(
    episodeId = episode.episodeId,
    seasonNumber = episode.seasonNumber,
    episodeNum = episode.episodeNum,
    episodeTitle = episode.title,
    episodeContainerExtension = episode.containerExtension,
)
