package it.felixvision.tv.ui.settings.protection

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.pressKey
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.protection.ProtectedContentData
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
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Selezione multipla nell'elenco "Nascosti" della pagina Contenuti protetti:
 * OK seleziona/deseleziona (senza rimuovere), il pulsante compare solo con una
 * selezione, l'unica conferma ha il focus su "No" e "Sì" rimuove tutto con una
 * sola revisione dell'archivio. "No" e Indietro non modificano nulla.
 *
 * Un solo `setContent` per test; sdk 34 e qualificatori TV; clic tv-material
 * con `performSemanticsAction(SemanticsActions.OnClick)`.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class ProtectedContentSelectionTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)
    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val pin = "1234"

    private val categoryTag = "protected_hidden_cat_live_001"
    private val itemTag = "protected_hidden_item_vod_201"

    private lateinit var store: ProtectedContentStore
    private lateinit var session: ProtectedSession
    private lateinit var access: ProtectedPageAccess
    private var exits = 0

    private class FakeClock : Clock {
        override fun nowMillis(): Long = 0L
    }

    /** Credenziali finte: il flusso "PIN dimenticato" non è usato qui. */
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
            store.toggleItem(server, username, ProtectedKind.VOD, "201", "001", "Film di prova")
            // Visita già autorizzata dal PIN: si apre la pagina principale.
            access.grant()
        }
    }

    private fun storedData(): ProtectedContentData = runBlocking { store.get(server, username) }

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
        waitForTag("protected_title")
    }

    @Test
    fun `OK su due righe seleziona senza rimuovere No conserva e Si rimuove con una sola revisione`() {
        val revisionBefore = store.revision.value
        showScreen()

        // Zero selezionati: nessun pulsante di rimozione, archivio intatto.
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertDoesNotExist()
        assertEquals(2, storedData().hiddenCount)

        // Prima riga: spunta visibile, nessuna rimozione.
        click(categoryTag)
        rule.onNodeWithText("✓ Categoria", substring = true).assertExists()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG)
            .assertTextEquals(removeSelectedLabel(1))
        assertEquals(revisionBefore, store.revision.value)
        assertEquals(2, storedData().hiddenCount)

        // Seconda riga: due selezionate, ancora nessuna rimozione.
        click(itemTag)
        rule.onNodeWithText("✓ Film", substring = true).assertExists()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG)
            .assertTextEquals(removeSelectedLabel(2))
        rule.onNodeWithTag(categoryTag).assertExists()
        rule.onNodeWithTag(itemTag).assertExists()
        assertEquals(revisionBefore, store.revision.value)
        assertEquals(2, storedData().hiddenCount)

        // Una sola finestra di conferma, focus iniziale su "No".
        click(PROTECTED_REMOVE_SELECTED_TAG)
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertExists()
        rule.onNodeWithTag(PROTECTED_REMOVE_TEXT_TAG)
            .assertTextEquals(removeConfirmationText(2))
        rule.onNodeWithTag(PROTECTED_REMOVE_NO_TAG).assertIsFocused()
        rule.onNodeWithTag(PROTECTED_REMOVE_YES_TAG).assertExists()

        // "No": nessuna modifica, selezione conservata.
        click(PROTECTED_REMOVE_NO_TAG)
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG)
            .assertTextEquals(removeSelectedLabel(2))
        assertEquals(revisionBefore, store.revision.value)
        assertEquals(2, storedData().hiddenCount)

        // "Sì": entrambe rimosse con UNA sola revisione, selezione azzerata.
        click(PROTECTED_REMOVE_SELECTED_TAG)
        click(PROTECTED_REMOVE_YES_TAG)
        rule.waitUntil(timeoutMillis = 10_000L) {
            store.revision.value == revisionBefore + 1L
        }
        // La revisione notifica la scrittura, non il completamento della UI:
        // LaunchedEffect deve ancora rileggere lo store sul dispatcher IO e
        // ricomporre l'elenco. waitForIdle da solo non attende quella lettura.
        rule.waitUntil(timeoutMillis = 10_000L) {
            !hasTag(categoryTag) &&
                !hasTag(itemTag) &&
                !hasTag(PROTECTED_REMOVE_SELECTED_TAG) &&
                !hasTag(PROTECTED_REMOVE_DIALOG_TAG)
        }
        rule.waitForIdle()
        assertEquals(revisionBefore + 1L, store.revision.value)
        assertEquals(0, storedData().hiddenCount)
        rule.onNodeWithTag(categoryTag).assertDoesNotExist()
        rule.onNodeWithTag(itemTag).assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertDoesNotExist()
        rule.onNodeWithTag("protected_title").assertExists()
    }

    @Test
    fun `Indietro con selezione attiva azzera la selezione e non esce`() {
        showScreen()
        click(categoryTag)
        click(itemTag)
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG)
            .assertTextEquals(removeSelectedLabel(2))

        pressBack()

        // La pagina resta aperta, senza uscire e senza rimuovere nulla.
        assertEquals(0, exits)
        rule.onNodeWithTag("protected_title").assertExists()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG).assertDoesNotExist()
        rule.onNodeWithTag(categoryTag).assertExists()
        rule.onNodeWithTag(itemTag).assertExists()
        assertEquals(2, storedData().hiddenCount)

        // Senza selezione, Indietro torna a comportarsi come prima: esce.
        pressBack()
        assertEquals(1, exits)
    }

    @Test
    fun `Indietro nella conferma chiude la finestra e conserva la selezione`() {
        val revisionBefore = store.revision.value
        showScreen()
        click(categoryTag)
        click(PROTECTED_REMOVE_SELECTED_TAG)
        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertExists()

        // Indietro dalla radice della finestra: KeyDown consumato, azione su KeyUp.
        rule.onNodeWithTag(PROTECTED_REMOVE_NO_TAG).performKeyInput { pressKey(Key.Back) }
        rule.waitForIdle()

        rule.onNodeWithTag(PROTECTED_REMOVE_DIALOG_TAG).assertDoesNotExist()
        rule.onNodeWithTag(PROTECTED_REMOVE_SELECTED_TAG)
            .assertTextEquals(removeSelectedLabel(1))
        assertEquals(revisionBefore, store.revision.value)
        assertEquals(2, storedData().hiddenCount)
        assertEquals(0, exits)
    }
}
