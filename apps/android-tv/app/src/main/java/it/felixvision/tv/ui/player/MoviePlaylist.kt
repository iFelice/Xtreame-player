package it.felixvision.tv.ui.player

/**
 * Successivo/Precedente nella coda di una categoria della Lista M3U.
 *
 * La coda è quella del file: le funzioni sono pure, così il comportamento si
 * verifica senza player né telecomando.
 *
 * Regole:
 * - Successivo passa alla voce dopo; dopo l'ultima non c'è una voce successiva
 *   ([nextIndex] vale -1) e il player torna alla schermata precedente, senza
 *   ricominciare da capo;
 * - Precedente passa alla voce prima; sulla prima non si va all'ultima.
 */
object MoviePlaylist {

    /** Indice successivo, oppure -1 quando la coda è finita. */
    fun nextIndex(index: Int, size: Int): Int {
        if (size <= 0) return -1
        val next = index + 1
        return if (next in 0 until size) next else -1
    }

    /** Indice precedente: la prima voce resta la prima (nessun ciclo). */
    fun previousIndex(index: Int, size: Int): Int {
        if (size <= 0) return 0
        return (index - 1).coerceIn(0, size - 1)
    }

    /** Vero quando dopo [index] c'è un'altra voce. */
    fun hasNext(index: Int, size: Int): Boolean = nextIndex(index, size) >= 0

    /** Contatore mostrato sopra la coda: "2 / 7". */
    fun counter(index: Int, size: Int): String =
        if (size <= 0) "0 / 0" else "${index.coerceIn(0, size - 1) + 1} / $size"
}
