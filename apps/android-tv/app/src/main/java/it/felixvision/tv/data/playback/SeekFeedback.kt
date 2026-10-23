package it.felixvision.tv.data.playback

/**
 * Etichetta dei salti con i tasti Sinistra/Destra: "+10 s" / "−10 s" per 1,5 s,
 * con le pressioni ravvicinate che si sommano ("+30 s"). La finestra di
 * accumulo è la stessa durata dell'etichetta.
 */
data class SeekFeedback(
    val direction: Int,
    val seconds: Int,
    val updatedAtMillis: Long,
) {
    val label: String
        get() = if (direction < 0) "−$seconds s" else "+$seconds s"
}

object SeekAccumulator {

    const val WINDOW_MILLIS = 1_500L

    /**
     * Nuova etichetta dopo una pressione. Si somma solo se la precedente è
     * dello stesso verso e arrivata entro [WINDOW_MILLIS]; altrimenti riparte.
     */
    fun next(
        previous: SeekFeedback?,
        direction: Int,
        stepSeconds: Int,
        nowMillis: Long,
    ): SeekFeedback {
        val sameBurst = previous != null &&
            previous.direction == direction &&
            nowMillis - previous.updatedAtMillis <= WINDOW_MILLIS
        return if (sameBurst) {
            SeekFeedback(
                direction = direction,
                seconds = previous.seconds + stepSeconds,
                updatedAtMillis = nowMillis,
            )
        } else {
            SeekFeedback(direction = direction, seconds = stepSeconds, updatedAtMillis = nowMillis)
        }
    }

    /** L'etichetta è ancora da mostrare? */
    fun isVisible(feedback: SeekFeedback?, nowMillis: Long): Boolean {
        if (feedback == null) return false
        return nowMillis - feedback.updatedAtMillis < WINDOW_MILLIS
    }
}
