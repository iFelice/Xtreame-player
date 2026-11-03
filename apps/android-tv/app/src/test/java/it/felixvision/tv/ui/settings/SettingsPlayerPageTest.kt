package it.felixvision.tv.ui.settings

import android.content.Context
import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEvent
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performKeyPress
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.player.PlayerPreferences
import it.felixvision.tv.player.ZappingChannelStatus
import it.felixvision.tv.player.ZappingCommand
import it.felixvision.tv.player.ZappingController
import it.felixvision.tv.player.ZappingReason
import it.felixvision.tv.player.ZappingSeconds
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Card e pagina "Player" delle Impostazioni: la pagina contiene la voce "Durata
 * zapping" con il valore al centro, i pulsanti "−" e "+" ai lati (un secondo per
 * OK, pressione prolungata per far scorrere il valore) e le scelte rapide 5, 10,
 * 15 e 30 con il "✓" sul valore attivo.
 *
 * Il valore scelto resta salvato nelle preferenze del player
 * ([PlayerPreferences]), lo zapping automatico lo legge all'avvio e la regola
 * "salta i canali che non partono in 5 s" resta invariata. Indietro dalla pagina
 * torna alla griglia con il focus sulla card Player e la riga di stato della card
 * è già aggiornata.
 *
 * Un solo `setContent` per test; i clic sui pulsanti tv-material si fanno con
 * `performSemanticsAction(SemanticsActions.OnClick)`, gli OK grezzi (ripetizioni
 * comprese) con `performKeyPress` e un [KeyEvent] Android.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsPlayerPageTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    /** Orologio finto: il test decide quando passa il tempo. */
    private class FakeClock(var now: Long = 0L) : Clock {
        override fun nowMillis(): Long = now
    }

    /** Preferenze del player su un archivio pulito, come a un primo avvio. */
    private fun freshPreferences(seconds: Int? = null): PlayerPreferences {
        context.getSharedPreferences(PlayerPreferences.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .edit().clear().commit()
        val prefs = PlayerPreferences(context)
        if (seconds != null) prefs.zappingSeconds = seconds
        return prefs
    }

    /**
     * Griglia e pagina Player dentro la stessa navigazione, come nella schermata
     * vera: il valore viene da uno stato osservato (qui il `MutableState` che
     * `SettingsScreen` ricava dallo `StateFlow` del ViewModel) e la pagina lo
     * salva nelle preferenze. Così la riga di stato della card si aggiorna da
     * sola dopo una modifica.
     */
    private fun showNavigation(prefs: PlayerPreferences) {
        rule.setContent {
            FvpTheme {
                var zappingSeconds by remember { mutableStateOf(prefs.zappingSeconds) }
                SettingsNavigation(
                    cardsState = SettingsCardsState(
                        username = "demo",
                        zappingSeconds = zappingSeconds,
                    ),
                    scale = scale,
                    playerPage = { pageModifier, _ ->
                        SettingsPlayerPage(
                            scale = scale,
                            modifier = pageModifier,
                            zappingSeconds = zappingSeconds,
                            onZappingSecondsSelected = { seconds ->
                                prefs.zappingSeconds = seconds
                                zappingSeconds = prefs.zappingSeconds
                            },
                        )
                    },
                )
            }
        }
        rule.waitForIdle()
    }

    /** Apre la pagina Player dalla griglia. */
    private fun openPlayerPage() {
        rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_PAGE_PLAYER_TAG).assertExists()
    }

    /** Evento OK del telecomando (DPAD_CENTER) con il conteggio di ripetizioni dato. */
    private fun okKey(action: Int, repeatCount: Int = 0, eventTime: Long = 0L): KeyEvent =
        KeyEvent(
            AndroidKeyEvent(
                /* downTime = */ 0L,
                /* eventTime = */ eventTime,
                /* action = */ action,
                /* code = */ AndroidKeyEvent.KEYCODE_DPAD_CENTER,
                /* repeat = */ repeatCount,
            ),
        )

    /** Un OK completo (giù e su) sul nodo dato. */
    private fun pressOk(tag: String) {
        rule.onNodeWithTag(tag).performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.onNodeWithTag(tag).performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.waitForIdle()
    }

    @Test
    fun `pagina con valore pulsanti scelte rapide e focus iniziale su piu`() {
        val prefs = freshPreferences()
        assertEquals(ZappingSeconds.DEFAULT, prefs.zappingSeconds)
        showNavigation(prefs)
        openPlayerPage()

        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Player")
        rule.onNodeWithTag(SETTINGS_PLAYER_SECTION_TAG).assertExists()

        // Riga del valore: "−" a sinistra, "10 s" al centro, "+" a destra.
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("10 s")
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).assertExists().assertTextEquals("−")
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).assertExists().assertTextEquals("+")

        // Il focus d'ingresso è su "+", il primo comando della riga.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).assertIsFocused()

        // Scelte rapide sotto: solo il valore attivo ha il "✓".
        ZappingSeconds.QUICK_CHOICES.forEach { seconds ->
            rule.onNodeWithTag(zappingSecondsTag(seconds)).assertExists()
        }
        rule.onNodeWithTag(zappingSecondsTag(10)).assertTextEquals("✓ 10 s")
        rule.onNodeWithTag(zappingSecondsTag(5)).assertTextEquals("5 s")
        rule.onNodeWithTag(zappingSecondsTag(15)).assertTextEquals("15 s")
        rule.onNodeWithTag(zappingSecondsTag(30)).assertTextEquals("30 s")
    }

    @Test
    fun `un OK su piu porta da dieci a undici e salva`() {
        val prefs = freshPreferences()
        showNavigation(prefs)
        openPlayerPage()

        // Un OK completo su "+": un solo secondo in più, salvato subito.
        pressOk(ZAPPING_INCREASE_TAG)
        assertEquals(11, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("11 s")
        // 11 non è una scelta rapida: nessun "✓".
        ZappingSeconds.QUICK_CHOICES.forEach { seconds ->
            rule.onNodeWithTag(zappingSecondsTag(seconds)).assertTextEquals("$seconds s")
        }
    }

    @Test
    fun `a cinque secondi il meno e disattivato e non cambia il valore`() {
        val prefs = freshPreferences(seconds = 5)
        showNavigation(prefs)
        openPlayerPage()

        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("5 s")
        // "−" resta focalizzabile ma è disattivato: raggiungibile con le
        // frecce, senza effetto.
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).assertExists().assertIsNotEnabled()
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(5, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("5 s")

        // Il "✓" è sulla scelta rapida 5.
        rule.onNodeWithTag(zappingSecondsTag(5)).assertTextEquals("✓ 5 s")
        rule.onNodeWithTag(zappingSecondsTag(10)).assertTextEquals("10 s")
    }

    @Test
    fun `la scelta rapida di trenta secondi mostra il segno e salva`() {
        val prefs = freshPreferences()
        showNavigation(prefs)
        openPlayerPage()

        rule.onNodeWithTag(zappingSecondsTag(30)).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(30, prefs.zappingSeconds)
        rule.onNodeWithTag(zappingSecondsTag(30)).assertTextEquals("✓ 30 s")
        rule.onNodeWithTag(zappingSecondsTag(10)).assertTextEquals("10 s")
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("30 s")
    }

    @Test
    fun `con dodici secondi nessuna scelta rapida ha il segno`() {
        val prefs = freshPreferences(seconds = 12)
        showNavigation(prefs)
        openPlayerPage()

        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("12 s")
        ZappingSeconds.QUICK_CHOICES.forEach { seconds ->
            rule.onNodeWithTag(zappingSecondsTag(seconds)).assertTextEquals("$seconds s")
        }
    }

    @Test
    fun `dopo una modifica Indietro torna alla griglia con la card gia aggiornata`() {
        val prefs = freshPreferences()
        showNavigation(prefs)
        openPlayerPage()

        // Due OK su "+": 10 → 12, salvato a ogni passo.
        pressOk(ZAPPING_INCREASE_TAG)
        pressOk(ZAPPING_INCREASE_TAG)
        assertEquals(12, prefs.zappingSeconds)

        // Indietro da "+" torna alla griglia, con il focus sulla card Player e
        // la riga di stato già con il nuovo valore.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).performKeyInput { pressKey(Key.Back) }
        rule.waitForIdle()
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_PAGE_PLAYER_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).assertIsFocused()
        rule.onNodeWithTag(SettingsCard.Player.statusTag, useUnmergedTree = true)
            .assertTextEquals("Zapping ogni 12 s")
    }

    /**
     * Pressione prolungata su "+": con l'orologio in mano il valore scorre dopo
     * [ZappingRepeat.START_DELAY_MILLIS] e poi ogni [ZappingRepeat.STEP_MILLIS],
     * finché il tasto non si rilascia.
     *
     * Il primo OK cambia subito (10 → 11). Dopo la prima ripetizione il valore
     * comincia a scorrere: il via lo dà il primo frame (16 ms), l'attesa di
     * 500 ms scade sul primo frame successivo e ogni passo cade sul primo frame
     * dopo i 100 ms. Con i frame allineati ai multipli di 16 ms i cambi sono ai
     * frame 544, 656, 768, 880 e 992 ms: a 1000 ms dall'OK il valore è quindi
     * 16, cioè 1 cambio all'OK più 5 passi. Il rilascio non aggiunge nulla.
     */
    @Test
    fun `OK tenuto premuto su piu fa scorrere il valore e il rilascio lo ferma`() {
        val prefs = freshPreferences()
        showNavigation(prefs)
        openPlayerPage()

        val frameMillis = ZAPPING_TEST_FRAME_MILLIS
        // All'inizio del test l'orologio non parte da zero (le attese dei
        // fotogrammi lo hanno già avanzato): lo si riallinea ai multipli del
        // frame, così i tempi dei passi sono calcolabili.
        rule.mainClock.autoAdvance = false
        val misalignment = rule.mainClock.currentTime % frameMillis
        if (misalignment != 0L) {
            rule.mainClock.advanceTimeBy(frameMillis - misalignment, ignoreFrameDuration = true)
        }
        val t0 = rule.mainClock.currentTime
        assertEquals(0L, t0 % frameMillis)

        // OK giù: il primo cambio è immediato (10 → 11). Il valore si legge
        // dalle preferenze, che è ciò che conta per lo zapping; il testo si
        // controlla alla fine, quando l'orologio torna automatico.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG)
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.mainClock.advanceTimeBy(frameMillis)
        assertEquals(11, prefs.zappingSeconds)

        // Prima ripetizione del sistema: comincia lo scorrimento.
        val repeatAt = rule.mainClock.currentTime
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG)
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN, repeatCount = 1))

        // I cambi cadono sui frame: il primo dopo l'attesa di 500 ms, poi uno
        // ogni 100 ms, fino ai 1000 ms dall'OK.
        val stepFrames = repeatStepFrames(repeatAt, ZAPPING_HOLD_MILLIS, frameMillis)
        val firstStep = stepFrames.first()
        val expected = 10 + 1 + stepFrames.size
        assertEquals(listOf(it + 0L, 112L, 224L, 336L, 448L).map { d -> firstStep + d }, stepFrames)
        assertEquals(5, stepFrames.size)
        assertEquals(16L, expected)

        // Fino a un frame prima del primo passo il valore non è ancora cambiato.
        rule.mainClock.advanceTimeBy(firstStep - frameMillis - rule.mainClock.currentTime)
        assertEquals(11, prefs.zappingSeconds)

        // Fino ai 1000 ms dall'OK, frame per frame, il valore è sempre quello
        // dei punti di cambio già passati: nessun cambio in più né in meno.
        // I cambi cadono sui frame (112 ms reali per passo) e sono in [stepFrames].
        val guard = 200
        var frames = 0
        var passed = 0
        while (rule.mainClock.currentTime - repeatAt < ZAPPING_HOLD_MILLIS && frames < guard) {
            rule.mainClock.advanceTimeBy(frameMillis)
            frames++
            if (passed < stepFrames.size && rule.mainClock.currentTime >= stepFrames[passed]) {
                passed++
            }
            assertEquals(11 + passed, prefs.zappingSeconds)
        }
        assertTrue(rule.mainClock.currentTime - repeatAt >= ZAPPING_HOLD_MILLIS)
        assertEquals(stepFrames.size, passed)
        assertEquals(expected.toInt(), prefs.zappingSeconds)

        // Rilascio: nessun altro incremento, anche facendo passare altro tempo.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG)
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.mainClock.advanceTimeBy(1_000L)
        assertEquals(expected.toInt(), prefs.zappingSeconds)

        // Orologio di nuovo automatico: il valore mostrato è quello raggiunto.
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("16 s")
    }

    /** Durata di un frame dell'orologio dei test (16 ms). */
    private val ZAPPING_TEST_FRAME_MILLIS = 16L

    /** Quanto resta premuto OK nel test della pressione prolungata. */
    private val ZAPPING_HOLD_MILLIS = 1_000L

    /** Primo multiplo di [frameMillis] maggiore o uguale a [millis]. */
    private fun firstFrameAtOrAfter(millis: Long, frameMillis: Long): Long {
        val remainder = millis % frameMillis
        return if (remainder == 0L) millis else millis + (frameMillis - remainder)
    }

    /**
     * Istanze dei cambi con OK tenuto premuto da [repeatAtMillis] per
     * [holdMillis]: il primo frame dopo la ripetizione dà il via, l'attesa di
     * 500 ms scade sul primo frame successivo e ogni passo cade sul primo frame
     * dopo 100 ms.
     */
    private fun repeatStepFrames(
        repeatAtMillis: Long,
        holdMillis: Long,
        frameMillis: Long,
    ): List<Long> {
        val startFrame = firstFrameAtOrAfter(repeatAtMillis + frameMillis, frameMillis) +
            ZappingRepeat.START_DELAY_MILLIS
        var at = firstFrameAtOrAfter(startFrame, frameMillis)
        val frames = mutableListOf<Long>()
        while (at <= repeatAtMillis + holdMillis) {
            frames += at
            at = firstFrameAtOrAfter(at + ZappingRepeat.STEP_MILLIS, frameMillis)
        }
        return frames
    }

    /**
     * Lo zapping automatico legge il valore salvato e lo usa: a 11 s non cambia
     * canale, a 12 s passa al successivo. La regola "salta i canali che non
     * partono in 5 s" resta quella di sempre.
     */
    @Test
    fun `il valore salvato guida lo zapping e la regola dei cinque secondi resta`() {
        val prefs = freshPreferences(seconds = 12)
        showNavigation(prefs)
        openPlayerPage()
        assertEquals(12, prefs.zappingSeconds)

        val clock = FakeClock()
        val controller = ZappingController(clock = clock)
        controller.start(seconds = prefs.zappingSeconds, index = 0, size = 2, nowMillis = 0L)
        assertEquals(12, controller.state?.seconds)
        assertEquals(
            ZappingCommand.None,
            controller.tick(nowMillis = 11_000L, status = ZappingChannelStatus.PLAYING),
        )
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(nowMillis = 12_000L, status = ZappingChannelStatus.PLAYING),
        )

        // Canale che non parte: saltato dopo 5 s, senza aspettare i 12.
        val second = ZappingController(clock = clock)
        second.start(seconds = prefs.zappingSeconds, index = 0, size = 2, nowMillis = 20_000L)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.CHANNEL_NOT_STARTED),
            second.tick(nowMillis = 25_000L, status = ZappingChannelStatus.LOADING),
        )
    }
}
