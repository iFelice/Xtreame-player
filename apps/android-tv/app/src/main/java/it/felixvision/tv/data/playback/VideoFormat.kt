package it.felixvision.tv.data.playback

/**
 * Formato dello schermo nel player.
 *
 * I quattro modi si scelgono dal pannello "Formato schermo" e restano in vigore
 * per la riproduzione in corso. La logica è pura e senza dipendenze: nessun
 * import da Media3, da `ui/` o da tv-material, perché questo file è compilato
 * anche da `apps/android-mobile`.
 *
 * - [FIT] "Adatta": il video entra tutto nello schermo, con bande nere se il
 *   rapporto non combacia. È il predefinito e non viene mai salvato.
 * - [ZOOM] il video riempie lo schermo tagliando i bordi che non ci stanno.
 * - [RATIO_16_9] e [RATIO_4_3]: riempiono lo schermo come [ZOOM] ma la
 *   superficie del video ha il rapporto fisso indicato, quindi le bande nere
 *   sono quelle del riquadro e non del filmato.
 */
enum class VideoFormat(val storageKey: String, val label: String) {
    FIT("fit", "Adatta"),
    ZOOM("zoom", "Zoom"),
    RATIO_16_9("16_9", "16:9"),
    RATIO_4_3("4_3", "4:3"),
    ;

    companion object {

        /**
         * Formato con questa chiave di archiviazione, `null` per `null` o per
         * un valore sconosciuto (per esempio un archivio di una versione
         * diversa): in quel caso vale il predefinito, cioè "Adatta".
         */
        fun fromStorage(value: String?): VideoFormat? = entries.firstOrNull { it.storageKey == value }
    }
}
