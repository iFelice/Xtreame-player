package it.felixvision.tv.ui.main

import it.felixvision.tv.data.playback.ChannelNumbering
import it.felixvision.tv.ui.player.PlaybackSource

/** Sezione da ripristinare quando si chiude il player. */
enum class PlayerReturnTarget { LIVE, MY_CHANNELS, NONE }

/** Determina la destinazione di ritorno in base alla sorgente della sessione. */
fun playerReturnTarget(source: PlaybackSource): PlayerReturnTarget = when (source) {
    is PlaybackSource.Live -> if (source.numbering == ChannelNumbering.PERSONAL) {
        PlayerReturnTarget.MY_CHANNELS
    } else {
        PlayerReturnTarget.LIVE
    }
    is PlaybackSource.Movie, is PlaybackSource.Series -> PlayerReturnTarget.NONE
}
