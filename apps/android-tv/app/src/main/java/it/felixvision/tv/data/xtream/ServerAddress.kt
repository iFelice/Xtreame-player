package it.felixvision.tv.data.xtream

/**
 * Regole di normalizzazione dell'indirizzo del server, identiche a quelle
 * dell'app web FelixVisionPlayer: si tolgono gli spazi, si aggiunge `http://` se
 * manca lo schema e si rimuovono le barre finali.
 */
object ServerAddress {

    private val SCHEME_PATTERN = Regex("^[A-Za-z][A-Za-z0-9+.\\-]*://")

    /** Vero se il testo contiene già uno schema esplicito (`http://`, `https://`, ...). */
    fun hasScheme(raw: String): Boolean = SCHEME_PATTERN.containsMatchIn(raw.trim())

    /**
     * Normalizza l'indirizzo digitato dall'utente. Restituisce `null` se, dopo
     * la normalizzazione, non è un indirizzo utilizzabile.
     */
    fun normalize(raw: String): String? {
        val trimmed = raw.trim()
        if (trimmed.isEmpty()) return null

        val withScheme = if (hasScheme(trimmed)) trimmed else "http://$trimmed"
        val withoutTrailingSlashes = withScheme.trimEnd('/')
        if (withoutTrailingSlashes.isEmpty()) return null

        val scheme = withoutTrailingSlashes.substringBefore("://", "").lowercase()
        if (scheme != "http" && scheme != "https") return null

        val hostAndPath = withoutTrailingSlashes.substringAfter("://", "")
        if (hostAndPath.isBlank()) return null
        // Un host senza punto e senza due punti (porta) non è raggiungibile:
        // evita di costruire richieste verso indirizzi palesemente incompleti.
        val host = hostAndPath.substringBefore('/').substringBefore('?')
        if (host.isBlank()) return null

        return withoutTrailingSlashes
    }
}
