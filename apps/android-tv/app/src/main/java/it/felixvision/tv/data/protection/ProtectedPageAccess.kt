package it.felixvision.tv.data.protection

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Autorizzazione in memoria alla pagina di gestione dei contenuti protetti.
 *
 * Vive accanto a [ProtectedSession], che comanda soltanto la visibilità dei
 * contenuti: qui sta il permesso di *amministrare* gli elenchi. È `false` a
 * ogni avvio dell'app, non viene mai persistita e non contiene il PIN: il PIN
 * verificato la concede per la sola visita in corso. Viene revocata uscendo
 * dalla pagina, con ON_STOP e con ACTION_SCREEN_OFF, cioè negli stessi punti
 * in cui la schermata principale riblocca la sessione.
 *
 * [ProtectedSession.lock] NON la revoca: premere "Nascondi" riblocca i
 * contenuti ma lascia la pagina di gestione aperta e autorizzata.
 *
 * Solo Kotlin e coroutines: nessun Android, nessuna dipendenza da `ui/` o da
 * tv-material, così il file resta compilabile anche dall'app mobile.
 */
class ProtectedPageAccess {

    private val _authorized = MutableStateFlow(false)

    /** Vero solo durante la visita autorizzata dal PIN alla pagina. */
    val authorized: StateFlow<Boolean> = _authorized.asStateFlow()

    /** Lettura sincrona, per decidere la pagina iniziale senza aspettare un flow. */
    val isAuthorized: Boolean
        get() = _authorized.value

    /** PIN verificato (o creato): autorizza la visita corrente. */
    fun grant() {
        _authorized.value = true
    }

    /** Uscita dalla pagina, ON_STOP, ACTION_SCREEN_OFF: la visita è finita. */
    fun revoke() {
        _authorized.value = false
    }
}
