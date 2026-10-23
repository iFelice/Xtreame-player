package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class AudioFormatLabelsTest {

    @Test
    fun `mime audio riconosciuti con il nome commerciale`() {
        assertEquals("Dolby Digital", AudioFormatLabels.formatName("audio/ac3"))
        assertEquals("Dolby Digital Plus", AudioFormatLabels.formatName("audio/eac3"))
        assertEquals("Dolby Atmos", AudioFormatLabels.formatName("audio/eac3-joc"))
        assertEquals("Dolby AC-4", AudioFormatLabels.formatName("audio/ac4"))
        assertEquals("AAC", AudioFormatLabels.formatName("audio/mp4a-latm"))
        assertEquals("MP3", AudioFormatLabels.formatName("audio/mpeg"))
    }

    @Test
    fun `le varianti DTS distinguono DTS e DTS-HD`() {
        assertEquals("DTS", AudioFormatLabels.formatName("audio/vnd.dts"))
        assertEquals("DTS-HD", AudioFormatLabels.formatName("audio/vnd.dts.hd"))
        assertEquals("DTS-HD", AudioFormatLabels.formatName("audio/vnd.dts.uhd"))
    }

    @Test
    fun `mime sconosciuto abbreviato in maiuscolo`() {
        assertEquals("OPUS", AudioFormatLabels.formatName("audio/opus"))
        assertEquals("FLAC", AudioFormatLabels.formatName("AUDIO/FLAC"))
        assertEquals("", AudioFormatLabels.formatName(null))
        assertEquals("", AudioFormatLabels.formatName("   "))
    }

    @Test
    fun `canali mostrati come nei sintoamplificatori`() {
        assertNull(AudioFormatLabels.channelsLabel(null))
        assertNull(AudioFormatLabels.channelsLabel(0))
        assertNull(AudioFormatLabels.channelsLabel(-2))
        assertEquals("1.0", AudioFormatLabels.channelsLabel(1))
        assertEquals("2.0", AudioFormatLabels.channelsLabel(2))
        assertEquals("5.1", AudioFormatLabels.channelsLabel(6))
        assertEquals("7.1", AudioFormatLabels.channelsLabel(8))
    }

    @Test
    fun `etichetta completa con formato e canali`() {
        assertEquals(
            "Dolby Digital Plus · 5.1",
            AudioFormatLabels.label("audio/eac3", 6),
        )
        assertEquals("Dolby Atmos · 7.1", AudioFormatLabels.label("audio/eac3-joc", 8))
        assertEquals("AAC", AudioFormatLabels.label("audio/mp4a-latm", null))
        assertEquals("2.0", AudioFormatLabels.label(null, 2))
        assertEquals("", AudioFormatLabels.label(null, null))
    }

    @Test
    fun `riconoscimento del decoder FFmpeg`() {
        assertTrue(AudioFormatLabels.isFfmpegDecoder("ffmpeg6.0-ac3"))
        assertTrue(AudioFormatLabels.isFfmpegDecoder("FFmpeg-ac3"))
        assertFalse(AudioFormatLabels.isFfmpegDecoder("c2.android.ac3.decoder"))
        assertFalse(AudioFormatLabels.isFfmpegDecoder("OMX.google.aac.decoder"))
        assertFalse(AudioFormatLabels.isFfmpegDecoder(null))
    }
}
