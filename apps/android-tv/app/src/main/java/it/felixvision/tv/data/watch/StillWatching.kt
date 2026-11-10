package it.felixvision.tv.data.watch

/**
 * Quando chiedere "Stai ancora guardando?".
 *
 * L'avviso non è un timer a tempo: conta **cosa è successo davvero**.
 *
 * - **Serie**: quando parte il **terzo episodio** senza che l'utente abbia
 *   premuto alcun tasto: i due precedenti sono passati per intero da soli. Il
 *   conteggio guarda gli **avvii automatici** della coda, quindi l'episodio
 *   scelto a mano non conta e il conto riparte da zero.
 * - **Live, film e singoli episodi**: una soglia di riproduzione effettiva
 *   ([LIVE_LIMIT_MILLIS]). Non ha senso contare episodi dove non ci sono.
 * - **Qualunque tasto** azzera il conto: OK, frecce, Indietro, +10/−10,
 *   sottotitoli, audio, volume. Se l'utente c'è, lo sta dicendo.
 * - La **pausa** non avanza il conto in nessun caso: si guarda la posizione del
 *   video, la stessa da cui dipende il riquadro "Prossimo episodio".
 *
 * Classe pura, senza Android: i test la usano con valori interi.
 */
class StillWatchingMonitor(
    /** Episodi automatici consecutivi, senza tasti, che fanno scattare l'avviso. */
    private val autoEpisodesLimit: Int = AUTO_EPISODES_LIMIT,
    /** Riproduzione effettiva oltre la quale scatta l'avviso sugli altri contenuti. */
    private val timeLimitMillis: Long = LIVE_LIMIT_MILLIS,
) {

    /** Episodi automatici consecutivi senza tasti. */
    var autoEpisodes: Int = 0
        private set

    /** Riproduzione effettiva accumulata per il contenuto in corso (ms). */
    var watchedMillis: Long = 0L
        private set

    /** L'avviso è già stato mostrato: non si ripete finché non si ricomincia. */
    var prompted: Boolean = false
        private set

    /** L'avviso è dovuto adesso, anche se non è ancora stato mostrato. */
    val due: Boolean
        get() = when {
            autoEpisodesLimit > 0 && autoEpisodes >= autoEpisodesLimit -> true
            else -> watchedMillis >= timeLimitMillis
        }

    /** Vero quando c'è un video in riproduzione: è la condizione per contare. */
    private var playing = false

    /**
     * Un tasto qualsiasi è stato premuto: l'utente c'è. Il conto degli episodi
     * riparte da zero, perché "2 episodi senza tasti" non vale più.
     *
     * Il **tempo** invece non si azzera: per Live, film e singolo episodio la
     * soglia è "due ore di visione", non "due ore senza toccare il telecomando".
     * Chi cambia canale o apre i sottotitoli sta guardando, non è assente; se il
     * tempo ripartisse a ogni tasto, l'avviso non arriverebbe mai.
     */
    fun onUserInput() {
        autoEpisodes = 0
        if (prompted) prompted = false
    }

    /**
     * Parte un episodio **da solo** (controllo automatico della coda). Il primo
     * episodio della sessione non conta: il conto misura quelli passati senza
     * interazione, non l'ultimo scelto a mano.
     */
    fun onAutoEpisodeStarted() {
        autoEpisodes += 1
        watchedMillis = 0L
        playing = true
    }

    /** Nuovo contenuto scelto dall'utente (film, serie, canale): si riparte puliti. */
    fun onContentStarted() {
        autoEpisodes = 0
        watchedMillis = 0L
        prompted = false
        playing = true
    }

    /** In riproduzione o in pausa: in pausa il tempo non avanza. */
    fun onPlayback(playing: Boolean) {
        this.playing = playing
    }

    /** Il player è chiuso: niente più conti. */
    fun reset() {
        autoEpisodes = 0
        watchedMillis = 0L
        prompted = false
        playing = false
    }

    /**
     * Avanza il conto di [deltaMillis] di riproduzione **effettiva** e dice se è
     * ora di chiedere. Torna `true` una volta sola: dopo l'avviso il conto si
     * ferma finché l'utente non risponde o non riparte un contenuto.
     */
    fun onTimeAdvanced(deltaMillis: Long): Boolean {
        if (prompted || !playing) return false
        watchedMillis += deltaMillis.coerceAtLeast(0L)
        if (!due) return false
        prompted = true
        return true
    }

    /** L'avviso è dovuto adesso? (senza effetti collaterali, per i test) */
    fun shouldPrompt(): Boolean = due

    companion object {
        /**
         * Al via del **terzo** episodio scatta l'avviso: i due precedenti sono
         * passati per intero senza premere alcun tasto.
         */
        const val AUTO_EPISODES_LIMIT = 2

        /** Due ore di riproduzione effettiva per Live, film e singoli episodi. */
        const val LIVE_LIMIT_MILLIS = 2 * 60 * 60 * 1000L

        /** Attesa dell'avviso prima di uscire da soli, se nessuno risponde. */
        const val PROMPT_TIMEOUT_MILLIS = 60_000L
    }
}

/** Testi dell'avviso "Stai ancora guardando?". */
object StillWatchingTexts {
    const val TITLE = "Stai ancora guardando?"
    const val CONTINUE = "Sì, sto guardando"
    const val EXIT = "No, esci"

    /** Spiegazione sotto il titolo, secondo il motivo dell'avviso. */
    fun reason(autoEpisodes: Int): String =
        if (autoEpisodes > 0) {
            "Sono finiti $autoEpisodes episodi di seguito senza premere alcun tasto."
        } else {
            "Il video va avanti da due ore."
        }
}
