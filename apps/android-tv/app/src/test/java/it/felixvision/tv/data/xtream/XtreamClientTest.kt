package it.felixvision.tv.data.xtream

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import java.io.IOException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.runBlocking
import okhttp3.Call
import okhttp3.Callback
import okhttp3.Request
import okhttp3.Response
import okhttp3.mockwebserver.Dispatcher
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.RecordedRequest
import okhttp3.mockwebserver.SocketPolicy
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class XtreamClientTest {

    private lateinit var server: MockWebServer

    private val nowMillis = 1_780_000_000_000L

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    private fun client(config: HttpConfig = HttpConfig()): XtreamClient = XtreamClient(
        http = HttpClientFactory.create(config),
        clock = Clock { nowMillis },
    )

    private fun successBody(
        auth: Int = 1,
        status: String = "Active",
        expDate: String = "1800000000",
        maxConnections: String = "2",
        activeCons: String = "1",
    ): String = """
        {
          "user_info": {
            "username": "demo",
            "password": "demo",
            "auth": $auth,
            "status": "$status",
            "exp_date": "$expDate",
            "is_trial": "0",
            "active_cons": "$activeCons",
            "max_connections": "$maxConnections"
          },
          "server_info": {
            "url": "server.esempio",
            "port": "8080",
            "timezone": "Europe/Rome",
            "time_now": "2026-10-20 10:00:00"
          }
        }
    """.trimIndent()

    @Test
    fun `login riuscito espone i dati dell'account`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody(successBody()))

        val result = client().login("${server.hostName}:${server.port}", "demo", "demo")

        assertTrue(result is LoginResult.Success)
        val account = (result as LoginResult.Success).account
        assertEquals(AccountStatus.ACTIVE, account.status)
        assertEquals("demo", account.username)
        assertEquals(1_800_000_000L, account.expiresAtEpochSeconds ?: -1L)
        assertEquals(2, account.maxConnections)
        assertEquals(1, account.activeConnections)

        val request = server.takeRequest()
        assertEquals("/player_api.php?username=demo&password=demo", request.path)
    }

    @Test
    fun `auth diverso da uno significa credenziali errate`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody(successBody(auth = 0)))

        val result = client().login("http://${server.hostName}:${server.port}", "demo", "sbagliata")

        assertEquals(LoginResult.InvalidCredentials, result)
    }

    @Test
    fun `account scaduto viene riconosciuto dalla data di scadenza`() = runBlocking {
        // Scadenza antecedente all'orologio simulato del client.
        val expired = ((nowMillis / 1000L) - 86_400L).toString()
        server.enqueue(MockResponse().setResponseCode(200).setBody(successBody(expDate = expired)))

        val result = client().login("http://${server.hostName}:${server.port}", "demo", "demo")

        assertTrue(result is LoginResult.AccountExpired)
        assertEquals(
            expired.toLong(),
            (result as LoginResult.AccountExpired).account.expiresAtEpochSeconds ?: -1L,
        )
    }

    @Test
    fun `account disattivato viene riconosciuto dallo stato`() = runBlocking {
        server.enqueue(
            MockResponse().setResponseCode(200).setBody(successBody(status = "Disabled")),
        )

        val result = client().login("http://${server.hostName}:${server.port}", "demo", "demo")

        assertTrue(result is LoginResult.AccountDisabled)
    }

    @Test
    fun `il timeout di lettura produce un errore di raggiungibilità`() = runBlocking {
        server.enqueue(MockResponse().setSocketPolicy(SocketPolicy.NO_RESPONSE))

        val result = client(HttpConfig(readTimeoutMillis = 400L))
            .login("http://${server.hostName}:${server.port}", "demo", "demo")

        assertTrue(result is LoginResult.Unreachable)
        assertTrue((result as LoginResult.Unreachable).timedOut)
    }

    @Test
    fun `il server normalizza gli spazi e le barre finali`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody(successBody()))

        val result = client().login("   ${server.hostName}:${server.port}///  ", "demo", "demo")

        assertTrue(result is LoginResult.Success)
        assertEquals("http://${server.hostName}:${server.port}", (result as LoginResult.Success).account.server)

        val request = server.takeRequest()
        assertEquals("/player_api.php?username=demo&password=demo", request.path)
    }

    @Test
    fun `la configurazione predefinita limita a quattro richieste per host`() {
        val config = HttpConfig()
        assertEquals(4, config.maxRequestsPerHost)
        assertEquals(10_000L, config.connectTimeoutMillis)
        assertEquals(20_000L, config.readTimeoutMillis)

        val http = HttpClientFactory.create(config)
        assertEquals(4, http.dispatcher.maxRequestsPerHost)
        assertEquals(10_000, http.connectTimeoutMillis)
        assertEquals(20_000, http.readTimeoutMillis)
    }

    @Test
    fun `non più di quattro richieste contemporanee per host`() {
        val inFlight = AtomicInteger(0)
        val maxInFlight = AtomicInteger(0)
        server.dispatcher = object : Dispatcher() {
            override fun dispatch(request: RecordedRequest): MockResponse {
                val current = inFlight.incrementAndGet()
                maxInFlight.updateAndGet { previous -> maxOf(previous, current) }
                Thread.sleep(150L)
                inFlight.decrementAndGet()
                return MockResponse().setResponseCode(200).setBody("{}")
            }
        }

        val http = HttpClientFactory.create()
        val completed = CountDownLatch(6)
        repeat(6) {
            http.newCall(Request.Builder().url(server.url("/ripetuta")).build())
                .enqueue(
                    object : Callback {
                        override fun onFailure(call: Call, e: IOException) {
                            completed.countDown()
                        }

                        override fun onResponse(call: Call, response: Response) {
                            response.close()
                            completed.countDown()
                        }
                    },
                )
        }

        assertTrue(completed.await(30, TimeUnit.SECONDS))
        assertEquals(4, maxInFlight.get())
    }

    @Test
    fun `i login non vengono mai eseguiti in parallelo`() = runBlocking {
        val inFlight = AtomicInteger(0)
        val maxInFlight = AtomicInteger(0)
        server.dispatcher = object : Dispatcher() {
            override fun dispatch(request: RecordedRequest): MockResponse {
                val current = inFlight.incrementAndGet()
                maxInFlight.updateAndGet { previous -> maxOf(previous, current) }
                Thread.sleep(200L)
                inFlight.decrementAndGet()
                return MockResponse().setResponseCode(200).setBody(successBody())
            }
        }

        val shared = client()
        val results = listOf("demo", "demo").map { user ->
            async { shared.login("http://${server.hostName}:${server.port}", user, "demo") }
        }.awaitAll()

        assertTrue(results.all { it is LoginResult.Success })
        assertEquals(1, maxInFlight.get())
    }
}
