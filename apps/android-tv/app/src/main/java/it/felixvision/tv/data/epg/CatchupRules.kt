package it.felixvision.tv.data.epg

import it.felixvision.tv.data.catalog.LiveStream

/** Regole di disponibilità dell'archivio Xtream, indipendenti da Android. */
object CatchupRules {
    fun channelSupportsArchive(channel: LiveStream): Boolean = channel.tvArchive == 1 && (channel.tvArchiveDuration ?: 0) > 0

    fun isProgramReplayable(program: EpgProgram, channel: LiveStream, nowEpochSeconds: Long): Boolean {
        if (program.start >= nowEpochSeconds || !program.hasArchive || !channelSupportsArchive(channel)) return false
        val retentionStart = nowEpochSeconds - (channel.tvArchiveDuration ?: 0).toLong() * 86_400L
        return program.start >= retentionStart
    }

    fun isOnAir(program: EpgProgram, nowEpochSeconds: Long): Boolean =
        program.start <= nowEpochSeconds && nowEpochSeconds < program.end
}
