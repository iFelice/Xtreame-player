package it.felixvision.tv.data.playback

import it.felixvision.tv.data.xtream.ServerAddress
import java.nio.charset.StandardCharsets

/**
 * URL di riproduzione Xtream, costruiti senza dipendenze Android per poterli
 * verificare con test JVM.
 *
 * Struttura:
 * - live: `{server}/live/{utente}/{password}/{streamId}.ts` oppure `.m3u8`
 *   quando l'account non ammette `ts` ma ammette `m3u8`;
 * - film: `{server}/movie/{utente}/{password}/{streamId}.{estensione}`;
 * - episodio: `{server}/series/{utente}/{password}/{episodeId}.{estensione}`.
 *
 * Utente, password, identificativo ed estensione sono codificati come segmento
 * di percorso (RFC 3986). Gli URL contengono credenziali: non devono mai essere
 * scritti nei log senza [redactStreamUrl].
 */
sealed interface StreamTarget {

    data class Live(
        val streamId: String,
        val allowedOutputFormats: List<String>,
    ) : StreamTarget

    data class Movie(
        val streamId: String,
        val containerExtension: String? = null,
    ) : StreamTarget

    data class Episode(
        val episodeId: String,
        val containerExtension: String? = null,
    ) : StreamTarget
}

object StreamUrls {

    const val DEFAULT_CONTAINER_EXTENSION = "mp4"
    const val LIVE_TS = "ts"
    const val LIVE_HLS = "m3u8"

    private const val HEX = "0123456789ABCDEF"
    private const val UNRESERVED =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~"

    private val CREDENTIALS_IN_PATH = Regex("""(/(?:live|movie|series)/)([^/?#]+)/([^/?#]+)""")

    /**
     * Costruisce l'URL di riproduzione. Restituisce `null` se server o
     * credenziali non sono utilizzabili, così il chiamante mostra l'errore
     * generico senza esporre nulla.
     */
    fun build(
        server: String,
        username: String,
        password: String,
        target: StreamTarget,
    ): String? {
        if (username.isEmpty() || password.isEmpty()) return null
        val base = ServerAddress.normalize(server) ?: return null
        val user = encodePathSegment(username)
        val pass = encodePathSegment(password)
        return when (target) {
            is StreamTarget.Live -> {
                val extension = liveExtension(target.allowedOutputFormats)
                "$base/live/$user/$pass/${encodePathSegment(target.streamId)}.$extension"
            }
            is StreamTarget.Movie ->
                "$base/movie/$user/$pass/${encodePathSegment(target.streamId)}." +
                    containerExtension(target.containerExtension)
            is StreamTarget.Episode ->
                "$base/series/$user/$pass/${encodePathSegment(target.episodeId)}." +
                    containerExtension(target.containerExtension)
        }
    }

    /**
     * Regola live: `.ts` è il predefinito. Si passa a `.m3u8` solo quando
     * l'account non dichiara `ts` e dichiara `m3u8`.
     */
    fun liveExtension(allowedOutputFormats: List<String>): String {
        val normalized = allowedOutputFormats.map { it.trim().lowercase() }
        val hasTs = normalized.contains(LIVE_TS)
        val hasHls = normalized.contains(LIVE_HLS)
        return if (!hasTs && hasHls) LIVE_HLS else LIVE_TS
    }

    fun containerExtension(raw: String?): String {
        val cleaned = raw?.trim()?.trimStart('.')?.takeIf { it.isNotEmpty() }
        return cleaned ?: DEFAULT_CONTAINER_EXTENSION
    }

    /** Codifica un valore come singolo segmento di percorso (UTF-8). */
    fun encodePathSegment(value: String): String = buildString {
        for (byte in value.toByteArray(StandardCharsets.UTF_8)) {
            val code = byte.toInt() and 0xFF
            val char = code.toChar()
            if (UNRESERVED.indexOf(char) >= 0) {
                append(char)
            } else {
                append('%')
                append(HEX[code shr 4])
                append(HEX[code and 0x0F])
            }
        }
    }

    /**
     * Versione sicura per i log: sostituisce utente e password con `***`.
     * Accetta anche `null` per poter essere usata direttamente sui campi
     * opzionali del player.
     */
    fun redactStreamUrl(url: String?): String {
        if (url.isNullOrBlank()) return ""
        return CREDENTIALS_IN_PATH.replace(url) { match ->
            "${match.groupValues[1]}***/***"
        }
    }
}
