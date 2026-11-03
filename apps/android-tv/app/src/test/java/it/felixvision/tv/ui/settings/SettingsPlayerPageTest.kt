package it.felixvision.tv.ui.settings

import android.content.Context
import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.ComponentActivity
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
     * Griglia e pagina Player dentro la stessa navigazione: il valore mostrato
     * dalla pagina e quello della riga di stato vengono dalle preferenze, come
     * nella schermata vera.
     */
    private fun showNavigation(prefs: PlayerPreferences) {
        rule.setContent {
            FvpTheme {
                SettingsNavigation(
                    cardsState = SettingsCardsState(
                        username = "demo",
                        zappingSeconds = prefs.zappingSeconds,
                    ),
                    scale = scale,
                    playerPage = { pageModifier, _ ->
                        SettingsPlayerPage(
                            scale = scale,
                            modifier = pageModifier,
                            zappingSeconds = prefs.zappingSeconds,
                            onZappingSecondsSelected = { seconds -> prefs.zappingSeconds = seconds },
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
    fun `pagina con valore valore scelte rapide e focus iniziale su piu`() {
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
    fun `i limiti dell intervallo disattivano il pulsante corrispondente`() {
        val prefs = freshPreferences(seconds = 5)
        showNavigation(prefs)
        openPlayerPage()

        // A 5 s "−" è disattivato (resta a fuoco e raggiungibile) e non cambia nulla.
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("5 s")
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).assertIsNotEnabled()
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(5, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("5 s")
        // Il "✓" è sulla scelta rapida 5.
        rule.onNodeWithTag(zappingSecondsTag(5)).assertTextEquals("✓ 5 s")

        // A 120 s è "+" a essere disattivato, e da 119 si arriva al limite.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(6, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_DECREASE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(5, prefs.zappingSeconds)
    }

    @Test
    fun `a centoventi il piu e disattivato e non cambia il valore`() {
        val prefs = freshPreferences(seconds = 120)
        showNavigation(prefs)
        openPlayerPage()

        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("120 s")
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).assertIsNotEnabled()
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(120, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("120 s")
        // 120 non è una scelta rapida: nessun "✓".
        ZappingSeconds.QUICK_CHOICES.forEach { seconds ->
            rule.onNodeWithTag(zappingSecondsTag(seconds)).assertTextEquals("$seconds s")
        }
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
     * Pressione prolungata su "+": con l'orologio in mano, dopo i 500 ms di
     * attesa il valore scorre di un secondo ogni 100 ms. A 1000 ms dall'OK sono
     * passati 500 ms di attesa e altri 500 ms di scorrimento: 5 cambi dopo il
     * primo, quindi 10 + 1 + 5 = 16. Al rilascio non arriva nessun altro cambio.
     */
    @Test
    fun `OK tenuto premuto su piu fa scorrere il valore e il rilascio lo ferma`() {
        val prefs = freshPreferences()
        showNavigation(prefs)
        openPlayerPage()

        rule.mainClock.autoAdvance = false
        // OK giù: il primo cambio è immediato (10 → 11).
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN))
        rule.mainClock.advanceTimeBy(ZappingRepeat.STEP_MILLIS)
        assertEquals(11, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("11 s")

        // Prima ripetizione del sistema: comincia lo scorrimento (500 ms, poi
        // un cambio ogni 100 ms).
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG)
            .performKeyPress(okKey(AndroidKeyEvent.ACTION_DOWN, repeatCount = 1))
        rule.mainClock.advanceTimeBy(ZappingRepeat.START_DELAY_MILLIS)
        // 500 ms di attesa: ancora nessun cambio oltre al primo.
        assertEquals(11, prefs.zappingSeconds)

        val advanced = ZappingRepeat.START_DELAY_MILLIS + ZappingRepeat.STEP_MILLIS * 5
        rule.mainClock.advanceTimeBy(advanced)
        // Attesi esattamente 5 cambi: 500, 600, 700, 800 e 900 ms dopo la
        // partenza dello scorrimento (a 1000 ms ce ne sarebbe un sesto).
        assertEquals(16, prefs.zappingSeconds)
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("16 s")

        // Rilascio: nessun altro incremento, anche facendo passare altro tempo.
        rule.onNodeWithTag(ZAPPING_INCREASE_TAG).performKeyPress(okKey(AndroidKeyEvent.ACTION_UP))
        rule.mainClock.advanceTimeBy(1_000L)
        assertEquals(16, prefs.zappingSeconds)
        rule.mainClock.autoAdvance = true
        rule.waitForIdle()
        rule.onNodeWithTag(ZAPPING_VALUE_TAG).assertTextEquals("16 s")
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
