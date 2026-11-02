package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
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
 * Card e pagina "Player" delle Impostazioni: la pagina contiene solo la voce
 * "Durata zapping" con le scelte 5, 10, 15 e 30 secondi (predefinita 10). La
 * scelta resta salvata nelle preferenze del player ([PlayerPreferences]) e lo
 * zapping automatico la legge all'avvio; la regola "salta i canali che non
 * partono in 5 s" resta invariata. Indietro dalla pagina torna alla griglia
 * con il focus sulla card Player.
 *
 * Un solo `setContent` per test; i clic sui pulsanti tv-material si fanno con
 * `performSemanticsAction(SemanticsActions.OnClick)`.
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
    private fun freshPreferences(): PlayerPreferences {
        context.getSharedPreferences(PlayerPreferences.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .edit().clear().commit()
        return PlayerPreferences(context)
    }

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

    @Test
    fun `scelta di 15 s persistita nelle preferenze e usata dallo scheduler dello zapping`() {
        val prefs = freshPreferences()
        assertEquals(ZappingSeconds.DEFAULT, prefs.zappingSeconds)
        showNavigation(prefs)

        // La card Player è prima della card App nella griglia.
        rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_PAGE_PLAYER_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Player")

        // La pagina contiene solo la voce "Durata zapping": i quattro pulsanti
        // 5, 10, 15 e 30 secondi, con il focus sul valore attivo (10 s).
        ZappingSeconds.ALLOWED.forEach { seconds ->
            rule.onNodeWithTag(zappingSecondsTag(seconds)).assertExists()
        }
        rule.onNodeWithTag(zappingSecondsTag(10)).assertTextEquals("✓ 10 s")
        rule.onNodeWithTag(zappingSecondsTag(10)).assertIsFocused()

        // Scelta di 15 s: il valore resta salvato e il pulsante mostra il segno.
        rule.onNodeWithTag(zappingSecondsTag(15)).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(15, prefs.zappingSeconds)
        rule.onNodeWithTag(zappingSecondsTag(15)).assertTextEquals("✓ 15 s")
        rule.onNodeWithTag(zappingSecondsTag(10)).assertTextEquals("10 s")

        // Lo scheduler dello zapping legge il valore salvato e lo usa: a 14 s
        // non cambia canale, a 15 s passa al successivo.
        val clock = FakeClock()
        val controller = ZappingController(clock = clock)
        controller.start(seconds = prefs.zappingSeconds, index = 0, size = 2, nowMillis = 0L)
        assertEquals(15, controller.state?.seconds)
        assertEquals(ZappingCommand.None, controller.tick(nowMillis = 14_000L, status = ZappingChannelStatus.PLAYING))
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.TIMER),
            controller.tick(nowMillis = 15_000L, status = ZappingChannelStatus.PLAYING),
        )

        // La regola "salta i canali che non partono in 5 s" resta invariata.
        val second = ZappingController(clock = clock)
        second.start(seconds = prefs.zappingSeconds, index = 0, size = 2, nowMillis = 20_000L)
        assertEquals(
            ZappingCommand.SwitchTo(1, ZappingReason.CHANNEL_NOT_STARTED),
            second.tick(nowMillis = 25_000L, status = ZappingChannelStatus.LOADING),
        )
    }

    @Test
    fun `indietro dalla pagina Player torna alle card con il focus sulla card Player`() {
        val prefs = freshPreferences()
        showNavigation(prefs)

        rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_PAGE_PLAYER_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertDoesNotExist()

        // Indietro dal primo elemento della pagina: griglia con il focus sulla
        // card Player.
        rule.onNodeWithTag(zappingSecondsTag(10)).performKeyInput { pressKey(Key.Back) }
        rule.waitForIdle()
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_PAGE_PLAYER_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).assertIsFocused()
    }
}
