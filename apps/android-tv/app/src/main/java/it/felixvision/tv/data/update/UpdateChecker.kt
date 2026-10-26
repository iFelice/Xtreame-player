package it.felixvision.tv.data.update

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import java.util.concurrent.atomic.AtomicBoolean
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

/** Intervallo tra due controlli automatici finché l'app resta aperta: 12 ore. */
const val UPDATE_RECHECK_INTERVAL_MILLIS = 12L * 60L * 60L * 1000L

/**
 * Stato condiviso del controllo aggiornamenti, unico per tutta l'app.
 *
 * Lo osservano sia il menu laterale (pallino di notifica) sia la schermata
 * Impostazioni: una sola fonte, quindi nessuna richiesta duplicata.
 */
sealed interface UpdateCheckState {

    /** Nessun controllo ancora eseguito in questa sessione. */
    data object None : UpdateCheckState

    /** L'ultima release pubblicata è la versione installata: app aggiornata. */
    data object UpToDate : UpdateCheckState

    /** È disponibile la versione [release.version]. */
    data class Available(val release: ReleaseInfo) : UpdateCheckState

    /**
     * L'ultimo controllo è fallito e non c'era nessun aggiornamento già
     * segnalato: nel menu non compare nulla.
     */
    data object Failed : UpdateCheckState
}

/**
 * Controllo unico degli aggiornamenti dell'app, a livello di processo.
 *
 * Racchiude la richiesta a GitHub ([UpdateClient.fetchLatestRelease]) e il
 * confronto semantico con la versione installata ([isUpdateAvailable]), ed
 * espone il risultato come [StateFlow] in [state].
 *
 * Regole:
 * - al massimo una richiesta in corso alla volta: un innesco arrivato mentre il
 *   controllo è in volo viene ignorato;
 * - gli inneschi automatici (apertura della schermata principale e scadenza
 *   delle [recheckIntervalMillis]) partono solo a intervallo scaduto, quindi
 *   dopo un errore nessun nuovo tentativo automatico immediato;
 * - un errore non cancella un aggiornamento già segnalato: il pallino nel menu
 *   sparisce solo quando l'app risulta aggiornata.
 *
 * @param client client delle release (GitHub in produzione, simulato nei test).
 * @param currentVersion versione installata, confrontata con la release remota.
 * @param scope scope che esegue richiesta e ripetizione periodica: in
 *   produzione lo scope di applicazione, così lo stato sopravvive alle schermate.
 */
class UpdateChecker(
    private val client: UpdateClient,
    private val currentVersion: String,
    private val scope: CoroutineScope,
    private val isDebugBuild: Boolean = isDebugVersion(currentVersion),
    private val clock: Clock = SystemClock,
    private val recheckIntervalMillis: Long = UPDATE_RECHECK_INTERVAL_MILLIS,
) {

    private val _state = MutableStateFlow<UpdateCheckState>(UpdateCheckState.None)

    /** Esito dell'ultimo controllo: nessuna richiesta, aggiornata, disponibile, errore. */
    val state: StateFlow<UpdateCheckState> = _state.asStateFlow()

    private val _isChecking = MutableStateFlow(false)

    /** Vero mentre una richiesta di controllo è in corso. */
    val isChecking: StateFlow<Boolean> = _isChecking.asStateFlow()

    /** Al massimo una richiesta in corso: il secondo innesco viene ignorato. */
    private val requestInFlight = AtomicBoolean(false)

    /** Istante dell'ultimo tentativo, riuscito o fallito, per l'intervallo. */
    @Volatile
    private var lastAttemptMillis: Long? = null

    @Volatile
    private var periodicJob: Job? = null

    /** Vero se una richiesta di controllo è già in corso. */
    val isRequestInFlight: Boolean
        get() = requestInFlight.get()

    /**
     * Controllo all'apertura della schermata principale: ne avvia subito uno se
     * l'intervallo è scaduto e poi lo ripete ogni [recheckIntervalMillis] finché
     * l'app resta aperta. Richiamabile più volte: la ripetizione parte una volta
     * sola.
     */
    fun startPeriodicChecks() {
        if (periodicJob?.isActive == true) return
        periodicJob = scope.launch {
            checkIfDue()
            while (isActive) {
                delay(recheckIntervalMillis)
                checkIfDue()
            }
        }
    }

    /** Ferma la ripetizione periodica (lo stato già ottenuto resta visibile). */
    fun stopPeriodicChecks() {
        periodicJob?.cancel()
        periodicJob = null
    }

    /**
     * Innesco esplicito, usato all'apertura delle Impostazioni come prima:
     * avvia il controllo ignorando l'intervallo, ma mai mentre una richiesta è
     * già in corso.
     *
     * @return il [Job] del controllo avviato, oppure `null` se non è partito.
     */
    fun checkNow(): Job? = startCheck()

    /**
     * Innesco automatico (apertura della schermata principale, scadenza delle
     * 12 ore): parte solo se sono passati almeno [recheckIntervalMillis]
     * dall'ultimo tentativo, così dopo un errore non c'è un nuovo tentativo
     * automatico immediato.
     *
     * @return il [Job] del controllo avviato, oppure `null` se non è partito.
     */
    fun checkIfDue(): Job? {
        val lastAttempt = lastAttemptMillis
        if (lastAttempt != null && clock.nowMillis() - lastAttempt < recheckIntervalMillis) {
            return null
        }
        return startCheck()
    }

    private fun startCheck(): Job? {
        if (!requestInFlight.compareAndSet(false, true)) return null
        val job = scope.launch { performCheck() }
        if (job.isCancelled) {
            // Scope già chiuso: la richiesta non partirà, si libera il blocco.
            requestInFlight.set(false)
            return null
        }
        return job
    }

    private suspend fun performCheck(): UpdateCheckState {
        try {
            _isChecking.value = true
            lastAttemptMillis = clock.nowMillis()
            val next = when (val result = client.fetchLatestRelease()) {
                is ReleaseCheckResult.Available -> {
                    val release = result.release
                    val newer = isUpdateAvailable(
                        currentVersion = currentVersion,
                        remoteTag = release.version,
                        isDebugBuild = isDebugBuild,
                    )
                    if (newer) {
                        UpdateCheckState.Available(release = release)
                    } else {
                        UpdateCheckState.UpToDate
                    }
                }

                ReleaseCheckResult.Failure -> {
                    // Un errore non nasconde un aggiornamento già segnalato.
                    val previous = _state.value
                    if (previous is UpdateCheckState.Available) previous else UpdateCheckState.Failed
                }
            }
            _state.value = next
            return next
        } finally {
            _isChecking.value = false
            requestInFlight.set(false)
        }
    }
}
