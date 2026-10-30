package it.felixvision.tv.ui.settings

/**
 * Dimensione dell'interfaccia sulle TV da 50" in su.
 *
 * Il valore in [factor] è un moltiplicatore applicato *dopo* i limiti della
 * scala di progetto (vedi `uiScaleFactor`): su un 1080p la scala vale 2,0
 * (il massimo) e "Media" la porta a 1,8; su un 720p vale 1,0 e la porta a 0,9.
 * Applicarlo prima dei limiti riporterebbe "Compatta" al minimo 0,75 e la
 * scelta non avrebbe effetto.
 *
 * Il predefinito è [COMPACT]: è la dimensione con cui l'app è pensata oggi.
 */
enum class InterfaceSize(val storageKey: String, val label: String, val factor: Float) {

    /** 80% della scala di progetto: la più compatta, predefinita. */
    COMPACT("compact", "Compatta", 0.8f),

    /** 90% della scala di progetto. */
    MEDIUM("medium", "Media", 0.9f),

    /** 100% della scala di progetto: la più grande. */
    LARGE("large", "Grande", 1.0f),
    ;

    companion object {

        /**
         * Dimensione corrispondente a [value]; con `null`, un valore vuoto o
         * sconosciuto (per esempio scritto da una versione diversa) torna
         * [COMPACT], così l'app parte sempre con una dimensione valida.
         */
        fun fromStorage(value: String?): InterfaceSize =
            entries.firstOrNull { it.storageKey == value } ?: COMPACT
    }
}
