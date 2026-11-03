package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import java.util.Collections
import kotlinx.coroutines.async
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * Test del caricamento parallelo di [CatalogClient.loadCatalog] con server
 * HTTP finto (MockWebServer, risposte per `action`), ritardi diversi per
 * sezione e orologio virtuale iniettato ([VirtualClock]).
 *
 * Nessun indirizzo di server reale: solo loopback del server finto e
 * credenziali demo/demo.
 */
class CatalogClientParallelTest {

    private lateinit var server: MockWebServer
    private val http: OkHttpClient by lazy { HttpClientFactory.create() }

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

    private fun client(
        okHttp: OkHttpClient = http,
        clock: VirtualClock = VirtualClock(),
    ): CatalogClient = CatalogClient(http = okHttp, json = FvpJson, clock = clock)

    /** Sei risposte con dati distinti, per verificare anche l'ordine degli elenchi. */
    private val bodies = mapOf(
        "get_live_categories" to
            """[{"category_id":"1","category_name":"Live A"},{"category_id":"2","category_name":"Live B"}]""",
        "get_live_streams" to
            """[{"stream_id":"101","name":"Canale 1","category_id":"1"},{"stream_id":"102","name":"Canale 2","category_id":"2"}]""",
        "get_vod_categories" to
            """[{"category_id":"10","category_name":"Film"}]""",
        "get_vod_streams" to
            """[{"stream_id":"201","name":"Film 1","category_id":"10","rating":"7"},{"stream_id":"202","name":"Film 2","category_id":"10"}]""",
        "get_series_categories" to
            """[{"category_id":"20","category_name":"Serie"}]""",
        "get_series" to
            """[{"series_id":"301","name":"Serie 1","category_id":"20"},{"series_id":"302","name":"Serie 2"}]""",
    )

    private val actions = listOf(
        "get_live_categories", "get_live_streams",
        "get_vod_categories", "get_vod_streams",
        "get_series_categories", "get_series",
    )

    /**
     * Riferimento sequenziale: le stesse sei azioni, una dopo l'altra, con lo
     * stesso JSON e lo stesso orologio. È la vecchia sequenza Live → Film →
     * Serie ricostruita nel test, senza usare il client parallelo.
     */
    private fun sequentialCatalog(clock: Clock): Catalog {
        fun body(action: String): String {
            val url = server.url("/player_api.php").newBuilder()
                .addQueryParameter("username", "demo")
                .addQueryParameter("password", "demo")
                .addQueryParameter("action", action)
                .build()
            val request = Request.Builder().url(url).get().build()
            return http.newCall(request).execute().use { response ->
                assertEquals(200, response.code)
                response.body!!.string()
            }
        }
        return Catalog(
            liveCategories = FvpJson.decodeFromString<List<Category>>(body("get_live_categories")),
            liveStreams = FvpJson.decodeFromString<List<LiveStream>>(body("get_live_streams")),
            vodCategories = FvpJson.decodeFromString<List<Category>>(body("get_vod_categories")),
            vodStreams = FvpJson.decodeFromString<List<VodStream>>(body("get_vod_streams")),
            seriesCategories = FvpJson.decodeFromString<List<Category>>(body("get_series_categories")),
            series = FvpJson.decodeFromString<List<SeriesItem>>(body("get_series")),
            updatedAtMillis = clock.nowMillis(),
        )
    }

    @Test
    fun `tempo totale pari alla sezione piu lenta non alla somma e al massimo tre richieste insieme`() = runBlocking {
        // Ritardi sul thread chiamante: si sovrappongono davvero fra sezioni.
        val delays = mapOf(
            "get_live_categories" to 60L,
            "get_live_streams" to 100L,
            "get_vod_categories" to 60L,
            "get_vod_streams" to 1_200L,
            "get_series_categories" to 60L,
            "get_series" to 600L,
        )
        val sequentialTotal = delays.values.sum() // 2.080 ms
        val slowestSection = 60L + 1_200L // Film: categorie + elenco
        val delayInterceptor = DelayInterceptor(delays)
        server.dispatcher = ActionDispatcher(bodies = bodies)
        val clock = VirtualClock()
        val okHttp = http.newBuilder().addInterceptor(delayInterceptor).build()

        val stages = Collections.synchronizedList(mutableListOf<CatalogStage>())
        val startNanos = System.nanoTime()
        val result = client(okHttp = okHttp, clock = clock)
            .loadCatalog(baseUrl(), "demo", "demo") { stages.add(it) }
        val elapsedMillis = (System.nanoTime() - startNanos) / 1_000_000L

        assertTrue("atteso successo, ottenuto $result", result is CatalogResult.Success)
        assertTrue(
            "tempo $elapsedMillis ms: deve essere almeno la sezione più lenta ($slowestSection ms)",
            elapsedMillis >= slowestSection - 60L,
        )
        assertTrue(
            "tempo $elapsedMillis ms: deve essere inferiore alla somma ($sequentialTotal ms)",
            elapsedMillis < sequentialTotal - 300L,
        )
        // Anche l'orologio virtuale iniettato misura il parallelo, non la somma.
        assertTrue(
            "orologio virtuale: ${clock.elapsedMillis()} ms",
            clock.elapsedMillis() >= slowestSection - 60L &&
                clock.elapsedMillis() < sequentialTotal - 300L,
        )

        // Al massimo 3 richieste insieme (una per sezione) e almeno 2: il
        // caricamento è davvero parallelo.
        assertTrue("massimo in volo ${delayInterceptor.maxInFlight.get()}", delayInterceptor.maxInFlight.get() <= 3)
        assertTrue("nessun parallelo: massimo in volo 1", delayInterceptor.maxInFlight.get() >= 2)

        val seen = delayInterceptor.actions.toList()
        assertEquals(6, seen.size)
        assertEquals(actions.toSet(), seen.toSet())
        // Dentro ogni sezione resta l'ordine categorie → elenco.
        assertTrue(seen.indexOf("get_live_categories") < seen.indexOf("get_live_streams"))
        assertTrue(seen.indexOf("get_vod_categories") < seen.indexOf("get_vod_streams"))
        assertTrue(seen.indexOf("get_series_categories") < seen.indexOf("get_series"))

        // Ogni sezione emette DOWNLOADING, PROCESSING, COMPLETED come prima.
        CatalogSection.entries.forEach { section ->
            val sectionStages = stages.filter { it.section == section }
            assertEquals(CatalogSectionStatus.DOWNLOADING, sectionStages.first().status)
            assertTrue(sectionStages.any { it.status == CatalogSectionStatus.PROCESSING })
            assertEquals(CatalogSectionStatus.COMPLETED, sectionStages.last().status)
            assertFalse(sectionStages.any { it.status == CatalogSectionStatus.ERROR })
        }
    }

    @Test
    fun `Catalog identico alla versione sequenziale sugli stessi dati`() = runBlocking {
        server.dispatcher = ActionDispatcher(bodies = bodies)
        val fixedClock = Clock { 1_234_567L }
        val expected = sequentialCatalog(Clock { 1_234_567L })
        val result = CatalogClient(http = http, json = FvpJson, clock = fixedClock)
            .loadCatalog(baseUrl(), "demo", "demo")

        assertTrue("atteso successo, ottenuto $result", result is CatalogResult.Success)
        val actual = (result as CatalogResult.Success).catalog
        // Stesso orologio fisso per i due percorsi: contenuto e ordine degli
        // elenchi devono coincidere esattamente, campo temporale compreso.
        assertEquals(expected, actual)
        assertEquals(listOf("101", "102"), actual.liveStreams.map { it.streamId })
        assertEquals(listOf("201", "202"), actual.vodStreams.map { it.streamId })
        assertEquals(listOf("301", "302"), actual.series.map { it.seriesId })
        assertEquals(listOf("1", "2"), actual.liveCategories.map { it.categoryId })
    }

    @Test
    fun `tappe interlacciate di sezioni diverse si applicano correttamente`() = runBlocking {
        server.dispatcher = ActionDispatcher(bodies = bodies)
        val stages = Collections.synchronizedList(mutableListOf<CatalogStage>())
        val result = client().loadCatalog(baseUrl(), "demo", "demo") { stages.add(it) }
        assertTrue(result is CatalogResult.Success)

        // Le tappe non sono più raggruppate sezione per sezione.
        val firstNonLive = stages.indexOfFirst { it.section != CatalogSection.LIVE }
        val lastLive = stages.indexOfLast { it.section == CatalogSection.LIVE }
        assertTrue("attese tappe interlacciate: $stages", firstNonLive >= 0 && firstNonLive < lastLive)

        // CatalogRefresh.apply riceve le tappe nell'ordine reale di emissione.
        var rows = CatalogRefresh.idle()
        stages.forEach { stage -> rows = CatalogRefresh.apply(rows, stage) }
        assertEquals(
            listOf(CatalogSection.LIVE, CatalogSection.FILM, CatalogSection.SERIES),
            rows.map { it.section },
        )
        assertTrue(rows.all { it.status == CatalogSectionStatus.COMPLETED })
        assertEquals(listOf(2, 2, 2), rows.map { it.itemCount })
        assertTrue(CatalogRefresh.isFinished(rows))
        assertFalse(CatalogRefresh.hasError(rows))
    }

    @Test
    fun `errore di una sezione restituisce lo stesso errore di oggi e annulla le altre richieste`() = runBlocking {
        // Live e Serie restano bloccate nella richiesta categorie; Film fallisce
        // subito con HTTP 500. L'aggiornamento deve interrompersi senza riprove
        // e chiudere le due richieste ancora in volo.
        val tracked = setOf("get_live_categories", "get_series_categories")
        val cancelAware = CancelAwareInterceptor(tracked)
        val okHttp = http.newBuilder().addInterceptor(cancelAware).build()
        server.dispatcher = ActionDispatcher(
            bodies = bodies,
            failuresFor = mapOf("get_vod_categories" to 500),
        )
        val stages = Collections.synchronizedList(mutableListOf<CatalogStage>())

        val result = client(okHttp = okHttp)
            .loadCatalog(baseUrl(), "demo", "demo") { stages.add(it) }

        assertTrue("atteso errore, ottenuto $result", result is CatalogResult.Error)
        assertEquals(
            "Il server ha risposto con un errore (HTTP 500).",
            (result as CatalogResult.Error).message,
        )
        // ERROR solo per la sezione che ha fallito; nessuna riprova automatica
        // e nessun elenco richiesto dopo l'errore.
        assertEquals(
            listOf(CatalogSection.FILM),
            stages.filter { it.status == CatalogSectionStatus.ERROR }.map { it.section },
        )
        assertEquals(tracked, cancelAware.cancelled)
        assertEquals(1, server.requestCount)
        assertTrue(server.takeRequest().path!!.contains("get_vod_categories"))
    }

    @Test
    fun `annullare il caricamento annulla tutte e tre le richieste`() = runBlocking {
        val tracked = setOf(
            "get_live_categories",
            "get_vod_categories",
            "get_series_categories",
        )
        val cancelAware = CancelAwareInterceptor(tracked)
        val okHttp = http.newBuilder().addInterceptor(cancelAware).build()
        server.dispatcher = ActionDispatcher(bodies = bodies)

        val job = async {
            client(okHttp = okHttp).loadCatalog(baseUrl(), "demo", "demo")
        }
        assertTrue(
            "le tre richieste categorie devono partire insieme",
            cancelAware.awaitStarted(),
        )
        job.cancelAndJoin()

        assertTrue(job.isCancelled)
        assertEquals(tracked, cancelAware.cancelled)
        // Nessuna richiesta è arrivata al server e nessun elenco è partito.
        assertEquals(0, server.requestCount)
    }
}
