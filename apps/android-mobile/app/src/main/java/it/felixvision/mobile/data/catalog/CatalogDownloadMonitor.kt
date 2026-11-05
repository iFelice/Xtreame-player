package it.felixvision.mobile.data.catalog

import it.felixvision.tv.data.catalog.CatalogSection
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import okhttp3.HttpUrl
import okhttp3.Interceptor
import okhttp3.MediaType
import okhttp3.Response
import okhttp3.ResponseBody
import okio.Buffer
import okio.BufferedSource
import okio.ForwardingSource
import okio.buffer

/**
 * Azioni `player_api.php` il cui corpo alimenta una riga della finestra di
 * aggiornamento: il download degli elenchi è la parte lenta di ogni sezione,
 * le categorie sono piccole e non vengono misurate.
 */
private val TRACKED_ACTIONS = mapOf(
    "get_live_streams" to CatalogSection.LIVE,
    "get_vod_streams" to CatalogSection.FILM,
    "get_series" to CatalogSection.SERIES,
)

/**
 * Le tre richieste delle categorie partono insieme all'inizio di ogni
 * aggiornamento: una per sezione, prima di qualunque body degli elenchi.
 * Servono all'interceptor per riconoscere un nuovo aggiornamento senza
 * dipendere da quale sezione arriva per prima.
 */
private val CATEGORY_ACTIONS = setOf(
    "get_live_categories",
    "get_vod_categories",
    "get_series_categories",
)

/**
 * Sezione della finestra di aggiornamento a cui appartiene una richiesta, oppure `null`
 * se la richiesta non riguarda il download del catalogo.
 */
internal fun catalogSectionFor(url: HttpUrl): CatalogSection? {
    if (!url.pathSegments.contains("player_api.php")) return null
    return TRACKED_ACTIONS[url.queryParameter("action")]
}

/**
 * Byte ricevuti per le richieste get_live_streams, get_vod_streams e
 * get_series, confrontati con il Content-Length inviato dal server.
 *
 * È lo stato osservato dalla finestra di aggiornamento del catalogo
 * ([it.felixvision.mobile.ui.settings.CatalogUpdateDialog]): quando il server
 * non invia il Content-Length il valore è `null` e la riga mostra i MB
 * scaricati con una barra indeterminata.
 *
 * Con Live, Film e Serie scaricati in parallelo non esiste più una sezione
 * che parte per prima: [begin] aggiorna solo la riga della propria sezione e
 * l'azzeramento dell'aggiornamento precedente è fatto da [reset], chiamato
 * dall'interceptor sulla prima richiesta categorie del nuovo aggiornamento.
 * Le letture avvengono su tre thread di I/O diversi: tutte le modifiche della
 * mappa passano da [MutableStateFlow.update], che ripete la trasformazione in
 * caso di aggiornamento concorrente (nessuna riga persa).
 */
class CatalogDownloadMonitor {

    /** Byte letti finora e dimensione totale dichiarata, se presente. */
    data class Progress(
        val bytesRead: Long,
        val contentLength: Long?,
    ) {
        /** Frazione 0..1 quando la dimensione è nota, altrimenti `null`. */
        val fraction: Float?
            get() = contentLength
                ?.takeIf { it > 0L }
                ?.let { (bytesRead.toDouble() / it).coerceIn(0.0, 1.0).toFloat() }

        /** MB scaricati finora, per la barra indeterminata. */
        val megabytes: Float
            get() = bytesRead / (1024f * 1024f)
    }

    private val _progress = MutableStateFlow<Map<CatalogSection, Progress>>(emptyMap())
    val progress: StateFlow<Map<CatalogSection, Progress>> = _progress.asStateFlow()

    /**
     * Azzera tutte le righe all'inizio di un nuovo aggiornamento. Metodo
     * interno al modulo: non cambia la firma pubblica del monitor.
     */
    internal fun reset() {
        _progress.value = emptyMap()
    }

    /**
     * Registra l'inizio del body di una sezione azzerando solo la sua riga:
     * le altre sezioni possono essere già partite (caricamento parallelo).
     */
    fun begin(section: CatalogSection, contentLength: Long?) {
        _progress.update { current ->
            current + (section to Progress(bytesRead = 0L, contentLength = contentLength))
        }
    }

    /** Aggiorna i byte letti di una sezione, ignorando i valori non crescenti. */
    fun advance(section: CatalogSection, bytesRead: Long) {
        _progress.update { current ->
            val previous = current[section] ?: return@update current
            if (bytesRead <= previous.bytesRead) return@update current
            current + (section to previous.copy(bytesRead = bytesRead))
        }
    }
}

/**
 * Interceptor dell'unico [okhttp3.OkHttpClient] del tablet
 * ([it.felixvision.mobile.AppContainer.httpClient]): misura i byte ricevuti
 * dalle richieste del catalogo rispetto al Content-Length e li riporta al
 * [CatalogDownloadMonitor]. Le altre richieste passano invariate.
 *
 * È aggiunto SOLO al client dell'app tablet: il codice condiviso della TV
 * ([it.felixvision.tv.core.HttpClientFactory]) non viene toccato. Con le tre
 * sezioni in parallelo azzera le righe del refresh precedente sulla prima
 * richiesta categorie del gruppo, non più sull'inizio di Live.
 */
class CatalogDownloadInterceptor(
    private val monitor: CatalogDownloadMonitor,
) : Interceptor {

    private val lock = Any()
    private val categoriesSeen = mutableSetOf<String>()

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val action = request.url.queryParameter("action") ?: ""
        if (action in CATEGORY_ACTIONS &&
            request.url.pathSegments.contains("player_api.php") &&
            isFirstCategoryOfRefresh(action)
        ) {
            monitor.reset()
        }
        val section = catalogSectionFor(request.url) ?: return chain.proceed(request)
        val response = chain.proceed(request)
        if (!response.isSuccessful) return response
        val body = response.body
        val contentLength = body.contentLength().takeIf { it > 0L }
        monitor.begin(section, contentLength)
        return response.newBuilder()
            .body(CountingResponseBody(body, monitor, section))
            .build()
    }

    /**
     * Vero solo per la prima delle tre richieste categorie di un
     * aggiornamento: un gruppo completo (o un'azione ripetuta) significa che
     * è partito un nuovo refresh. Qualsiasi delle tre sezioni può arrivare
     * per prima, quindi il reset non dipende più dall'ordine Live → Film →
     * Serie.
     */
    private fun isFirstCategoryOfRefresh(action: String): Boolean = synchronized(lock) {
        val first = categoriesSeen.size == CATEGORY_ACTIONS.size || action in categoriesSeen
        if (first) categoriesSeen.clear()
        categoriesSeen.add(action)
        first
    }
}

/**
 * [ResponseBody] che conta i byte mentre il lettore sottostante (il parser
 * JSON in streaming di CatalogClient) li consuma: l'avanzamento è reale, non
 * stimato.
 */
private class CountingResponseBody(
    private val delegate: ResponseBody,
    private val monitor: CatalogDownloadMonitor,
    private val section: CatalogSection,
) : ResponseBody() {

    private var read = 0L

    private val countingSource: BufferedSource =
        object : ForwardingSource(delegate.source()) {
            override fun read(sink: Buffer, byteCount: Long): Long {
                val result = super.read(sink, byteCount)
                if (result > 0L) {
                    read += result
                    monitor.advance(section, read)
                }
                return result
            }
        }.buffer()

    override fun contentType(): MediaType? = delegate.contentType()

    override fun contentLength(): Long = delegate.contentLength()

    override fun source(): BufferedSource = countingSource
}
