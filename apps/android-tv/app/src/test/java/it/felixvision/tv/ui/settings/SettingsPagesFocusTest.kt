package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.update.ReleaseInfo
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import it.felixvision.tv.vpn.VpnState
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Focus d'ingresso delle pagine delle Impostazioni: ognuna, all'apertura, dà il
 * focus al proprio primo elemento focalizzabile. È quello che tiene il tasto
 * Indietro dentro la pagina e quindi dentro le Impostazioni: senza un elemento
 * focalizzabile il focus usciva dalla pagina e Indietro tornava al menu laterale
 * invece che alla griglia delle card.
 *
 * La pagina App ha sempre un pulsante: "Aggiorna" con una versione disponibile,
 * "Controlla aggiornamenti" altrimenti. Le altre pagine hanno i propri pulsanti;
 * "Contenuti protetti" è una schermata a sé, che gestisce da sola focus e tasto
 * Indietro (i suoi test sono `PinEntryTest` e `ProtectedAddNavigationTest`).
 *
 * Un solo `setContent` per test. I pulsanti sono di tv-material: OK si prova con
 * l'azione semantica `SemanticsActions.OnClick`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsPagesFocusTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /**
     * Requester d'ingresso ricordato fuori dalla composizione, come quelli che
     * [SettingsNavigation] passa alle pagine.
     */
    private val entryFocus = FocusRequester()

    private fun appState(updateStatus: AppUpdateStatus) = SettingsUiState(
        username = "demo",
        serverLabel = "http://server.esempio:8080",
        status = "Attivo",
        versionName = "1.0.2",
        versionCode = 102,
        updateStatus = updateStatus,
    )

    private val release = ReleaseInfo(
        version = "1.0.3",
        downloadUrl = "https://github.com/iFelice/felixvp-releases/releases/download/1.0.3/FelixVP.apk",
        sizeBytes = 1024L,
    )

    @Test
    fun `pagina App senza aggiornamenti ha il pulsante Controlla aggiornamenti con il focus`() {
        var uiState by mutableStateOf(appState(AppUpdateStatus.UpToDate))
        var checks = 0
        var updates = 0

        rule.setContent {
            FvpTheme {
                SettingsAppPage(
                    state = uiState,
                    scale = scale,
                    onUpdateClicked = { updates++ },
                    onCheckForUpdates = { checks++ },
                    entryFocusRequester = entryFocus,
                )
            }
        }
        rule.waitForIdle()

        // Il pulsante c'è sempre e ha il focus: la pagina non resta senza
        // elementi focalizzabili.
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertIsDisplayed().assertIsFocused()
        rule.onNodeWithText(SETTINGS_CHECK_UPDATES_BUTTON_LABEL).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_UPDATE_BUTTON_LABEL).assertDoesNotExist()
        assertEquals(SETTINGS_CHECK_UPDATES_BUTTON_LABEL, updateButtonLabel(AppUpdateStatus.UpToDate))
        assertEquals(SETTINGS_CHECK_UPDATES_BUTTON_LABEL, updateButtonLabel(AppUpdateStatus.CheckFailed))

        // OK sul pulsante rilancia lo stesso controllo manuale del ViewModel.
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(1, checks)
        assertEquals(0, updates)

        // Con una versione disponibile il pulsante diventa "Aggiorna".
        uiState = uiState.copy(updateStatus = AppUpdateStatus.Available(release = release))
        rule.waitForIdle()
        rule.onNodeWithText("Disponibile la versione 1.0.3").assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_UPDATE_BUTTON_LABEL).assertIsDisplayed()
        assertEquals(
            SETTINGS_UPDATE_BUTTON_LABEL,
            updateButtonLabel(AppUpdateStatus.Available(release = release)),
        )
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG)
            .performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()
        assertEquals(1, updates)
        assertEquals(1, checks)

        // Controllo in corso: la riga di testo mostra lo stato e il pulsante
        // resta, così il focus non esce dalla pagina.
        uiState = uiState.copy(updateStatus = AppUpdateStatus.Checking)
        rule.waitForIdle()
        rule.onNodeWithText(UPDATE_STATUS_CHECKING).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_UPDATE_BUTTON_TAG).assertIsDisplayed()
        rule.onNodeWithText(SETTINGS_CHECK_UPDATES_BUTTON_LABEL).assertIsDisplayed()
    }

    @Test
    fun `pagina Aspetto dà il focus alla dimensione attiva`() {
        rule.setContent {
            FvpTheme {
                SettingsAppearancePage(scale = scale, interfaceSize = InterfaceSize.MEDIUM)
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag(interfaceSizeTag(InterfaceSize.MEDIUM)).assertIsFocused()
    }

    @Test
    fun `pagina Catalogo dà il focus ad Aggiorna catalogo`() {
        rule.setContent {
            FvpTheme {
                SettingsCatalogPage(
                    state = SettingsUiState(username = "demo"),
                    scale = scale,
                    entryFocusRequester = entryFocus,
                )
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_CATALOG_REFRESH_TAG).assertIsFocused()
    }

    @Test
    fun `pagina Account dà il focus a Esci dall'account`() {
        rule.setContent {
            FvpTheme {
                SettingsAccountPage(
                    state = SettingsUiState(username = "demo", status = "Attivo"),
                    scale = scale,
                    entryFocusRequester = entryFocus,
                )
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_EXIT_TAG).assertIsFocused()
    }

    @Test
    fun `pagina VPN dà il focus a Configura`() {
        rule.setContent {
            FvpTheme {
                SettingsVpnPage(
                    vpnState = VpnState.NoConfig,
                    scale = scale,
                    entryFocusRequester = entryFocus,
                )
            }
        }
        rule.waitForIdle()
        rule.onNodeWithTag(SETTINGS_VPN_CONFIGURE_TAG).assertIsFocused()
    }

    /**
     * Le pagine vere dentro la navigazione delle Impostazioni: OK su ogni card
     * apre la pagina e le dà il focus sul suo primo elemento focalizzabile;
     * Indietro da lì riporta alla griglia con il focus sulla card di ingresso.
     *
     * "Contenuti protetti" resta un contenuto segnaposto: la sua navigazione è
     * provata in `SettingsNavigationTest`.
     */
    @Test
    fun `ogni pagina vera dà il focus al primo pulsante e Indietro torna alla sua card`() {
        rule.setContent {
            FvpTheme {
                SettingsNavigation(
                    cardsState = SettingsCardsState(
                        username = "demo",
                        interfaceSize = InterfaceSize.MEDIUM,
                    ),
                    scale = scale,
                    appPage = { pageModifier, entry ->
                        SettingsAppPage(
                            state = appState(AppUpdateStatus.UpToDate),
                            scale = scale,
                            modifier = pageModifier,
                            entryFocusRequester = entry,
                        )
                    },
                    catalogPage = { pageModifier, entry ->
                        SettingsCatalogPage(
                            state = SettingsUiState(username = "demo"),
                            scale = scale,
                            modifier = pageModifier,
                            entryFocusRequester = entry,
                        )
                    },
                    accountPage = { pageModifier, entry ->
                        SettingsAccountPage(
                            state = SettingsUiState(username = "demo", status = "Attivo"),
                            scale = scale,
                            modifier = pageModifier,
                            entryFocusRequester = entry,
                        )
                    },
                    appearancePage = { pageModifier, _ ->
                        SettingsAppearancePage(
                            scale = scale,
                            modifier = pageModifier,
                            interfaceSize = InterfaceSize.MEDIUM,
                        )
                    },
                    vpnPage = { pageModifier, entry ->
                        SettingsVpnPage(
                            vpnState = VpnState.NoConfig,
                            scale = scale,
                            modifier = pageModifier,
                            entryFocusRequester = entry,
                        )
                    },
                )
            }
        }
        rule.waitForIdle()

        // Card -> pagina: il primo elemento focalizzabile della pagina ha il focus.
        val firstElements = listOf(
            SettingsCard.App to SETTINGS_UPDATE_BUTTON_TAG,
            SettingsCard.Catalog to SETTINGS_CATALOG_REFRESH_TAG,
            SettingsCard.Account to SETTINGS_EXIT_TAG,
            SettingsCard.Appearance to interfaceSizeTag(InterfaceSize.MEDIUM),
            SettingsCard.Vpn to SETTINGS_VPN_CONFIGURE_TAG,
        )
        firstElements.forEach { (card, firstElementTag) ->
            rule.onNodeWithTag(card.testTag).performSemanticsAction(SemanticsActions.OnClick)
            settle()
            rule.onNodeWithTag(firstElementTag).assertIsFocused()

            // Indietro dal primo elemento: si torna alla griglia, sulla card.
            rule.onNodeWithTag(firstElementTag).performKeyInput { pressKey(Key.Back) }
            settle()
            rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
            rule.onNodeWithTag(card.testTag).assertIsFocused()
        }
    }

    /** Due attese: il focus viene riportato dopo un fotogramma. */
    private fun settle() {
        rule.waitForIdle()
        rule.waitForIdle()
    }
}
