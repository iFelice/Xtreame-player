package it.felixvision.tv.data.playback

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Stato condiviso "questa TV ha una riproduzione aperta". Lo aggiorna il
 * player e lo legge Impostazioni per decidere se mostrare l'avviso sulle
 * connessioni dell'account. Una riproduzione in pausa mantiene comunque la
 * connessione aperta sul pannello, quindi conta come attiva.
 */
class PlaybackActivityTracker {

    private val _isActive = MutableStateFlow(false)
    val isActive: StateFlow<Boolean> = _isActive.asStateFlow()

    fun setActive(active: Boolean) {
        _isActive.value = active
    }
}
