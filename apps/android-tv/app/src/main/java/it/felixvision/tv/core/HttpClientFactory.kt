package it.felixvision.tv.core

import java.util.concurrent.TimeUnit
import okhttp3.Dispatcher
import okhttp3.OkHttpClient

/**
 * Parametri di rete dell'unica istanza di [OkHttpClient] dell'app.
 *
 * I valori predefiniti sono quelli richiesti dal prodotto:
 * - massimo 4 richieste contemporanee per host (i pannelli Xtream limitano le
 *   connessioni e chiudono le sessioni se si apre troppa concorrenza);
 * - timeout di connessione 10 s e di lettura 20 s;
 * - nessun retry automatico su errori del server: se una richiesta fallisce è
 *   l'utente a riprovare con un pulsante.
 */
data class HttpConfig(
    val maxRequestsPerHost: Int = DEFAULT_MAX_REQUESTS_PER_HOST,
    val maxRequests: Int = DEFAULT_MAX_REQUESTS,
    val connectTimeoutMillis: Long = DEFAULT_CONNECT_TIMEOUT_MILLIS,
    val readTimeoutMillis: Long = DEFAULT_READ_TIMEOUT_MILLIS,
) {
    companion object {
        const val DEFAULT_MAX_REQUESTS_PER_HOST = 4
        const val DEFAULT_MAX_REQUESTS = 8
        const val DEFAULT_CONNECT_TIMEOUT_MILLIS = 10_000L
        const val DEFAULT_READ_TIMEOUT_MILLIS = 20_000L
    }
}

object HttpClientFactory {

    /**
     * Costruisce l'unico [OkHttpClient] dell'app. Le richieste sincrone
     * (`execute`) girano su thread di chiamata, quindi il dispatcher regola solo
     * la concorrenza: 4 per host, 8 in totale.
     */
    fun create(config: HttpConfig = HttpConfig()): OkHttpClient {
        val dispatcher = Dispatcher().apply {
            maxRequestsPerHost = config.maxRequestsPerHost
            maxRequests = config.maxRequests
        }

        return OkHttpClient.Builder()
            .dispatcher(dispatcher)
            .connectTimeout(config.connectTimeoutMillis, TimeUnit.MILLISECONDS)
            .readTimeout(config.readTimeoutMillis, TimeUnit.MILLISECONDS)
            .writeTimeout(config.readTimeoutMillis, TimeUnit.MILLISECONDS)
            // Nessun nuovo tentativo automatico: un errore di rete deve arrivare
            // subito all'interfaccia, che chiede all'utente di riprovare.
            .retryOnConnectionFailure(false)
            .followRedirects(true)
            .build()
    }
}
