package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/** Tag di prova delle pagine segnaposto usate al posto di quelle vere. */
private const val FAKE_ACCOUNT_TAG = "fake_account_page"
private const val FAKE_APPEARANCE_TAG = "fake_appearance_page"
private const val FAKE_PROTECTED_TAG = "fake_protected_page"
private const val FAKE_VPN_TAG = "fake_vpn_page"
private const val FAKE_VPN_SETUP_TAG = "fake_vpn_setup_page"
private const val FAKE_CATALOG_TAG = "fake_catalog_page"
private const val FAKE_PLAYER_TAG = "fake_player_page"
private const val FAKE_APP_TAG = "fake_app_page"

/** Suffisso del pulsante che riceve il focus dentro una pagina segnaposto. */
private const val FAKE_CLOSE_SUFFIX = "_close"

/**
 * Navigazione griglia ↔ pagine delle Impostazioni: OK su una card apre la pagina
 * della sua funzione e Indietro torna alla griglia con il focus sulla card da cui
 * si era entrati.
 *
 * Le pagine sono sostituite da segnaposto con tag di prova: qui si prova la
 * navigazione ([SettingsNavigation]), il contenuto di ogni pagina ha i propri
 * test. I segnaposto riproducono il comportamento reale del tasto Indietro: le
 * pagine lo lasciano a [SettingsNavigation], mentre "Contenuti protetti" e la
 * configurazione della VPN lo gestiscono da sole e chiamano la chiusura, come
 * fanno `ProtectedContentScreen` (con `onExit`) e `VpnSetupScreen`.
 *
 * Le card sono `Card` di tv-material: OK si prova con l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsNavigationTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Dati finti per le righe di stato: nessun dato reale di server o account. */
    private fun cardsState() = SettingsCardsState(
        username = "demo",
        versionName = "1.0.2",
    )

    /** Tag della pagina segnaposto di [card]. */
    private fun fakePageTag(card: SettingsCard): String = when (card) {
        SettingsCard.Account -> FAKE_ACCOUNT_TAG
        SettingsCard.Appearance -> FAKE_APPEARANCE_TAG
        SettingsCard.Protected -> FAKE_PROTECTED_TAG
        SettingsCard.Vpn -> FAKE_VPN_TAG
        SettingsCard.Catalog -> FAKE_CATALOG_TAG
        SettingsCard.Player -> FAKE_PLAYER_TAG
        SettingsCard.App -> FAKE_APP_TAG
    }

    @Test
    fun `ogni card apre la sua pagina e Indietro torna alla griglia con il focus sulla card`() {
        showNavigation()

        SettingsCard.entries.forEach { card ->
            val pageTag = fakePageTag(card)

            rule.onNodeWithTag(card.testTag).performSemanticsAction(SemanticsActions.OnClick)
            settle()
            rule.onNodeWithTag(pageTag).assertExists()
            rule.onNodeWithTag(SETTINGS_GRID_TAG).assertDoesNotExist()
            assertEquals(
                "Impostazioni › ${card.title}",
                settingsPageTitle(card),
            )

            // Indietro sulla pagina: si torna alla griglia, sulla stessa card.
            rule.onNodeWithTag(pageTag + FAKE_CLOSE_SUFFIX).performKeyInput { pressKey(Key.Back) }
            settle()
            rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
            rule.onNodeWithTag(pageTag).assertDoesNotExist()
            rule.onNodeWithTag(card.testTag).assertIsFocused()
        }
    }

    @Test
    fun `dalla pagina VPN la configurazione si apre e Indietro torna alla pagina VPN`() {
        showNavigation()

        rule.onNodeWithTag(SETTINGS_CARD_VPN_TAG).performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag(FAKE_VPN_TAG).assertExists()

        // "Configura" apre la pagina con il QR, che sostituisce la pagina VPN.
        rule.onNodeWithTag(FAKE_VPN_TAG + FAKE_CLOSE_SUFFIX)
            .performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag(FAKE_VPN_SETUP_TAG).assertExists()
        rule.onNodeWithTag(FAKE_VPN_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertDoesNotExist()

        // Indietro dalla configurazione: si torna alla pagina VPN, non alla griglia.
        rule.onNodeWithTag(FAKE_VPN_SETUP_TAG + FAKE_CLOSE_SUFFIX).performKeyInput { pressKey(Key.Back) }
        settle()
        rule.onNodeWithTag(FAKE_VPN_TAG).assertExists()
        rule.onNodeWithTag(FAKE_VPN_SETUP_TAG).assertDoesNotExist()

        // Indietro dalla pagina VPN: griglia con il focus sulla card VPN.
        rule.onNodeWithTag(FAKE_VPN_TAG + FAKE_CLOSE_SUFFIX).performKeyInput { pressKey(Key.Back) }
        settle()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_CARD_VPN_TAG).assertIsFocused()
    }

    @Test
    fun `all'ingresso c'è solo la griglia, con il titolo e le sette card`() {
        showNavigation()

        rule.onNodeWithTag(SETTINGS_TITLE_TAG).assertTextEquals(SETTINGS_TITLE)
        SettingsCard.entries.forEach { card ->
            rule.onNodeWithTag(card.testTag).assertExists()
            rule.onNodeWithTag(fakePageTag(card)).assertDoesNotExist()
        }
    }

    @Test
    fun `ogni pagina segnaposto dà il focus al suo primo elemento focalizzabile`() {
        showNavigation()
        SettingsCard.entries.forEach { card ->
            rule.onNodeWithTag(card.testTag).performSemanticsAction(SemanticsActions.OnClick)
            settle()
            // Il pulsante della pagina ha il focus d'ingresso: il tasto Indietro
            // resta dentro la pagina, come su una TV.
            rule.onNodeWithTag(fakePageTag(card) + FAKE_CLOSE_SUFFIX).assertIsFocused()
            rule.onNodeWithTag(fakePageTag(card) + FAKE_CLOSE_SUFFIX)
                .performKeyInput { pressKey(Key.Back) }
            settle()
            rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
            rule.onNodeWithTag(card.testTag).assertIsFocused()
        }
    }

    /**
     * Il caso del difetto: la pagina non ha elementi focalizzabili, il focus
     * esce dalla pagina e onPreviewKeyEvent non riceve più Indietro. Il
     * BackHandler di [SettingsNavigation] (composto dopo quello della
     * schermata principale) riporta comunque alla griglia con il focus sulla
     * card da cui si era entrati.
     */
    @Test
    fun `Indietro con il focus fuori dalla pagina torna alla griglia sulla card di ingresso`() {
        rule.setContent {
            FvpTheme {
                SettingsNavigation(
                    cardsState = cardsState(),
                    scale = scale,
                    // Pagina senza elementi focalizzabili, come la pagina App
                    // aggiornata prima della correzione.
                    appPage = { pageModifier, _ ->
                        Box(modifier = pageModifier.fillMaxSize().testTag(FAKE_APP_TAG))
                    },
                )
            }
        }
        settle()

        rule.onNodeWithTag(SETTINGS_CARD_APP_TAG).performSemanticsAction(SemanticsActions.OnClick)
        settle()
        rule.onNodeWithTag(FAKE_APP_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertDoesNotExist()

        // Il focus è uscito dalla pagina: Indietro arriva al gestore del
        // sistema (lo stesso che sul dispositivo vero chiama il BackHandler
        // della navigazione, composto dopo quello della schermata principale)
        // e riporta alla griglia, con il focus sulla card App.
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        settle()
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertExists()
        rule.onNodeWithTag(FAKE_APP_TAG).assertDoesNotExist()
        rule.onNodeWithTag(SETTINGS_CARD_APP_TAG).assertIsFocused()
    }

    /** Due attese: il focus viene riportato dopo un fotogramma. */
    private fun settle() {
        rule.waitForIdle()
        rule.waitForIdle()
    }

    private fun showNavigation() {
        rule.setContent {
            FvpTheme {
                var vpnSetupOpen by remember { mutableStateOf(false) }
                SettingsNavigation(
                    cardsState = cardsState(),
                    scale = scale,
                    vpnSetupOpen = vpnSetupOpen,
                    onCloseVpnSetup = { vpnSetupOpen = false },
                    accountPage = { pageModifier, entryFocus ->
                        FakeSettingsPage(pageModifier, scale, FAKE_ACCOUNT_TAG, entryFocus = entryFocus)
                    },
                    appearancePage = { pageModifier, entryFocus ->
                        FakeSettingsPage(pageModifier, scale, FAKE_APPEARANCE_TAG, entryFocus = entryFocus)
                    },
                    protectedPage = { pageModifier, closePage ->
                        FakeSettingsPage(pageModifier, scale, FAKE_PROTECTED_TAG, backAction = closePage)
                    },
                    vpnPage = { pageModifier, entryFocus ->
                        FakeSettingsPage(
                            modifier = pageModifier,
                            scale = scale,
                            tag = FAKE_VPN_TAG,
                            onClick = { vpnSetupOpen = true },
                            entryFocus = entryFocus,
                        )
                    },
                    vpnSetupPage = { pageModifier ->
                        FakeSettingsPage(
                            modifier = pageModifier,
                            scale = scale,
                            tag = FAKE_VPN_SETUP_TAG,
                            backAction = { vpnSetupOpen = false },
                        )
                    },
                    catalogPage = { pageModifier, entryFocus ->
                        FakeSettingsPage(pageModifier, scale, FAKE_CATALOG_TAG, entryFocus = entryFocus)
                    },
                    playerPage = { pageModifier, entryFocus ->
                        FakeSettingsPage(pageModifier, scale, FAKE_PLAYER_TAG, entryFocus = entryFocus)
                    },
                    appPage = { pageModifier, entryFocus ->
                        FakeSettingsPage(pageModifier, scale, FAKE_APP_TAG, entryFocus = entryFocus)
                    },
                )
            }
        }
        settle()
    }
}

/**
 * Pagina segnaposto: un solo pulsante che riceve il focus, così il tasto
 * Indietro arriva dalla pagina come su una TV.
 *
 * Con [backAction] la pagina gestisce da sola Indietro (come fanno
 * `ProtectedContentScreen` e `VpnSetupScreen`); senza, il tasto risale fino al
 * gestore di [SettingsNavigation].
 */
@Composable
private fun FakeSettingsPage(
    modifier: Modifier,
    scale: UiScale,
    tag: String,
    onClick: () -> Unit = {},
    backAction: (() -> Unit)? = null,
    entryFocus: FocusRequester? = null,
) {
    val localButtonFocus = remember(tag) { FocusRequester() }
    // Come le pagine vere: il focus d'ingresso arriva da SettingsNavigation.
    val buttonFocus = entryFocus ?: localButtonFocus
    LaunchedEffect(tag) {
        withFrameNanos { }
        runCatching { buttonFocus.requestFocus() }
    }
    Box(
        modifier = modifier
            .fillMaxSize()
            .then(
                if (backAction != null) {
                    Modifier.onPreviewKeyEvent { event ->
                        if (event.type == KeyEventType.KeyDown && event.key == Key.Back) {
                            backAction()
                            true
                        } else {
                            false
                        }
                    }
                } else {
                    Modifier
                },
            )
            .testTag(tag),
        contentAlignment = Alignment.Center,
    ) {
        FvpSecondaryButton(
            text = "Chiudi",
            onClick = onClick,
            scale = scale,
            modifier = Modifier
                .focusRequester(buttonFocus)
                .testTag(tag + FAKE_CLOSE_SUFFIX),
        )
    }
}
