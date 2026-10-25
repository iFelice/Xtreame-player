package it.felixvision.tv.data.volume

/**
 * Volume del player: solo il volume della nostra istanza di ExoPlayer, mai
 * quello del televisore.
 *
 * La scala va da 0 a 15 (predefinito 15) e il volume applicato segue una curva
 * percettiva: `volume = (livello / 15)^2`, così i primi passi sono più fini dei
 * successivi. Tutta la logica è qui, in funzioni pure, per poterla provare
 * senza dispositivo.
 */
object PlayerVolume {

    /** Livello massimo della scala. */
    const val MAX_LEVEL = 15

    /** Livello minimo della scala (muto). */
    const val MIN_LEVEL = 0

    /** Livello predefinito a ogni avvio del player. */
    const val DEFAULT_LEVEL = MAX_LEVEL

    /** Numero di tacche disegnate nella barra verticale. */
    const val TICKS = MAX_LEVEL

    /** Dopo quanti millisecondi senza tasti il pannello si chiude da solo. */
    const val HIDE_DELAY_MILLIS = 3_000L

    /** Riporta un livello nei limiti 0–15. */
    fun clampLevel(level: Int): Int = level.coerceIn(MIN_LEVEL, MAX_LEVEL)

    /** Volume di ExoPlayer per un livello: curva percettiva `(livello/15)^2`. */
    fun volumeForLevel(level: Int): Float {
        val normalized = clampLevel(level).toFloat() / MAX_LEVEL.toFloat()
        return normalized * normalized
    }

    /** Livello successivo dopo un passo di [delta] (per esempio +1 o −1). */
    fun step(level: Int, delta: Int): Int = clampLevel(clampLevel(level) + delta)

    /** Vero quando il livello è 0: l'icona diventa "volume-x". */
    fun isMuted(level: Int): Boolean = clampLevel(level) == MIN_LEVEL

    /** Quante tacche della barra sono accese per un livello (0–15). */
    fun litTicks(level: Int): Int = clampLevel(level)

    /** Frazione 0–1 della barra accesa, per eventuali riempimenti proporzionali. */
    fun levelFraction(level: Int): Float = clampLevel(level).toFloat() / MAX_LEVEL.toFloat()

    /** Vero quando il pannello va chiuso da solo, dato il tempo trascorso. */
    fun shouldAutoHide(elapsedMillis: Long): Boolean =
        elapsedMillis >= HIDE_DELAY_MILLIS
}
