package it.felixvision.mobile.ui.player

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.epg.EpgProgram

/** Come sulla TV: il programma in onda è disponibile dall'inizio se il canale ha archivio. */
internal fun canReplayProgram(program: EpgProgram, channel: LiveStream, nowSeconds: Long): Boolean =
    if (CatchupRules.isOnAir(program, nowSeconds)) CatchupRules.channelSupportsArchive(channel)
    else CatchupRules.isProgramReplayable(program, channel, nowSeconds)
