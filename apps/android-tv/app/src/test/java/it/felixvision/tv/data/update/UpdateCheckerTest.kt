@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.tv.data.update

import it.felixvision.tv.core.Clock
import java.io.File
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Stato condiviso del controllo aggiornamenti ([UpdateChecker]).
 *
 * Rete simulata: il client delle release è una fake che restituisce esiti
 * predisposti, senza simulazione del telecomando. Versione installata di
 * riferimento: 1.0.2 (codice 102).
 */
class UpdateCheckerTest {

    private val installedVersion = "1.0.2"

    private fun releaseFor(version: String) = ReleaseInfo(
        version = version,
        downloadUrl = "https://github.com/iFelice/felixvp-releases/releases/download/$version/FelixVP.apk",
        sizeBytes = 1024L,
    )

    /** Client delle release che restituisce in ordine gli esiti predisposti. */
    private class ScriptedUpdateClient(
        private val results: MutableList<ReleaseCheckResult>,
    ) : UpdateClient {
        private val requestCount = AtomicInteger(0)

        val calls: Int get() = requestCount.get()

        override suspend fun fetchLatestRelease(): ReleaseCheckResult {
            requestCount.incrementAndGet()
            return if (results.isNotEmpty()) results.removeAt(0) else ReleaseCheckResult.Failure
        }

        override suspend fun downloadApk(
            release: ReleaseInfo,
            updatesDir: File,
            onProgressPercent: (Int) -> Unit,
        ): ApkDownloadResult = ApkDownloadResult.Failure
    }

    /** Client che resta in attesa finché il test non apre il varco. */
    private class GatedUpdateClient(
        private val gate: CompletableDeferred<Unit>,
        private val result: ReleaseCheckResult,
    ) : UpdateClient {
        private val requestCount = AtomicInteger(0)

        val calls: Int get() = requestCount.get()

        override suspend fun fetchLatestRelease(): ReleaseCheckResult {
            requestCount.incrementAndGet()
            gate.await()
            return result
        }

        override suspend fun downloadApk(
            release: ReleaseInfo,
            updatesDir: File,
            onProgressPercent: (Int) -> Unit,
        ): ApkDownloadResult = ApkDownloadResult.Failure
    }

    /** Orologio controllato dal test, per provare l'intervallo di 12 ore. */
    private class FakeClock(startMillis: Long) : Clock {
        var now: Long = startMillis

        override fun nowMillis(): Long = now
    }

    @Test
    fun `release piu recente porta lo stato a disponibile con la versione remota`() = runTest {
        val client = ScriptedUpdateClient(
            mutableListOf(ReleaseCheckResult.Available(releaseFor("1.0.3"))),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
        )

        assertEquals(UpdateCheckState.None, checker.state.value)
        assertNotNull(checker.checkNow())
        runCurrent()

        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)
        assertEquals(1, client.calls)
        assertFalse(checker.isChecking.value)
    }

    @Test
    fun `release uguale o piu vecchia porta lo stato ad app aggiornata`() = runTest {
        val client = ScriptedUpdateClient(
            mutableListOf(
                ReleaseCheckResult.Available(releaseFor(installedVersion)),
                ReleaseCheckResult.Available(releaseFor("1.0.1")),
            ),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
        )

        checker.checkNow()
        runCurrent()
        assertEquals(UpdateCheckState.UpToDate, checker.state.value)

        checker.checkNow()
        runCurrent()
        assertEquals(UpdateCheckState.UpToDate, checker.state.value)
        assertEquals(2, client.calls)
    }

    @Test
    fun `controllo fallito porta lo stato a errore`() = runTest {
        val client = ScriptedUpdateClient(mutableListOf(ReleaseCheckResult.Failure))
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
        )

        checker.checkNow()
        runCurrent()

        assertEquals(UpdateCheckState.Failed, checker.state.value)
        assertFalse(checker.isChecking.value)
    }

    @Test
    fun `un errore non cancella un aggiornamento gia segnalato`() = runTest {
        val client = ScriptedUpdateClient(
            mutableListOf(
                ReleaseCheckResult.Available(releaseFor("1.0.3")),
                ReleaseCheckResult.Failure,
            ),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
        )

        checker.checkNow()
        runCurrent()
        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)

        // Il pallino sparisce solo quando l'app risulta aggiornata, non a un errore.
        checker.checkNow()
        runCurrent()
        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)
    }

    @Test
    fun `nessuna richiesta duplicata mentre un controllo e in corso`() = runTest {
        val gate = CompletableDeferred<Unit>()
        val client = GatedUpdateClient(
            gate = gate,
            result = ReleaseCheckResult.Available(releaseFor("1.0.3")),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
            clock = FakeClock(startMillis = 1_000L),
        )

        val first = checker.checkNow()
        runCurrent()
        assertNotNull(first)
        assertEquals(1, client.calls)
        assertTrue(checker.isChecking.value)
        assertTrue(checker.isRequestInFlight)

        // Impostazioni e menu chiedono il controllo mentre la richiesta è in volo:
        // non parte una seconda richiesta.
        assertNull(checker.checkNow())
        assertNull(checker.checkIfDue())
        runCurrent()
        assertEquals(1, client.calls)

        gate.complete(Unit)
        runCurrent()
        assertEquals(1, client.calls)
        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)
        assertFalse(checker.isRequestInFlight)
    }

    @Test
    fun `dopo un errore nessun tentativo automatico immediato ma riparte dopo 12 ore`() = runTest {
        val clock = FakeClock(startMillis = 1_000L)
        val client = ScriptedUpdateClient(
            mutableListOf(
                ReleaseCheckResult.Failure,
                ReleaseCheckResult.Available(releaseFor("1.0.3")),
            ),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
            clock = clock,
        )

        assertNotNull(checker.checkIfDue())
        runCurrent()
        assertEquals(UpdateCheckState.Failed, checker.state.value)
        assertEquals(1, client.calls)

        // Subito dopo l'errore gli inneschi automatici non ripetono la richiesta.
        clock.now += 60_000L
        assertNull(checker.checkIfDue())
        runCurrent()
        assertEquals(1, client.calls)
        assertEquals(UpdateCheckState.Failed, checker.state.value)

        // Passate 12 ore il controllo automatico riparte.
        clock.now += UPDATE_RECHECK_INTERVAL_MILLIS
        assertNotNull(checker.checkIfDue())
        runCurrent()
        assertEquals(2, client.calls)
        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)
    }

    @Test
    fun `il controllo periodico parte una volta sola e ripete ogni 12 ore`() = runTest {
        val client = ScriptedUpdateClient(
            mutableListOf(
                ReleaseCheckResult.Available(releaseFor(installedVersion)),
                ReleaseCheckResult.Available(releaseFor("1.0.3")),
                ReleaseCheckResult.Available(releaseFor("1.0.3")),
            ),
        )
        val checker = UpdateChecker(
            client = client,
            currentVersion = installedVersion,
            scope = this,
            isDebugBuild = false,
            clock = object : Clock { override fun nowMillis(): Long = testScheduler.currentTime },
        )

        // Apertura della schermata principale: controllo subito, poi ogni 12 ore.
        checker.startPeriodicChecks()
        checker.startPeriodicChecks()
        runCurrent()
        assertEquals(1, client.calls)
        assertEquals(UpdateCheckState.UpToDate, checker.state.value)

        advanceTimeBy(UPDATE_RECHECK_INTERVAL_MILLIS)
        runCurrent()
        assertEquals(2, client.calls)
        assertEquals(UpdateCheckState.Available(releaseFor("1.0.3")), checker.state.value)

        checker.stopPeriodicChecks()
        advanceTimeBy(UPDATE_RECHECK_INTERVAL_MILLIS * 2)
        runCurrent()
        assertEquals(2, client.calls)
    }
}
