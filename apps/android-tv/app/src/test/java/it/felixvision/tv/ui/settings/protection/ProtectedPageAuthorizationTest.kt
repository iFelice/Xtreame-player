package it.felixvision.tv.ui.settings.protection

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedPageAccess
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * PIN valido solo per la visita alla pagina: senza autorizzazione si apre la
 * verifica, la revoca (ON_STOP / ACTION_SCREEN_OFF) riporta al PIN anche a
 * pagina aperta, azzera la selezione e rende l'interruttore irraggiungibile.
 * "Nascondi" non revoca l'autorizzazione. Uscendo dalla pagina l'autorizzazione
 * si perde.
 *
 * Un solo `setContent` per test; sdk 34 e qualificatori TV; clic tv-material
 * con `performSemanticsAction(SemanticsActions.OnClick)`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ProtectedPageAuthorizationTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val pin = "1234"

    private val categoryTag = "protected_hidden_cat_live_001"

    private lateinit var store: ProtectedContentStore
    private lateinit var session: ProtectedSession
    private lateinit var access: ProtectedPageAccess
    private var exits = 0

    private class FakeClock : Clock {
        override fun nowMillis(): Long = 0L
    }

    private class FakeCredentials : CredentialStore {
        override suspend fun load(): StoredCredentials? = null
        override suspend fun save(credentials: StoredCredentials) {}
        override suspend fun clear() {}
    }

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Before
    fun setUp() {
        store = ProtectedContentStore(context = context)
        session = ProtectedSession(clock = FakeClock())
        access = ProtectedPageAccess()
        exits = 0
        runBlocking {
            store.setPin(server, username, pin)
            store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "Categoria di prova")
        }
    }

    private fun hasTag(tag: String): Boolean = runCatching {
        rule.onNodeWithTag(tag).fetchSemanticsNode()
        true
    }.getOrDefault(false)

    /** Due attese: il focus richiesto in un LaunchedEffect arriva al frame dopo. */
    private fun settle() {
        rule.waitForIdle()
        rule.waitForIdle()
    }

    private fun waitForTag(tag: String) {
        rule.waitUntil(timeoutMillis = 10_000L) { hasTag(tag) }
        settle()
    }

    private fun click(tag: String) {
        rule.onNodeWithTag(tag).performSemanticsAction(SemanticsActions.OnClick)
        settle()
    }

    private fun pressBack() {
        rule.runOnIdle { rule.activity.onBackPressedDispatcher.onBackPressed() }
        settle()
    }

    /** Digita il PIN di prova sul tastierino e conferma con OK. */
    private fun enterPin() {
        for (digit in 1..4) click(pinKeyTag(digit))
        click(PIN_OK_TAG)
        rule.waitUntil(timeoutMillis = 10_000L) { access.isAuthorized }
        waitForTag("protected_title")
    }

    private fun showScreen() {
        rule.setContent {
            FvpTheme {
                ProtectedContentScreen(
                    store = store,
                    session = session,
                    access = access,
                    credentialStore = FakeCredentials(),
                    clock = FakeClock(),
                    server = server,
                    username = username,
                    catalog = null,
                    scale = scale,
                    onExit = { exits += 1 },
                )
            }
        }
    }

    @Test
    fun `senza PIN verificato la pagina di gestione non e raggiungibile`() {
        // Sessione sbloccata ma autorizzazione mai concessa: la pagina deve
        // comunque aprirsi sulla verifica del PIN.
        session.unlock()
        showScreen()
        waitForTag(PIN_ENTRY_TAG)

        assertFalse(access.isAuthorized)
        rule.onNodeWithTag("protected_title").assertDoesNotExist()
        rule.onNodeWithTag("protected_toggle_visibility").assertDoesNotExist()
        rule.onNodeWithTag(categoryTag).assertDoesNotExist()
        // L'interruttore non è raggiungibile: session.unlock() non può essere
        // chiamato dalla pagina prima del PIN.
        assertTrue(session.unlocked.value)
    }

    @Test
    fun `revoca dell autorizzazione torna al PIN azzera la selezione e chiude la conferma`() {
        access.grant()
        showScreen()
        waitForTag("protected_title")

        // Selezione attiva e finestra di conferma aperta: la revoca deve
        // riportare alla verifica del PIN da qualunque punto della pagina.
        click(categoryTag)
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertExists()
        click(PROTECTED_REMOVE_SELECTED_TAG)
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertExists()

        // Simula l'evento che in FvpMainScreen revoca (ON_STOP / SCREEN_OFF).
        rule.runOnIdle {
            session.lock()
            access.revoke()
        }
        waitForTag(PIN_ENTRY_TAG)

        assertFalse(access.isAuthorized)
        assertFalse(session.unlocked.value)
        rule.onNodeWithTag("protected_title").assertDoesNotExist()
        rule.onNodeWithTag("protected_toggle_visibility").assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertDoesNotExist()

        // Verificando di nuovo il PIN si riapre la pagina: la selezione è
        // azzerata (nessun pulsante di rimozione) e l'autorizzazione è valida.
        enterPin()
        assertTrue(access.isAuthorized)
        rule.onNodeWithTag("protected_title").assertExists()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertDoesNotExist()
        rule.onNodeWithTag(categoryTag).assertExists()
    }

    @Test
    fun `dopo il PIN Nascondi lascia la pagina principale aperta e autorizzata`() {
        showScreen()
        waitForTag(PIN_ENTRY_TAG)
        assertFalse(access.isAuthorized)

        // Il PIN verificato autorizza la visita corrente.
        enterPin()
        assertTrue(access.isAuthorized)
        rule.onNodeWithTag("protected_title").assertExists()
        assertFalse(session.unlocked.value)

        // "Mostra": con autorizzazione la sessione si sblocca.
        click("protected_toggle_visibility")
        assertTrue(session.unlocked.value)

        // "Nascondi": riblocca i contenuti ma NON revoca l'autorizzazione.
        click("protected_toggle_visibility")
        assertFalse(session.unlocked.value)
        assertTrue(access.isAuthorized)
        rule.onNodeWithTag("protected_title").assertExists()
        rule.onNodeWithTag(PIN_ENTRY_TAG).assertDoesNotExist()
        assertEquals(0, exits)
    }

    @Test
    fun `uscendo dalla pagina la autorizzazione si perde`() {
        access.grant()
        showScreen()
        waitForTag("protected_title")

        pressBack()

        assertEquals(1, exits)
        assertFalse(access.isAuthorized)
        // Al rientro servirebbe di nuovo il PIN: la pagina di gestione non resta
        // aperta nemmeno in questa stessa composizione.
        rule.onNodeWithTag("protected_toggle_visibility").assertDoesNotExist()
        rule.onNodeWithTag(PIN_ENTRY_TAG).assertExists()
    }
}
