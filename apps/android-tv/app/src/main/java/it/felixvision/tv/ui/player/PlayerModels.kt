@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.common.TrackGroup
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.playback.SeriesPlayback

/** Contenuto scelto nella scheda di origine. Non contiene credenziali. */
sealed interface PlaybackSource {

    data class Live(
        val channels: List<LiveStream>,
        val startIndex: Int,
        val categoryId: String?,
        val categoryName: String?,
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

data class NextEpisodePrompt(
    val title: String,
    val secondsRemaining: Int,
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
    val currentTitle: String = "",
    val currentChannelIndex: Int = 0,
    val totalChannels: Int = 0,
) {
    val progressFraction: Float
        get() = if (durationMillis <= 0L) {
            0f
        } else {
            (positionMillis.toFloat() / durationMillis.toFloat()).coerceIn(0f, 1f)
        }

    val hasModalOverlay: Boolean
        get() = trackPanel != null ||
            channelListVisible ||
            errorMessage != null ||
            resumePositionMillis != null ||
            nextEpisode != null
}
