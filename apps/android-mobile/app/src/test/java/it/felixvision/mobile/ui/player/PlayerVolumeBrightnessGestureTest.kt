@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.player

import android.content.Context
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableIntState
import androidx.compose.runtime.MutableLongState
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTouchInput
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.theme.FvpTheme
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Gesti verticali del player (volume a destra, luminosità a sinistra) con i
 * comandi visibili e nascosti, in verticale e in orizzontale, su Live e film.
 *
 * Il trascinamento è lento (oltre 1,5 s, in più passi) e durante il gesto
 * `duration` e `position` cambiano a ogni passo, esattamente come fa
 * `PlayerEngine.refresh()` ogni 500 ms: è la condizione che sul tablet reale
 * azzerava l'effetto dello scorrimento verticale.
 *
 * Regole del progetto rispettate: un solo `setContent` per test, funzioni
 * membro non importate, orologio iniettato letto dall'orologio virtuale del
 * test (`mainClock`), stati modificati sul thread principale, nessun indirizzo
 * o credenziale reale (il server è `http://server.esempio:8080`).
 */
@RunWith(AndroidJUnit4::class)
class PlayerVolumeBrightnessGestureTest {

    @get:Rule
    val rule = createAndroidComposeRule<androidx.activity.ComponentActivity>()

    // --- Volume e luminosità finti: registrano quello che il player imposta ---

    private class FakeVolumeControl(start: Int, override val max: Int) : VolumeControl {
        var level = start
        val calls = mutableListOf<Int>()

        override val current: Int
            get() = level

        override fun set(level: Int) {
            this.level = level.coerceIn(0, max)
            calls += this.level
        }
    }

    private class FakeBrightnessControl(start: Float) : BrightnessControl {
        var value = start
        val calls = mutableListOf<Float>()

        override val current: Float
            get() = value

        override fun set(value: Float) {
            this.value = value.coerceIn(0f, 1f)
            calls += this.value
        }

        var restores = 0

        override fun restore() {
            restores += 1
        }
    }

    // --- Test dei gesti verticali ---

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitLiveWithHiddenControlsChangesVolumeAndBrightness() {
        assertVerticalAdjustments(
            playbackType = MobilePlaybackType.LIVE,
            controlsVisible = false,
            volumeX = 700f,
            brightnessX = 100f,
            startY = 900f,
            endY = 400f,
        )
    }

    @Test
    @Config(sdk = [34], qualifiers = "w800dp-h1280dp-port-mdpi")
    fun portraitMovieWithVisibleControlsChangesVolumeAndBrightness() {
        assertVerticalAdjustments(
            playbackType = MobilePlaybackType.MOVIE,
            controlsVisible = true,
            volumeX = 700f,
            brightnessX = 100f,
            startY = 900f,
            endY = 400f,
        )
    }

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun landscapeLiveWithVisibleControlsChangesVolumeAndBrightness() {
        assertVerticalAdjustments(
            playbackType = MobilePlaybackType.LIVE,
            controlsVisible = true,
            volumeX = 1_100f,
            brightnessX = 100f,
            startY = 700f,
            endY = 250f,
        )
    }

    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun landscapeMovieWithHiddenControlsChangesVolumeAndBrightness() {
        assertVerticalAdjustments(
            playbackType = MobilePlaybackType.MOVIE,
            controlsVisible = false,
            volumeX = 1_100f,
            brightnessX = 100f,
            startY = 700f,
            endY = 250f,
        )
    }

    /**
     * Il trascinamento può iniziare sopra gli spazi vuoti della sovrapposizione
     * dei comandi: quei punti non devono assorbire il gesto, mentre i pulsanti
     * devono restare cliccabili.
     */
    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun dragOverEmptyControlsOverlaySpaceStillAdjustsVolumeAndButtonsStayClickable() {
        val harness = mount(
            playbackType = MobilePlaybackType.LIVE,
            controlsVisible = true,
        )

        // Punto vuoto della barra dei comandi (solo testo, nessun pulsante):
        // 60% della larghezza, sotto la soglia del bordo superiore.
        val emptyX = 1_280f * .6f
        rule.onNodeWithTag(GESTURE_SURFACE).performTouchInput { down(Offset(emptyX, 40f)) }
        var y = 40f
        repeat(STEPS) {
            harness.duration.longValue += 500L
            harness.position.longValue += 500L
            y += 30f
            rule.onNodeWithTag(GESTURE_SURFACE).performTouchInput { moveTo(Offset(emptyX, y), delayMillis = 150L) }
        }
        rule.onNodeWithTag(GESTURE_SURFACE).performTouchInput { up() }
        rule.waitForIdle()

        assertTrue(
            "lo spazio vuoto dei comandi ha assorbito il trascinamento: ${harness.volume.calls}",
            harness.volume.calls.isNotEmpty(),
        )
        assertTrue(
            "trascinando verso il basso il volume deve scendere: ${harness.volume.calls}",
            harness.volume.calls.last() < harness.volume.calls.first(),
        )

        rule.onNodeWithContentDescription("Tracce audio e sottotitoli").performClick()
        rule.waitForIdle()
        assertEquals(PlayerPanel.TRACKS, harness.openedPanel.value)
    }

    /**
     * Superata la soglia il gesto resta verticale: una deviazione orizzontale
     * successiva non deve cambiare canale (né diventare uno spostamento nel
     * tempo).
     */
    @Test
    @Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
    fun verticalDragThatLaterDeviatesHorizontallyDoesNotChangeChannel() {
        val harness = mount(
            playbackType = MobilePlaybackType.LIVE,
            controlsVisible = false,
        )
        val surface = rule.onNodeWithTag(GESTURE_SURFACE)

        surface.performTouchInput { down(Offset(1_000f, 700f)) }
        var y = 700f
        repeat(STEPS) {
            harness.duration.longValue += 500L
            harness.position.longValue += 500L
            y -= 30f
            surface.performTouchInput { moveTo(Offset(1_000f, y), delayMillis = 150L) }
        }
        // Ora devia in orizzontale, sempre con il dito premuto.
        var x = 1_000f
        repeat(STEPS) {
            x -= 60f
            surface.performTouchInput { moveTo(Offset(x, y), delayMillis = 150L) }
        }
        surface.performTouchInput { up() }
        rule.waitForIdle()

        assertEquals("canale cambiato da un gesto verticale", 0, harness.channels.intValue)
        assertTrue(
            "il gesto verticale non ha regolato il volume: ${harness.volume.calls}",
            harness.volume.calls.isNotEmpty(),
        )
        assertEquals(-1L, harness.seekedTo.longValue)
    }

    // --- Harness ---

    private class Harness(
        val volume: FakeVolumeControl,
        val brightness: FakeBrightnessControl,
        val channels: MutableIntState,
        val openedPanel: MutableState<PlayerPanel?>,
        val seekedTo: MutableLongState,
        val duration: MutableLongState,
        val position: MutableLongState,
    )

    private fun mount(
        playbackType: MobilePlaybackType,
        controlsVisible: Boolean,
    ): Harness {
        val engine = engineFor(
            if (playbackType == MobilePlaybackType.LIVE) liveSource() else movieSource(),
        )
        val state = Harness(
            volume = FakeVolumeControl(start = 3, max = 15),
            brightness = FakeBrightnessControl(start = .3f),
            channels = mutableIntStateOf(0),
            openedPanel = mutableStateOf(null),
            seekedTo = mutableLongStateOf(-1L),
            duration = mutableLongStateOf(120_000L),
            position = mutableLongStateOf(20_000L),
        )
        val durationState = state.duration
        val positionState = state.position
        rule.setContent {
            FvpTheme {
                GestureHarness(
                    engine = engine,
                    playbackType = playbackType,
                    controlsVisible = controlsVisible,
                    volume = state.volume,
                    brightness = state.brightness,
                    duration = durationState,
                    position = positionState,
                    channels = state.channels,
                    openedPanel = state.openedPanel,
                    seekedTo = state.seekedTo,
                    clockMillis = { rule.mainClock.currentTime },
                )
            }
        }
        rule.waitForIdle()
        return state
    }

    /**
     * Un trascinamento verticale lento sulla metà destra (volume) e poi sulla
     * metà sinistra (luminosità), con `duration` e `position` che cambiano a
     * ogni passo come in `refresh()`.
     */
    private fun assertVerticalAdjustments(
        playbackType: MobilePlaybackType,
        controlsVisible: Boolean,
        volumeX: Float,
        brightnessX: Float,
        startY: Float,
        endY: Float,
    ) {
        val harness = mount(playbackType = playbackType, controlsVisible = controlsVisible)

        slowVerticalDrag(volumeX, startY, endY, harness)
        assertIncreasing("volume", harness.volume.calls.map { it.toFloat() })

        slowVerticalDrag(brightnessX, startY, endY, harness)
        assertIncreasing("luminosità", harness.brightness.calls)
        assertEquals(0, harness.channels.intValue)
    }

    private fun slowVerticalDrag(startX: Float, startY: Float, endY: Float, harness: Harness) {
        val surface = rule.onNodeWithTag(GESTURE_SURFACE)
        surface.performTouchInput { down(Offset(startX, startY)) }
        for (step in 1..STEPS) {
            harness.duration.longValue += 500L
            harness.position.longValue += 500L
            val y = startY + (endY - startY) * step / STEPS
            surface.performTouchInput { moveTo(Offset(startX, y), delayMillis = STEP_MILLIS) }
            rule.waitForIdle()
        }
        surface.performTouchInput { up() }
        rule.waitForIdle()
    }

    private fun assertIncreasing(label: String, values: List<Float>) {
        assertTrue("$label: nessun valore impostato durante il trascinamento", values.isNotEmpty())
        assertTrue("$label: valori non crescenti $values", values == values.sorted())
        assertTrue("$label: valore iniziale e finale uguali $values", values.last() > values.first())
    }

    // --- Composizione di prova: lo stesso strato di gesti della produzione ---

    @Composable
    private fun GestureHarness(
        engine: PlayerEngine,
        playbackType: MobilePlaybackType,
        controlsVisible: Boolean,
        volume: VolumeControl,
        brightness: BrightnessControl,
        duration: MutableLongState,
        position: MutableLongState,
        channels: MutableIntState,
        openedPanel: MutableState<PlayerPanel?>,
        seekedTo: MutableLongState,
        clockMillis: () -> Long,
    ) {
        val context = LocalContext.current
        val density = LocalDensity.current.density
        val feedback = rememberPlayerGestureFeedback()
        val playerState = engine.state.copy(
            playbackType = playbackType,
            channelName = "Canale demo uno",
            duration = duration.longValue,
            position = position.longValue,
            controls = controlsVisible,
        )
        Box(
            modifier = Modifier
                .fillMaxSize()
                .testTag(GESTURE_SURFACE)
                .playerGestureLayer(
                    playbackType = playbackType,
                    duration = duration.longValue,
                    position = position.longValue,
                    feedback = feedback,
                    enabled = true,
                    density = density,
                    context = context,
                    activity = rule.activity,
                    volumeControl = volume,
                    brightnessControl = brightness,
                    onToggleControls = {},
                    onSeekBy = {},
                    onSeekTo = { seekedTo.longValue = it },
                    onNextChannel = { channels.intValue += 1 },
                    onPreviousChannel = { channels.intValue -= 1 },
                    onZoomMode = {},
                    gestureClockMillis = clockMillis,
                ),
        ) {
            if (controlsVisible) {
                ControlsOverlay(
                    state = playerState,
                    guidePrograms = emptyList(),
                    fit = true,
                    activity = null,
                    videoView = null,
                    engine = engine,
                    onExit = {},
                    onOpenPanel = { openedPanel.value = it },
                    onToggleFit = {},
                )
            }
            PlayerIndicators(feedback = feedback)
            Text(text = "canali: ${channels.intValue}")
        }
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

    private fun movieSource() = MobilePlaybackSource.Movie(
        VodStream(name = "Film demo", streamId = "001", containerExtension = "mp4"),
    )

    private companion object {
        const val GESTURE_SURFACE = "gesture_surface"

        /** 12 passi da 150 ms: oltre 1,5 s di trascinamento lento. */
        const val STEPS = 12
        const val STEP_MILLIS = 150L
    }
}
