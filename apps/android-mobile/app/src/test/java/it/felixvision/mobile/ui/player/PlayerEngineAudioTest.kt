@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.player

import android.app.Application
import android.content.Context
import android.media.AudioManager
import androidx.test.core.app.ApplicationProvider
import it.felixvision.mobile.AppContainer
import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class PlayerEngineAudioTest {
    @Test
    fun rapidZappingKeepsPlayerAndOnlyExoplayerOwnsFocusAndNoisyReceiver() {
        val app = ApplicationProvider.getApplicationContext<Application>()
        val source = MobilePlaybackSource.Live(
            listOf(
                LiveStream(name = "Uno", streamId = "1", categoryId = "1"),
                LiveStream(name = "Due", streamId = "2", categoryId = "1"),
            ), 0, "1",
        )
        val engine = PlayerEngine(app, AppContainer(app), MobilePlayerSession(
            server = "http://example.invalid", username = "demo", password = "demo",
            formats = listOf("ts"), source = source,
        ))
        try {
            engine.start()
            val player = engine.player
            assertNotNull(player)
            val audio = shadowOf(app.getSystemService(Context.AUDIO_SERVICE) as AudioManager)
            val firstFocus = audio.lastAudioFocusRequest
            assertNotNull(firstFocus)
            // On API 34 Media3 uses AudioFocusRequest; the old engine used the legacy overload.
            assertNotNull(firstFocus.audioFocusRequest)
            repeat(10) { index ->
                if (index % 2 == 0) engine.nextChannel() else engine.previousChannel()
                assertSame(player, engine.player)
                assertTrue(player!!.playWhenReady)
                assertSame(firstFocus.listener, audio.lastAudioFocusRequest.listener)
                assertNotNull(audio.lastAudioFocusRequest.audioFocusRequest)
                val noisyReceivers = shadowOf(app).registeredReceivers.count {
                    it.intentFilter.hasAction(AudioManager.ACTION_AUDIO_BECOMING_NOISY)
                }
                assertTrue(noisyReceivers <= 1)
            }
            assertEquals(0, (engine.playbackSource as MobilePlaybackSource.Live).startIndex)
        } finally {
            engine.close()
        }
    }
}
