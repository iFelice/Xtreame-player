@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile

import androidx.annotation.OptIn
import androidx.media3.common.util.Log as Media3Log

/**
 * Nelle release Media3 non deve scrivere nulla nel logcat, perché i messaggi
 * delle eccezioni di rete possono contenere host o IP del server. I log
 * dell'app (AppLog) restano attivi perché già oscurati con redactStreamUrl.
 *
 * Replica di `it.felixvision.tv.Media3Logging` dell'app TV (non condiviso:
 * il file TV vive nel package dell'app TV), richiamata da [FvpApplication].
 */
object Media3Logging {
    fun configure(isDebugBuild: Boolean) {
        if (isDebugBuild) {
            Media3Log.setLogLevel(Media3Log.LOG_LEVEL_ALL)
        } else {
            Media3Log.setLogLevel(Media3Log.LOG_LEVEL_OFF)
        }
    }
}
