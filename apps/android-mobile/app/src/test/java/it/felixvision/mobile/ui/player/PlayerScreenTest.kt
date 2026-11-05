@file:OptIn(
    androidx.media3.common.util.UnstableApi::class,
    androidx.compose.ui.test.ExperimentalTestApi::class,
)

package it.felixvision.mobile.ui.player

import android.app.Activity
import android.content.Context
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.click
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTouchInput
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.catalog.CatalogUiState
import it.felixvision.tv.data.catalog.Catalog
import kotlinx.coroutines.flow.MutableStateFlow
import it.felixvision.mobile.ui.theme.FvpTheme
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import java.util.concurrent.atomic.AtomicLong
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
class PlayerScreenTest {
    @get:Rule
    val rule = createAndroidComposeRule<androidx.activity.ComponentActivity>()

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun liveControlsExposePlayPauseWithoutSeeking() {
        var clicks = 0
        rule.setContent {
            FvpTheme {
                PlayerControls(
                    state = MobilePlayerState(playbackType = MobilePlaybackType.LIVE),
                    currentProgram = null,
                    nowMillis = 0L,
                    isFit = true,
                    onBack = {}, onTracks = {}, onFit = {}, onPip = {},
                    onPlayPause = { clicks++ }, onSeek = {}, onSeekBy = {},
                )
            }
        }
        rule.onNodeWithTag("player_play_pause", useUnmergedTree = true).assertIsDisplayed().performClick()
        rule.onNodeWithContentDescription("Indietro di dieci secondi").assertDoesNotExist()
        rule.onNodeWithContentDescription("Avanti di dieci secondi").assertDoesNotExist()
        assertEquals(1, clicks)
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitMovieShowsDetailsWithoutGuideOrChannelTabs() {
        val engine = engineFor(MobilePlaybackSource.Movie(movie()))
        val movieState = engine.state.copy(playbackType = MobilePlaybackType.MOVIE)
        rule.setContent {
            FvpTheme {
                Column(Modifier.fillMaxSize()) {
                    PlayerPortraitContent(
                        state = movieState,
                        guidePrograms = emptyList(),
                        guideLoading = false,
                        movieInfo = null,
                        portraitPanel = PlayerPanel.GUIDE,
                        engine = engine,
                        onPanelChange = {},
                    )
                }
            }
        }

        rule.onNodeWithText("Film demo").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_guide").assertDoesNotExist()
        rule.onNodeWithTag("player_tab_channels").assertDoesNotExist()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitEpisodeShowsQueueWithoutLiveTabs() {
        val episode = MobileEpisodeRef("episode-001", "Episodio demo", "mp4", "1", "1")
        val source = MobilePlaybackSource.Episode(
            episodeId = episode.id,
            title = episode.title,
            seriesTitle = "Serie demo",
            extension = episode.extension,
            seriesId = "series-001",
            categoryId = "001",
            poster = null,
            queue = listOf(episode),
        )
        val engine = engineFor(source)
        rule.setContent {
            FvpTheme {
                Column(Modifier.fillMaxSize()) {
                    PlayerPortraitContent(
                        state = engine.state.copy(playbackType = MobilePlaybackType.EPISODE),
                        guidePrograms = emptyList(),
                        guideLoading = false,
                        movieInfo = null,
                        portraitPanel = PlayerPanel.GUIDE,
                        engine = engine,
                        onPanelChange = {},
                    )
                }
            }
        }

        rule.onNodeWithText("Serie demo").assertIsDisplayed()
        rule.onNodeWithText("Stagione 1").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_guide").assertDoesNotExist()
        rule.onNodeWithTag("player_tab_channels").assertDoesNotExist()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitLiveCanSwitchBetweenAccessibleGuideAndChannelPanels() {
        val engine = engineFor(liveSource())
        rule.setContent {
            FvpTheme {
                var selected by remember { mutableStateOf(PlayerPanel.CHANNELS) }
                PlayerPortraitBrowsePanel(
                    panel = selected,
                    playbackSource = engine.playbackSource,
                    state = engine.state,
                    engine = engine,
                    programs = emptyList(),
                    guideLoading = false,
                    onPanelChange = { selected = it },
                )
            }
        }

        rule.onNodeWithTag("player_channel_stream-001").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_guide").performClick()
        rule.onNodeWithText("Guida non disponibile").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_channels").performClick()
        rule.onNodeWithTag("player_channel_stream-001").assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitCatchupOffersAnAccessibleReturnToLiveAction() {
        val channel = LiveStream(
            name = "Canale demo uno",
            streamId = "stream-001",
            categoryId = "001",
            tvArchive = 1,
            tvArchiveDuration = 7,
        )
        val source = MobilePlaybackSource.Catchup(
            stream = channel,
            title = "Programma demo",
            start = 1_000_000L,
            duration = 3_600L,
            timezone = null,
        )
        val engine = engineFor(source)
        rule.setContent {
            FvpTheme {
                Column(Modifier.fillMaxSize()) {
                    PlayerPortraitContent(
                        state = engine.state.copy(playbackType = MobilePlaybackType.CATCHUP),
                        guidePrograms = emptyList(),
                        guideLoading = false,
                        movieInfo = null,
                        portraitPanel = PlayerPanel.GUIDE,
                        engine = engine,
                        onPanelChange = {},
                    )
                }
            }
        }

        rule.onNodeWithText("Torna alla diretta").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_channels").assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun playerClosesOnlyWhenTheCurrentChannelBecomesHidden() {
        val source = liveSource()
        val engine = engineFor(source)
        val visibility = MutableStateFlow(CatalogUiState(isLoading = false, catalog = Catalog(liveStreams = source.channels)))
        var exits = 0
        rule.setContent { PlayerVisibilityObserver(engine, visibility) { exits++ } }
        rule.waitForIdle()
        rule.runOnIdle {
            visibility.value = visibility.value.copy(catalog = Catalog(liveStreams = listOf(source.channels.first())))
        }
        rule.waitForIdle()
        assertEquals(0, exits)
        assertEquals(listOf("stream-001"), engine.zappingChannels.map { it.streamId })
        rule.runOnIdle {
            visibility.value = visibility.value.copy(catalog = Catalog(liveStreams = listOf(source.channels.last())))
        }
        rule.waitForIdle()
        assertEquals(1, exits)
    }

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun channelsPanelUpdatesWhenVisibilityChanges() {
        val engine = engineFor(liveSource())
        rule.setContent {
            FvpTheme {
                PlayerOverlayPanel(
                    panel = PlayerPanel.CHANNELS,
                    playbackSource = engine.playbackSource,
                    state = engine.state,
                    engine = engine,
                    programs = emptyList(),
                    guideLoading = false,
                    onClose = {},
                )
            }
        }
        rule.runOnIdle { engine.setVisibleChannels(setOf("stream-002")) }
        rule.onNodeWithTag("player_channel_stream-001", useUnmergedTree = true).assertDoesNotExist()
        rule.onNodeWithTag("player_channel_stream-002", useUnmergedTree = true).assertIsDisplayed()
        rule.runOnIdle { engine.setVisibleChannels(null) }
        rule.onNodeWithTag("player_channel_stream-001", useUnmergedTree = true).assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun landscapeUsesTheOverlayPanelWithoutPortraitTabs() {
        val engine = engineFor(liveSource())
        rule.setContent {
            FvpTheme {
                PlayerOverlayPanel(
                    panel = PlayerPanel.CHANNELS,
                    playbackSource = engine.playbackSource,
                    state = engine.state,
                    engine = engine,
                    programs = emptyList(),
                    guideLoading = false,
                    onClose = {},
                )
            }
        }

        rule.onNodeWithText("Canali").assertIsDisplayed()
        rule.onNodeWithTag("player_channel_stream-002").assertIsDisplayed()
        rule.onNodeWithTag("player_tab_guide").assertDoesNotExist()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun playerCommandsExposeSemanticNamesAndInvokeActions() {
        val engine = engineFor(MobilePlaybackSource.Movie(movie()))
        var playPauseCount = 0
        var tracksCount = 0
        rule.setContent {
            FvpTheme {
                PlayerControls(
                    state = engine.state.copy(
                        playbackType = MobilePlaybackType.MOVIE,
                        playing = true,
                        duration = 100_000L,
                    ),
                    currentProgram = null,
                    nowMillis = 1_000_000L,
                    isFit = true,
                    onBack = {},
                    onTracks = { tracksCount += 1 },
                    onFit = {},
                    onPip = {},
                    onPlayPause = { playPauseCount += 1 },
                    onSeek = {},
                    onSeekBy = {},
                )
            }
        }

        rule.onNodeWithContentDescription("Metti in pausa").assertIsDisplayed().performClick()
        rule.onNodeWithContentDescription("Tracce audio e sottotitoli").performClick()
        assertEquals(1, playPauseCount)
        assertEquals(1, tracksCount)
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun singleTapTogglesControls() {
        val clock = AtomicLong(0L)
        rule.setContent {
            FvpTheme {
                GestureTestSurface(
                    activity = rule.activity,
                    playbackType = MobilePlaybackType.LIVE,
                    clockMillis = { clock.addAndGet(10L) },
                )
            }
        }

        rule.onNodeWithText("Controls visible").assertIsDisplayed()
        rule.onNodeWithTag("gesture_surface").performTouchInput { click() }
        rule.mainClock.advanceTimeBy(500L)
        rule.onNodeWithText("Controls hidden").assertIsDisplayed()
        rule.onNodeWithTag("gesture_surface").performTouchInput { click() }
        rule.mainClock.advanceTimeBy(500L)
        rule.onNodeWithText("Controls visible").assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun liveSwipeZapsToTheNextChannel() {
        val clock = AtomicLong(0L)
        rule.setContent {
            FvpTheme {
                GestureTestSurface(
                    activity = rule.activity,
                    playbackType = MobilePlaybackType.LIVE,
                    clockMillis = { clock.addAndGet(10L) },
                )
            }
        }

        rule.onNodeWithTag("gesture_surface").performTouchInput {
            down(position = androidx.compose.ui.geometry.Offset(500f, 600f))
            moveTo(
                position = androidx.compose.ui.geometry.Offset(200f, 600f),
                delayMillis = 100L,
            )
            up()
        }
        rule.onNodeWithText("Next channels: 1").assertIsDisplayed()
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun catchupSwipeScrubsToANewPosition() {
        val clock = AtomicLong(0L)
        val seekedTo = AtomicLong(20_000L)
        rule.setContent {
            FvpTheme {
                GestureTestSurface(
                    activity = rule.activity,
                    playbackType = MobilePlaybackType.CATCHUP,
                    positionMillis = 20_000L,
                    durationMillis = 100_000L,
                    seekedTo = seekedTo,
                    clockMillis = { clock.addAndGet(10L) },
                )
            }
        }

        rule.onNodeWithTag("gesture_surface").performTouchInput {
            down(position = androidx.compose.ui.geometry.Offset(300f, 600f))
            moveTo(
                position = androidx.compose.ui.geometry.Offset(600f, 600f),
                delayMillis = 100L,
            )
            up()
        }
        assertTrue(seekedTo.get() > 20_000L)
        rule.mainClock.advanceTimeByFrame()
    }

    private fun engineFor(source: MobilePlaybackSource): PlayerEngine {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val container = AppContainer(context)
        val session = MobilePlayerSession(
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            formats = listOf("mp4"),
            source = source,
        )
        return PlayerEngine(context, container, session)
    }

    private fun liveSource() = MobilePlaybackSource.Live(
        channels = listOf(
            LiveStream(name = "Canale demo uno", streamId = "stream-001", categoryId = "001"),
            LiveStream(name = "Canale demo due", streamId = "stream-002", categoryId = "001"),
        ),
        startIndex = 0,
        categoryName = "001",
    )

    private fun movie() = VodStream(
        name = "Film demo",
        streamId = "001",
        containerExtension = "mp4",
    )

    @Composable
    private fun GestureTestSurface(
        activity: Activity,
        playbackType: MobilePlaybackType,
        positionMillis: Long = 0L,
        durationMillis: Long = 0L,
        seekedTo: AtomicLong = AtomicLong(positionMillis),
        clockMillis: () -> Long,
    ) {
        val context = LocalContext.current
        val density = LocalDensity.current.density
        val feedback = rememberPlayerGestureFeedback()
        var controls by remember { mutableStateOf(true) }
        var nextChannels by remember { mutableIntStateOf(0) }
        var position by remember { mutableStateOf(positionMillis) }

        PlayerIndicatorTimeout(feedback)
        Box(
            modifier = Modifier
                .fillMaxSize()
                .testTag("gesture_surface")
                .playerGestureLayer(
                    playbackType = playbackType,
                    duration = durationMillis,
                    position = position,
                    feedback = feedback,
                    enabled = true,
                    density = density,
                    context = context,
                    activity = activity,
                    onToggleControls = { controls = !controls },
                    onSeekBy = { seconds ->
                        position += seconds * 1_000L
                        seekedTo.set(position)
                    },
                    onSeekTo = {
                        position = it
                        seekedTo.set(it)
                    },
                    onNextChannel = { nextChannels += 1 },
                    onPreviousChannel = { nextChannels -= 1 },
                    onZoomMode = {},
                    gestureClockMillis = clockMillis,
                ),
        ) {
            androidx.compose.material3.Text(if (controls) "Controls visible" else "Controls hidden")
            androidx.compose.material3.Text("Next channels: $nextChannels")
            androidx.compose.material3.Text("Position: $position")
            PlayerIndicators(feedback)
        }
    }
}
