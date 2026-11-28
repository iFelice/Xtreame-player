@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.common.PlaybackException

/**
 * Contenuto che si rivela HLS dopo il primo errore di analisi.
 *
 * Capita con i server che servono una playlist dietro un indirizzo `.mp4` (o
 * senza estensione) tramite redirect: VLC e i browser lo riconoscono dal
 * contenuto (`#EXTM3U`), mentre Media3 sceglie la sorgente **prima** di
 * scaricare, guardando solo l'indirizzo. Il risultato è
 * `UnrecognizedInputFormatException` con codice
 * [PlaybackException.ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED]: il flusso c'è,
 * è solo di un tipo che l'indirizzo non diceva.
 *
 * La cura è una sola e non si ripete: si riapre la stessa voce dichiarando
 * `MimeTypes.APPLICATION_M3U8`. Qui c'è solo la regola, senza player, per poterla
 * verificare con test JVM.
 */
object MaskedHls {

    /**
     * Errori di **analisi del contenuto**: il byte c'è, non è quello che
     * l'indirizzo faceva pensare. Gli errori di rete e le risposte HTTP
     * (403, 404, 5xx) non stanno qui: hanno rimedi diversi.
     */
    val CONTENT_NOT_RECOGNIZED_CODES: Set<Int> = setOf(
        PlaybackException.ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED,
        PlaybackException.ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED,
    )

    /** Vero quando l'indirizzo dichiara già HLS (`.m3u8`). */
    fun looksLikeHls(url: String?): Boolean {
        if (url == null) return false
        val path = url.substringBefore('?').substringBefore('#')
        return path.endsWith(".m3u8", ignoreCase = true)
    }

    /**
     * Vero quando vale la pena riaprire l'indirizzo dichiarandolo HLS.
     *
     * @param alreadyForced la voce è già stata riaperta come HLS: non si insiste
     *   (altrimenti un errore vero diventerebbe un ciclo di riaperture).
     */
    fun shouldRetry(
        errorCode: Int,
        url: String?,
        alreadyForced: Boolean,
    ): Boolean = !alreadyForced &&
        url != null &&
        !looksLikeHls(url) &&
        errorCode in CONTENT_NOT_RECOGNIZED_CODES
}
