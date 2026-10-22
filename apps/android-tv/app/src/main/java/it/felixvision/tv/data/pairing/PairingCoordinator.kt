package it.felixvision.tv.data.pairing

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/** Stato mostrato dal pannello di abbinamento. */
data class PairingPanelState(
    val code: String? = null,
    val qrPayload: String? = null,
    val expiresAtMillis: Long? = null,
    /** Secondi mancanti alla scadenza, calcolati dall'interfaccia con l'orologio. */
    val secondsRemaining: Long? = null,
    val retryInSeconds: Long? = null,
    val failureMessage: String? = null,
    /** Vero quando le credenziali sono state consegnate e il pannello ha finito. */
    val completed: Boolean = false,
    /** Vero quando 3 sessioni consecutive sono scadute senza invio: mostra "Codice scaduto". */
    val isExpired: Boolean = false,
) {
    val isPreparing: Boolean
        get() = code == null && failureMessage == null && !isExpired
}

/** Esito di un singolo passo del ciclo di abbinamento. */
sealed interface PairingStep {

    /** Attesa prima del passo successivo. */
    data class Wait(val delayMillis: Long) : PairingStep

    /** Credenziali arrivate dal telefono: vanno validate con un login immediato. */
    data class Delivered(val credentials: RemoteCredentials) : PairingStep
}

/**
 * Macchina a stati del flusso di abbinamento, senza dipendenze Android e con
 * orologio iniettabile, così il ciclo è verificabile senza attese reali.
 *
 * Regole:
 * - una sessione per volta, creata subito se manca o se è scaduta;
 * - stato interrogato ogni 2 secondi;
 * - in caso di errore di rete si riprova dopo 5, 10 e poi 30 secondi: mai più
 *   velocemente di così;
 * - dopo 3 sessioni consecutive scadute senza invio (30 minuti) l'interrogazione
 *   si ferma e il pannello mostra "Codice scaduto" con pulsante per ripartire;
 * - la visibilità della schermata è gestita da chi consuma [step] (il ciclo
 *   viene fermato in pausa e ripreso al ritorno sulla schermata).
 */
class PairingCoordinator(
    private val api: PairingApi,
    /** Base del servizio di abbinamento, usata per costruire il contenuto del QR. */
    private val relayUrl: String,
    private val clock: Clock = SystemClock,
    private val pollIntervalMillis: Long = POLL_INTERVAL_MILLIS,
    private val retryDelaysMillis: List<Long> = RETRY_DELAYS_MILLIS,
) {

    private val _state = MutableStateFlow(PairingPanelState())
    val state: StateFlow<PairingPanelState> = _state.asStateFlow()

    /** Sessione in corso, `null` quando va creata. */
    var session: PairingSession? = null
        private set

    private var consecutiveFailures = 0
    private var delivered = false
    private var expiredConsecutiveCount = 0
    private var isHaltedDueToExpiry = false

    /** Ricomincia da zero: nuova sessione, nuovo PIN, nuovo QR. */
    fun reset() {
        session = null
        consecutiveFailures = 0
        delivered = false
        expiredConsecutiveCount = 0
        isHaltedDueToExpiry = false
        _state.value = PairingPanelState()
    }

    /**
     * Esegue un passo: crea la sessione se serve, altrimenti interroga lo stato
     * o la rigenera alla scadenza. Restituisce l'attesa prima del passo seguente.
     *
     * Se sono scadute 3 sessioni consecutive senza invio, non esegue più
     * richieste (spec E.2) e mantiene lo stato "Codice scaduto" finché
     * non viene chiamato [reset] dal pulsante "Mostra un nuovo codice".
     */
    suspend fun step(): PairingStep {
        if (delivered) return PairingStep.Wait(pollIntervalMillis)
        if (isHaltedDueToExpiry) {
            // Nessuna richiesta al servizio mentre è fermo
            return PairingStep.Wait(pollIntervalMillis)
        }

        val current = session
        if (current == null || clock.nowMillis() >= current.expiresAtMillis) {
            // Sessione scaduta naturalmente: contiamo per il limite di 3
            if (current != null) {
                expiredConsecutiveCount += 1
                if (expiredConsecutiveCount >= MAX_EXPIRED_SESSIONS) {
                    isHaltedDueToExpiry = true
                    _state.value = PairingPanelState(
                        isExpired = true,
                        failureMessage = EXPIRED_MESSAGE,
                    )
                    // Nessuna richiesta ulteriore
                    return PairingStep.Wait(pollIntervalMillis)
                }
            }
            return createSession()
        }

        return when (val result = api.pollStatus(current.code, current.pollToken)) {
            is ApiResult.Ok -> when (val status = result.value) {
                PairingStatus.Waiting -> {
                    consecutiveFailures = 0
                    publishSession(current)
                    PairingStep.Wait(pollIntervalMillis)
                }
                is PairingStatus.Ready -> {
                    consecutiveFailures = 0
                    expiredConsecutiveCount = 0
                    delivered = true
                    _state.value = _state.value.copy(
                        failureMessage = null,
                        retryInSeconds = null,
                        completed = true,
                    )
                    PairingStep.Delivered(status.credentials)
                }
                PairingStatus.Gone -> {
                    // Sessione consumata o scaduta sul relay: se ne crea subito un'altra.
                    // Non è scadenza naturale, non incrementiamo contatore
                    session = null
                    createSession()
                }
            }
            is ApiResult.Http -> registerFailure()
            is ApiResult.Network -> registerFailure()
            ApiResult.Malformed -> registerFailure()
        }
    }

    /** Ritardo da attendere dopo l'ennesimo errore consecutivo (5 s, 10 s, poi 30 s). */
    fun retryDelayMillis(failures: Int = consecutiveFailures): Long {
        if (failures <= 0) return pollIntervalMillis
        val index = (failures - 1).coerceAtMost(retryDelaysMillis.lastIndex)
        return retryDelaysMillis[index]
    }

    private suspend fun createSession(): PairingStep {
        return when (val result = api.createSession()) {
            is ApiResult.Ok -> {
                consecutiveFailures = 0
                session = result.value
                publishSession(result.value)
                PairingStep.Wait(pollIntervalMillis)
            }
            else -> registerFailure()
        }
    }

    private fun registerFailure(): PairingStep {
        consecutiveFailures += 1
        val delay = retryDelayMillis()
        _state.value = _state.value.copy(
            retryInSeconds = delay / 1_000L,
            failureMessage = RETRY_MESSAGE,
        )
        return PairingStep.Wait(delay)
    }

    private fun publishSession(session: PairingSession) {
        _state.value = PairingPanelState(
            code = session.code,
            qrPayload = buildQrPayload(relayUrl, session.code),
            expiresAtMillis = session.expiresAtMillis,
            secondsRemaining = ((session.expiresAtMillis - clock.nowMillis()) / 1_000L)
                .coerceAtLeast(0L),
            failureMessage = null,
        )
    }

    companion object {
        const val POLL_INTERVAL_MILLIS = 2_000L
        val RETRY_DELAYS_MILLIS = listOf(5_000L, 10_000L, 30_000L)
        const val MAX_EXPIRED_SESSIONS = 3

        private const val RETRY_MESSAGE =
            "Servizio di abbinamento non raggiungibile. Nuovo tentativo in corso."
        const val EXPIRED_MESSAGE = "Codice scaduto"

        /** Contenuto esatto del QR: `<PAIRING_RELAY_URL>/?code=<PIN>`. */
        fun buildQrPayload(relayUrl: String, code: String): String =
            "${relayUrl.trim().trimEnd('/')}/?code=$code"
    }
}
