package it.felixvision.tv.data.playback

/**
 * Modalità con cui il riquadro "Prossimo episodio" torna dopo "Posticipa".
 */
enum class PostponeMode {
    /** Rinvio normale: ricompare dopo 60 secondi di riproduzione effettiva. */
    DELAYED,

    /** Meno di 75 secondi alla fine: ricompare negli ultimi 15 secondi con il conto alla rovescia. */
    COUNTDOWN,
}

/**
 * Momento in cui il riquadro posticipato deve ricomparire.
 *
 * `showAtMillis` è una posizione nel video, non un istante di orologio: il
 * tempo in pausa non conta e un salto avanti/indietro sposta il riferimento,
 * perché il confronto avviene sempre con la posizione di riproduzione.
 */
data class PostponePlan(
    val mode: PostponeMode,
    val showAtMillis: Long,
)

/**
 * Regole del riquadro "Prossimo episodio", indipendenti dal player:
 * - il riquadro compare 3 minuti prima della fine;
 * - se l'episodio dura meno di 10 minuti compare all'ultimo 10%;
 * - dopo "Posticipa" ricompare 60 secondi di riproduzione dopo (posizione del
 *   video), con la possibilità di posticipare di nuovo;
 * - se al momento di "Posticipa" mancano meno di 75 secondi, ricompare negli
 *   ultimi 15 secondi con il conto alla rovescia.
 *
 * Le soglie sono in millisecondi e i calcoli sono interamente testabili.
 */
object NextEpisodeRules {

    /** Tre minuti prima della fine. */
    const val PROMPT_BEFORE_END_MILLIS = 180_000L

    /** Sotto i 10 minuti si usa la percentuale finale invece dei 3 minuti. */
    const val SHORT_EPISODE_MILLIS = 600_000L

    /** Percentuale finale usata per gli episodi corti. */
    const val SHORT_EPISODE_REMAINING_PERCENT = 10

    /** Ultimi 15 secondi: il riquadro torna con il conto alla rovescia. */
    const val POSTPONE_COUNTDOWN_MILLIS = 15_000L

    /** Dopo "Posticipa" il riquadro torna dopo 60 secondi di riproduzione effettiva. */
    const val POSTPONE_DELAY_MILLIS = 60_000L

    /** Sotto i 75 secondi rimanenti il rinvio diventa il conto alla rovescia finale. */
    const val POSTPONE_COUNTDOWN_THRESHOLD_MILLIS = 75_000L

    /**
     * Istante di riproduzione in cui mostrare il riquadro. `null` se la durata
     * non è ancora nota.
     */
    fun promptAtMillis(durationMillis: Long): Long? {
        if (durationMillis <= 0L) return null
        val remaining = if (durationMillis < SHORT_EPISODE_MILLIS) {
            durationMillis * SHORT_EPISODE_REMAINING_PERCENT / 100L
        } else {
            PROMPT_BEFORE_END_MILLIS
        }
        return (durationMillis - remaining).coerceAtLeast(0L)
    }

    /** Vero quando è ora di proporre il prossimo episodio. */
    fun shouldPrompt(positionMillis: Long, durationMillis: Long): Boolean {
        val at = promptAtMillis(durationMillis) ?: return false
        return positionMillis >= at
    }

    /**
     * Piano del rinvio alla posizione corrente: 60 secondi di riproduzione in
     * più oppure, se mancano meno di 75 secondi, gli ultimi 15 secondi.
     */
    fun postponePlan(positionMillis: Long, durationMillis: Long): PostponePlan {
        val position = positionMillis.coerceAtLeast(0L)
        if (durationMillis <= 0L) {
            return PostponePlan(PostponeMode.DELAYED, position + POSTPONE_DELAY_MILLIS)
        }
        val remaining = durationMillis - position
        return if (remaining < POSTPONE_COUNTDOWN_THRESHOLD_MILLIS) {
            PostponePlan(
                mode = PostponeMode.COUNTDOWN,
                showAtMillis = (durationMillis - POSTPONE_COUNTDOWN_MILLIS).coerceAtLeast(0L),
            )
        } else {
            PostponePlan(PostponeMode.DELAYED, position + POSTPONE_DELAY_MILLIS)
        }
    }

    /**
     * Il riquadro posticipato è da mostrare? Il confronto è sulla posizione del
     * video: in pausa non avanza, e un salto indietro lo nasconde di nuovo.
     */
    fun shouldShowPostponed(plan: PostponePlan, positionMillis: Long): Boolean =
        positionMillis >= plan.showAtMillis

    /** Vero quando è attivo il conto alla rovescia finale. */
    fun shouldStartCountdown(positionMillis: Long, durationMillis: Long): Boolean {
        if (durationMillis <= 0L) return false
        return positionMillis >= durationMillis - POSTPONE_COUNTDOWN_MILLIS
    }

    /** Secondi mancanti arrotondati per eccesso, mai negativi. */
    fun countdownSeconds(positionMillis: Long, durationMillis: Long): Int {
        if (durationMillis <= 0L) return 0
        val remaining = (durationMillis - positionMillis).coerceAtLeast(0L)
        return ((remaining + 999L) / 1_000L).toInt()
    }

    /** Il conto alla rovescia è finito: parte il prossimo episodio. */
    fun countdownFinished(positionMillis: Long, durationMillis: Long): Boolean {
        if (durationMillis <= 0L) return false
        return positionMillis >= durationMillis
    }
}
