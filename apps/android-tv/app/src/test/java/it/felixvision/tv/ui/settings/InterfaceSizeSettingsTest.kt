package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
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
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
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
 * Pagina "Impostazioni › Aspetto", aperta dalla card Aspetto della griglia: la
 * riga "Dimensione interfaccia" con i tre pulsanti Compatta/Media/Grande,
 * spostata qui dal vecchio riquadro Aspetto senza cambiamenti.
 *
 * La pagina si compone senza ViewModel ([SettingsAppearancePage]): la dimensione
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

    @Test
    fun `la pagina Aspetto ha il titolo e le tre dimensioni`() {
        rule.setContent {
            FvpTheme {
                SettingsAppearancePage(scale = scale)
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag(SETTINGS_PAGE_APPEARANCE_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Aspetto")
        rule.onNodeWithTag(SETTINGS_APPEARANCE_SECTION_TAG).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_APPEARANCE_TITLE).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_INTERFACE_SIZE_LABEL).assertIsDisplayed()

        // Predefinita "Compatta": è quella con il segno di spunta.
        rule.onNodeWithTag("settings_interface_size_compact").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_medium").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_large").assertIsDisplayed()
        rule.onNodeWithTag("settings_interface_size_compact").assertTextEquals("✓ Compatta")
        rule.onNodeWithTag("settings_interface_size_medium").assertTextEquals("Media")
        rule.onNodeWithTag("settings_interface_size_large").assertTextEquals("Grande")

        // Il focus d'ingresso dalla card va sulla dimensione attiva.
        rule.onNodeWithTag("settings_interface_size_compact").assertIsFocused()
    }

    @Test
    fun `la pagina Aspetto resta ferma con il focus su Media e Grande`() {
        var active by mutableStateOf(InterfaceSize.COMPACT)
        rule.setContent {
            FvpTheme {
                SettingsAppearancePage(
                    scale = scale,
                    interfaceSize = active,
                    onInterfaceSizeSelected = { active = it },
                )
            }
        }
        rule.waitForIdle()

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
                assertTrue("La pagina Aspetto si muove: $tops", tops.maxOrNull()!! - tops.minOrNull()!! <= 0.5f)
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
                SettingsAppearancePage(
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

        rule.onNodeWithTag("settings_interface_size_large")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(InterfaceSize.LARGE, selected)
        // La scelta si vede subito: il segno di spunta passa a Grande.
        rule.onNodeWithTag("settings_interface_size_large").assertTextEquals("✓ Grande")
        rule.onNodeWithTag("settings_interface_size_compact").assertTextEquals("Compatta")

        // E anche "Media" passa dal callback giusto.
        rule.onNodeWithTag("settings_interface_size_medium")
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(InterfaceSize.MEDIUM, selected)
        rule.onNodeWithTag("settings_interface_size_medium").assertTextEquals("✓ Media")
    }
}
