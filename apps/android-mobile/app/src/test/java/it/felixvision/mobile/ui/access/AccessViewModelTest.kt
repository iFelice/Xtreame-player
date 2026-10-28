@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.mobile.ui.access

import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.pairing.ApiResult
import it.felixvision.tv.data.pairing.PairingApi
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.pairing.PairingSession
import it.felixvision.tv.data.pairing.PairingStatus
import it.felixvision.tv.data.pairing.RemoteCredentials
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.data.xtream.AccountStatus
import it.felixvision.tv.data.xtream.LoginResult
import it.felixvision.tv.data.xtream.XtreamAccount
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Test del ViewModel di accesso con client e store finti.
 *
 * Regole: orologio iniettato coerente col tempo virtuale (il clock del
 * coordinator legge [TestCoroutineScheduler.currentTime]), gli stati di UI
 * cambiano solo attraverso il ViewModel su Dispatchers.Main (sostituito dal
 * dispatcher di test), dati di esempio solo http://server.esempio:8080,
 * demo/demo e codice rubrica "001", nessuna dipendenza di rete reale.
 */
class AccessViewModelTest {

    private val scheduler = TestCoroutineScheduler()
    private val mainDispatcher = StandardTestDispatcher(scheduler)

    /** Orologio del coordinator allineato al tempo virtuale di [scheduler]. */
    private val virtualClock = Clock { scheduler.currentTime }

    @Before
    fun setUp() {
        Dispatchers.setMain(mainDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    // --- Finti ---

    private class FakeCredentialStore(var stored: StoredCredentials? = null) : CredentialStore {
        var saved: StoredCredentials? = null
        var cleared = false
        var saveCount = 0

        override suspend fun load(): StoredCredentials? = stored

        override suspend fun save(credentials: StoredCredentials) {
            saved = credentials
            stored = credentials
            saveCount += 1
            cleared = false
        }

        override suspend fun clear() {
            stored = null
            saved = null
            cleared = true
        }
    }

    private class FakeLogin {
        val calls = mutableListOf<Triple<String, String, String>>()
        var result: LoginResult = LoginResult.UnexpectedResponse

        suspend fun login(server: String, username: String, password: String): LoginResult {
            calls += Triple(server, username, password)
            return result
        }
    }

    private class FakePairingApi : PairingApi {
        val creates = ArrayDeque<ApiResult<PairingSession>>()
        val statuses = ArrayDeque<ApiResult<PairingStatus>>()
        var createCalls = 0
        var pollCalls = 0

        override suspend fun createSession(): ApiResult<PairingSession> {
            createCalls += 1
            return creates.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun pollStatus(code: String, pollToken: String): ApiResult<PairingStatus> {
            pollCalls += 1
            return statuses.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun resolveRubrica(code: String): ApiResult<String> = ApiResult.Malformed

        override suspend fun healthCheck(): Boolean = true
    }

    // --- Costruttori di comodo ---

    private fun createViewModel(
        store: CredentialStore = FakeCredentialStore(),
        login: FakeLogin = FakeLogin(),
        rubrica: (suspend (String) -> ApiResult<String>)? = null,
        pairingApi: PairingApi = FakePairingApi(),
    ): AccessViewModel {
        val onRubrica = rubrica ?: { code: String -> ApiResult.Http(404) }
        return AccessViewModel(
            performLogin = { server, username, password -> login.login(server, username, password) },
            resolveRubrica = onRubrica,
            credentialStore = store,
            createPairingCoordinator = {
                PairingCoordinator(
                    api = pairingApi,
                    relayUrl = "https://relay.esempio.test",
                    clock = virtualClock,
                )
            },
        )
    }

    private fun activeAccount(server: String = SERVER) = XtreamAccount(
        server = server,
        username = "demo",
        status = AccountStatus.ACTIVE,
        expiresAtEpochSeconds = EXPIRES_AT,
        isTrial = false,
        maxConnections = 2,
        activeConnections = 1,
    )

    private fun fillCredentials(viewModel: AccessViewModel) {
        viewModel.onServerChange(SERVER)
        viewModel.onUsernameChange("demo")
        viewModel.onPasswordChange("demo")
    }

    // --- Test ---

    @Test
    fun `login riuscito - passa alla schermata account e salva le credenziali`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val viewModel = createViewModel(store = store, login = login)
        runCurrent()
        assertEquals(Screen.Access, viewModel.ui.value.screen)

        fillCredentials(viewModel)
        viewModel.submit()
        advanceUntilIdle()

        val screen = viewModel.ui.value.screen
        assertTrue(screen is Screen.Account)
        assertEquals("demo", (screen as Screen.Account).summary.username)
        assertEquals(AccountStatus.ACTIVE, screen.summary.status)
        assertFalse(viewModel.ui.value.busy)
        assertNull(viewModel.ui.value.errorMessage)

        assertEquals(Triple(SERVER, "demo", "demo"), login.calls.single())
        assertEquals(SERVER, store.saved?.server)
        assertEquals("demo", store.saved?.username)
        assertEquals("demo", store.saved?.password)
    }

    @Test
    fun `credenziali errate - messaggio in italiano e nessun salvataggio`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.InvalidCredentials }
        val viewModel = createViewModel(store = store, login = login)
        runCurrent()

        fillCredentials(viewModel)
        viewModel.submit()
        advanceUntilIdle()

        assertEquals(Screen.Access, viewModel.ui.value.screen)
        assertFalse(viewModel.ui.value.busy)
        assertEquals("Utente o password non validi.", viewModel.ui.value.errorMessage)
        assertEquals(1, login.calls.size)
        assertNull(store.saved)
        assertFalse(store.cleared)
    }

    @Test
    fun `codice rubrica 001 - risolto sulla rubrica e salvato con il codice`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val resolvedCodes = mutableListOf<String>()
        val viewModel = createViewModel(
            store = store,
            login = login,
            rubrica = { code ->
                resolvedCodes += code
                if (code == "001") ApiResult.Ok(SERVER) else ApiResult.Http(404)
            },
        )
        runCurrent()

        viewModel.onServerChange("001")
        viewModel.onUsernameChange("demo")
        viewModel.onPasswordChange("demo")
        viewModel.submit()
        advanceUntilIdle()

        assertTrue(viewModel.ui.value.screen is Screen.Account)
        assertEquals(listOf("001"), resolvedCodes)
        // Il login parte con l'indirizzo risolto, non con il codice.
        assertEquals(SERVER, login.calls.single().first)
        assertEquals("001", store.saved?.serverCode)
        assertEquals("001", viewModel.getCurrentCredentials()?.serverCode)
    }

    @Test
    fun `codice sconosciuto - errore e nessun login`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val viewModel = createViewModel(
            store = store,
            login = login,
            rubrica = { ApiResult.Http(404) },
        )
        runCurrent()

        viewModel.onServerChange("001")
        viewModel.onUsernameChange("demo")
        viewModel.onPasswordChange("demo")
        viewModel.submit()
        advanceUntilIdle()

        assertEquals(Screen.Access, viewModel.ui.value.screen)
        assertFalse(viewModel.ui.value.busy)
        assertEquals("Codice server non trovato", viewModel.ui.value.errorMessage)
        assertTrue(login.calls.isEmpty())
        assertNull(store.saved)
    }

    @Test
    fun `ripristino credenziali salvate - accesso automatico alla ripartenza`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore(
            stored = StoredCredentials(
                server = SERVER,
                username = "demo",
                password = "demo",
                serverCode = "001",
            ),
        )
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val viewModel = createViewModel(store = store, login = login)
        advanceUntilIdle()

        val screen = viewModel.ui.value.screen
        assertTrue(screen is Screen.Account)
        assertFalse(viewModel.ui.value.busy)
        assertEquals(Triple(SERVER, "demo", "demo"), login.calls.single())
        // Il codice rubrica salvato sopravvive alla verifica.
        assertEquals("001", viewModel.getCurrentCredentials()?.serverCode)
        // Verifica riuscita: nessun risalvataggio necessario.
        assertEquals(0, store.saveCount)
    }

    @Test
    fun `uscita - cancella le credenziali e torna all'accesso`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val viewModel = createViewModel(store = store, login = login)
        runCurrent()
        fillCredentials(viewModel)
        viewModel.submit()
        advanceUntilIdle()
        assertTrue(viewModel.ui.value.screen is Screen.Account)

        viewModel.signOut()
        advanceUntilIdle()

        assertEquals(Screen.Access, viewModel.ui.value.screen)
        assertTrue(store.cleared)
        assertNull(store.stored)
        assertNull(viewModel.getCurrentCredentials())
        assertFalse(viewModel.ui.value.busy)
    }

    @Test
    fun `credenziali ricevute dal relay - login automatico e polling solo da visibile`() = runTest(mainDispatcher) {
        val store = FakeCredentialStore()
        val login = FakeLogin().apply { result = LoginResult.Success(activeAccount()) }
        val api = FakePairingApi()
        val viewModel = createViewModel(store = store, login = login, pairingApi = api)
        runCurrent()

        // Niente sessioni finché il pannello non è visibile.
        advanceUntilIdle()
        assertEquals(0, api.createCalls)

        // Sessione appena creata (primo passo) e stato "con credenziali" al primo poll.
        api.creates.addLast(
            ApiResult.Ok(
                PairingSession(
                    code = "424242",
                    pollToken = "token-424242",
                    expiresAtMillis = virtualClock.nowMillis() + 600_000L,
                ),
            ),
        )
        api.statuses.addLast(
            ApiResult.Ok(
                PairingStatus.Ready(
                    RemoteCredentials(
                        server = SERVER,
                        username = "demo",
                        password = "demo",
                        serverCode = "001",
                    ),
                ),
            ),
        )

        viewModel.onPairingVisible()
        advanceUntilIdle()

        val screen = viewModel.ui.value.screen
        assertTrue(screen is Screen.Account)
        assertEquals("Configurato da remoto", (screen as Screen.Account).banner)
        assertFalse(viewModel.ui.value.busy)
        assertEquals(Triple(SERVER, "demo", "demo"), login.calls.single())
        assertEquals("demo", store.saved?.username)
        assertEquals(1, api.createCalls)
        assertEquals(1, api.pollCalls)

        // Dopo la consegna il ciclo si ferma: nessuna richiesta oltre la visibilità.
        val createsAfter = api.createCalls
        val pollsAfter = api.pollCalls
        advanceUntilIdle()
        assertEquals(createsAfter, api.createCalls)
        assertEquals(pollsAfter, api.pollCalls)
    }

    private companion object {
        const val SERVER = "http://server.esempio:8080"
        const val EXPIRES_AT = 4102444800L
    }
}
