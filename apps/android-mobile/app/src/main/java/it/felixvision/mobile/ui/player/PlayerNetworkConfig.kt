@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile.ui.player

import androidx.annotation.OptIn
import android.content.Context
import androidx.media3.common.C
import androidx.media3.common.PlaybackException
import androidx.media3.datasource.DataSourceException
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.datasource.HttpDataSource
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy
import it.felixvision.tv.core.AppLog
import it.felixvision.tv.data.playback.StreamUrls
import java.net.SocketException
import java.net.SocketTimeoutException
import java.net.UnknownHostException

/**
 * Rete del player in un solo posto: tempi di connessione e di lettura adatti a
 * reti lente e VPN, redirect anche tra http e https, User-Agent di sistema
 * (lo stesso di prima) e regole dei nuovi tentativi.
 */
@androidx.media3.common.util.UnstableApi
object PlayerNetworkConfig {

    /** Tempo massimo per aprire la connessione con il server. */
    const val CONNECT_TIMEOUT_MILLIS: Int = 20_000

    /** Tempo massimo di attesa dei dati durante la lettura dello stream. */
    const val READ_TIMEOUT_MILLIS: Int = 30_000

    /** I server IPTV rimandano spesso da http a https (o viceversa). */
    const val ALLOW_CROSS_PROTOCOL_REDIRECTS: Boolean = true

    /** `null`: User-Agent predefinito di sistema, invariato rispetto a prima. */
    val USER_AGENT: String? = null

    /** Nuovi tentativi per gli errori di rete, i timeout e le risposte [RETRYABLE_HTTP_CODES]. */
    const val MAX_NETWORK_RETRIES: Int = 3

    /** Attesa prima del primo nuovo tentativo; poi raddoppia: 1 s, 2 s, 4 s. */
    const val FIRST_RETRY_DELAY_MILLIS: Long = 1_000L

    /**
     * Risposte HTTP temporanee del server (errore interno, gateway non valido,
     * servizio non disponibile, timeout del gateway): nuovi tentativi come per
     * gli errori di rete. Ogni altro codice HTTP resta senza nuovi tentativi.
     */
    val RETRYABLE_HTTP_CODES: Set<Int> = setOf(500, 502, 503, 504)

    /**
     * Risposte HTTP definitive: nessun nuovo tentativo, il messaggio arriva
     * subito. Hanno la precedenza su [RETRYABLE_HTTP_CODES].
     */
    val NON_RETRYABLE_HTTP_CODES: Set<Int> = setOf(401, 403, 404)

    /** Riavvii automatici e silenziosi della sorgente live dopo un errore di rete. */
    const val MAX_LIVE_AUTO_RESTARTS: Int = 1

    /** Sorgente HTTP del player con i valori qui sopra. */
    fun httpDataSourceFactory(): DefaultHttpDataSource.Factory =
        DefaultHttpDataSource.Factory()
            .setUserAgent(USER_AGENT)
            .setConnectTimeoutMs(CONNECT_TIMEOUT_MILLIS)
            .setReadTimeoutMs(READ_TIMEOUT_MILLIS)
            .setAllowCrossProtocolRedirects(ALLOW_CROSS_PROTOCOL_REDIRECTS)

    /**
     * Fabbrica delle sorgenti del player: stessi estrattori di
     * `DefaultMediaSourceFactory(context)`, con la sorgente HTTP configurata e
     * la politica degli errori [PlayerLoadErrorPolicy]. [streamUrl] serve solo
     * ai log, sempre oscurato con [StreamUrls.redactStreamUrl].
     */
    fun mediaSourceFactory(context: Context, streamUrl: String?): DefaultMediaSourceFactory =
        DefaultMediaSourceFactory(DefaultDataSource.Factory(context, httpDataSourceFactory()))
            .setLoadErrorHandlingPolicy(PlayerLoadErrorPolicy(streamUrl))
}

/** Riconoscimento degli errori di rete, separati dalle risposte HTTP del server. */
@androidx.media3.common.util.UnstableApi
object PlayerNetworkErrors {

    private const val MAX_CAUSE_DEPTH = 8

    private val NETWORK_ERROR_CODES = setOf(
        PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED,
        PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT,
    )

    /**
     * Vero per connessione fallita o interrotta, host non raggiungibile e
     * timeout. Falso per le risposte HTTP (anche 5xx), per il traffico in chiaro
     * non permesso e per gli errori dello stream.
     */
    fun isNetworkOrTimeout(error: Throwable?): Boolean {
        var current = error
        var depth = 0
        while (current != null && depth < MAX_CAUSE_DEPTH) {
            when (current) {
                is HttpDataSource.InvalidResponseCodeException -> return false
                is HttpDataSource.CleartextNotPermittedException -> return false
                is DataSourceException -> if (current.reason in NETWORK_ERROR_CODES) return true
                is SocketTimeoutException -> return true
                is SocketException -> return true
                is UnknownHostException -> return true
            }
            current = current.cause
            depth++
        }
        return false
    }

    /** Errore del player dovuto alla rete (dopo i nuovi tentativi già esauriti). */
    fun isNetworkError(error: PlaybackException): Boolean =
        error.errorCode in NETWORK_ERROR_CODES || isNetworkOrTimeout(error.cause)

    /** Codice della risposta HTTP che ha causato l'errore, se c'è. */
    fun httpResponseCode(error: Throwable?): Int? {
        var current = error
        var depth = 0
        while (current != null && depth < MAX_CAUSE_DEPTH) {
            if (current is HttpDataSource.InvalidResponseCodeException) return current.responseCode
            current = current.cause
            depth++
        }
        return null
    }

    /**
     * Vero se l'errore merita nuovi tentativi: errori di rete, timeout e
     * risposte HTTP in [PlayerNetworkConfig.RETRYABLE_HTTP_CODES] (500, 502,
     * 503, 504). Falso per 401/403/404, per ogni altro codice HTTP e per gli
     * errori che non sono di rete.
     */
    fun isRetryable(error: Throwable?): Boolean {
        val httpCode = httpResponseCode(error) ?: return isNetworkOrTimeout(error)
        if (httpCode in PlayerNetworkConfig.NON_RETRYABLE_HTTP_CODES) return false
        return httpCode in PlayerNetworkConfig.RETRYABLE_HTTP_CODES
    }

    /**
     * Attesa prima del nuovo tentativo numero [errorCount] (1, 2, 3), oppure
     * `null` se non si riprova: errore senza nuovi tentativi (vedi
     * [isRetryable]) o tentativi esauriti.
     */
    fun retryDelayMillis(error: Throwable?, errorCount: Int): Long? {
        if (!isRetryable(error)) return null
        if (errorCount < 1 || errorCount > PlayerNetworkConfig.MAX_NETWORK_RETRIES) return null
        return PlayerNetworkConfig.FIRST_RETRY_DELAY_MILLIS shl (errorCount - 1)
    }

    /** Nome della causa più interna, per i log: mai i messaggi, che possono contenere URL. */
    fun causeName(error: Throwable?): String {
        var current = error ?: return "sconosciuta"
        var depth = 0
        while (depth < MAX_CAUSE_DEPTH) {
            current = current.cause ?: break
            depth++
        }
        return current.javaClass.simpleName
    }
}

/**
 * Nuovi tentativi di caricamento: fino a 3 per errori di rete, timeout e
 * risposte HTTP 500/502/503/504, con attese di 1, 2 e 4 secondi; nessuno per
 * 401/403/404, per gli altri codici HTTP e per gli altri errori. Il player
 * segnala l'errore solo dopo i tentativi, quindi nel frattempo resta visibile
 * il caricamento. Ogni log porta il numero del tentativo e l'URL oscurato.
 */
@androidx.media3.common.util.UnstableApi
class PlayerLoadErrorPolicy(
    private val streamUrl: String?,
) : DefaultLoadErrorHandlingPolicy(PlayerNetworkConfig.MAX_NETWORK_RETRIES) {

    override fun getRetryDelayMsFor(loadErrorInfo: LoadErrorHandlingPolicy.LoadErrorInfo): Long {
        val error = loadErrorInfo.exception
        val attempt = loadErrorInfo.errorCount
        val maxRetries = PlayerNetworkConfig.MAX_NETWORK_RETRIES
        val delayMillis = PlayerNetworkErrors.retryDelayMillis(error, attempt)
        val httpCode = PlayerNetworkErrors.httpResponseCode(error)
        val cause = PlayerNetworkErrors.causeName(error)
        val target = StreamUrls.redactStreamUrl(streamUrl)
        val reason = when {
            httpCode != null -> "risposta HTTP $httpCode"
            PlayerNetworkErrors.isNetworkOrTimeout(error) -> "errore di rete ($cause)"
            else -> "errore di caricamento ($cause)"
        }
        val outcome = when {
            delayMillis != null -> "nuovo tentativo $attempt di $maxRetries tra $delayMillis ms"
            PlayerNetworkErrors.isRetryable(error) -> "tentativi esauriti ($maxRetries di $maxRetries)"
            else -> "nessun nuovo tentativo"
        }
        AppLog.warn("Player: $reason, $outcome su $target")
        return delayMillis ?: C.TIME_UNSET
    }
}

/** Tipo di riproduzione, per decidere il riavvio automatico. */
enum class PlaybackKind { LIVE, CATCHUP, MOVIE, EPISODE }

/** Cosa fa il player dopo un errore definitivo di riproduzione. */
enum class PlayerErrorAction {
    /** Riapre la stessa sorgente senza messaggi: il caricamento resta visibile. */
    SILENT_RESTART,

    /** Mostra l'errore con "Riprova" e "Indietro". */
    SHOW_ERROR,
}

/**
 * Riavvio automatico e silenzioso della sorgente: solo per i canali live, solo
 * per errori di rete rimasti dopo i nuovi tentativi (mai per le risposte HTTP,
 * 500/502/503/504 compresi), al massimo [maxRestarts] volte prima di mostrare
 * l'errore. Mai per film, episodi e catch-up. Il conteggio riparte con un
 * nuovo avvio della riproduzione (cambio canale, "Riprova", ritorno alla
 * diretta) o quando lo stream è pronto.
 */
@androidx.media3.common.util.UnstableApi
class LiveAutoRestart(
    private val maxRestarts: Int = PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS,
) {

    var restartsUsed: Int = 0
        private set

    fun onPlayerError(kind: PlaybackKind, error: PlaybackException): PlayerErrorAction =
        onPlayerError(kind, networkError = PlayerNetworkErrors.isNetworkError(error))

    fun onPlayerError(kind: PlaybackKind, networkError: Boolean): PlayerErrorAction {
        if (kind != PlaybackKind.LIVE || !networkError || restartsUsed >= maxRestarts) {
            return PlayerErrorAction.SHOW_ERROR
        }
        restartsUsed += 1
        return PlayerErrorAction.SILENT_RESTART
    }

    fun reset() {
        restartsUsed = 0
    }
}
