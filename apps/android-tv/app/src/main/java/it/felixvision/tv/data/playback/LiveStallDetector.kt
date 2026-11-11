package it.felixvision.tv.data.playback

/**
 * Rilevatore di stallo per il Live.
 *
 * ExoPlayer non emette nessun errore quando il flusso si strozza a metà
 * visione: resta in `STATE_BUFFERING` (o in `STATE_READY` con la riproduzione
 * ferma) e la rotella dell'attesa gira per sempre. Il `PlayerLoadErrorPolicy`
 * non c'entra: senza un errore non scatta nulla.
 *
 * Questa classe misura da quanto tempo la riproduzione è ferma nella stessa
 * condizione e dice quando è il momento di intervenire. È pura, senza
 * dipendenze Android o Media3: il chiamante le passa lo stato del player e il
 * tempo del proprio orologio, così i test non aspettano nulla.
 *
 * Lo stesso rilevatore esiste in `apps/android-mobile` (dove è nato): qui la
 * soglia di [STATE_READY] è più corta, perché su una TV un buffer pronto che
 * non riparte da solo non si sblocca più.
 */
class LiveStallDetector(
    /** Attesa massima con il player "pronto" ma fermo. */
    private val readyTimeoutMillis: Long = READY_TIMEOUT_MILLIS,
    /** Attesa massima in caricamento (buffer vuoto o inseguimento del live). */
    private val bufferingTimeoutMillis: Long = BUFFERING_TIMEOUT_MILLIS,
) {

    /** Il caso più stretto: Live progressivo (`.ts`) che non riparte. */
    constructor(progressiveLive: Boolean) : this(
        bufferingTimeoutMillis = if (progressiveLive) {
            PROGRESSIVE_LIVE_BUFFERING_TIMEOUT_MILLIS
        } else {
            BUFFERING_TIMEOUT_MILLIS
        },
    )

    private var sinceMillis: Long? = null
    private var previousState: Int = UNKNOWN_STATE

    /**
     * Vero quando la condizione di stallo dura da più della soglia. [eligible]
     * è il permesso del chiamante (vera solo per i canali Live in riproduzione
     * e senza errori a schermo); [playbackState] è lo stato grezzo del player,
     * `null` quando il player non esiste più. Una condizione che si interrompe
     * azzera il conteggio: la prossima volta si riparte da capo.
     */
    fun timedOut(playbackState: Int?, eligible: Boolean, nowMillis: Long): Boolean {
        val timeout = timeoutFor(playbackState)
        if (!eligible || timeout == null) {
            sinceMillis = null
            previousState = UNKNOWN_STATE
            return false
        }
        val state = playbackState ?: return false
        if (sinceMillis == null || previousState != state) {
            sinceMillis = nowMillis
            previousState = state
        }
        if (nowMillis - sinceMillis!! <= timeout) return false
        // Dopo il segnale si riparte da capo: un nuovo stallo avrà la sua attesa.
        sinceMillis = null
        previousState = UNKNOWN_STATE
        return true
    }

    private fun timeoutFor(playbackState: Int?): Long? = when (playbackState) {
        STATE_READY -> readyTimeoutMillis
        STATE_BUFFERING -> bufferingTimeoutMillis
        else -> null
    }

    companion object {

        // Valori di androidx.media3.common.Player: ripetuti qui perché questa
        // classe è compilata anche dove Media3 non c'è (come `data/`).

        /** `Player.STATE_IDLE` */
        const val STATE_IDLE: Int = 1

        /** `Player.STATE_BUFFERING` */
        const val STATE_BUFFERING: Int = 2

        /** `Player.STATE_READY` */
        const val STATE_READY: Int = 3

        /** `Player.STATE_ENDED` */
        const val STATE_ENDED: Int = 4

        /** Stato mai letto: nessuna attesa in corso. */
        const val UNKNOWN_STATE: Int = -1

        /** Buffer pronto ma riproduzione ferma: 5 s e si interviene. */
        const val READY_TIMEOUT_MILLIS: Long = 5_000L

        /** In caricamento: 25 s (sotto il read timeout di rete di 30 s). */
        const val BUFFERING_TIMEOUT_MILLIS: Long = 25_000L

        /**
         * Live progressivo (`.ts`) in caricamento: 8 s.
         *
         * Sui flussi `.ts` una riapertura a metà può costare decine di secondi
         * di download scartato (vedi
         * [it.felixvision.tv.ui.player.PlayerNetworkConfig.PROGRESSIVE_LIVE_MIN_LOADABLE_RETRY_COUNT]):
         * meglio accorgersi subito che non sta avanzando e ricostruire la
         * sorgente da zero, che è immediato. Il valore resta sopra il tempo di
         * avvio normale (2,5 s di buffer di partenza).
         */
        const val PROGRESSIVE_LIVE_BUFFERING_TIMEOUT_MILLIS: Long = 8_000L
    }
}
