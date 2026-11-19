package it.felixvision.mobile.ui.settings.protection

import it.felixvision.tv.data.protection.ProtectedPageAccess
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/** Permesso per una visita e generazione per invalidare verifiche asincrone. */
class ProtectedPageGuard {
    private val access = ProtectedPageAccess()
    private val _generation = MutableStateFlow(0L)
    val generation: StateFlow<Long> = _generation.asStateFlow()
    val isAuthorized: Boolean get() = access.isAuthorized

    /** Chiamare sul thread principale: un risultato precedente non può riaprire la pagina. */
    fun grantIfCurrent(ticket: Long): Boolean {
        if (ticket != _generation.value) return false
        access.grant()
        return true
    }

    fun revoke() {
        access.revoke()
        _generation.value += 1
    }
}
