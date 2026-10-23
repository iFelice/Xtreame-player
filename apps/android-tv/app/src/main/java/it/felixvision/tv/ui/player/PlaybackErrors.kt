@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.media3.datasource.HttpDataSource

/**
 * Messaggi d'errore del player. Non contengono mai URL o credenziali: il
 * dettaglio tecnico resta nei log, sempre passando da
 * [it.felixvision.tv.data.playback.StreamUrls.redactStreamUrl].
 */
object PlaybackErrors {

    const val GENERIC = "Impossibile riprodurre il contenuto"

    const val ACCESS_DENIED =
        "Connessioni esaurite o accesso negato: l'account potrebbe essere in uso su un altro dispositivo"

    /** 456 è il codice usato da molti pannelli Xtream per "account già in uso". */
    private val ACCESS_DENIED_HTTP_CODES = setOf(401, 403, 409, 429, 456)

    fun messageFor(error: Throwable?): String =
        if (isAccessDenied(error)) ACCESS_DENIED else GENERIC

    fun isAccessDenied(error: Throwable?): Boolean {
        var cause = error
        var depth = 0
        while (cause != null && depth < 8) {
            if (cause is HttpDataSource.InvalidResponseCodeException &&
                cause.responseCode in ACCESS_DENIED_HTTP_CODES
            ) {
                return true
            }
            cause = cause.cause
            depth++
        }
        return false
    }
}
