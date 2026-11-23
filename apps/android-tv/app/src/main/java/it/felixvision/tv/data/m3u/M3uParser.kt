package it.felixvision.tv.data.m3u

/** Motivo per cui una lista M3U non è utilizzabile. */
enum class M3uFailure {

    /** Il testo non contiene nessuna voce `#EXTINF`: non è una lista. */
    NOT_A_LIST,

    /** È una playlist HLS (`#EXT-X-TARGETDURATION` / `#EXT-X-STREAM-INF`). */
    HLS_PLAYLIST,

    /** Il file supera il limite di [M3uParser.MAX_PLAYLIST_BYTES]. */
    TOO_LARGE,

    /** Contenuto binario: non è testo UTF-8 di una lista. */
    INVALID_TEXT,
}

/** Esito dell'analisi di una lista. */
sealed interface M3uParseResult {

    data class Success(val entries: List<M3uEntry>) : M3uParseResult

    data class Failure(val reason: M3uFailure) : M3uParseResult
}

/**
 * Parser del formato M3U esteso, scritto a mano e senza librerie.
 *
 * Riconosce:
 * ```
 * #EXTM3U
 * #EXTINF:-1 tvg-id="canale" tvg-logo="http://server.esempio/logo.png" group-title="Film",Titolo, con virgola
 * http://server.esempio/film.mp4
 * ```
 *
 * Tolleranze: BOM iniziale, righe CRLF o CR, UTF-8, virgolette negli attributi,
 * virgole nel titolo, righe vuote, righe di commento, righe sconosciute
 * (ignorate) e attributi mancanti. Gli indirizzi relativi (`/film.mp4`,
 * `film.mp4`, `file://…`) vengono scartati: si accettano solo `http` e `https`.
 *
 * Se il file è una playlist HLS e non una lista, l'esito è
 * [M3uParseResult.Failure] con [M3uFailure.HLS_PLAYLIST]: una playlist di
 * segmenti non è un catalogo e non va mostrata come tale.
 */
object M3uParser {

    /** Dimensione massima accettata per una lista: 5 MB. */
    const val MAX_PLAYLIST_BYTES: Int = 5 * 1024 * 1024

    private const val BOM = '\uFEFF'
    private const val EXT_M3U = "#EXTM3U"
    private const val EXTINF = "#EXTINF:"
    private const val TARGET_DURATION = "#EXT-X-TARGETDURATION"
    private const val STREAM_INF = "#EXT-X-STREAM-INF"

    /** Nome dato a una voce senza titolo nell'`#EXTINF` e senza nome nel file. */
    const val UNTITLED = "Senza titolo"

    /** Decodifica i byte come UTF-8, togliendo l'eventuale BOM. */
    fun decode(bytes: ByteArray): String =
        String(bytes, Charsets.UTF_8).removePrefix(BOM.toString())

    /** Analizza il testo di una lista già decodificata. */
    fun parse(text: String): M3uParseResult {
        val normalized = text
            .removePrefix(BOM.toString())
            .replace("\r\n", "\n")
            .replace('\r', '\n')

        if (normalized.contains('\u0000')) {
            return M3uParseResult.Failure(M3uFailure.INVALID_TEXT)
        }
        if (normalized.contains(TARGET_DURATION) || normalized.contains(STREAM_INF)) {
            return M3uParseResult.Failure(M3uFailure.HLS_PLAYLIST)
        }
        if (normalized.toByteArray(Charsets.UTF_8).size > MAX_PLAYLIST_BYTES) {
            return M3uParseResult.Failure(M3uFailure.TOO_LARGE)
        }

        val entries = ArrayList<M3uEntry>()
        var pending: M3uEntry? = null
        var sawExtInf = false

        for (rawLine in normalized.lineSequence()) {
            val line = rawLine.trim()
            if (line.isEmpty()) continue
            if (line.startsWith(EXTINF, ignoreCase = true)) {
                sawExtInf = true
                pending = parseExtInf(line.substring(EXTINF.length))
                continue
            }
            if (line.startsWith("#")) {
                // `#EXTM3U`, commenti e righe sconosciute: si ignorano.
                continue
            }
            if (!isAbsoluteHttpUrl(line)) {
                // Indirizzo relativo o riga non riconosciuta: si scarta.
                pending = null
                continue
            }
            val base = pending ?: M3uEntry()
            pending = null
            entries += base.copy(
                url = line,
                title = base.title.ifBlank { titleFromUrl(line) },
            )
        }

        if (!sawExtInf || entries.isEmpty()) {
            return M3uParseResult.Failure(M3uFailure.NOT_A_LIST)
        }
        return M3uParseResult.Success(entries)
    }

    /**
     * Attributi e titolo di una riga `#EXTINF`. Il titolo comincia dopo la prima
     * virgola che sta **fuori** dalle virgolette: `group-title="A, B"` non lo
     * spezza, mentre le virgole nel titolo restano nel titolo.
     */
    private fun parseExtInf(payload: String): M3uEntry {
        val commaIndex = indexOfTitleSeparator(payload)
        val attributePart = if (commaIndex >= 0) payload.substring(0, commaIndex) else payload
        val title = if (commaIndex >= 0) payload.substring(commaIndex + 1).trim() else ""
        val attributes = parseAttributes(attributePart)
        return M3uEntry(
            title = title,
            url = "",
            group = attributes["group-title"]?.trim()?.takeIf { it.isNotEmpty() },
            tvgId = attributes["tvg-id"]?.trim()?.takeIf { it.isNotEmpty() },
            logo = attributes["tvg-logo"]?.trim()?.takeIf { it.isNotEmpty() },
        )
    }

    /** Prima virgola fuori dalle virgolette, oppure -1. */
    private fun indexOfTitleSeparator(payload: String): Int {
        var inQuotes = false
        for (index in payload.indices) {
            when (payload[index]) {
                '"' -> inQuotes = !inQuotes
                ',' -> if (!inQuotes) return index
            }
        }
        return -1
    }

    private val QUOTED_ATTRIBUTE = Regex("([A-Za-z0-9_-]+)\\s*=\\s*\"([^\"]*)\"")
    private val BARE_ATTRIBUTE = Regex("([A-Za-z0-9_-]+)\\s*=\\s*([^\\s\"]+)")

    /** Attributi `chiave="valore"` (e `chiave=valore`, tollerato). */
    private fun parseAttributes(part: String): Map<String, String> {
        val attributes = HashMap<String, String>()
        for (match in QUOTED_ATTRIBUTE.findAll(part)) {
            attributes[match.groupValues[1].lowercase()] = match.groupValues[2]
        }
        for (match in BARE_ATTRIBUTE.findAll(part)) {
            val key = match.groupValues[1].lowercase()
            if (key !in attributes) attributes[key] = match.groupValues[2]
        }
        return attributes
    }

    private fun isAbsoluteHttpUrl(value: String): Boolean {
        val lower = value.lowercase()
        return lower.startsWith("http://") || lower.startsWith("https://")
    }

    /** Nome del file nell'indirizzo: usato solo quando il titolo manca. */
    private fun titleFromUrl(url: String): String {
        val path = url.substringBefore('?').substringBefore('#').trimEnd('/')
        val fileName = path.substringAfterLast('/')
        val base = fileName.substringBeforeLast('.', fileName)
        return base.ifBlank { UNTITLED }
    }
}
