package it.felixvision.tv.ui.player

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.ComponentActivity
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEvent
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performKeyPress
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.test.requestFocus
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.player.ZappingChannelStatus
import it.felixvision.tv.player.ZappingController
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Zapping automatico nel player Live, come lo monta [PlayerScreen]: pulsante
 * "Zapping" nella barra info che si apre con OK, indicatore dei secondi,
 * arresto con un tasto qualsiasi e domanda di fine lista con Indietro.
 *
 * La scena riproduce in piccolo il player (radice focalizzata, barra info del
 * Live, barra comandi di film e serie) perché la schermata intera richiede
 * ExoPlayer; la logica del tempo è quella vera di [PlayerZapping] con un
 * orologio finto pilotato dal test. Un solo `setContent` per test e clic
 * tv-material con `performSemanticsAction(SemanticsActions.OnClick)`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerZappingTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Orologio finto: il test decide quando passa il tempo. */
    private class FakeClock(var now: Long = 0L) : Clock {
        override fun nowMillis(): Long = now
    }

    /**
     * Player in miniatura: OK apre la barra info nel Live (o la barra comandi
     * per film e serie), la radice del player ferma lo zapping a ogni tasto.
     */
    private fun showPlayer(
        live: () -> Boolean,
        zapping: PlayerZapping,
        startIndex: () -> Int = { 0 },
        listSize: () -> Int = { 3 },
    ) {
        rule.setContent {
            FvpTheme {
                var bannerVisible by remember { mutableStateOf(false) }
                var controlsVisible by remember { mutableStateOf(false) }
                var zappingButtonFocused by remember { mutableStateOf(false) }
                val rootFocus = remember { FocusRequester() }
                val zappingFocus = remember { FocusRequester() }
                val audioFocus = remember { FocusRequester() }
                val progressFocus = remember { FocusRequester() }
                LaunchedEffect(Unit) {
                    withFrameNanos { }
                    runCatching { rootFocus.requestFocus() }
                }
                // Come in PlayerScreen: all'apertura della barra info nel Live
                // il focus iniziale va sul pulsante "Zapping"; alla chiusura
                // torna alla radice del player.
                LaunchedEffect(bannerVisible) {
                    if (bannerVisible && live()) {
                        withFrameNanos { }
                        runCatching { zappingFocus.requestFocus() }
                    }
                    if (!bannerVisible && zappingButtonFocused) {
                        withFrameNanos { }
                        runCatching { rootFocus.requestFocus() }
                    }
                }
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .playerZappingKeys(zapping)
                        .onPreviewKeyEvent { event ->
                            if (event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                            if (event.key != Key.DirectionCenter && event.key != Key.Enter) {
                                return@onPreviewKeyEvent false
                            }
                            // Come in PlayerScreen: OK apre la barra info nel
                            // Live, la barra comandi in film e serie.
                            if (live()) {
                                bannerVisible = !bannerVisible
                            } else {
                                controlsVisible = !controlsVisible
                            }
                            true
                        }
                        .focusRequester(rootFocus)
                        .focusable()
                        .testTag("harness_player_root"),
                ) {
                    if (live() && bannerVisible) {
                        PlayerChannelBanner(
                            banner = ChannelBanner(
                                number = 1,
                                name = "Canale 1",
                                categoryName = "Notizie",
                                logoUrl = null,
                            ),
                            scale = scale,
                            onZapping = {
                                // La barra info si chiude subito, come in
                                // PlayerScreen.startZapping.
                                bannerVisible = false
                                zapping.start(
                                    seconds = 10,
                                    index = startIndex(),
                                    size = listSize(),
                                )
                            },
                            zappingModifier = Modifier
                                .focusRequester(zappingFocus)
                                .onFocusChanged { zappingButtonFocused = it.isFocused },
                        )
                    }
                    if (!live() && controlsVisible) {
                        PlayerControlsBar(
                            state = PlayerUiState(
                                currentTitle = "Il film inventato",
                                durationMillis = 120_000L,
                            ),
                            scale = scale,
                            audioFocusRequester = audioFocus,
                            progressFocusRequester = progressFocus,
                            onTogglePlay = {},
                            onSeek = {},
                            onAudio = {},
                            onSubtitles = {},
                            onVolume = {},
                            onFormat = {},
                            modifier = Modifier.align(Alignment.BottomCenter),
                        )
                    }
                    val zappingState = zapping.state
                    if (zappingState != null && !zappingState.awaitingEndOfList) {
                        PlayerZappingIndicator(
                            remainingSeconds = zappingState.remainingSeconds,
                            scale = scale,
                            modifier = Modifier.align(Alignment.TopEnd),
                        )
                    }
                    if (zappingState?.awaitingEndOfList == true) {
                        PlayerZappingEndDialog(
                            scale = scale,
                            onYes = { zapping.answer(restart = true) },
                            onNo = { zapping.answer(restart = false) },
                        )
                    }
                }
            }
        }
        rule.waitForIdle()
        // Radice focalizzata come nel player: i tasti arrivano al suo gestore.
        rule.onNodeWithTag("harness_player_root").requestFocus()
        rule.waitForIdle()
    }

    @Test
    fun `il pulsante compare solo nel live l indicatore appare e un tasto ferma lo zapping`() {
        var live by mutableStateOf(true)
        val clock = FakeClock()
        val switched = mutableListOf<Int>()
        val zapping = PlayerZapping(
            controller = ZappingController(clock = clock),
            onSwitchChannel = { index -> switched += index },
        )
        showPlayer(live = { live }, zapping = zapping)

        // Con OK compare la barra info del Live, con il pulsante "Zapping".
        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_channel_banner").assertExists()
        rule.onNodeWithTag("player_zapping_button").assertExists()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()

        // Attivazione: la barra si chiude e compare l'indicatore dei secondi.
        rule.onNodeWithTag("player_zapping_button")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("player_channel_banner").assertDoesNotExist()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()
        rule.onNodeWithTag("player_zapping_indicator").assertTextEquals("Zapping · 10")

        // Un tasto qualsiasi ferma lo zapping: indicatore via, canale invariato.
        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        assertTrue(switched.isEmpty())

        // Film e serie: la barra che si apre con OK non ha il pulsante Zapping.
        rule.runOnIdle { live = false }
        rule.waitForIdle()
        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_controls_bar").assertExists()
        rule.onNodeWithTag("player_zapping_button").assertDoesNotExist()
    }

    /**
     * All'apertura della barra info con OK nel Live il focus va sul pulsante
     * "Zapping" e un secondo OK (l'azione OnClick del pulsante focalizzato)
     * avvia lo zapping.
     */
    @Test
    fun `OK apre la barra info con il focus su Zapping e il secondo OK avvia lo zapping`() {
        val clock = FakeClock()
        val switched = mutableListOf<Int>()
        val zapping = PlayerZapping(
            controller = ZappingController(clock = clock),
            onSwitchChannel = { index -> switched += index },
        )
        showPlayer(live = { true }, zapping = zapping)

        // Primo OK: la barra info si apre e il focus va su "Zapping".
        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_channel_banner").assertExists()
        rule.waitUntil(timeoutMillis = 2_000) {
            runCatching {
                rule.onNodeWithTag("player_zapping_button").fetchSemanticsNode()
                    .config.contains(SemanticsProperties.Focused)
            }.getOrDefault(false)
        }
        rule.onNodeWithTag("player_zapping_button").assertIsFocused()
        // Lo zapping non è ancora partito.
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()

        // Secondo OK sul pulsante focalizzato: lo zapping parte.
        rule.onNodeWithTag("player_zapping_button")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("player_channel_banner").assertDoesNotExist()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()
        rule.onNodeWithTag("player_zapping_indicator").assertTextEquals("Zapping · 10")
        assertTrue(switched.isEmpty())
    }

    @Test
    fun `il dialog di fine lista con indietro torna al canale di partenza`() {
        val clock = FakeClock()
        val switched = mutableListOf<Int>()
        val zapping = PlayerZapping(
            controller = ZappingController(clock = clock),
            onSwitchChannel = { index -> switched += index },
        )
        // Ultimo canale della lista di tre, partendo dal terzo (indice 2).
        showPlayer(
            live = { true },
            zapping = zapping,
            startIndex = { 2 },
            listSize = { 3 },
        )

        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionCenter) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_button")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()

        // Scaduto l'intervallo sull'ultimo canale arriva la domanda.
        rule.runOnIdle {
            clock.now += 10_000L
            zapping.tick(ZappingChannelStatus.PLAYING)
        }
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_end_dialog").assertExists()
        rule.onNodeWithTag("player_zapping_yes").assertIsFocused()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()

        // Indietro vale come "No": si torna al canale di partenza.
        rule.onNodeWithTag("player_zapping_yes").performKeyInput { pressKey(Key.Back) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_end_dialog").assertDoesNotExist()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        assertEquals(listOf(2), switched)
    }

    /**
     * Il bug del doppio OK: il primo OK apre la barra info e sposta il focus su
     * "Zapping" mentre il tasto è ancora giù. Il rilascio dello stesso OK (e le
     * ripetizioni, se il tasto resta premuto) arrivano al pulsante focalizzato e
     * non devono avviare lo zapping: lo avvia solo un OK nuovo e completo.
     */
    @Test
    fun `il rilascio dell OK che apre la barra e le ripetizioni non avviano lo zapping`() {
        val clock = FakeClock()
        val switched = mutableListOf<Int>()
        val zapping = PlayerZapping(
            controller = ZappingController(clock = clock),
            onSwitchChannel = { index -> switched += index },
        )
        showPlayer(live = { true }, zapping = zapping)

        // Primo OK: KeyDown con repeatCount 0 sulla radice del player.
        rule.onNodeWithTag("harness_player_root")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.waitForIdle()
        rule.onNodeWithTag("player_channel_banner").assertExists()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused("player_zapping_button") }
        rule.onNodeWithTag("player_zapping_button").assertIsFocused()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()

        // KeyUp dello stesso OK: arriva al pulsante "Zapping" e non fa nulla.
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        rule.onNodeWithTag("player_channel_banner").assertExists()
        assertTrue(switched.isEmpty())

        // Ripetizioni del tasto tenuto premuto, prima del rilascio: ancora nulla.
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN, repeatCount = 1))
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN, repeatCount = 2))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        rule.onNodeWithTag("player_channel_banner").assertExists()
        assertTrue(switched.isEmpty())

        // Un OK nuovo e completo: lo zapping parte.
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()
        rule.onNodeWithTag("player_zapping_indicator").assertTextEquals("Zapping · 10")
        rule.onNodeWithTag("player_channel_banner").assertDoesNotExist()
        assertTrue(switched.isEmpty())
    }

    /**
     * Ogni apertura della barra ha il suo blocco: chiusa e riaperta, il rilascio
     * dell'OK che l'ha riaperta non avvia lo zapping; lo avvia solo un OK nuovo
     * e completo.
     */
    @Test
    fun `ogni apertura della barra riparte con il blocco dell OK tenuto`() {
        val clock = FakeClock()
        val zapping = PlayerZapping(
            controller = ZappingController(clock = clock),
            onSwitchChannel = {},
        )
        showPlayer(live = { true }, zapping = zapping)

        // Prima apertura: OK giù sulla radice, focus su "Zapping", OK su che non
        // avvia nulla.
        rule.onNodeWithTag("harness_player_root")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused("player_zapping_button") }
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()

        // Un OK nuovo e completo avvia lo zapping.
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()

        // Un tasto qualsiasi ferma lo zapping e la barra si riapre con OK: il
        // rilascio di quell'OK resta bloccato anche nel nuovo contenuto.
        rule.onNodeWithTag("harness_player_root").performKeyInput { pressKey(Key.DirectionDown) }
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        rule.onNodeWithTag("harness_player_root")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 2_000) { isFocused("player_zapping_button") }
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertDoesNotExist()
        rule.onNodeWithTag("player_channel_banner").assertExists()

        // E un altro OK nuovo e completo riavvia lo zapping.
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.onNodeWithTag("player_zapping_button")
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
        rule.onNodeWithTag("player_zapping_indicator").assertExists()
    }

    /** Vero se il nodo con il tag dato ha il focus. */
    private fun isFocused(tag: String): Boolean = runCatching {
        rule.onNodeWithTag(tag).fetchSemanticsNode()
            .config.contains(SemanticsProperties.Focused)
    }.getOrDefault(false)

    /** Evento OK del telecomando (DPAD_CENTER) con il conteggio di ripetizioni dato. */
    private fun okKey(action: Int, repeatCount: Int = 0): KeyEvent =
        KeyEvent(
            AndroidKeyEvent(0L, 0L, action, AndroidKeyEvent.KEYCODE_DPAD_CENTER, repeatCount),
        )
}
