package it.felixvision.mobile.data.catalog

import it.felixvision.tv.data.catalog.CatalogSection
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
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
 * Ogni caricamento del catalogo inizia da get_live_streams (Live): la prima
 * chiamata a [begin] su Live azzera le righe dell'aggiornamento precedente.
 * Le letture avvengono sul thread di I/O di OkHttp: [MutableStateFlow] è
 * thread-safe e i collettori ricevono sempre l'ultimo valore.
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

    /** Registra l'inizio del body di una sezione (azzera tutto se è Live). */
    fun begin(section: CatalogSection, contentLength: Long?) {
        _progress.value = if (section == CatalogSection.LIVE) {
            mapOf(section to Progress(bytesRead = 0L, contentLength = contentLength))
        } else {
            _progress.value + (section to Progress(bytesRead = 0L, contentLength = contentLength))
        }
    }

    /** Aggiorna i byte letti di una sezione, ignorando i valori non crescenti. */
    fun advance(section: CatalogSection, bytesRead: Long) {
        val current = _progress.value[section] ?: return
        if (bytesRead <= current.bytesRead) return
        _progress.value = _progress.value + (section to current.copy(bytesRead = bytesRead))
    }
}

/**
 * Interceptor dell'unico [okhttp3.OkHttpClient] del tablet
 * ([it.felixvision.mobile.AppContainer.httpClient]): misura i byte ricevuti
 * dalle richieste del catalogo rispetto al Content-Length e li riporta al
 * [CatalogDownloadMonitor]. Le altre richieste passano invariate.
 *
 * È aggiunto SOLO al client dell'app tablet: il codice condiviso della TV
 * ([it.felixvision.tv.core.HttpClientFactory]) non viene toccato.
 */
class CatalogDownloadInterceptor(
    private val monitor: CatalogDownloadMonitor,
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
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
