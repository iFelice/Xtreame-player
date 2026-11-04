@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.settings.protection

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.getOrNull
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTextInput
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.mobile.ui.components.fvpFieldEditorTag
import it.felixvision.mobile.ui.theme.FvpTheme
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.protection.PinHasher
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Compose (Robolectric) dei livelli con PIN della pagina "Contenuti
 * protetti" del tablet:
 * - creazione con conferma diversa ("I PIN non coincidono") e con conferma
 *   uguale (PIN salvato solo come hash, mai in chiaro nell'archivio);
 * - verifica con "PIN errato", blocco di 30 s dopo 5 errori consecutivi con
 *   conto alla rovescia sul tempo virtuale, sblocco allo scadere e conteggio
 *   azzerato da un PIN corretto;
 * - "PIN dimenticato": password giusta → nuovo PIN con gli elenchi conservati,
 *   password sbagliata → errore.
 *
 * Regole del progetto: un solo `setContent` per test; le funzioni di supporto
 * sono membri di questa classe e non vengono importate; le API di
 * kotlinx-coroutines-test sono importate con l'OptIn su
 * [ExperimentalCoroutinesApi]; lo stato di UI cambia solo su [Dispatchers.Main],
 * sostituito da un dispatcher di test con lo stesso [TestCoroutineScheduler]
 * dell'orologio iniettato (tempo virtuale); chiavi lazy uniche; nessun
 * `FocusRequester()` creato fuori da `remember`; `useUnmergedTree = true` per i
 * tag interni a elementi cliccabili. Dati di esempio solo
 * http://server.esempio:8080, demo/demo, codice "001" e PIN di prova "1234".
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1280dp-h800dp-land-mdpi")
class ProtectedPinTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    // --- Tempo virtuale e Dispatchers.Main ---

    private val scheduler = TestCoroutineScheduler()

    /** Dispatcher di test non unconfined: il battito del blocco resta sul delay. */
    private val testDispatcher = StandardTestDispatcher(scheduler)

    /** Orologio iniettato, coerente col tempo virtuale del dispatcher. */
    private val virtualClock = Clock { scheduler.currentTime }

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    // --- Dati e finti ---

    private val server = SERVER
    private val username = "demo"
    private val pin = "1234"

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private lateinit var store: ProtectedContentStore
    private lateinit var session: ProtectedSession
    private lateinit var credentials: FakeCredentialStore

    private class FakeCredentialStore(
        private var stored: StoredCredentials? = null,
    ) : CredentialStore {
        override suspend fun load(): StoredCredentials? = stored

        override suspend fun save(credentials: StoredCredentials) {
            stored = credentials
        }

        override suspend fun clear() {
            stored = null
        }
    }

    @Before
    fun createCollaborators() {
        store = ProtectedContentStore(context = context)
        session = ProtectedSession(clock = virtualClock)
        credentials = FakeCredentialStore(
            stored = StoredCredentials(
                server = SERVER,
                username = "demo",
                password = "demo",
                serverCode = "001",
            ),
        )
    }

    // --- Montaggio ---

    private var mounted = false

    private fun mount() {
        check(!mounted) { "un solo setContent per test" }
        mounted = true
        rule.setContent {
            FvpTheme {
                ProtectedContentScreen(
                    store = store,
                    session = session,
                    credentialStore = credentials,
                    clock = virtualClock,
                    server = server,
                    username = username,
                    catalog = Catalog(),
                )
            }
        }
        rule.waitUntil(timeoutMillis = 5_000L) { exists(MOBILE_PIN_ENTRY_TAG) }
        settle()
    }

    /** Fa avanzare il lavoro pendente sul dispatcher e ridisegna la UI. */
    private fun settle() {
        scheduler.runCurrent()
        rule.waitForIdle()
    }

    private fun exists(tag: String): Boolean =
        rule.onAllNodesWithTag(tag).fetchSemanticsNodes().isNotEmpty()

    private fun textOf(tag: String): String =
        rule.onAllNodesWithTag(tag)
            .fetchSemanticsNodes()
            .firstOrNull()
            ?.config
            ?.get(SemanticsProperties.Text)
            ?.joinToString("") { it.text }
            .orEmpty()

    /** Digita le cifre sul tastierino touch e conferma con "OK". */
    private fun typePin(value: String) {
        value.forEach { character -> click(mobilePinKeyTag(character.digitToInt())) }
        click(MOBILE_PIN_OK_TAG)
        settle()
    }

    /**
     * Digita il PIN solo se il tastierino è attivo (durante il blocco le cifre
     * sono disattivate e `performClick` fallirebbe).
     */
    private fun typePinIfEnabled(value: String) {
        if (rule.onAllNodesWithTag(mobilePinKeyTag(value.first().digitToInt()))
                .fetchSemanticsNodes()
                .firstOrNull()
                ?.config
                ?.getOrNull(SemanticsProperties.Disabled) != null
        ) {
            return
        }
        typePin(value)
    }

    private fun click(tag: String) {
        rule.onNodeWithTag(tag).performClick()
        settle()
    }

    /** Attende che il tag compaia e lascia completare il fotogramma. */
    private fun awaitTag(tag: String) {
        rule.waitUntil(timeoutMillis = 5_000L) { exists(tag) }
        settle()
    }

    /** Attende che il messaggio del tastierino diventi [expected]. */
    private fun awaitPinMessage(expected: String) {
        rule.waitUntil(timeoutMillis = 5_000L) { textOf(MOBILE_PIN_ERROR_TAG) == expected }
        settle()
    }

    private fun advance(millis: Long) {
        scheduler.advanceTimeBy(millis)
        settle()
    }

    /** Archivio dell'account di prova, letto con blocco (nessun tempo virtuale). */
    private fun storedData() = runBlocking { store.get(server, username) }

    // --- Creazione del PIN ---

    @Test
    fun `crea PIN - conferma diversa mostra I PIN non coincidono e non salva`() {
        mount()
        typePinIfEnabled(pin)
        awaitTag(MOBILE_PIN_ENTRY_TAG)
        typePinIfEnabled("4321")

        awaitPinMessage(PROTECTED_PIN_MISMATCH)
        assertEquals(PROTECTED_PIN_MISMATCH, textOf(MOBILE_PIN_ERROR_TAG))
        // Si torna alla creazione: nessun PIN salvato, sessione ancora bloccata.
        assertFalse(storedData().hasPin)
        assertFalse(session.unlocked.value)
    }

    @Test
    fun `crea PIN - conferma uguale salva solo l'hash del PIN`() {
        mount()
        typePinIfEnabled(pin)
        typePinIfEnabled(pin)

        awaitTag("protected_title")
        val data = storedData()
        assertTrue("il PIN deve risultare impostato", data.hasPin)
        // Nell'archivio il PIN non compare mai in chiaro.
        assertFalse(data.pinHash.orEmpty().contains(pin))
        assertFalse(data.pinSalt.orEmpty().contains(pin))
        assertTrue(
            PinHasher.verify(
                pin = pin,
                hash = data.pinHash.orEmpty(),
                salt = data.pinSalt.orEmpty(),
                iterations = data.pinIterations,
            ),
        )
        // Entrare nella pagina non sblocca i contenuti.
        assertFalse(session.unlocked.value)
        rule.onNodeWithTag("protected_hidden_empty").assertTextEquals(PROTECTED_EMPTY_HIDDEN)
    }

    // --- Verifica del PIN ---

    @Test
    fun `verifica - PIN errato mostra il messaggio e non apre la pagina`() {
        runBlocking { store.setPin(server, username, pin) }
        mount()
        typePinIfEnabled("4321")

        awaitPinMessage(PROTECTED_PIN_WRONG)
        assertEquals(PROTECTED_PIN_WRONG, textOf(MOBILE_PIN_ERROR_TAG))
        assertFalse(exists("protected_title"))
    }

    @Test
    fun `verifica - cinque errori bloccano trenta secondi con il conto alla rovescia`() {
        runBlocking { store.setPin(server, username, pin) }
        mount()
        repeat(4) { typePinIfEnabled("4321") }
        // Quattro errori: nessun blocco, solo il messaggio del PIN errato.
        assertEquals(PROTECTED_PIN_WRONG, textOf(MOBILE_PIN_ERROR_TAG))
        typePinIfEnabled("4321")

        awaitPinMessage(tooManyAttemptsMessage(30L))
        // Tastierino spento: le cifre non sono più accettate.
        rule.onNodeWithTag(mobilePinKeyTag(1)).assertIsNotEnabled()
        rule.onNodeWithTag(MOBILE_PIN_OK_TAG).assertIsNotEnabled()
        assertFalse(exists("protected_title"))

        // Il conto alla rovescia segue il tempo virtuale dell'orologio iniettato.
        advance(1_001L)
        awaitPinMessage(tooManyAttemptsMessage(29L))
        advance(5_000L)
        awaitPinMessage(tooManyAttemptsMessage(24L))
        assertTrue(session.isLocked())
    }

    @Test
    fun `verifica - dopo trenta secondi il tastierino torna attivo e il PIN giusto apre`() {
        runBlocking { store.setPin(server, username, pin) }
        mount()
        repeat(5) { typePinIfEnabled("4321") }
        awaitPinMessage(tooManyAttemptsMessage(30L))

        advance(30_000L)
        rule.waitUntil(timeoutMillis = 5_000L) { !session.isLocked() }
        typePinIfEnabled(pin)

        awaitTag("protected_title")
        // La verifica non sblocca i contenuti: lo fa solo l'interruttore.
        assertFalse(session.unlocked.value)
    }

    @Test
    fun `verifica - un PIN corretto azzera i tentativi sbagliati`() {
        runBlocking { store.setPin(server, username, pin) }
        mount()
        repeat(4) { typePinIfEnabled("4321") }
        typePinIfEnabled(pin)
        awaitTag("protected_title")

        // Quattro nuovi errori dopo la verifica riuscita: il conteggio è
        // ripartito, quindi nessun blocco.
        click("protected_change_pin")
        awaitTag(MOBILE_PIN_ENTRY_TAG)
        repeat(4) { typePinIfEnabled("9999") }

        // La verifica legge l'archivio in IO: attendi l'aggiornamento Compose
        // dell'errore invece di asserire subito dopo l'ultimo click.
        awaitPinMessage(PROTECTED_PIN_WRONG)
        assertEquals(PROTECTED_PIN_WRONG, textOf(MOBILE_PIN_ERROR_TAG))
        assertFalse(session.isLocked())
    }

    // --- PIN dimenticato ---

    @Test
    fun `PIN dimenticato - password corretta sceglie un nuovo PIN conservando gli elenchi`() {
        runBlocking {
            store.setPin(server, username, pin)
            store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "Categoria demo")
        }
        mount()
        click("protected_forgot_pin")
        awaitTag("forgot_password_field")

        rule.onNodeWithTag(fvpFieldEditorTag("forgot_password_field"), useUnmergedTree = true)
            .performTextInput("demo")
        click("forgot_submit")
        awaitTag(MOBILE_PIN_ENTRY_TAG)

        // Nuovo PIN con conferma.
        typePinIfEnabled("5678")
        typePinIfEnabled("5678")
        awaitTag("protected_title")

        val data = storedData()
        assertTrue(
            PinHasher.verify(
                pin = "5678",
                hash = data.pinHash.orEmpty(),
                salt = data.pinSalt.orEmpty(),
                iterations = data.pinIterations,
            ),
        )
        assertFalse(
            "il PIN precedente non deve più valere",
            PinHasher.verify(
                pin = pin,
                hash = data.pinHash.orEmpty(),
                salt = data.pinSalt.orEmpty(),
                iterations = data.pinIterations,
            ),
        )
        // Gli elenchi nascosti restano.
        assertEquals(1, data.hiddenCategories.size)
        rule.onNodeWithTag("protected_hidden_cat_live_001").assertExists()
    }

    @Test
    fun `PIN dimenticato - password errata mostra l'errore`() {
        runBlocking { store.setPin(server, username, pin) }
        mount()
        click("protected_forgot_pin")
        awaitTag("forgot_password_field")

        rule.onNodeWithTag(fvpFieldEditorTag("forgot_password_field"), useUnmergedTree = true)
            .performTextInput("sbagliata")
        click("forgot_submit")

        awaitPinMessage(PROTECTED_PASSWORD_WRONG)
        // Il PIN salvato non è cambiato.
        val data = storedData()
        assertTrue(
            PinHasher.verify(
                pin = pin,
                hash = data.pinHash.orEmpty(),
                salt = data.pinSalt.orEmpty(),
                iterations = data.pinIterations,
            ),
        )
        assertFalse(exists("protected_title"))
    }

    private companion object {
        private const val SERVER = "http://server.esempio:8080"
    }
}
