package it.felixvision.tv.ui.settings

/**
 * Dimensione dell'interfaccia sulle TV da 50" in su.
 *
 * Il valore in [factor] è un moltiplicatore applicato *dopo* i limiti della
 * scala di progetto (vedi `uiScaleFactor`). Una TV 1080p espone di norma
 * 960×540 dp (densità xhdpi): la scala di progetto vale min(960 / 960,
 * 540 / 600) = 0,9, quindi "Media" la porta a 0,81 e "Compatta" a 0,72.
 * Applicarlo prima dei limiti riporterebbe "Compatta" al minimo 0,75 e la
 * scelta non avrebbe effetto.
 *
 * Il predefinito è [COMPACT]: è la dimensione più leggera, pensata per TV da
 * 50 pollici in su.
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
