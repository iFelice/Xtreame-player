package it.felixvision.tv.player

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock

/**
 * Valori ammessi per l'intervallo dello zapping automatico, in secondi.
 *
 * L'intervallo va da [MIN] a [MAX] compresi, con [DEFAULT] come valore
 * iniziale: un valore salvato fuori dall'intervallo (per esempio da una
 * versione precedente o da un file modificato a mano) torna a [DEFAULT].
 * I valori salvati dalle versioni con le sole scelte rapide (5, 10, 15 e 30)
 * restano validi senza migrazione.
 */
object ZappingSeconds {

    /** Intervallo predefinito: 10 secondi per canale. */
    const val DEFAULT = 10

    /** Intervallo minimo ammesso, in secondi. */
    const val MIN = 5

    /** Intervallo massimo ammesso, in secondi. */
    const val MAX = 120

    /** Scelte rapide mostrate sotto il selettore della pagina Player. */
    val QUICK_CHOICES: List<Int> = listOf(5, 10, 15, 30)

    /** [value] se è tra [MIN] e [MAX], altrimenti [DEFAULT]. */
    fun normalize(value: Int?): Int =
        if (value != null && value in MIN..MAX) value else DEFAULT

    /** [value] riportato nell'intervallo ammesso (per il selettore + / −). */
    fun clamp(value: Int): Int = value.coerceIn(MIN, MAX)
}

/** Stato del canale appena sintonizzato, come lo vede il player. */
enum class ZappingChannelStatus {
    /** In visione: anche un buffering a metà visione resta questo stato. */
    PLAYING,

    /** Ancora in caricamento iniziale, prima del primo fotogramma. */
    LOADING,

    /** Errore di riproduzione. */
    ERROR,
}

/** Perché lo zapping è passato al canale successivo. */
enum class ZappingReason {
    /** È scaduto l'intervallo scelto. */
    TIMER,

    /** Entro 5 secondi il canale non è partito: si salta subito. */
    CHANNEL_NOT_STARTED,
}

/**
 * Comando che il player deve eseguire dopo un evento dello zapping: la classe
 * [ZappingController] non conosce Media3 né Compose, quindi restituisce
 * l'istruzione e chi la chiama la applica.
 */
sealed interface ZappingCommand {

    /** Nessun cambio canale: il conto continua o lo zapping è fermo. */
    data object None : ZappingCommand

    /** Passa al canale [index] della lista corrente. */
    data class SwitchTo(val index: Int, val reason: ZappingReason) : ZappingCommand

    /** Fine della lista: serve la conferma prima di ripartire. */
    data object AskEndOfList : ZappingCommand

    /** Risposta "Sì": riparte dal primo canale [index]. */
    data class RestartFromFirst(val index: Int) : ZappingCommand

    /** Risposta "No" o attesa scaduta: torna al canale di partenza [index]. */
    data class BackToStart(val index: Int) : ZappingCommand
}

/** Fotografia dello zapping in corso, per la UI del player. */
data class ZappingState(
    /** Canale da cui è partito lo zapping. */
    val startIndex: Int,
    /** Canale che lo zapping sta per lasciare. */
    val currentIndex: Int,
    val listSize: Int,
    /** Intervallo scelto, in secondi (da [ZappingSeconds.MIN] a [ZappingSeconds.MAX]). */
    val seconds: Int,
    /** Secondi che mancano al prossimo cambio, arrotondati per eccesso. */
    val remainingSeconds: Int,
    /** Vero mentre è aperta la domanda di fine lista. */
    val awaitingEndOfList: Boolean,
    /** Secondi che mancano alla scadenza della domanda di fine lista. */
    val endOfListSecondsLeft: Int,
)

/**
 * Zapping automatico del player Live: dopo [ZappingState.seconds] secondi passa
 * al canale successivo della lista corrente, salta subito un canale che non
 * parte entro 5 secondi e, arrivato in fondo, chiede se ripartire dal primo.
 *
 * Classe pura: nessuna dipendenza da Android. L'orologio è iniettabile
 * ([clock]) e lo scheduler è il chiamante: il controller non accende timer, ma
 * avanza solo quando arriva un [tick]. In produzione il ciclo è quello del
 * player (ogni mezzo secondo, come il refresh della posizione); nei test il
 * passo lo dà il test, con orologio finto e nessuna attesa reale. Il player
 * applica i [ZappingCommand] restituiti.
 */
class ZappingController(
    private val clock: Clock = SystemClock,
) {

    /** Zapping in corso, oppure `null` quando è fermo. */
    var state: ZappingState? = null
        private set

    private var channelStartedAtMillis: Long = 0L
    private var nextSwitchAtMillis: Long = 0L
    private var endOfListDeadlineMillis: Long = 0L

    /** Vero mentre il conto alla rovescia è attivo (domanda di fine lista esclusa). */
    val isRunning: Boolean
        get() = state?.let { !it.awaitingEndOfList } ?: false

    /** Vero mentre è chiesto all'utente se ripartire dal primo canale. */
    val isAwaitingEndOfList: Boolean
        get() = state?.awaitingEndOfList == true

    /**
     * Avvia lo zapping sul canale [index] di una lista di [size] canali, con
     * l'intervallo [seconds] (un valore fuori da [ZappingSeconds.MIN]..
     * [ZappingSeconds.MAX] diventa [ZappingSeconds.DEFAULT]). Il canale di
     * partenza resta ricordato per la risposta "No" al dialog di fine lista.
     * Una lista vuota non avvia nulla.
     */
    fun start(
        seconds: Int,
        index: Int,
        size: Int,
        nowMillis: Long = clock.nowMillis(),
    ): ZappingState? {
        if (size <= 0) {
            state = null
            return null
        }
        val interval = ZappingSeconds.normalize(seconds)
        val current = index.coerceIn(0, size - 1)
        channelStartedAtMillis = nowMillis
        nextSwitchAtMillis = nowMillis + interval * MILLIS_PER_SECOND
        val started = ZappingState(
            startIndex = current,
            currentIndex = current,
            listSize = size,
            seconds = interval,
            remainingSeconds = interval,
            awaitingEndOfList = false,
            endOfListSecondsLeft = 0,
        )
        state = started
        return started
    }

    /**
     * Avanza lo zapping fino a [nowMillis], con lo stato [status] del canale in
     * onda. Se il canale non è partito entro 5 secondi dall'avvio si passa
     * subito al successivo, senza aspettare l'intervallo scelto; altrimenti si
     * cambia canale allo scadere dell'intervallo.
     */
    fun tick(
        nowMillis: Long = clock.nowMillis(),
        status: ZappingChannelStatus = ZappingChannelStatus.PLAYING,
        startGraceMillis: Long = START_GRACE_MILLIS,
    ): ZappingCommand {
        val current = state ?: return ZappingCommand.None
        if (current.awaitingEndOfList) {
            if (nowMillis >= endOfListDeadlineMillis) {
                // Nessuna risposta in tempo: come "No".
                state = null
                return ZappingCommand.BackToStart(current.startIndex)
            }
            state = current.copy(
                endOfListSecondsLeft = secondsUntil(endOfListDeadlineMillis, nowMillis),
            )
            return ZappingCommand.None
        }
        val elapsedSinceChannelStart = nowMillis - channelStartedAtMillis
        val graceMillis = startGraceMillis.coerceAtLeast(0L)
        if (elapsedSinceChannelStart >= graceMillis &&
            status != ZappingChannelStatus.PLAYING
        ) {
            return nextChannel(nowMillis, current, ZappingReason.CHANNEL_NOT_STARTED)
        }
        if (elapsedSinceChannelStart >= graceMillis && nowMillis >= nextSwitchAtMillis) {
            return nextChannel(nowMillis, current, ZappingReason.TIMER)
        }
        state = current.copy(
            remainingSeconds = secondsUntil(nextSwitchAtMillis, nowMillis),
        )
        return ZappingCommand.None
    }

    /**
     * Risposta alla domanda di fine lista: [restart] vero riparte dal primo
     * canale con il conto nuovo, falso (o attesa scaduta) ferma lo zapping e
     * torna al canale di partenza.
     */
    fun answer(
        restart: Boolean,
        nowMillis: Long = clock.nowMillis(),
    ): ZappingCommand {
        val current = state ?: return ZappingCommand.None
        if (!current.awaitingEndOfList) return ZappingCommand.None
        if (!restart) {
            state = null
            return ZappingCommand.BackToStart(current.startIndex)
        }
        channelStartedAtMillis = nowMillis
        nextSwitchAtMillis = nowMillis + current.seconds * MILLIS_PER_SECOND
        state = current.copy(
            currentIndex = 0,
            remainingSeconds = current.seconds,
            awaitingEndOfList = false,
            endOfListSecondsLeft = 0,
        )
        return ZappingCommand.RestartFromFirst(0)
    }

    /** Ferma lo zapping: nessun altro cambio canale. */
    fun stop() {
        state = null
    }

    private fun nextChannel(
        nowMillis: Long,
        current: ZappingState,
        reason: ZappingReason,
    ): ZappingCommand {
        val next = current.currentIndex + 1
        if (next >= current.listSize) {
            endOfListDeadlineMillis = nowMillis + END_OF_LIST_TIMEOUT_MILLIS
            state = current.copy(
                awaitingEndOfList = true,
                remainingSeconds = 0,
                endOfListSecondsLeft = END_OF_LIST_TIMEOUT_SECONDS,
            )
            return ZappingCommand.AskEndOfList
        }
        channelStartedAtMillis = nowMillis
        nextSwitchAtMillis = nowMillis + current.seconds * MILLIS_PER_SECOND
        state = current.copy(
            currentIndex = next,
            remainingSeconds = current.seconds,
            awaitingEndOfList = false,
            endOfListSecondsLeft = 0,
        )
        return ZappingCommand.SwitchTo(next, reason)
    }

    private fun secondsUntil(deadlineMillis: Long, nowMillis: Long): Int {
        val left = deadlineMillis - nowMillis
        if (left <= 0L) return 0
        return ((left + MILLIS_PER_SECOND - 1) / MILLIS_PER_SECOND).toInt()
    }

    companion object {
        /**
         * Finestra dall'avvio del canale entro cui un canale non partito si
         * salta, per il flusso diretto (`.ts`): parte in 2-3 s.
         */
        const val START_GRACE_MILLIS = 5_000L

        /**
         * La stessa finestra per un canale in HLS ([START_GRACE_MILLIS_HLS],
         * 8 s): Media3 avvia un live a `3 × TARGETDURATION` dal bordo e deve
         * scaricare i segmenti interi, quindi 5 s non bastano e lo zapping lo
         * salterebbe sempre.
         */
        const val START_GRACE_MILLIS_HLS = 8_000L

        /** Attesa della risposta alla domanda di fine lista. */
        const val END_OF_LIST_TIMEOUT_MILLIS = 15_000L

        /** [END_OF_LIST_TIMEOUT_MILLIS] in secondi. */
        const val END_OF_LIST_TIMEOUT_SECONDS = 15

        private const val MILLIS_PER_SECOND = 1_000L
    }
}
