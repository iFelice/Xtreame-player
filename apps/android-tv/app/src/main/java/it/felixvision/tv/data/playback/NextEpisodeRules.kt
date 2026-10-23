package it.felixvision.tv.data.playback

/**
 * Regole del riquadro "Prossimo episodio", indipendenti dal player:
 * - il riquadro compare 3 minuti prima della fine;
 * - se l'episodio dura meno di 10 minuti compare all'ultimo 10%;
 * - dopo "Posticipa" ricompare negli ultimi 15 secondi con il conto alla rovescia.
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

    /** Ultimi 15 secondi: dopo "Posticipa" il riquadro torna con il conto alla rovescia. */
    const val POSTPONE_COUNTDOWN_MILLIS = 15_000L

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

    /** Vero quando, dopo "Posticipa", è il momento del conto alla rovescia. */
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
