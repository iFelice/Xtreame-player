@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import android.content.Context
import androidx.media3.common.C
import androidx.media3.common.PlaybackException
import androidx.media3.datasource.DataSourceException
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.datasource.HttpDataSource
import androidx.media3.exoplayer.DefaultLoadControl
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

    /**
     * Riavvii automatici e silenziosi della sorgente live dopo un errore di
     * rete o uno stallo. Tre prove prima di mostrare l'errore (prima era una
     * sola): un canale che si strozza a metà visione ha così il tempo di
     * ripartire, senza però restare per sempre in caricamento.
     */
    const val MAX_LIVE_AUTO_RESTARTS: Int = 3

    /**
     * Attese dei riavvii silenziosi, nell'ordine: immediato, immediato, 1 s.
     *
     * Il primo riavvio deve essere invisibile, come il `prepare()` immediato del
     * pannello di riferimento: su un canale che si strappa a metà visione ogni
     * attesa è tempo con il video fermo.
     */
    val LIVE_AUTO_RESTART_DELAYS_MILLIS: List<Long> = listOf(0L, 0L, 1_000L)

    /**
     * Tentativi interni di Media3 su un Live progressivo (`.ts`): zero.
     *
     * Un TS non è segmentato: alla riapertura Media3 chiede `Range: bytes=N-`.
     * Se il pannello risponde 200 ignorando il `Range` (comportamento tipico dei
     * balancer Xtream), la sorgente HTTP scarica e scarta N byte prima di
     * riprendere: con 660 kB/s e 50 s di buffer sono ~35 s di download buttato
     * per ogni riapertura, che l'utente vede come "si blocca". Con zero
     * tentativi interni l'errore arriva subito al player, che riapre da zero.
     */
    const val PROGRESSIVE_LIVE_MIN_LOADABLE_RETRY_COUNT: Int = 0

    /** Il Live servito come flusso progressivo (`.ts`) ha i retry interni spenti. */
    fun isProgressiveLiveUrl(streamUrl: String?): Boolean =
        streamUrl != null && streamUrl.substringBefore('?').endsWith(".${StreamUrls.LIVE_TS}", ignoreCase = true)

    /**
     * Oltre questo numero di riavvii consecutivi la sorgente si rigenera da
     * capo (nuova catena di redirect e nuovo token, e per il Live anche
     * l'altro formato): è il "refresh" che nei pannelli Xtream rimedia ai
     * token e alle sessioni appese, e che il pannello di riferimento ottiene
     * ricostruendo ogni volta l'indirizzo da zero.
     */
    const val RESTARTS_BEFORE_SOURCE_REFRESH: Int = 2

    /**
     * Buffer del player, valori scelti sul comportamento del pannello di
     * riferimento (`minBufferMs`/`maxBufferMs` a 50 s, avvio a 2,5 s):
     *
     * - [LOAD_CONTROL_MIN_BUFFER_MILLIS], [LOAD_CONTROL_MAX_BUFFER_MILLIS]:
     *   fino a 50 s di media pronta. Su reti IPTV irregolari è la difesa che
     *   evita lo stallo a metà visione.
     * - [LOAD_CONTROL_PLAYBACK_BUFFER_MILLIS]: si parte appena ci sono 2,5 s di
     *   media, come il riferimento; dopo un'interruzione si aspettano 5 s, per
     *   non ripartire su un buffer che si svuota subito.
     * - [LOAD_CONTROL_PRIORITIZE_TIME]: il conteggio del buffer è in tempo, non
     *   in byte. Senza questo flag un flusso 1080p su TV con poca RAM si ferma
     *   a "buffer pieno" prima dei 50 s e sembra uno stallo del provider.
     */
    const val LOAD_CONTROL_MIN_BUFFER_MILLIS: Int = 50_000
    const val LOAD_CONTROL_MAX_BUFFER_MILLIS: Int = 50_000
    const val LOAD_CONTROL_PLAYBACK_BUFFER_MILLIS: Int = 2_500
    const val LOAD_CONTROL_REBUFFER_BUFFER_MILLIS: Int = 5_000
    const val LOAD_CONTROL_PRIORITIZE_TIME: Boolean = true

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
            .setLoadErrorHandlingPolicy(
                PlayerLoadErrorPolicy(
                    streamUrl = streamUrl,
                    // `.ts` = flusso progressivo: si riapre da zero, mai a metà.
                    progressiveLive = isProgressiveLiveUrl(streamUrl),
                ),
            )

    /**
     * Buffer del player con i valori dell'oggetto: il tempo comanda sulla
     * dimensione in byte, così i 50 s valgono anche per i flussi 1080p.
     */
    fun loadControl(): DefaultLoadControl =
        DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                LOAD_CONTROL_MIN_BUFFER_MILLIS,
                LOAD_CONTROL_MAX_BUFFER_MILLIS,
                LOAD_CONTROL_PLAYBACK_BUFFER_MILLIS,
                LOAD_CONTROL_REBUFFER_BUFFER_MILLIS,
            )
            .setPrioritizeTimeOverSizeThresholds(LOAD_CONTROL_PRIORITIZE_TIME)
            .setBackBuffer(0, false)
            .build()
}

/** Riconoscimento degli errori di rete, separati dalle risposte HTTP del server. */
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
class PlayerLoadErrorPolicy(
    private val streamUrl: String?,
    /**
     * Vero per il Live diretto servito come flusso progressivo (`.ts`): lì i
     * nuovi tentativi interni di Media3 vanno spenti (vedi
     * [PlayerNetworkConfig.PROGRESSIVE_LIVE_MIN_LOADABLE_RETRY_COUNT]).
     */
    private val progressiveLive: Boolean = false,
) : DefaultLoadErrorHandlingPolicy(PlayerNetworkConfig.MAX_NETWORK_RETRIES) {

    /**
     * Numero minimo di tentativi interni prima che l'errore arrivi al player.
     *
     * Sul Live progressivo è **zero**: Media3 riaprirebbe lo stesso indirizzo a
     * un offset diverso da zero (`Range: bytes=<offset>-`), ma i pannelli
     * Xtream ignorano il `Range` e rispondono 200 con il flusso da capo, quindi
     * `DefaultHttpDataSource` deve scaricare e **buttare via** tutti i byte
     * fino all'offset: minuti di download inutile, con il video fermo. Meglio
     * lasciar arrivare subito l'errore a [it.felixvision.tv.ui.player.PlayerEngine],
     * che ricostruisce la sorgente da zero: nessun byte da scartare.
     *
     * Per il resto (film, episodi, replay, HLS) restano i
     * [PlayerNetworkConfig.MAX_NETWORK_RETRIES] di sempre.
     */
    override fun getMinimumLoadableRetryCount(dataType: Int): Int =
        if (progressiveLive && dataType == C.DATA_TYPE_MEDIA_PROGRESSIVE_LIVE) {
            PlayerNetworkConfig.PROGRESSIVE_LIVE_MIN_LOADABLE_RETRY_COUNT
        } else {
            super.getMinimumLoadableRetryCount(dataType)
        }

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
 * 500/502/503/504 compresi) e per gli stalli senza errore, fino a
 * [maxRestarts] volte prima di mostrare l'errore. Mai per film, episodi e
 * catch-up.
 *
 * Le attese restano minime ([delaysMillis]: immediato, immediato, 1 s) perché
 * il riavvio ricostruisce la sorgente da capo: farlo aspettare non recupera
 * niente e allunga soltanto il tempo con il video fermo. Il conteggio riparte
 * con un nuovo avvio della riproduzione (cambio canale, "Riprova", ritorno alla
 * diretta) o quando lo stream è stabile per un po'.
 */
class LiveAutoRestart(
    private val maxRestarts: Int = PlayerNetworkConfig.MAX_LIVE_AUTO_RESTARTS,
    private val delaysMillis: List<Long> = PlayerNetworkConfig.LIVE_AUTO_RESTART_DELAYS_MILLIS,
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

    /**
     * Attesa prima del riavvio appena concesso da [onPlayerError]: il primo
     * tentativo usa il primo valore di [delaysMillis]. Oltre la lista vale
     * l'ultimo, così aggiungere tentativi non lascia attese a zero.
     */
    fun delayForCurrentRestart(): Long {
        if (delaysMillis.isEmpty()) return 0L
        val index = (restartsUsed - 1).coerceIn(0, delaysMillis.lastIndex)
        return delaysMillis[index]
    }

    /**
     * Vero quando il riavvio appena concesso è il punto in cui conviene
     * rigenerare la sorgente invece di riaprire lo stesso indirizzo: dal
     * [PlayerNetworkConfig.RESTARTS_BEFORE_SOURCE_REFRESH]-esimo in poi.
     */
    fun shouldRefreshSource(): Boolean =
        restartsUsed >= PlayerNetworkConfig.RESTARTS_BEFORE_SOURCE_REFRESH

    fun reset() {
        restartsUsed = 0
    }
}
