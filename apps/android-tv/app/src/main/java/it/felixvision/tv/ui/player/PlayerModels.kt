@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.common.TrackGroup
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.playback.ChannelNumberOverlay
import it.felixvision.tv.data.playback.ChannelNumbering
import it.felixvision.tv.data.playback.LiveStreamFormat
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.data.volume.PlayerVolume

/** Contenuto scelto nella scheda di origine. Non contiene credenziali. */
sealed interface PlaybackSource {

    data class Live(
        val channels: List<LiveStream>,
        val startIndex: Int,
        val categoryId: String?,
        val categoryName: String?,
        val allChannels: List<LiveStream> = channels,
        val categories: List<Category> = emptyList(),
        /** Numerazione dei tasti numerici: personale quando si arriva da "I miei canali". */
        val numbering: ChannelNumbering = ChannelNumbering.PROVIDER,
        /** Ritorno alla Guida e ripristino del punto selezionato dopo il fullscreen. */
        val returnToGuide: Boolean = false,
    ) : PlaybackSource

    data class Movie(
        val stream: VodStream,
        val categoryId: String?,
        val title: String,
    ) : PlaybackSource

    data class Series(
        val playback: SeriesPlayback,
    ) : PlaybackSource
}

/**
 * Sessione del player: credenziali in memoria per il tempo della riproduzione.
 * `toString` è sostituito per non poter mai finire in un log con la password.
 */
data class PlayerSession(
    val id: Long,
    val server: String,
    val username: String,
    val password: String,
    val allowedOutputFormats: List<String>,
    val source: PlaybackSource,
    /** Formato Live scelto nelle Impostazioni (`Automatico` se assente). */
    val liveFormat: LiveStreamFormat = LiveStreamFormat.DEFAULT,
    val serverTimezone: String? = null,
    /**
     * Vero quando il contenuto arriva da "Continua a guardare": la posizione
     * salvata riparte subito, senza la finestra "Riprendi".
     */
    val autoResume: Boolean = false,
) {
    override fun toString(): String = "PlayerSession(id=$id, source=$source)"
}

/** Informazioni restituite alla schermata di origine alla chiusura del player. */
data class PlayerExitInfo(
    val lastLiveChannelId: String? = null,
    val lastEpisodeId: String? = null,
)

enum class TrackPanelType {
    AUDIO,
    SUBTITLES,
}

/** Una traccia selezionabile dell'elenco Audio/Sottotitoli. */
data class TrackOption(
    val label: String,
    val group: TrackGroup,
    val trackIndex: Int,
    val selected: Boolean,
) {
    val id: String get() = "${group.id}:$trackIndex"
}

data class ChannelBanner(
    val number: Int?,
    val name: String,
    val categoryName: String?,
    val logoUrl: String?,
)

/**
 * Proposta del prossimo episodio. `countdownSeconds` resta `null` finché
 * non inizia il conto alla rovescia degli ultimi due minuti.
 */
data class NextEpisodePrompt(
    val title: String,
    val countdownSeconds: Int? = null,
    val canPostpone: Boolean = true,
    val minimized: Boolean = false,
)

data class PlayerUiState(
    val isReady: Boolean = false,
    val isPlaying: Boolean = false,
    val isBuffering: Boolean = false,
    val positionMillis: Long = 0L,
    val durationMillis: Long = 0L,
    val controlsVisible: Boolean = false,
    val banner: ChannelBanner? = null,
    val channelListVisible: Boolean = false,
    val trackPanel: TrackPanelType? = null,
    val audioTracks: List<TrackOption> = emptyList(),
    val subtitleTracks: List<TrackOption> = emptyList(),
    val subtitlesDisabled: Boolean = true,
    val errorMessage: String? = null,
    val resumePositionMillis: Long? = null,
    val nextEpisode: NextEpisodePrompt? = null,
    /** Formato della traccia audio in riproduzione, per esempio "Dolby Digital · 5.1". */
    val audioFormatLabel: String = "",
    /** Vero quando l'audio passa dal decoder dell'estensione FFmpeg. */
    val ffmpegActive: Boolean = false,
    val currentTitle: String = "",
    val currentChannelIndex: Int = 0,
    val totalChannels: Int = 0,
    val liveChannels: List<LiveStream> = emptyList(),
    val liveCategoryName: String? = null,
    /** Indicatore numerico in alto a destra nel Live (cifre o non trovato). */
    val channelNumberOverlay: ChannelNumberOverlay? = null,
    /** Livello del volume del player (0–15), non quello del televisore. */
    val volumeLevel: Int = PlayerVolume.DEFAULT_LEVEL,
    /** Vero mentre è aperto il pannello del volume. */
    val volumePanelVisible: Boolean = false,
    val epgVisible: Boolean = false,
    val epgLoading: Boolean = false,
    val epgPrograms: List<EpgProgram> = emptyList(),
    val epgUnavailable: Boolean = false,
    val epgExpanded: Long? = null,
    val isReplay: Boolean = false,
    /** Formato dello schermo in vigore: nel Live è quello del canale in onda. */
    val videoFormat: VideoFormat = VideoFormat.FIT,
    /** Vero mentre è aperto il pannello del formato dello schermo. */
    val formatPanelVisible: Boolean = false,
    /**
     * Avviso "Stai ancora guardando?" con il numero di episodi automatici
     * visti di fila (0 per Live, film e singolo episodio).
     */
    val stillWatchingEpisodes: Int? = null,
) {
    val progressFraction: Float
        get() = if (durationMillis <= 0L) {
            0f
        } else {
            (positionMillis.toFloat() / durationMillis.toFloat()).coerceIn(0f, 1f)
        }

    val hasModalOverlay: Boolean
        get() = trackPanel != null ||
            formatPanelVisible ||
            channelListVisible ||
            epgVisible ||
            stillWatchingEpisodes != null ||
            errorMessage != null ||
            resumePositionMillis != null ||
            (nextEpisode != null && !nextEpisode.minimized)
}
