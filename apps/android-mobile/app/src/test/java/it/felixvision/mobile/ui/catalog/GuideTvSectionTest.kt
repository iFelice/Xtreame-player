package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.epg.EpgProgram
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class GuideTvSectionTest {
    @Test fun timelineClipsProgramsToWindow() {
        val program = EpgProgram("Programma demo", "", 50, 150, false)
        assertEquals(0L to 50L, guideInterval(program, 100, 200))
        assertEquals(50L to 50L, guideInterval(program, 0, 100))
        assertEquals(50L to 100L, guideInterval(program, 0, 200))
        assertNull(guideInterval(program, 150, 200))
    }
}
