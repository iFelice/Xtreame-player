package it.felixvision.mobile.ui.player

import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import it.felixvision.tv.data.epg.EpgProgram

/**
 * Contenuto sotto il video in verticale. Il pannello finisce sopra la barra di
 * navigazione: le barre restano visibili in questa modalità.
 */
@androidx.media3.common.util.UnstableApi
@Composable
fun ColumnScope.PlayerPortraitContent(
    state: MobilePlayerState,
    guidePrograms: List<EpgProgram>,
    guideLoading: Boolean,
    movieInfo: it.felixvision.tv.data.catalog.VodInfoResponse?,
    portraitPanel: PlayerPanel,
    engine: PlayerEngine,
    onPanelChange: (PlayerPanel) -> Unit,
) {
    when (state.playbackType) {
        MobilePlaybackType.LIVE,
        MobilePlaybackType.CATCHUP,
        -> PlayerPortraitBrowsePanel(
            panel = portraitPanel,
            playbackSource = engine.playbackSource,
            state = state,
            engine = engine,
            programs = guidePrograms,
            guideLoading = guideLoading,
            onPanelChange = onPanelChange,
            modifier = Modifier.weight(1f).windowInsetsPadding(WindowInsets.navigationBars),
        )
        MobilePlaybackType.EPISODE -> {
            val episode = engine.playbackSource as? MobilePlaybackSource.Episode
            if (episode != null) {
                PlayerEpisodePanel(
                    source = episode,
                    state = state,
                    engine = engine,
                    modifier = Modifier.weight(1f).windowInsetsPadding(WindowInsets.navigationBars),
                )
            }
        }
        MobilePlaybackType.MOVIE -> MovieInfoPanel(
            source = engine.playbackSource as? MobilePlaybackSource.Movie,
            movieInfo = movieInfo,
            modifier = Modifier.weight(1f).windowInsetsPadding(WindowInsets.navigationBars),
        )
    }
}
