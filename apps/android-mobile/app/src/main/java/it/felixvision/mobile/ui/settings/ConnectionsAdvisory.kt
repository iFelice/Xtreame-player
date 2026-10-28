package it.felixvision.mobile.ui.settings

/**
 * Regola dell'avviso connessioni, identica a quella della TV
 * (`it.felixvision.tv.ui.settings.ConnectionsAdvisory`, che sta nel modulo UI
 * della TV e non è condiviso): l'avviso compare solo quando il server dichiara
 * connessioni attive almeno pari a quelle massime e questo tablet non ha una
 * riproduzione in corso.
 */
object ConnectionsAdvisory {

    const val MESSAGE = "L'account è in uso su un altro dispositivo"

    fun shouldWarn(
        activeConnections: Int?,
        maxConnections: Int?,
        devicePlaying: Boolean,
    ): Boolean {
        if (devicePlaying) return false
        if (activeConnections == null || maxConnections == null) return false
        if (maxConnections <= 0) return false
        return activeConnections >= maxConnections
    }
}
