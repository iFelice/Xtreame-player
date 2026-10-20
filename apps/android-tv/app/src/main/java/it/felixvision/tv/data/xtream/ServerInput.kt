package it.felixvision.tv.data.xtream

/**
 * Il campo "Server o codice" accetta due cose diverse. La regola, la stessa
 * dell'app web, è volutamente semplice: se il testo non contiene `://` e non
 * contiene un punto viene trattato come codice rubrica; in tutti gli altri casi
 * è un indirizzo.
 */
sealed interface ServerInput {

    data class Address(val raw: String) : ServerInput

    data class Code(val code: String) : ServerInput

    companion object {

        fun classify(raw: String): ServerInput {
            val trimmed = raw.trim()
            val looksLikeCode = !trimmed.contains("://") && !trimmed.contains('.')
            return if (looksLikeCode) {
                Code(trimmed.lowercase())
            } else {
                Address(trimmed)
            }
        }

        /** Vero se il testo va risolto come codice rubrica. */
        fun isCode(raw: String): Boolean = classify(raw) is Code
    }
}
