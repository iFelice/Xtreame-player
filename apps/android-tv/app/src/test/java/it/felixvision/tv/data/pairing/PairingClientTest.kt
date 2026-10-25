package it.felixvision.tv.data.pairing

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import kotlinx.coroutines.runBlocking
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.SocketPolicy
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Il client dell'abbinamento parla con il relay esattamente come in produzione:
 * base URL del Worker, `Bearer` sul polling e nessun header `Origin` (richieste
 * native ammesse dal servizio).
 */
class PairingClientTest {

    private lateinit var server: MockWebServer

    private val nowMillis = 1_780_000_000_000L
    private val clock = Clock { nowMillis }

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    private fun client(config: HttpConfig = HttpConfig()): PairingClient = PairingClient(
        http = HttpClientFactory.create(config),
        baseUrl = server.url("/").toString(),
        clock = clock,
    )

    @Test
    fun `create restituisce codice token e scadenza`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(200)
                .setBody("""{"code":"123456","pollToken":"token-abc","expiresInSeconds":600}"""),
        )

        val session = when (val result = client().createSession()) {
            is ApiResult.Ok -> result.value
            else -> throw AssertionError("Atteso ApiResult.Ok, ricevuto $result")
        }
        assertEquals("123456", session.code)
        assertEquals("token-abc", session.pollToken)
        assertEquals(nowMillis + 600_000L, session.expiresAtMillis)

        val request = server.takeRequest()
        assertEquals("POST", request.method)
        assertEquals("/api/pair/create", request.path)
        assertNull(request.headers["Origin"])
    }

    @Test
    fun `lo stato in attesa restituisce waiting con il bearer token`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody("""{"status":"waiting"}"""))

        val result = client().pollStatus("123456", "token-abc")

        assertEquals(ApiResult.Ok(PairingStatus.Waiting), result)
        val request = server.takeRequest()
        assertEquals("/api/pair/status/123456", request.path)
        assertEquals("Bearer token-abc", request.headers["Authorization"])
    }

    @Test
    fun `le credenziali pronte vengono consegnate`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(200).setBody(
                """
                {
                  "status": "ready",
                  "credentials": {
                    "v": 1,
                    "server": "http://server.esempio:8080",
                    "username": "demo",
                    "password": "demo"
                  }
                }
                """.trimIndent(),
            ),
        )

        val status = when (val result = client().pollStatus("123456", "token-abc")) {
            is ApiResult.Ok -> result.value
            else -> throw AssertionError("Atteso ApiResult.Ok, ricevuto $result")
        }
        assertTrue(status is PairingStatus.Ready)
        val credentials = (status as PairingStatus.Ready).credentials
        assertEquals(1, credentials.v)
        assertEquals("http://server.esempio:8080", credentials.server)
        assertEquals("demo", credentials.username)
        assertEquals("demo", credentials.password)
        assertNull(credentials.serverCode)
    }

    @Test
    fun `le credenziali pronte accettano serverCode e campi sconosciuti`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(200).setBody(
                """
                {
                  "status": "ready",
                  "relayMetadata": "ignored",
                  "credentials": {
                    "v": 1,
                    "server": "http://server.esempio:8080",
                    "username": "demo",
                    "password": "demo",
                    "serverCode": "001",
                    "extraCredentialField": true
                  }
                }
                """.trimIndent(),
            ),
        )

        val result = client().pollStatus("123456", "token-abc")

        assertTrue(result is ApiResult.Ok)
        val status = (result as ApiResult.Ok).value
        assertTrue(status is PairingStatus.Ready)
        assertEquals("001", (status as PairingStatus.Ready).credentials.serverCode)
    }

    @Test
    fun `sessione sconosciuta sul relay diventa Gone`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(404).setBody("""{"error":"SESSION_NOT_FOUND"}"""),
        )

        val result = client().pollStatus("123456", "token-abc")

        assertEquals(ApiResult.Ok(PairingStatus.Gone), result)
    }

    @Test
    fun `la rubrica risolve il codice e segnala il 404`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(200)
                .setBody("""{"server":"http://server.esempio:8080"}"""),
        )
        val found = client().resolveRubrica("001")
        assertEquals(ApiResult.Ok("http://server.esempio:8080"), found)
        assertEquals("/api/rubrica/001", server.takeRequest().path)

        server.enqueue(
            MockResponse().setResponseCode(404).setBody("""{"error":"UNKNOWN_SERVER_CODE"}"""),
        )
        val missing = client().resolveRubrica("999")
        assertEquals(ApiResult.Http(404, "UNKNOWN_SERVER_CODE"), missing)
    }

    @Test
    fun `un errore di rete non lancia eccezioni`() = runBlocking {
        server.enqueue(MockResponse().setSocketPolicy(SocketPolicy.DISCONNECT_AT_START))

        val result = client(HttpConfig(readTimeoutMillis = 500L)).createSession()

        assertTrue(result is ApiResult.Network || result is ApiResult.Malformed)
    }

    @Test
    fun `il controllo di salute interroga healthz`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody("ok"))

        val healthy = client().healthCheck()

        assertTrue(healthy)
        assertEquals("/healthz", server.takeRequest().path)
    }
}
