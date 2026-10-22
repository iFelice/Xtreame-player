package it.felixvision.tv.data.playback

/**
 * Zapping circolare nella categoria da cui è partita la riproduzione.
 * Funzioni pure: l'indice restituito è sempre valido per una lista non vuota.
 */
object LiveZapping {

    fun next(index: Int, size: Int): Int {
        if (size <= 0) return 0
        return Math.floorMod(index + 1, size)
    }

    fun previous(index: Int, size: Int): Int {
        if (size <= 0) return 0
        return Math.floorMod(index - 1, size)
    }

    fun clamp(index: Int, size: Int): Int {
        if (size <= 0) return 0
        return index.coerceIn(0, size - 1)
    }
}

/**
 * Accelerazione del salto con il tasto tenuto premuto: 10 s subito, 30 s dopo
 * 600 ms, 60 s dopo 1,6 s. La logica è separata dalla UI per poterla testare.
 */
object SeekAcceleration {

    const val INITIAL_SECONDS = 10
    const val MEDIUM_SECONDS = 30
    const val FAST_SECONDS = 60

    const val MEDIUM_AFTER_MILLIS = 600L
    const val FAST_AFTER_MILLIS = 1_600L

    fun secondsForHold(holdMillis: Long): Int = when {
        holdMillis < MEDIUM_AFTER_MILLIS -> INITIAL_SECONDS
        holdMillis < FAST_AFTER_MILLIS -> MEDIUM_SECONDS
        else -> FAST_SECONDS
    }
}
