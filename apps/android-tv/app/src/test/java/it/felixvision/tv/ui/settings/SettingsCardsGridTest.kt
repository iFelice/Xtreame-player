package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.update.ReleaseInfo
import it.felixvision.tv.ui.components.UPDATE_BADGE_TAG
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import it.felixvision.tv.vpn.VpnState
import java.time.ZoneId
import kotlin.math.abs
import java.time.ZonedDateTime
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Griglia delle Impostazioni: sei card, quattro per riga, nell'ordine Account,
 * Aspetto, Contenuti protetti, VPN, Catalogo, App, ognuna con la sua riga di
 * stato calcolata da dati finti (nessun dato reale di server o account).
 *
 * La griglia si compone senza ViewModel ([SettingsGrid]): le card sono [Card]
 * di tv-material, quindi OK si prova con l'azione semantica
 * `SemanticsActions.OnClick`. Un solo `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsCardsGridTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    /** Scadenza fissa a mezzogiorno: la data non dipende dal fuso del test. */
    private val expiryEpochSeconds = ZonedDateTime.of(
        2027, 3, 15, 12, 0, 0, 0, ZoneId.systemDefault(),
    ).toEpochSecond()

    /** Ultimo aggiornamento del catalogo alle 14:05, ora locale del test. */
    private val catalogUpdateMillis = ZonedDateTime.of(
        2026, 10, 20, 14, 5, 0, 0, ZoneId.systemDefault(),
    ).toInstant().toEpochMilli()

    /** Dati finti per le righe di stato: solo valori dimostrativi. */
    private fun cardsState(
        updateStatus: AppUpdateStatus = AppUpdateStatus.UpToDate,
    ) = SettingsCardsState(
        username = "demo",
        expiresAtEpochSeconds = expiryEpochSeconds,
        interfaceSize = InterfaceSize.MEDIUM,
        protectedSummary = ProtectedSummary(hasPin = true),
        vpnState = VpnState.Connected("server-prova"),
        catalogLastUpdateMillis = catalogUpdateMillis,
        catalogRefreshing = false,
        versionName = "1.0.2",
        updateStatus = updateStatus,
    )

    private fun showGrid(
        state: SettingsCardsState = cardsState(),
        entryFocus: FocusRequester? = null,
        onOpenCard: (SettingsCard) -> Unit = {},
    ) {
        rule.setContent {
            FvpTheme {
                SettingsGrid(
                    state = state,
                    scale = scale,
                    entryFocusRequester = entryFocus,
                    onOpenCard = onOpenCard,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `la griglia ha il titolo e le sei card nell'ordine indicato`() {
        showGrid()

        rule.onNodeWithTag(SETTINGS_TITLE_TAG).assertTextEquals(SETTINGS_TITLE)
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertIsDisplayed()

        val tags = listOf(
            SETTINGS_CARD_ACCOUNT_TAG,
            SETTINGS_CARD_APPEARANCE_TAG,
            SETTINGS_CARD_PROTECTED_TAG,
            SETTINGS_CARD_VPN_TAG,
            SETTINGS_CARD_CATALOG_TAG,
            SETTINGS_CARD_APP_TAG,
        )
        assertEquals(
            SettingsCard.entries.map { it.testTag },
            tags,
        )
        tags.forEach { tag -> rule.onNodeWithTag(tag).assertIsDisplayed() }

        // Prima riga: Account, Aspetto, Contenuti protetti, VPN da sinistra a destra.
        val account = rule.onNodeWithTag(SETTINGS_CARD_ACCOUNT_TAG).fetchSemanticsNode().boundsInRoot
        val appearance = rule.onNodeWithTag(SETTINGS_CARD_APPEARANCE_TAG).fetchSemanticsNode().boundsInRoot
        val protectedCard = rule.onNodeWithTag(SETTINGS_CARD_PROTECTED_TAG).fetchSemanticsNode().boundsInRoot
        val vpn = rule.onNodeWithTag(SETTINGS_CARD_VPN_TAG).fetchSemanticsNode().boundsInRoot
        assertTrue("Aspetto non sta a destra di Account", appearance.left > account.left)
        assertTrue("Contenuti protetti non sta a destra di Aspetto", protectedCard.left > appearance.left)
        assertTrue("VPN non sta a destra di Contenuti protetti", vpn.left > protectedCard.left)
        listOf(appearance, protectedCard, vpn).forEach { bounds ->
            assertTrue("la card non sta sulla prima riga", abs(bounds.top - account.top) <= 0.5f)
            assertTrue(
                "la card non è alta come le altre",
                abs(bounds.height - account.height) <= 0.5f,
            )
        }

        // Seconda riga: Catalogo e App, sotto la prima e larghe come le altre.
        val catalog = rule.onNodeWithTag(SETTINGS_CARD_CATALOG_TAG).fetchSemanticsNode().boundsInRoot
        val app = rule.onNodeWithTag(SETTINGS_CARD_APP_TAG).fetchSemanticsNode().boundsInRoot
        assertTrue("Catalogo non sta sotto la prima riga", catalog.top >= account.bottom - 1f)
        assertTrue("App non sta a destra di Catalogo", app.left > catalog.left)
        assertTrue("Catalogo non è larga come Account", abs(catalog.width - account.width) <= 0.5f)
        assertTrue("App non è larga come Account", abs(app.width - account.width) <= 0.5f)
        assertTrue("Catalogo non è alta come Account", abs(catalog.height - account.height) <= 0.5f)
        assertTrue("App non è alta come Account", abs(app.height - account.height) <= 0.5f)
    }

    @Test
    fun `ogni card ha titolo e riga di stato dai dati finti`() {
        showGrid()

        rule.onNodeWithTag(SettingsCard.Account.titleTag).assertTextEquals("Account")
        rule.onNodeWithTag(SettingsCard.Account.statusTag).assertTextEquals("demo · scade 15/03/2027")

        rule.onNodeWithTag(SettingsCard.Appearance.titleTag).assertTextEquals("Aspetto")
        rule.onNodeWithTag(SettingsCard.Appearance.statusTag).assertTextEquals("Interfaccia media")

        rule.onNodeWithTag(SettingsCard.Protected.titleTag).assertTextEquals("Contenuti protetti")
        rule.onNodeWithTag(SettingsCard.Protected.statusTag).assertTextEquals("PIN impostato")

        rule.onNodeWithTag(SettingsCard.Vpn.titleTag).assertTextEquals("VPN")
        rule.onNodeWithTag(SettingsCard.Vpn.statusTag).assertTextEquals("Connessa · server-prova")

        rule.onNodeWithTag(SettingsCard.Catalog.titleTag).assertTextEquals("Catalogo")
        rule.onNodeWithTag(SettingsCard.Catalog.statusTag).assertTextEquals("Aggiornato alle 14:05")

        rule.onNodeWithTag(SettingsCard.App.titleTag).assertTextEquals("App")
        rule.onNodeWithTag(SettingsCard.App.statusTag).assertTextEquals("Versione 1.0.2")
    }

    @Test
    fun `senza scadenza la card Account mostra il solo nome utente`() {
        showGrid(cardsState().copy(expiresAtEpochSeconds = null))

        rule.onNodeWithTag(SettingsCard.Account.statusTag).assertTextEquals("demo")
    }

    @Test
    fun `aggiornamento del catalogo in corso sulla card Catalogo`() {
        showGrid(cardsState().copy(catalogRefreshing = true))

        rule.onNodeWithTag(SettingsCard.Catalog.statusTag).assertTextEquals("Aggiornamento in corso…")
    }

    @Test
    fun `versione disponibile sulla card App e nessun pallino nelle Impostazioni`() {
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "http://server.esempio:8080/FelixVP.apk",
            sizeBytes = 1024L,
        )
        showGrid(cardsState(updateStatus = AppUpdateStatus.Available(release = release)))

        rule.onNodeWithTag(SettingsCard.App.statusTag)
            .assertTextEquals("Disponibile la versione 1.0.3")
        // Il pallino di aggiornamento resta solo sull'icona del menu laterale.
        rule.onAllNodesWithTag(UPDATE_BADGE_TAG, useUnmergedTree = true).assertCountEquals(0)
        rule.onAllNodesWithTag("settings_update_badge", useUnmergedTree = true).assertCountEquals(0)
    }

    @Test
    fun `il focus d'ingresso va sulla prima card`() {
        val entryFocus = FocusRequester()
        showGrid(entryFocus = entryFocus)

        rule.runOnIdle { entryFocus.requestFocus() }
        rule.waitForIdle()

        rule.onNodeWithTag(SETTINGS_CARD_ACCOUNT_TAG).assertIsFocused()
    }

    @Test
    fun `OK su ogni card chiede di aprire la sua pagina`() {
        val opened = mutableListOf<SettingsCard>()
        showGrid(onOpenCard = { opened.add(it) })

        SettingsCard.entries.forEach { card ->
            rule.onNodeWithTag(card.testTag).performSemanticsAction(SemanticsActions.OnClick)
        }
        rule.waitForIdle()

        assertEquals(SettingsCard.entries.toList(), opened)
    }

    @Test
    fun `righe di stato delle sei card`() {
        assertEquals("demo · scade 15/03/2027", accountStatusLine("demo", expiryEpochSeconds))
        assertEquals("demo", accountStatusLine("demo", null))
        assertEquals("Interfaccia compatta", appearanceStatusLine(InterfaceSize.COMPACT))
        assertEquals("Interfaccia media", appearanceStatusLine(InterfaceSize.MEDIUM))
        assertEquals("Interfaccia grande", appearanceStatusLine(InterfaceSize.LARGE))
        assertEquals("PIN impostato", protectedSettingsLine(ProtectedSummary(hasPin = true)))
        assertEquals("PIN non impostato", protectedSettingsLine(ProtectedSummary(hasPin = false)))
        assertEquals("Connessa · server-prova", vpnCardStatus(VpnState.Connected("server-prova")).text)
        assertEquals("VPN non connessa", vpnCardStatus(VpnState.NotConnected("VPN non connessa")).text)
        assertEquals("Spenta", vpnCardStatus(VpnState.Off).text)
        assertEquals("Nessuna configurazione", vpnCardStatus(VpnState.NoConfig).text)
        assertEquals("Aggiornamento in corso…", catalogStatusLine(catalogUpdateMillis, refreshing = true))
        assertEquals("Aggiornato alle 14:05", catalogStatusLine(catalogUpdateMillis, refreshing = false))
        assertEquals("Mai aggiornato", catalogStatusLine(null, refreshing = false))
        assertEquals("Versione 1.0.2", appCardStatus("1.0.2", AppUpdateStatus.UpToDate).text)
        assertEquals(
            "Disponibile la versione 1.0.3",
            appCardStatus(
                versionName = "1.0.2",
                updateStatus = AppUpdateStatus.Available(
                    release = ReleaseInfo(
                        version = "1.0.3",
                        downloadUrl = "http://server.esempio:8080/FelixVP.apk",
                        sizeBytes = 1024L,
                    ),
                ),
            ).text,
        )
    }
}
