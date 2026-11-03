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
import it.felixvision.tv.ui.theme.FvpColors
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
 * Griglia delle Impostazioni: sette card, quattro per riga, nell'ordine Account,
 * Aspetto, Contenuti protetti, VPN, Catalogo, Player, App, ognuna con la sua
 * riga di stato calcolata da dati finti (nessun dato reale di server o account).
 *
 * La griglia si compone senza ViewModel ([SettingsGrid]): le card sono [Card]
 * di tv-material, quindi OK si prova con l'azione semantica
 * `SemanticsActions.OnClick` e titolo e stato, che la Card unisce nel proprio
 * nodo, si leggono con `useUnmergedTree = true`. Un solo `setContent` per test.
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
    fun `la griglia ha il titolo e le sette card nell'ordine indicato`() {
        showGrid()

        rule.onNodeWithTag(SETTINGS_TITLE_TAG).assertTextEquals(SETTINGS_TITLE)
        rule.onNodeWithTag(SETTINGS_GRID_TAG).assertIsDisplayed()

        val tags = listOf(
            SETTINGS_CARD_ACCOUNT_TAG,
            SETTINGS_CARD_APPEARANCE_TAG,
            SETTINGS_CARD_PROTECTED_TAG,
            SETTINGS_CARD_VPN_TAG,
            SETTINGS_CARD_CATALOG_TAG,
            SETTINGS_CARD_PLAYER_TAG,
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

        // Seconda riga: Catalogo, Player e App, sotto la prima e larghe come le altre.
        val catalog = rule.onNodeWithTag(SETTINGS_CARD_CATALOG_TAG).fetchSemanticsNode().boundsInRoot
        val player = rule.onNodeWithTag(SETTINGS_CARD_PLAYER_TAG).fetchSemanticsNode().boundsInRoot
        val app = rule.onNodeWithTag(SETTINGS_CARD_APP_TAG).fetchSemanticsNode().boundsInRoot
        assertTrue("Catalogo non sta sotto la prima riga", catalog.top >= account.bottom - 1f)
        assertTrue("Player non sta a destra di Catalogo", player.left > catalog.left)
        assertTrue("App non sta a destra di Player", app.left > player.left)
        listOf(catalog, player, app).forEach { bounds ->
            assertTrue("la card non è larga come Account", abs(bounds.width - account.width) <= 0.5f)
            assertTrue("la card non è alta come Account", abs(bounds.height - account.height) <= 0.5f)
        }
    }

    @Test
    fun `ogni card ha titolo e riga di stato dai dati finti`() {
        showGrid()

        rule.onNodeWithTag(SettingsCard.Account.titleTag, useUnmergedTree = true).assertTextEquals("Account")
        rule.onNodeWithTag(SettingsCard.Account.statusTag, useUnmergedTree = true).assertTextEquals("demo · scade 15/03/2027")

        rule.onNodeWithTag(SettingsCard.Appearance.titleTag, useUnmergedTree = true).assertTextEquals("Aspetto")
        rule.onNodeWithTag(SettingsCard.Appearance.statusTag, useUnmergedTree = true).assertTextEquals("Interfaccia media")

        rule.onNodeWithTag(SettingsCard.Protected.titleTag, useUnmergedTree = true).assertTextEquals("Contenuti protetti")
        rule.onNodeWithTag(SettingsCard.Protected.statusTag, useUnmergedTree = true).assertTextEquals("PIN impostato")

        rule.onNodeWithTag(SettingsCard.Vpn.titleTag, useUnmergedTree = true).assertTextEquals("VPN")
        rule.onNodeWithTag(SettingsCard.Vpn.statusTag, useUnmergedTree = true).assertTextEquals("Connessa · server-prova")

        rule.onNodeWithTag(SettingsCard.Catalog.titleTag, useUnmergedTree = true).assertTextEquals("Catalogo")
        rule.onNodeWithTag(SettingsCard.Catalog.statusTag, useUnmergedTree = true).assertTextEquals("Aggiornato alle 14:05")

        rule.onNodeWithTag(SettingsCard.Player.titleTag, useUnmergedTree = true).assertTextEquals("Player")
        rule.onNodeWithTag(SettingsCard.Player.statusTag, useUnmergedTree = true).assertTextEquals("Zapping ogni 10 s")

        rule.onNodeWithTag(SettingsCard.App.titleTag, useUnmergedTree = true).assertTextEquals("App")
        rule.onNodeWithTag(SettingsCard.App.statusTag, useUnmergedTree = true).assertTextEquals("Versione 1.0.2")
    }

    @Test
    fun `senza scadenza la card Account mostra il solo nome utente`() {
        showGrid(cardsState().copy(expiresAtEpochSeconds = null))

        rule.onNodeWithTag(SettingsCard.Account.statusTag, useUnmergedTree = true).assertTextEquals("demo")
    }

    @Test
    fun `aggiornamento del catalogo in corso sulla card Catalogo`() {
        showGrid(cardsState().copy(catalogRefreshing = true))

        rule.onNodeWithTag(SettingsCard.Catalog.statusTag, useUnmergedTree = true).assertTextEquals("Aggiornamento in corso…")
    }

    @Test
    fun `versione disponibile sulla card App e nessun pallino nelle Impostazioni`() {
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "http://server.esempio:8080/FelixVP.apk",
            sizeBytes = 1024L,
        )
        showGrid(cardsState(updateStatus = AppUpdateStatus.Available(release = release)))

        rule.onNodeWithTag(SettingsCard.App.statusTag, useUnmergedTree = true)
            .assertTextEquals("Disponibile la versione 1.0.3")
        // Il pallino di aggiornamento resta solo sull'icona del menu laterale.
        rule.onAllNodesWithTag(UPDATE_BADGE_TAG, useUnmergedTree = true).assertCountEquals(0)
        rule.onAllNodesWithTag("settings_update_badge", useUnmergedTree = true).assertCountEquals(0)
    }

    /**
     * Con un aggiornamento disponibile l'icona della card App è arancione; il
     * colore si legge dalla chiave semantica [SettingsCardIconTintKey]
     * esposta dall'icona. Gli stati Downloading e Installing sono coperti dalla
     * stessa regola pura [hasActiveUpdate], provata nell'ultimo test.
     */
    @Test
    fun `icona della card App arancione con aggiornamento disponibile`() {
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "http://server.esempio:8080/FelixVP.apk",
            sizeBytes = 1024L,
        )
        showGrid(cardsState(updateStatus = AppUpdateStatus.Available(release = release)))

        val tint = rule.onNodeWithTag(SettingsCard.App.iconTag, useUnmergedTree = true)
            .fetchSemanticsNode().config[SettingsCardIconTintKey]
        assertEquals(FvpColors.Orange, tint)
    }

    /** Senza aggiornamento l'icona della card App torna al colore normale. */
    @Test
    fun `icona della card App al colore normale senza aggiornamento`() {
        showGrid(cardsState(updateStatus = AppUpdateStatus.UpToDate))

        val tint = rule.onNodeWithTag(SettingsCard.App.iconTag, useUnmergedTree = true)
            .fetchSemanticsNode().config[SettingsCardIconTintKey]
        assertEquals(FvpColors.TextPrimary, tint)
        // Anche le altre card restano al colore normale.
        val playerTint = rule.onNodeWithTag(SettingsCard.Player.iconTag, useUnmergedTree = true)
            .fetchSemanticsNode().config[SettingsCardIconTintKey]
        assertEquals(FvpColors.TextPrimary, playerTint)
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
    fun `righe di stato delle sette card e regola dell'icona arancione`() {
        val release = ReleaseInfo(
            version = "1.0.3",
            downloadUrl = "http://server.esempio:8080/FelixVP.apk",
            sizeBytes = 1024L,
        )
        // L'icona arancione scatta negli stati con aggiornamento in corso.
        assertTrue(AppUpdateStatus.Available(release = release).hasActiveUpdate())
        assertTrue(AppUpdateStatus.Downloading(release = release, progressPercent = 40).hasActiveUpdate())
        assertTrue(AppUpdateStatus.Installing(release = release).hasActiveUpdate())
        assertTrue(!AppUpdateStatus.UpToDate.hasActiveUpdate())
        assertTrue(!AppUpdateStatus.Checking.hasActiveUpdate())
        assertTrue(!AppUpdateStatus.CheckFailed.hasActiveUpdate())
        assertEquals("Zapping ogni 10 s", playerStatusLine(10))
        assertEquals("Zapping ogni 30 s", playerStatusLine(30))
        // Un valore non ammesso torna al predefinito.
        assertEquals("Zapping ogni 10 s", playerStatusLine(7))

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
