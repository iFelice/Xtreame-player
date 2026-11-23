package it.felixvision.tv.data.m3u

/** Motivo per cui un indice di liste non è utilizzabile. */
enum class M3uIndexFailure(val message: String) {
    TOO_LARGE("L'indice delle liste supera i 64 KB"),
    EMPTY("L'indice delle liste non contiene indirizzi"),
    INVALID_TEXT("L'indice delle liste non è un testo valido"),
}

/** Esito dell'analisi di un indice di liste. */
sealed interface M3uIndexResult {

    data class Success(val urls: List<String>) : M3uIndexResult

    data class Failure(val reason: M3uIndexFailure) : M3uIndexResult
}

/**
 * Indice delle liste: un file di testo con **un indirizzo per riga**.
 *
 * ```
 * # una riga che inizia con # è un commento
 * http://server.esempio/playlist1.m3u8
 * http://server.esempio/playlist2.m3u8
 * ```
 *
 * Righe vuote e righe che iniziano con `#` sono ignorate, gli indirizzi
 * relativi scartati e i doppioni tolti. Il file non può superare
 * [MAX_INDEX_BYTES].
 *
 * Il riconoscimento è automatico: se il contenuto, tolto l'eventuale BOM,
 * inizia con `#EXTM3U` è una **lista** ([M3uParser]); altrimenti è un **indice**.
 */
object M3uIndex {

    /** Dimensione massima accettata per un indice: 64 KB. */
    const val MAX_INDEX_BYTES: Int = 64 * 1024

    private const val BOM = '\uFEFF'
    private const val PLAYLIST_HEADER = "#EXTM3U"

    /** Vero quando il testo è una lista M3U e non un indice. */
    fun looksLikePlaylist(text: String): Boolean =
        text.removePrefix(BOM.toString())
            .trimStart()
            .startsWith(PLAYLIST_HEADER, ignoreCase = true)

    /** Indirizzi elencati nell'indice, nell'ordine del file e senza doppioni. */
    fun parse(text: String): M3uIndexResult {
        val normalized = text
            .removePrefix(BOM.toString())
            .replace("\r\n", "\n")
            .replace('\r', '\n')
        if (normalized.contains('\u0000')) {
            return M3uIndexResult.Failure(M3uIndexFailure.INVALID_TEXT)
        }
        if (normalized.toByteArray(Charsets.UTF_8).size > MAX_INDEX_BYTES) {
            return M3uIndexResult.Failure(M3uIndexFailure.TOO_LARGE)
        }
        val urls = LinkedHashSet<String>()
        for (rawLine in normalized.lineSequence()) {
            val line = rawLine.trim()
            if (line.isEmpty() || line.startsWith("#")) continue
            if (!isAbsoluteHttpUrl(line)) continue
            urls += line
        }
        if (urls.isEmpty()) {
            return M3uIndexResult.Failure(M3uIndexFailure.EMPTY)
        }
        return M3uIndexResult.Success(urls.toList())
    }

    private fun isAbsoluteHttpUrl(value: String): Boolean {
        val lower = value.lowercase()
        return lower.startsWith("http://") || lower.startsWith("https://")
    }
}
