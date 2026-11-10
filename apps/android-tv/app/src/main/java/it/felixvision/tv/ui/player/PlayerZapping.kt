package it.felixvision.tv.ui.player

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import it.felixvision.tv.player.ZappingChannelStatus
import it.felixvision.tv.player.ZappingCommand
import it.felixvision.tv.player.ZappingController
import it.felixvision.tv.player.ZappingState

/** Stato dello zapping automatico osservato dalla UI del player. */
data class ZappingUiState(
    /** Secondi che mancano al prossimo canale, arrotondati per eccesso. */
    val remainingSeconds: Int,
    /** Vero mentre è aperta la domanda di fine lista. */
    val awaitingEndOfList: Boolean,
    /** Secondi che mancano alla scadenza della domanda di fine lista. */
    val endOfListSecondsLeft: Int,
)

/**
 * Ponte tra [ZappingController] (logica pura) e il player: espone lo stato per
 * Compose e applica al player i comandi restituiti dal controller.
 *
 * Lo stato è `null` a zapping fermo: l'indicatore e la domanda di fine lista
 * spariscono, e alla riapertura del player non si riattiva nulla da solo.
 */
class PlayerZapping(
    private val controller: ZappingController,
    private val onSwitchChannel: (Int) -> Unit,
) {

    var state by mutableStateOf<ZappingUiState?>(null)
        private set

    /** Vero mentre il conto alla rovescia è attivo (domanda di fine lista esclusa). */
    val isActive: Boolean
        get() = state?.let { !it.awaitingEndOfList } ?: false

    /** Vero mentre è aperta la domanda di fine lista. */
    val isAwaitingEndOfList: Boolean
        get() = state?.awaitingEndOfList == true

    /** Avvia lo zapping sul canale [index] di una lista di [size] canali. */
    fun start(seconds: Int, index: Int, size: Int) {
        state = controller.start(seconds = seconds, index = index, size = size)?.toUiState()
    }

    /**
     * Avanza il conto con lo stato del canale in onda, come fa il player.
     *
     * [startGraceMillis] è la finestra entro cui un canale che non è ancora
     * partito viene saltato: più larga in HLS, dove l'avvio è più lento.
     */
    fun tick(
        status: ZappingChannelStatus,
        startGraceMillis: Long = ZappingController.START_GRACE_MILLIS,
    ) {
        if (state == null) return
        apply(controller.tick(status = status, startGraceMillis = startGraceMillis))
    }

    /** Risposta alla domanda di fine lista: "Sì" riparte dal primo canale. */
    fun answer(restart: Boolean) {
        if (state == null) return
        apply(controller.answer(restart = restart))
    }

    /** Ferma lo zapping e toglie l'indicatore. */
    fun stop() {
        controller.stop()
        state = null
    }

    private fun apply(command: ZappingCommand) {
        when (command) {
            ZappingCommand.None,
            ZappingCommand.AskEndOfList -> state = controller.state?.toUiState()
            is ZappingCommand.SwitchTo -> {
                state = controller.state?.toUiState()
                onSwitchChannel(command.index)
            }
            is ZappingCommand.RestartFromFirst -> {
                state = controller.state?.toUiState()
                onSwitchChannel(command.index)
            }
            is ZappingCommand.BackToStart -> {
                state = null
                onSwitchChannel(command.index)
            }
        }
    }
}

private fun ZappingState.toUiState(): ZappingUiState = ZappingUiState(
    remainingSeconds = remainingSeconds,
    awaitingEndOfList = awaitingEndOfList,
    endOfListSecondsLeft = endOfListSecondsLeft,
)

/**
 * Qualsiasi tasto del telecomando ferma lo zapping: il tasto che lo ferma viene
 * consumato e non fa altro (niente cambio canale, niente barra, nessuna uscita
 * dal player). Va messo sulla radice del player, prima degli altri gestori.
 *
 * La domanda di fine lista è una finestra a parte: lì i tasti restano ai suoi
 * pulsanti e a Indietro.
 */
fun Modifier.playerZappingKeys(zapping: PlayerZapping): Modifier = this.onPreviewKeyEvent { event ->
    if (event.type == KeyEventType.KeyDown && zapping.isActive) {
        zapping.stop()
        true
    } else {
        false
    }
}
