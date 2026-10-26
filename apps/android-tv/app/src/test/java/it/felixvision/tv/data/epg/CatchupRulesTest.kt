package it.felixvision.tv.data.epg

import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CatchupRulesTest {
    private val now = 1_800_000_000L
    private val past = EpgProgram("Una sera lontana", "", now - 3_600L, now - 1_800L, true)

    @Test fun `replay richiede archive canale programma e retention valida`() {
        assertTrue(CatchupRules.isProgramReplayable(past, LiveStream(streamId = "001", tvArchive = 1, tvArchiveDuration = 7), now))
        assertFalse(CatchupRules.isProgramReplayable(past.copy(hasArchive = false), LiveStream(tvArchive = 1, tvArchiveDuration = 7), now))
        assertFalse(CatchupRules.isProgramReplayable(past, LiveStream(tvArchive = 0, tvArchiveDuration = 7), now))
        assertFalse(CatchupRules.isProgramReplayable(past, LiveStream(tvArchive = 1, tvArchiveDuration = 0), now))
        val twoDaysAgo = past.copy(start = now - 2 * 86_400L, end = now - 2 * 86_400L + 1_800L)
        assertFalse(CatchupRules.isProgramReplayable(twoDaysAgo, LiveStream(tvArchive = 1, tvArchiveDuration = 1), now))
        assertFalse(CatchupRules.isProgramReplayable(past.copy(start = now), LiveStream(tvArchive = 1, tvArchiveDuration = 7), now))
    }

    @Test fun `programma in onda richiede solo archive del canale`() {
        val current = EpgProgram("Luci sul lago", "", now - 60L, now + 60L, false)
        assertTrue(CatchupRules.isOnAir(current, now))
        assertTrue(CatchupRules.channelSupportsArchive(LiveStream(tvArchive = 1, tvArchiveDuration = 1)))
        assertFalse(CatchupRules.channelSupportsArchive(LiveStream(tvArchive = 0, tvArchiveDuration = 1)))
    }
}
