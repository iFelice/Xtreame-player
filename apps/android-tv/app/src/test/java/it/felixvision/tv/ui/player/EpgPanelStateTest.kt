package it.felixvision.tv.ui.player

import it.felixvision.tv.data.epg.EpgProgram
import org.junit.Assert.assertEquals
import org.junit.Test

class EpgPanelStateTest {
    @Test fun loadingUnavailableAndProgramStates() {
        assertEquals(EpgPanelState.LOADING, epgPanelState(true, false, emptyList()))
        assertEquals(EpgPanelState.UNAVAILABLE, epgPanelState(false, true, emptyList()))
        assertEquals(EpgPanelState.PROGRAMS, epgPanelState(false, false, listOf(EpgProgram("Bosco stellato", "", 100, 200, false))))
        assertEquals(EpgPanelState.UNAVAILABLE, epgPanelState(false, false, emptyList()))
    }
}
