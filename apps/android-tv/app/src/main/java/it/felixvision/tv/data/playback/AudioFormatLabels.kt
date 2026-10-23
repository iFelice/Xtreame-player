package it.felixvision.tv.data.playback

/**
 * Etichette del formato audio mostrate nel player, ricavate dal `Format` Media3
 * della traccia in riproduzione (`sampleMimeType` e `channelCount`).
 *
 * La logica è pura e senza dipendenze Android/Media3, così può essere
 * verificata con test JVM. `Format.sampleMimeType` è già una stringa (per
 * esempio `audio/ac3`), quindi la mappatura lavora solo su testo.
 */
object AudioFormatLabels {

    private const val SEPARATOR = " · "

    /** I decoder dell'estensione FFmpeg si chiamano `ffmpeg<versione>-<codec>`. */
    private const val FFMPEG_PREFIX = "ffmpeg"

    /**
     * Nome commerciale del codec. Per i mime non riconosciuti restituisce la
     * parte dopo `audio/` in maiuscolo (per esempio `audio/opus` → `OPUS`).
     */
    fun formatName(mimeType: String?): String {
        val mime = mimeType?.trim()?.lowercase().orEmpty()
        if (mime.isEmpty()) return ""
        return when {
            mime == "audio/eac3-joc" -> "Dolby Atmos"
            mime == "audio/ac3" -> "Dolby Digital"
            mime == "audio/eac3" -> "Dolby Digital Plus"
            mime == "audio/ac4" -> "Dolby AC-4"
            mime.startsWith("audio/vnd.dts") ->
                if (mime.contains("hd") || mime.contains("uhd") || mime.contains("x")) "DTS-HD" else "DTS"
            mime == "audio/mp4a-latm" -> "AAC"
            mime == "audio/mpeg" || mime == "audio/mp3" -> "MP3"
            mime.startsWith("audio/") -> mime.removePrefix("audio/").uppercase()
            else -> mime.uppercase()
        }
    }

    /**
     * Disposizione dei canali come la mostrano i sintoamplificatori
     * (`2.0`, `5.1`, `7.1`). `null` quando il dato non è disponibile.
     */
    fun channelsLabel(channelCount: Int?): String? {
        val count = channelCount ?: return null
        if (count <= 0) return null
        return when (count) {
            1 -> "1.0"
            2 -> "2.0"
            3 -> "2.1"
            4 -> "4.0"
            5 -> "5.0"
            6 -> "5.1"
            7 -> "6.1"
            8 -> "7.1"
            else -> "${count - 1}.1"
        }
    }

    /**
     * Etichetta completa, per esempio `Dolby Digital Plus · 5.1`. Restituisce
     * stringa vuota se non c'è nulla da mostrare.
     */
    fun label(mimeType: String?, channelCount: Int?): String {
        val name = formatName(mimeType)
        val channels = channelsLabel(channelCount)
        return when {
            name.isNotEmpty() && channels != null -> name + SEPARATOR + channels
            name.isNotEmpty() -> name
            channels != null -> channels
            else -> ""
        }
    }

    /**
     * Vero quando la traccia audio è decodificata dall'estensione FFmpeg e non
     * dal decodificatore di sistema. Il nome arriva da
     * `AnalyticsListener.onAudioDecoderInitialized`.
     */
    fun isFfmpegDecoder(decoderName: String?): Boolean =
        decoderName?.trim()?.lowercase()?.startsWith(FFMPEG_PREFIX) == true
}
