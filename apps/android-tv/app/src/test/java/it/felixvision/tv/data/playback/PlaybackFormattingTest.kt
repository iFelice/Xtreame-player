package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Test

class PlaybackFormattingTest {

    @Test
    fun `tempi sotto l'ora in mm ss`() {
        assertEquals("00:00", PlaybackFormatting.formatTime(0L))
        assertEquals("00:09", PlaybackFormatting.formatTime(9_900L))
        assertEquals("01:05", PlaybackFormatting.formatTime(65_000L))
        assertEquals("59:59", PlaybackFormatting.formatTime(3_599_000L))
    }

    @Test
    fun `tempi oltre l'ora in h mm ss`() {
        assertEquals("1:00:00", PlaybackFormatting.formatTime(3_600_000L))
        assertEquals("1:01:05", PlaybackFormatting.formatTime(3_665_000L))
        assertEquals("12:34:56", PlaybackFormatting.formatTime(45_296_000L))
    }

    @Test
    fun `posizioni negative mostrate come zero`() {
        assertEquals("00:00", PlaybackFormatting.formatTime(-5_000L))
    }
}
