package it.felixvision.tv.core

import android.util.Log

/**
 * Log dell'app. Regola invariabile: le credenziali (server, utente, password)
 * non compaiono mai nei log, nemmeno in caso di errore.
 */
object AppLog {

    private const val TAG = "FelixVP"

    fun info(message: String) {
        Log.i(TAG, message)
    }

    fun warn(message: String, error: Throwable? = null) {
        Log.w(TAG, message, error)
    }
}
