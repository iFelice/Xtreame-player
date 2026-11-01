package it.felixvision.tv.vpn

import it.felixvision.tv.data.pairing.ApiResult
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

/**
 * Client del canale VPN sul relay: stesse rotte e stesso `Bearer` della
 * pagina `/vpn`; una sessione scaduta o già consegnata (404) è "scaduta".
 */
class VpnRelayClientTest {

    private lateinit var server: MockWebServer

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    private fun client(): VpnRelayClient = VpnRelayClient(
        http = OkHttpClient(),
        baseUrl = server.url("/").toString(),
    )

    @Test
    fun `create restituisce codice, token e durata`() {
        server.enqueue(
            MockResponse().setResponseCode(200)
                .setBody("""{"code":"123456","pollToken":"token-esempio","expiresInSeconds":600}"""),
        )

        val result = runBlocking { client().create() }

        assertEquals(ApiResult.Ok(VpnRelaySession("123456", "token-esempio", 600)), result)
        val request = server.takeRequest()
        assertEquals("POST", request.method)
        assertEquals("/api/vpn/create", request.path)
    }

    @Test
    fun `create con troppe sessioni restituisce il codice di errore`() {
        server.enqueue(MockResponse().setResponseCode(429).setBody("""{"error":"TOO_MANY_SESSIONS"}"""))

        val result = runBlocking { client().create() }

        assertEquals(ApiResult.Http(429, "TOO_MANY_SESSIONS"), result)
    }

    @Test
    fun `create con un codice non a 6 cifre è una risposta non valida`() {
        server.enqueue(
            MockResponse().setResponseCode(200)
                .setBody("""{"code":"12ab","pollToken":"token-esempio","expiresInSeconds":600}"""),
        )

        val result = runBlocking { client().create() }

        assertEquals(ApiResult.Malformed, result)
    }

    @Test
    fun `in attesa del telefono lo stato è waiting con il bearer token`() {
        server.enqueue(MockResponse().setResponseCode(200).setBody("""{"status":"waiting"}"""))

        val result = runBlocking { client().status("123456", "token-esempio") }

        assertEquals(ApiResult.Ok(VpnRelayStatus.Waiting), result)
        val request = server.takeRequest()
        assertEquals("GET", request.method)
        assertEquals("/api/vpn/status/123456", request.path)
        assertEquals("Bearer token-esempio", request.headers["Authorization"])
    }

    @Test
    fun `la configurazione pronta arriva con IV e testo cifrato`() {
        server.enqueue(
            MockResponse().setResponseCode(200).setBody(
                """{"status":"ready","iv":"${VpnTestVectors.IV_B64U}","ciphertext":"${VpnTestVectors.CIPHERTEXT_B64U}"}""",
            ),
        )

        val result = runBlocking { client().status("123456", "token-esempio") }

        assertEquals(
            ApiResult.Ok(VpnRelayStatus.Ready(iv = VpnTestVectors.IV_B64U, ciphertext = VpnTestVectors.CIPHERTEXT_B64U)),
            result,
        )
    }

    @Test
    fun `una sessione sconosciuta è scaduta`() {
        server.enqueue(MockResponse().setResponseCode(404).setBody("""{"error":"SESSION_NOT_FOUND"}"""))

        val result = runBlocking { client().status("123456", "token-esempio") }

        assertEquals(ApiResult.Ok(VpnRelayStatus.Expired), result)
    }

    @Test
    fun `pronta senza testo cifrato è una risposta non valida`() {
        server.enqueue(MockResponse().setResponseCode(200).setBody("""{"status":"ready","iv":"abc"}"""))

        val result = runBlocking { client().status("123456", "token-esempio") }

        assertEquals(ApiResult.Malformed, result)
    }
}
