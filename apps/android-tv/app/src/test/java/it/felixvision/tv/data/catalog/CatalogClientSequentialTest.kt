package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.runBlocking
import okhttp3.mockwebserver.Dispatcher
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.RecordedRequest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class CatalogClientSequentialTest {

    private lateinit var server: MockWebServer

    @Before fun setUp() { server = MockWebServer(); server.start() }
    @After fun tearDown() { server.shutdown() }

    private fun baseUrl(): String = "http://${server.hostName}:${server.port}"

    private fun client(): CatalogClient = CatalogClient(http = HttpClientFactory.create(), json = FvpJson)

    private fun successArray(vararg items: String): String = "[${items.joinToString(",")}]"

    @Test
    fun `non ci sono mai due richieste del catalogo contemporanee`() = runBlocking {
        val inFlight = AtomicInteger(0)
        val maxInFlight = AtomicInteger(0)
        server.dispatcher = object : Dispatcher() {
            override fun dispatch(request: RecordedRequest): MockResponse {
                val cur = inFlight.incrementAndGet()
                maxInFlight.updateAndGet { prev -> maxOf(prev, cur) }
                Thread.sleep(80)
                inFlight.decrementAndGet()
                // Risposta vuota valida per ogni action
                return MockResponse().setResponseCode(200).setBody("[]")
            }
        }

        val result = client().loadCatalog(baseUrl(), "demo", "demo")
        assertTrue(result is CatalogResult.Success)
        assertEquals(1, maxInFlight.get())
        // Devono esserci esattamente 6 richieste sequenziali
        assertEquals(6, server.requestCount)
        // Verifica ordine delle action
        val paths = (0 until server.requestCount).map { server.takeRequest().path ?: "" }
        assertTrue(paths[0].contains("get_live_categories"))
        assertTrue(paths[1].contains("get_live_streams"))
        assertTrue(paths[2].contains("get_vod_categories"))
        assertTrue(paths[3].contains("get_vod_streams"))
        assertTrue(paths[4].contains("get_series_categories"))
        assertTrue(paths[5].contains("get_series"))
    }

    @Test
    fun `un errore interrompe la sequenza senza ripetizioni automatiche`() = runBlocking {
        // Prima richiesta fallisce con 500
        server.enqueue(MockResponse().setResponseCode(500).setBody("errore"))
        // Anche se enqueue altre, non devono essere consumate
        server.enqueue(MockResponse().setResponseCode(200).setBody("[]"))
        server.enqueue(MockResponse().setResponseCode(200).setBody("[]"))

        val result = client().loadCatalog(baseUrl(), "demo", "demo")
        assertTrue(result is CatalogResult.Error)
        // Solo la prima richiesta è stata eseguita, nessuna retry automatica
        assertEquals(1, server.requestCount)
    }

    @Test
    fun `errore su tappa intermedia interrompe e non prosegue`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody("""[{"category_id":"1","category_name":"Live"}]"""))
        server.enqueue(MockResponse().setResponseCode(200).setBody("""[{"name":"Canale","stream_id":1,"category_id":"1"}]"""))
        server.enqueue(MockResponse().setResponseCode(500).setBody("err"))
        // rimanenti non devono essere chiamate
        val result = client().loadCatalog(baseUrl(), "demo", "demo")
        assertTrue(result is CatalogResult.Error)
        assertEquals(3, server.requestCount)
    }

    @Test
    fun `lista vuota non è errore, parsing tollerante su body null`() = runBlocking {
        repeat(6) { server.enqueue(MockResponse().setResponseCode(200).setBody("[]")) }
        val result = client().loadCatalog(baseUrl(), "demo", "demo")
        assertTrue(result is CatalogResult.Success)
        val cat = (result as CatalogResult.Success).catalog
        assertTrue(cat.liveCategories.isEmpty())
        assertTrue(cat.liveStreams.isEmpty())
    }
}
