package it.felixvision.tv.data.protection

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Stato di sessione della visibilità dei contenuti protetti: vive solo in
 * memoria, `false` a ogni avvio dell'app, nessun Android e nessun archivio.
 *
 * Contiene anche il blocco anti-brute-force della verifica PIN: dopo
 * [MAX_CONSECUTIVE_FAILURES] tentativi sbagliati consecutivi le cifre vengono
 * rifiutate per [LOCK_DURATION_MILLIS], un successo azzera il conteggio.
 * L'orologio è iniettabile per i test deterministici.
 */
class ProtectedSession(
    private val clock: Clock = SystemClock,
    private val maxConsecutiveFailures: Int = MAX_CONSECUTIVE_FAILURES,
    private val lockDurationMillis: Long = LOCK_DURATION_MILLIS,
) {

    private val _unlocked = MutableStateFlow(false)

    /** Vero mentre i contenuti protetti sono mostrati nell'app. */
    val unlocked: StateFlow<Boolean> = _unlocked.asStateFlow()

    private var failures = 0
    private var lockEndsAtMillis: Long? = null

    /** Mostra i contenuti protetti per il resto della sessione. */
    fun unlock() {
        registerSuccess()
        _unlocked.value = true
    }

    /** Nasconde di nuovo i contenuti protetti. */
    fun lock() {
        _unlocked.value = false
    }

    /** Registra un PIN sbagliato; al [maxConsecutiveFailures]-esimo di fila scatta il blocco. */
    fun registerFailure(nowMillis: Long = clock.nowMillis()) {
        if (lockedUntilMillis(nowMillis) != null) return
        failures += 1
        if (failures >= maxConsecutiveFailures) {
            failures = 0
            lockEndsAtMillis = nowMillis + lockDurationMillis
        }
    }

    /** Registra una verifica riuscita: conteggio azzerato ed eventuale blocco revocato. */
    fun registerSuccess() {
        failures = 0
        lockEndsAtMillis = null
    }

    /** Fine del blocco, o null quando non c'è alcun blocco in corso (scaduto = null). */
    fun lockedUntilMillis(nowMillis: Long = clock.nowMillis()): Long? {
        val endsAt = lockEndsAtMillis ?: return null
        return if (endsAt > nowMillis) endsAt else null
    }

    /** Vero mentre i tentativi sono bloccati. */
    fun isLocked(nowMillis: Long = clock.nowMillis()): Boolean =
        lockedUntilMillis(nowMillis) != null

    companion object {
        /** Tentativi sbagliati consecutivi prima del blocco. */
        const val MAX_CONSECUTIVE_FAILURES = 5

        /** Durata del blocco dopo troppi tentativi. */
        const val LOCK_DURATION_MILLIS = 30_000L
    }
}
