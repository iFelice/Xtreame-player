package it.felixvision.tv.data.pairing

import it.felixvision.tv.BuildConfig
import it.felixvision.tv.core.Clock
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Ciclo di abbinamento con un finto relay e un orologio simulato: nessuna attesa
 * reale, ma le stesse regole di produzione (2 s di polling, 5/10/30 s di retry,
 * rigenerazione alla scadenza).
 */
class PairingCoordinatorTest {

    private class SimulatedClock(private var current: Long) : Clock {
        override fun nowMillis(): Long = current

        fun advanceSeconds(seconds: Long) {
            current += seconds * 1_000L
        }
    }

    private class FakePairingApi : PairingApi {
        val createResults = ArrayDeque<ApiResult<PairingSession>>()
        val statusResults = ArrayDeque<ApiResult<PairingStatus>>()
        var createdSessions = 0
        var polledCodes = mutableListOf<String>()
        var pollTokens = mutableListOf<String>()
        var lastPollCode: String? = null

        override suspend fun createSession(): ApiResult<PairingSession> {
            createdSessions += 1
            return createResults.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun pollStatus(code: String, pollToken: String): ApiResult<PairingStatus> {
            lastPollCode = code
            polledCodes += code
            pollTokens += pollToken
            return statusResults.removeFirstOrNull() ?: ApiResult.Malformed
        }

        override suspend fun resolveRubrica(code: String): ApiResult<String> = ApiResult.Malformed

        override suspend fun healthCheck(): Boolean = true
    }

    private val relayUrl = "https://relay.esempio.test"
    private val clock = SimulatedClock(1_780_000_000_000L)
    private val api = FakePairingApi()

    private fun coordinator() = PairingCoordinator(
        api = api,
        relayUrl = relayUrl,
        clock = clock,
    )

    private fun session(code: String, ttlSeconds: Long = 600L) = PairingSession(
        code = code,
        pollToken = "token-$code",
        expiresAtMillis = clock.nowMillis() + ttlSeconds * 1_000L,
    )

    @Test
    fun `il primo passo crea la sessione e pubblica QR e PIN`() = runTest {
        api.createResults.addLast(ApiResult.Ok(session("123456")))
        val coordinator = coordinator()

        val step = coordinator.step()

        assertEquals(PairingStep.Wait(PairingCoordinator.POLL_INTERVAL_MILLIS), step)
        assertEquals("123456", coordinator.state.value.code)
        assertEquals("$relayUrl/?code=123456", coordinator.state.value.qrPayload)
        assertEquals(1, api.createdSessions)
    }

    @Test
    fun `il contenuto del QR usa il servizio configurato nell'app`() {
        assertEquals(
            "${BuildConfig.PAIRING_RELAY_URL}/?code=654321",
            PairingCoordinator.buildQrPayload(BuildConfig.PAIRING_RELAY_URL, "654321"),
        )
    }

    @Test
    fun `in attesa il passo successivo interroga dopo due secondi`() = runTest {
        api.createResults.addLast(ApiResult.Ok(session("123456")))
        api.statusResults.addLast(ApiResult.Ok(PairingStatus.Waiting))
        val coordinator = coordinator()

        coordinator.step()
        val step = coordinator.step()

        assertEquals(PairingStep.Wait(2_000L), step)
        assertEquals(listOf("123456"), api.polledCodes)
        assertEquals(listOf("token-123456"), api.pollTokens)
    }

    @Test
    fun `le credenziali ricevute vengono consegnate una sola volta`() = runTest {
        val credentials = RemoteCredentials(
            v = 1,
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
        )
        api.createResults.addLast(ApiResult.Ok(session("123456")))
        api.statusResults.addLast(ApiResult.Ok(PairingStatus.Ready(credentials)))
        val coordinator = coordinator()

        coordinator.step()
        val step = coordinator.step()

        assertEquals(PairingStep.Delivered(credentials), step)
        assertTrue(coordinator.state.value.completed)
    }

    @Test
    fun `alla scadenza viene creata una nuova sessione con un nuovo PIN`() = runTest {
        api.createResults.addLast(ApiResult.Ok(session("111111", ttlSeconds = 10L)))
        api.createResults.addLast(ApiResult.Ok(session("222222", ttlSeconds = 600L)))
        val coordinator = coordinator()

        coordinator.step()
        assertEquals("111111", coordinator.state.value.code)

        clock.advanceSeconds(11L)
        val step = coordinator.step()

        assertEquals(PairingStep.Wait(2_000L), step)
        assertEquals(2, api.createdSessions)
        assertEquals("222222", coordinator.state.value.code)
        assertEquals("$relayUrl/?code=222222", coordinator.state.value.qrPayload)
        assertNotEquals("111111", coordinator.state.value.code)
    }

    @Test
    fun `una sessione sconosciuta sul relay viene rigenerata subito`() = runTest {
        api.createResults.addLast(ApiResult.Ok(session("111111")))
        api.statusResults.addLast(ApiResult.Ok(PairingStatus.Gone))
        api.createResults.addLast(ApiResult.Ok(session("333333")))
        val coordinator = coordinator()

        coordinator.step()
        val step = coordinator.step()

        assertEquals(PairingStep.Wait(2_000L), step)
        assertEquals("333333", coordinator.state.value.code)
        assertEquals(2, api.createdSessions)
    }

    @Test
    fun `gli errori di rete rispettano la sequenza 5 10 30 secondi`() = runTest {
        api.createResults.addLast(ApiResult.Network(timedOut = false))
        api.createResults.addLast(ApiResult.Network(timedOut = true))
        api.createResults.addLast(ApiResult.Network(timedOut = false))
        api.createResults.addLast(ApiResult.Network(timedOut = false))
        val coordinator = coordinator()

        val delays = (1..4).map { (coordinator.step() as PairingStep.Wait).delayMillis }

        assertEquals(listOf(5_000L, 10_000L, 30_000L, 30_000L), delays)
        assertTrue(coordinator.state.value.failureMessage != null)
        assertNull(coordinator.state.value.code)
    }

    @Test
    fun `un singolo errore riporta il contatore dei tentativi alla prima attesa`() = runTest {
        api.createResults.addLast(ApiResult.Network(timedOut = false))
        api.createResults.addLast(ApiResult.Ok(session("123456")))
        api.statusResults.addLast(ApiResult.Network(timedOut = false))
        val coordinator = coordinator()

        assertEquals(5_000L, (coordinator.step() as PairingStep.Wait).delayMillis)
        assertEquals(2_000L, (coordinator.step() as PairingStep.Wait).delayMillis)
        // Dopo il successo il conteggio riparte dal primo ritardo.
        assertEquals(5_000L, (coordinator.step() as PairingStep.Wait).delayMillis)
    }

    @Test
    fun `reset riparte da una sessione pulita`() = runTest {
        api.createResults.addLast(ApiResult.Ok(session("123456")))
        val coordinator = coordinator()
        coordinator.step()

        coordinator.reset()

        assertNull(coordinator.state.value.code)
        assertNull(coordinator.state.value.qrPayload)
        assertNull(coordinator.session)
    }
}
