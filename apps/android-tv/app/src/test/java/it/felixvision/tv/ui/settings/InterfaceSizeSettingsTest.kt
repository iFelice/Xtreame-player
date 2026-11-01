package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.unit.dp
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Riquadro "Aspetto" delle Impostazioni: riga "Dimensione interfaccia" con i tre
 * pulsanti Compatta/Media/Grande.
 *
 * La schermata si compone senza ViewModel ([SettingsContent]): la dimensione
 * attiva arriva dal parametro e la scelta passa da un callback. I pulsanti
 * tv-material non rispondono a `performClick`: si usa l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class InterfaceSizeSettingsTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Stato di esempio: nessun dato reale, solo valori dimostrativi. */
    private fun settingsState() = SettingsUiState(
        username = "demo",
        serverLabel = "http://server.esempio:8080",
        status = "Attivo",
        expiresAtEpochSeconds = null,
        maxConnections = 2,
        activeConnections = 1,
    )

    @Test
    fun `il riquadro Aspetto sta subito dopo Account con le tre dimensioni`() {
        rule.setContent {
            FvpTheme {
                SettingsContent(state = settingsState(), scale = scale)
            }
        }
        rule.waitForIdle()
        // Le Impostazioni scorrono: il riquadro Aspetto sta più in basso.
        rule.onNodeWithTag(SETTINGS_APPEARANCE_SECTION_TAG).performScrollTo()

        rule.onNodeWithText(SETTINGS_APPEARANCE_TITLE).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_INTERFACE_SIZE_LABEL).assertIsDisplayed()

        // Predefinita "Compatta": è quella con il segno di spunta.
        rule.onNodeWithTag("settings_interface_size_compact").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_medium").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_large").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_compact")
            .assertTextEquals("✓ Compatta")
        rule.onNodeWithTag("settings_interface_size_medium")
            .assertTextEquals("Media")
        rule.onNodeWithTag("settings_interface_size_large")
            .assertTextEquals("Grande")

        // Posizione: dopo l'ultimo elemento del riquadro Account (il pulsante di
        // uscita) e prima del riquadro App.
        val accountEnd = rule.onNodeWithTag(SETTINGS_EXIT_TAG).fetchSemanticsNode().boundsInRoot
        val appearance = rule.onNodeWithTag(SETTINGS_APPEARANCE_SECTION_TAG).fetchSemanticsNode().boundsInRoot
        val appSection = rule.onNodeWithTag("settings_app_section").fetchSemanticsNode().boundsInRoot

        assertTrue("il riquadro Aspetto non sta sotto Account", appearance.top >= accountEnd.bottom - 1f)
        assertTrue("il riquadro Aspetto non sta sopra App", appearance.bottom <= appSection.top + 1f)
    }

    @Test
    fun `il riquadro Aspetto resta fermo con il focus su Media e Grande`() {
        val contentFocus = FocusRequester()
        rule.setContent {
            FvpTheme {
                // Un'altezza ridotta obbliga la pagina a scorrere quando si
                // risale da Aggiorna catalogo al riquadro Aspetto.
                Box(Modifier.width(960.dp).height(240.dp)) {
                    SettingsContent(state = settingsState(), scale = scale, contentFocusRequester = contentFocus)
                }
            }
        }
        rule.waitForIdle()
        rule.runOnIdle { contentFocus.requestFocus() }
        rule.waitForIdle()

        rule.onNodeWithTag("settings_refresh").performKeyInput { pressKey(Key.DirectionUp) }
        // Tra "Aggiorna catalogo" e Aspetto stanno i riquadri "VPN" e
        // "Contenuti protetti": il primo Su porta su "Configura" (senza
        // configurazione è l'unico pulsante della VPN), il secondo su
        // "Gestisci", il terzo sulla riga delle dimensioni.
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertIsFocused()
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).performKeyInput { pressKey(Key.DirectionUp) }
        rule.onNodeWithTag(SETTINGS_PROTECTED_OPEN_TAG).assertIsFocused()
        rule.onNodeWithTag(SETTINGS_PROTECTED_OPEN_TAG).performKeyInput { pressKey(Key.DirectionUp) }
        rule.onNodeWithTag("settings_interface_size_compact").assertIsFocused()
        rule.onNodeWithTag("settings_interface_size_compact").performKeyInput { pressKey(Key.DirectionRight) }
        rule.onNodeWithTag("settings_interface_size_medium").assertIsFocused()
        rule.waitForIdle()

        rule.mainClock.autoAdvance = false
        try {
            fun assertAppearanceStaysStill() {
                val tops = List(10) {
                    rule.mainClock.advanceTimeBy(100)
                    rule.waitForIdle()
                    rule.onNodeWithTag(SETTINGS_APPEARANCE_SECTION_TAG).getUnclippedBoundsInRoot().top.value
                }
                assertTrue("Il riquadro Aspetto si muove: $tops", tops.maxOrNull()!! - tops.minOrNull()!! <= 0.5f)
            }

            assertAppearanceStaysStill()
            rule.onNodeWithTag("settings_interface_size_medium").performKeyInput { pressKey(Key.DirectionRight) }
            rule.onNodeWithTag("settings_interface_size_large").assertIsFocused()
            assertAppearanceStaysStill()
        } finally {
            rule.mainClock.autoAdvance = true
        }
    }

    @Test
    fun `OK su Grande applica la scelta e sposta il segno di spunta`() {
        var selected: InterfaceSize? = null
        var active by mutableStateOf(InterfaceSize.COMPACT)

        rule.setContent {
            FvpTheme {
                SettingsContent(
                    state = settingsState(),
                    scale = scale,
                    interfaceSize = active,
                    onInterfaceSizeSelected = {
                        selected = it
                        active = it
                    },
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("settings_interface_size_large").performScrollTo()
        rule.onNodeWithTag("settings_interface_size_large")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(InterfaceSize.LARGE, selected)
        // La scelta si vede subito: il segno di spunta passa a Grande.
        rule.onNodeWithTag("settings_interface_size_large").assertTextEquals("✓ Grande")
        rule.onNodeWithTag("settings_interface_size_compact").assertTextEquals("Compatta")

        // E anche "Media" passa dal callback giusto.
        rule.onNodeWithTag("settings_interface_size_medium").performScrollTo()
        rule.onNodeWithTag("settings_interface_size_medium")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(InterfaceSize.MEDIUM, selected)
        rule.onNodeWithTag("settings_interface_size_medium").assertTextEquals("✓ Media")
    }
}
