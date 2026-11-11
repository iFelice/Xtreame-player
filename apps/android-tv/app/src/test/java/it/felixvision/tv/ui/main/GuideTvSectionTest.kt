package it.felixvision.tv.ui.main

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.epg.GuideEpgDataSource
import it.felixvision.tv.data.epg.GuideEpgSnapshot
import it.felixvision.tv.data.playback.VideoFormat
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.player.GuidePreviewPlayer
import it.felixvision.tv.ui.player.GuidePreviewPlayerFactory
import it.felixvision.tv.ui.theme.FvpTheme
import java.time.Instant
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class GuideTvSectionTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `tre colonne canale senza guida e primo e secondo OK`() {
        val nowMillis = Instant.parse("2026-11-06T10:30:00Z").toEpochMilli()
        val program = EpgProgram(
            title = "Rassegna del mattino",
            description = "Notizie, meteo e approfondimenti.",
            start = nowMillis / 1_000L - 600L,
            end = nowMillis / 1_000L + 1_800L,
            hasArchive = false,
        )
        val category = Category(categoryId = "live-1", categoryName = "Generale")
        val channels = listOf(
            LiveStream(streamId = "001", name = "Canale Guida", categoryId = "live-1", epgChannelId = "guide.xml"),
            LiveStream(streamId = "002", name = "Canale senza EPG", categoryId = "live-1", epgChannelId = null),
        )
        val dataSource = FakeGuideDataSource(
            GuideEpgSnapshot(
                xmlTvPrograms = mapOf("guide.xml" to listOf(program)),
                xmlTvResolved = true,
            ),
        )
        val previewFactory = FakePreviewFactory()
        val fullscreenChannels = mutableListOf<String>()
        val clock = Clock { nowMillis }
        val programTag = "guide_program_001_${program.start}"

        rule.setContent {
            val contentFocusRequester = remember { FocusRequester() }
            FvpTheme {
                GuideTvSection(
                    contentFocusRequester = contentFocusRequester,
                    modifier = Modifier.fillMaxSize(),
                    categories = listOf(category),
                    streams = channels,
                    guideDataSource = dataSource,
                    server = "http://server.esempio:8080",
                    username = "demo",
                    password = "demo",
                    scale = UiScale(1f),
                    clock = clock,
                    onPlayFullscreen = { channel, selectedCategory, _ ->
                        assertEquals("live-1", selectedCategory.id)
                        fullscreenChannels += channel.streamId
                    },
                    previewPlayerFactory = previewFactory,
                )
            }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                runCatching { contentFocusRequester.requestFocus() }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("guide_category_column").assertExists()
        rule.onNodeWithTag("guide_channel_column").assertExists()
        rule.onNodeWithTag("guide_epg_column").assertExists()
        rule.onNodeWithText("Generale").assertIsDisplayed()
        rule.onNodeWithText("Nessuna guida").assertIsDisplayed()
        rule.onNodeWithTag("guide_no_program_002").assertExists()
        rule.onNodeWithTag("guide_category_live-1").assertIsFocused()

        // Categoria → primo canale → canale successivo senza guida: i dettagli
        // mostrano il nome e la spiegazione richiesta.
        rule.onNodeWithTag("guide_category_live-1").performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        rule.onNodeWithTag("guide_channel_001").assertIsFocused()
        rule.onNodeWithTag("guide_channel_001").performKeyInput { pressKey(Key.DirectionRight) }
        rule.waitForIdle()
        rule.onNodeWithTag(programTag).assertIsFocused()
        rule.onNodeWithTag(programTag).performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("guide_channel_002").assertIsFocused()
        rule.onNodeWithTag("guide_details_title").assertTextEquals("Canale senza EPG")
        rule.onNodeWithText("Guida non disponibile per questo canale").assertIsDisplayed()

        // Torna al programma e invia due OK: il primo avvia la preview fake,
        // il secondo la rilascia prima di chiedere il fullscreen.
        rule.onNodeWithTag("guide_channel_002").performKeyInput { pressKey(Key.DirectionUp) }
        rule.waitForIdle()
        rule.onNodeWithTag(programTag).assertIsFocused()
        rule.onNodeWithTag(programTag).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        assertEquals(1, previewFactory.createCount)
        assertEquals(0, fullscreenChannels.size)

        rule.onNodeWithTag(programTag).performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        assertEquals(listOf("001"), fullscreenChannels)
        assertEquals(1, previewFactory.releaseCount)
    }

    private class FakeGuideDataSource(
        private val snapshot: GuideEpgSnapshot,
    ) : GuideEpgDataSource {
        override fun observe(server: String, username: String): Flow<GuideEpgSnapshot> =
            MutableStateFlow(snapshot)

        override suspend fun loadVisible(
            server: String,
            username: String,
            password: String,
            channels: List<LiveStream>,
        ) = Unit
    }

    private class FakePreviewFactory : GuidePreviewPlayerFactory {
        var createCount = 0
        var releaseCount = 0

        override fun create(
            context: Context,
            streamUrl: String,
            title: String,
            videoFormat: VideoFormat,
            volumeLevel: Int,
        ): GuidePreviewPlayer {
            createCount++
            assertEquals("http://server.esempio:8080/live/demo/demo/001.ts", streamUrl)
            assertEquals("Canale Guida", title)
            assertEquals(VideoFormat.FIT, videoFormat)
            return object : GuidePreviewPlayer {
                override val player = null
                override val isBuffering = MutableStateFlow(false)
                override fun release() {
                    releaseCount++
                }
            }
        }
    }
}
