package it.felixvision.tv.data.playback

import it.felixvision.tv.data.xtream.ServerAddress
import java.nio.charset.StandardCharsets
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Locale

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

    /**
     * Canale Live. [allowedOutputFormats] sono i formati dichiarati
     * dall'account; [preferredFormat] è la preferenza dell'utente (vedi
     * [LiveStreamFormat]) e vale solo tra i formati ammessi: se chiede un
     * formato che l'account non dichiara, la regola di [StreamUrls.liveExtension]
     * resta quella di sempre.
     */
    data class Live(
        val streamId: String,
        val allowedOutputFormats: List<String>,
        val preferredFormat: LiveStreamFormat = LiveStreamFormat.AUTO,
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

    private val CREDENTIALS_IN_PATH = Regex("""(/(?:live|movie|series|timeshift)/)([^/?#]+)/([^/?#]+)""")

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
                val extension = liveExtension(target.allowedOutputFormats, target.preferredFormat)
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

    /** URL Xtream timeshift. Gli epoch sono secondi e la durata è secondi effettivi. */
    fun buildCatchup(
        server: String,
        username: String,
        password: String,
        streamId: String,
        startEpochSeconds: Long,
        durationSeconds: Long,
        serverTimezone: String?,
        deviceTimezone: ZoneId = ZoneId.systemDefault(),
    ): String? {
        if (username.isEmpty() || password.isEmpty() || durationSeconds <= 0L) return null
        val base = ServerAddress.normalize(server) ?: return null
        val zone = serverTimezone?.let { runCatching { ZoneId.of(it) }.getOrNull() } ?: deviceTimezone
        val startMinute = Instant.ofEpochSecond(startEpochSeconds).atZone(zone).withSecond(0).withNano(0)
        val minutes = ((durationSeconds + 59L) / 60L).coerceAtLeast(1L)
        val formattedStart = DateTimeFormatter.ofPattern("yyyy-MM-dd:HH-mm", Locale.ROOT).format(startMinute)
        return "$base/timeshift/${encodePathSegment(username)}/${encodePathSegment(password)}/$minutes/$formattedStart/${encodePathSegment(streamId)}.ts"
    }

    /** Riposiziona il timeshift: arrotonda l'inizio spostato al minuto e ricalcola la durata residua. */
    fun buildShiftedCatchup(
        server: String,
        username: String,
        password: String,
        streamId: String,
        startEpochSeconds: Long,
        durationSeconds: Long,
        offsetSeconds: Long,
        serverTimezone: String?,
        deviceTimezone: ZoneId = ZoneId.systemDefault(),
    ): String? {
        if (durationSeconds <= 0L) return null
        val requested = startEpochSeconds + offsetSeconds
        val roundedStart = Math.floorDiv(requested, 60L) * 60L
        val end = startEpochSeconds + durationSeconds
        val remaining = end - roundedStart
        if (remaining <= 0L) return null
        return buildCatchup(server, username, password, streamId, roundedStart, remaining, serverTimezone, deviceTimezone)
    }

    /**
     * Regola live: `.ts` è il predefinito. Si passa a `.m3u8` solo quando
     * l'account non dichiara `ts` e dichiara `m3u8`.
     *
     * La preferenza dell'utente non cambia questa regola quando il formato
     * richiesto non è tra quelli dichiarati dall'account: un canale che esiste
     * solo in `ts` resta in `ts` anche con [LiveStreamFormat.HLS] scelto.
     */
    fun liveExtension(
        allowedOutputFormats: List<String>,
        preferredFormat: LiveStreamFormat = LiveStreamFormat.AUTO,
    ): String {
        val normalized = allowedOutputFormats.map { it.trim().lowercase() }
        val hasTs = normalized.contains(LIVE_TS)
        val hasHls = normalized.contains(LIVE_HLS)
        val fallback = if (!hasTs && hasHls) LIVE_HLS else LIVE_TS
        return when {
            preferredFormat == LiveStreamFormat.HLS && hasHls -> LIVE_HLS
            preferredFormat == LiveStreamFormat.TS && hasTs -> LIVE_TS
            else -> fallback
        }
    }

    /**
     * L'altro formato live rispetto a [current], per il ripiego dopo un errore
     * di riproduzione (lo stesso scambio che fa Black tra HLS e flusso diretto).
     * Restituisce `null` quando l'account non ammette l'altro formato: in quel
     * caso non c'è nulla da provare e l'errore resta quello vero.
     */
    fun alternateLiveFormat(
        current: LiveStreamFormat,
        allowedOutputFormats: List<String>,
    ): LiveStreamFormat? {
        val normalized = allowedOutputFormats.map { it.trim().lowercase() }
        val hasTs = normalized.contains(LIVE_TS)
        val hasHls = normalized.contains(LIVE_HLS)
        return when (current) {
            LiveStreamFormat.TS -> LiveStreamFormat.HLS.takeIf { hasHls }
            LiveStreamFormat.HLS -> LiveStreamFormat.TS.takeIf { hasTs }
            LiveStreamFormat.AUTO -> null
        }
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
