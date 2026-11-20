package it.felixvision.mobile.ui.player

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.EpgProgram
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReplayRulesTest {
    private val channel = LiveStream(streamId = "001", tvArchive = 1, tvArchiveDuration = 1)
    private fun program(start: Long, end: Long, archive: Boolean) = EpgProgram("Programma demo", "", start, end, archive)

    @Test fun onAirDoesNotRequireProgramArchiveFlag() {
        assertTrue(canReplayProgram(program(100, 200, false), channel, 150))
        assertFalse(canReplayProgram(program(100, 200, false), channel.copy(tvArchive = 0), 150))
    }

    @Test fun pastAndFutureKeepArchiveRules() {
        assertTrue(canReplayProgram(program(100, 200, true), channel, 300))
        assertFalse(canReplayProgram(program(100, 200, false), channel, 300))
        assertFalse(canReplayProgram(program(400, 500, true), channel, 300))
        assertFalse(canReplayProgram(program(100, 200, true), channel, 100_000))
    }
}
