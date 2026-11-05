package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.json.decodeFromStream
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Test JVM dello streaming e dell'avanzamento in [CatalogClient.loadCatalog]:
 * - risposta con `Content-Length` → avanzamenti crescenti fino al 100%, poi
 *   `PROCESSING` e `COMPLETED`;
 * - risposta senza `Content-Length` (`Transfer-Encoding: chunked`) → `bytesTotal`
 *   nullo e byte ricevuti crescenti;
 * - corpo da 5 MB → numero di emissioni limitato (nessuna emissione per ogni
 *   blocco da 8 KB).
 *
 * Le risposte sono scelte per `action`: con le tre sezioni in parallelo
 * l'ordine di arrivo non è più quello sequenziale della coda di MockWebServer.
 * Le tappe delle altre sezioni si interlacciano, quindi ogni asserzione filtra
 * prima per [CatalogSection.LIVE].
 */
class CatalogClientTest {

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

    private fun baseUrl(): String = "http://${server.hostName}:${server.port}"

    private fun client(clock: Clock = Clock { System.currentTimeMillis() }): CatalogClient =
        CatalogClient(
            http = HttpClientFactory.create(),
            json = FvpJson,
            clock = clock,
        )

    /**
     * Costruisce un JSON valido di `LiveStream` della dimensione minima
     * indicata. Il riempimento sta DENTRO il valore `name` del primo
     * elemento: nessuno spazio dopo la parentesi di chiusura, così il
     * parsing in streaming non incontra byte di coda.
     */
    private fun buildLiveStreamsJson(itemCount: Int, minBytes: Int): String {
        val sb = StringBuilder(minBytes + 1024)
        sb.append('[')
        for (i in 1..itemCount) {
            if (i > 1) sb.append(',')
            sb.append("""{"stream_id":"""").append(i)
                .append("""","name":"Canale """).append(i)
                .append("""","category_id":"1"}""")
        }
        sb.append(']')
        val padding = minBytes - sb.length
        if (padding > 0) {
            val marker = "\"Canale 1\""
            val insertAt = sb.indexOf(marker) + marker.length - 1
            sb.insert(insertAt, " ".repeat(padding))
        }
        return sb.toString()
    }

    /** Il corpo di prova deve essere decodificabile anche da stream puro. */
    @OptIn(ExperimentalSerializationApi::class)
    private fun assertDecodable(body: String, expectedItems: Int) {
        val decoded = FvpJson.decodeFromStream<List<LiveStream>>(body.byteInputStream())
        assertEquals(
            "il JSON di prova deve decodificarsi in streaming",
            expectedItems,
            decoded.size,
        )
    }

    @Test
    fun `risposta con Content-Length emette avanzamenti crescenti fino al 100 per cento e poi PROCESSING e COMPLETED`() = runBlocking {
        val categoriesJson = """[{"category_id":"1","category_name":"Generale"}]"""
        val liveBody = buildLiveStreamsJson(itemCount = 25, minBytes = 256 * 1024)
        val expectedTotalBytes = liveBody.toByteArray(Charsets.UTF_8).size.toLong()
        assertDecodable(liveBody, 25)

        server.dispatcher = ActionDispatcher(
            bodies = mapOf(
                "get_live_categories" to categoriesJson,
                "get_live_streams" to liveBody,
            ),
        )

        val stages = mutableListOf<CatalogStage>()
        val result = client().loadCatalog(baseUrl(), "demo", "demo") { stage ->
            stages.add(stage)
        }

        assertTrue(result is CatalogResult.Success)
        val liveStages = stages.filter { it.section == CatalogSection.LIVE }
        assertTrue("attese più tappe per LIVE: $liveStages", liveStages.size >= 4)

        // La prima tappa è la fase iniziale a 0% (richiesta categorie)
        val firstStage = liveStages.first()
        assertEquals(CatalogSectionStatus.DOWNLOADING, firstStage.status)
        assertEquals(0L, firstStage.bytesReceived)

        // Tutte le tappe DOWNLOADING dell'elenco hanno bytesTotal noto e byte strettamente crescenti fino al 100%
        val downloadingStages = liveStages.filter { it.status == CatalogSectionStatus.DOWNLOADING }
        assertTrue("attese più tappe di scaricamento", downloadingStages.size >= 3)
        assertTrue(
            "i byte ricevuti devono crescere ad ogni emissione: ${downloadingStages.map { it.bytesReceived }}",
            downloadingStages.zipWithNext().all { (prev, next) -> prev.bytesReceived < next.bytesReceived },
        )

        val streamDownloading = downloadingStages.drop(1)
        assertTrue(streamDownloading.all { it.bytesTotal == expectedTotalBytes })
        val lastDownloading = streamDownloading.last()
        assertEquals(expectedTotalBytes, lastDownloading.bytesReceived)
        assertEquals(expectedTotalBytes, lastDownloading.bytesTotal)

        val progressAtEndOfDownload = CatalogRefresh.apply(CatalogRefresh.idle(), lastDownloading).first()
        assertEquals(100, progressAtEndOfDownload.progressPercent)

        // Subito dopo lo scaricamento arrivano PROCESSING e COMPLETED
        val tail = liveStages.takeLast(2)
        assertEquals(CatalogSectionStatus.PROCESSING, tail[0].status)
        assertEquals(expectedTotalBytes, tail[0].bytesReceived)
        assertEquals(expectedTotalBytes, tail[0].bytesTotal)

        assertEquals(CatalogSectionStatus.COMPLETED, tail[1].status)
        assertEquals("tappe LIVE: $liveStages", 25, tail[1].itemCount)
        assertEquals(expectedTotalBytes, tail[1].bytesReceived)
        assertEquals(expectedTotalBytes, tail[1].bytesTotal)
    }

    @Test
    fun `risposta senza Content-Length chunked emette bytesTotal null e byte crescenti`() = runBlocking {
        val categoriesJson = """[{"category_id":"1","category_name":"Generale"}]"""
        val liveBody = buildLiveStreamsJson(itemCount = 15, minBytes = 128 * 1024)
        val expectedTotalBytes = liveBody.toByteArray(Charsets.UTF_8).size.toLong()
        assertDecodable(liveBody, 15)

        // Orologio che avanza di 50 ms ad ogni lettura per verificare anche le emissioni intermedie ogni 200 ms
        val fakeNow = AtomicLong(1_000L)
        val steppingClock = Clock { fakeNow.addAndGet(50L) }

        server.dispatcher = ActionDispatcher(
            bodies = mapOf(
                "get_live_categories" to categoriesJson,
                "get_live_streams" to liveBody,
            ),
            chunkedFor = mapOf("get_live_streams" to 8 * 1024),
        )

        val stages = mutableListOf<CatalogStage>()
        val result = client(clock = steppingClock).loadCatalog(baseUrl(), "demo", "demo") { stage ->
            stages.add(stage)
        }

        assertTrue(result is CatalogResult.Success)
        val liveStages = stages.filter { it.section == CatalogSection.LIVE }

        // Tutte le tappe della sezione chunked hanno bytesTotal == null
        assertTrue(
            "bytesTotal deve restare null senza Content-Length: $liveStages",
            liveStages.all { it.bytesTotal == null },
        )

        val downloadingStages = liveStages.filter { it.status == CatalogSectionStatus.DOWNLOADING }
        assertTrue("attese più emissioni crescenti: $downloadingStages", downloadingStages.size >= 3)
        assertTrue(
            "i byte devono crescere: ${downloadingStages.map { it.bytesReceived }}",
            downloadingStages.zipWithNext().all { (a, b) -> a.bytesReceived < b.bytesReceived },
        )
        assertEquals(expectedTotalBytes, downloadingStages.last().bytesReceived)

        val processingStage = liveStages.firstOrNull { it.status == CatalogSectionStatus.PROCESSING }
        assertNotNull(processingStage)
        assertNull(processingStage!!.bytesTotal)
        assertEquals(expectedTotalBytes, processingStage.bytesReceived)

        val completedStage = liveStages.last()
        assertEquals(CatalogSectionStatus.COMPLETED, completedStage.status)
        assertNull(completedStage.bytesTotal)
        assertEquals(expectedTotalBytes, completedStage.bytesReceived)
        assertEquals("tappe LIVE: $liveStages", 15, completedStage.itemCount)
    }

    @Test
    fun `numero di emissioni limitato su un corpo da 5 MB`() = runBlocking {
        val fiveMbBytes = 5 * 1024 * 1024
        val totalBlocksOf8Kb = fiveMbBytes / CatalogClient.STREAM_BUFFER_SIZE // 640 blocchi da 8 KB
        val fiveMbJson = buildLiveStreamsJson(itemCount = 40, minBytes = fiveMbBytes)
        val actualBytes = fiveMbJson.toByteArray(Charsets.UTF_8).size.toLong()
        assertTrue("il corpo deve essere di almeno 5 MB", actualBytes >= fiveMbBytes.toLong())
        assertDecodable(fiveMbJson, 40)

        // Orologio stabile durante lo scaricamento veloce: conta solo la soglia dell'1%
        val fixedClock = Clock { 10_000L }

        server.dispatcher = ActionDispatcher(bodies = mapOf("get_live_streams" to fiveMbJson))

        val stages = mutableListOf<CatalogStage>()
        val result = client(clock = fixedClock).loadCatalog(baseUrl(), "demo", "demo") { stage ->
            stages.add(stage)
        }

        assertTrue(result is CatalogResult.Success)
        val liveDownloading = stages.filter {
            it.section == CatalogSection.LIVE && it.status == CatalogSectionStatus.DOWNLOADING
        }

        // Su 640 blocchi da 8 KB le emissioni devono essere al massimo ~101 (0% + 1%..100%),
        // mai una per ciascun blocco da 8 KB.
        assertTrue(
            "troppe emissioni (${liveDownloading.size}) rispetto ai $totalBlocksOf8Kb blocchi da 8 KB",
            liveDownloading.size in 2..105 && liveDownloading.size < totalBlocksOf8Kb / 4,
        )
        assertEquals(actualBytes, liveDownloading.last().bytesReceived)
        assertEquals(actualBytes, liveDownloading.last().bytesTotal)
    }
}
