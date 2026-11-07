package it.felixvision.tv.ui.main

import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.playback.ChannelNumbering
import it.felixvision.tv.ui.player.PlaybackSource
import org.junit.Assert.assertEquals
import org.junit.Test

class PlayerReturnTest {

    @Test
    fun `live con numerazione personale torna a I miei canali`() {
        assertEquals(
            PlayerReturnTarget.MY_CHANNELS,
            playerReturnTarget(
                PlaybackSource.Live(
                    channels = emptyList(),
                    startIndex = 0,
                    categoryId = null,
                    categoryName = null,
                    numbering = ChannelNumbering.PERSONAL,
                ),
            ),
        )
    }

    @Test
    fun `live con numerazione provider torna a live`() {
        assertEquals(
            PlayerReturnTarget.LIVE,
            playerReturnTarget(
                PlaybackSource.Live(
                    channels = emptyList(),
                    startIndex = 0,
                    categoryId = null,
                    categoryName = null,
                    numbering = ChannelNumbering.PROVIDER,
                ),
            ),
        )
    }

    @Test
    fun `live aperto dalla guida torna alla guida`() {
        assertEquals(
            PlayerReturnTarget.GUIDE,
            playerReturnTarget(
                PlaybackSource.Live(
                    channels = emptyList(),
                    startIndex = 0,
                    categoryId = "1",
                    categoryName = "News",
                    returnToGuide = true,
                ),
            ),
        )
    }

    @Test
    fun `film non ha destinazione live`() {
        assertEquals(
            PlayerReturnTarget.NONE,
            playerReturnTarget(PlaybackSource.Movie(stream = VodStream(), categoryId = null, title = "Film")),
        )
    }
}
