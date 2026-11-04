package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.Clock
import java.io.IOException
import java.util.Collections
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.delay
import kotlinx.coroutines.withTimeoutOrNull
import okhttp3.Interceptor
import okhttp3.Response
import okhttp3.mockwebserver.Dispatcher
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.RecordedRequest

/**
 * Finte HTTP condivise dai test del catalogo parallelo. Nessun indirizzo di
 * server reale: il server è MockWebServer in loopback e le credenziali sono
 * sempre demo/demo.
 *
 * Le risposte sono scelte per `action` (non per ordine di coda): con tre
 * sezioni in parallelo l'ordine di arrivo delle richieste non è deterministico.
 */

/** Estrae il parametro `action` senza dipendere dalle API di RecordedRequest. */
internal fun actionOf(pathOrUrl: String): String =
    Regex("action=([^&]+)").find(pathOrUrl)?.groupValues?.get(1) ?: ""

/**
 * Dispatcher che risponde in base all'azione, con ritardi e errori HTTP
 * configurabili per singola azione. Registra l'ordine di arrivo e il massimo
 * numero di richieste gestite insieme.
 */
internal class ActionDispatcher(
    private val bodies: Map<String, String> = emptyMap(),
    private val chunkedFor: Map<String, Int> = emptyMap(),
    private val failuresFor: Map<String, Int> = emptyMap(),
    private val delaysMillis: Map<String, Long> = emptyMap(),
) : Dispatcher() {

    private val inFlight = AtomicInteger(0)
    val maxInFlight = AtomicInteger(0)
    val actions: MutableList<String> = Collections.synchronizedList(mutableListOf())

    override fun dispatch(request: RecordedRequest): MockResponse {
        val action = actionOf(request.path ?: "")
        actions.add(action)
        val current = inFlight.incrementAndGet()
        maxInFlight.updateAndGet { previous -> maxOf(previous, current) }
        try {
            val delay = delaysMillis[action] ?: 0L
            if (delay > 0L) Thread.sleep(delay)
            failuresFor[action]?.let { code ->
                return MockResponse().setResponseCode(code).setBody("errore")
            }
            val body = bodies[action] ?: "[]"
            val response = MockResponse().setResponseCode(200)
            val chunkSize = chunkedFor[action]
            return if (chunkSize != null) {
                response.setChunkedBody(body, chunkSize)
            } else {
                response.setBody(body)
            }
        } finally {
            inFlight.decrementAndGet()
        }
    }
}

/**
 * Ritardi per azione sul thread chiamante (Dispatchers.IO): con le tre sezioni
 * in parallelo i ritardi si sovrappongono davvero, senza dipendere dal pool di
 * thread di MockWebServer. Conta anche le richieste in volo.
 */
internal class DelayInterceptor(
    private val delaysMillis: Map<String, Long>,
) : Interceptor {

    private val inFlight = AtomicInteger(0)
    val maxInFlight = AtomicInteger(0)
    val actions: MutableList<String> = Collections.synchronizedList(mutableListOf())

    override fun intercept(chain: Interceptor.Chain): Response {
        val action = chain.request().url.queryParameter("action") ?: ""
        actions.add(action)
        val current = inFlight.incrementAndGet()
        maxInFlight.updateAndGet { previous -> maxOf(previous, current) }
        try {
            val delay = delaysMillis[action] ?: 0L
            if (delay > 0L) Thread.sleep(delay)
            return chain.proceed(chain.request())
        } finally {
            inFlight.decrementAndGet()
        }
    }
}

/**
 * Tiene bloccate le azioni indicate finché la chiamata OkHttp non viene
 * annullata: serve a verificare che un errore o la cancellazione del
 * caricamento chiuda tutte le richieste in corso.
 *
 * [releaseAction] aspetta che tutte le azioni bloccate siano partite prima di
 * proseguire verso il server: rende deterministico il test dell'errore (la
 * sezione che fallisce arriva quando le altre due sono già in volo).
 *
 * Il thread di I/O di OkHttp può bloccarsi su [started], ma
 * [awaitStarted] è suspend: non blocca mai l'event loop di runBlocking su cui
 * partono le tre coroutine delle sezioni.
 */
internal class CancelAwareInterceptor(
    blockedActions: Set<String>,
    private val waitMillis: Long = 5_000L,
    private val releaseAction: String? = null,
) : Interceptor {

    private val blocked = blockedActions.toSet()
    private val started = CountDownLatch(blockedActions.size)
    val cancelled: MutableSet<String> = ConcurrentHashMap.newKeySet()

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val action = request.url.queryParameter("action") ?: ""
        if (action == releaseAction) {
            started.await(waitMillis, TimeUnit.MILLISECONDS)
            return chain.proceed(request)
        }
        if (action !in blocked) return chain.proceed(request)
        started.countDown()
        val deadline = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(waitMillis)
        while (System.nanoTime() < deadline) {
            if (chain.call().isCanceled()) {
                cancelled.add(action)
                throw IOException("chiamata annullata")
            }
            Thread.sleep(5L)
        }
        return chain.proceed(request)
    }

    suspend fun awaitStarted(): Boolean =
        withTimeoutOrNull(waitMillis) {
            while (started.count > 0L) delay(5L)
            true
        } ?: false
}

/**
 * Orologio virtuale iniettato nel client: parte da un epoch fisso e avanza
 * col tempo monotono del test, così le misure non dipendono dall'ora reale né
 * dal fuso orario della macchina che esegue la CI.
 */
internal class VirtualClock(epochMillis: Long = 1_700_000_000_000L) : Clock {
    private val epoch = epochMillis
    private val startNanos = System.nanoTime()

    override fun nowMillis(): Long =
        epoch + TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - startNanos)

    fun elapsedMillis(): Long = nowMillis() - epoch
}
