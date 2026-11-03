package it.felixvision.tv.data.protection

import it.felixvision.tv.core.Clock
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Autorizzazione alla pagina di gestione: in memoria, falsa a ogni avvio,
 * concessa solo per la visita corrente e indipendente dall'interruttore
 * Mostra/Nascondi ([ProtectedSession.lock] non la revoca).
 */
class ProtectedPageAccessTest {

    private val clock = Clock { 0L }

    @Test
    fun `all avvio la pagina non e autorizzata`() {
        val access = ProtectedPageAccess()
        assertFalse(access.isAuthorized)
        assertFalse(access.authorized.value)
    }

    @Test
    fun `grant autorizza e revoke chiude la visita`() {
        val access = ProtectedPageAccess()
        access.grant()
        assertTrue(access.isAuthorized)
        assertTrue(access.authorized.value)
        access.revoke()
        assertFalse(access.isAuthorized)
        assertFalse(access.authorized.value)
    }

    @Test
    fun `lock dell interruttore non revoca l autorizzazione`() {
        val access = ProtectedPageAccess()
        val session = ProtectedSession(clock = clock)
        access.grant()
        session.unlock()
        // "Nascondi": riblocca i contenuti ma lascia la pagina autorizzata.
        session.lock()
        assertFalse(session.unlocked.value)
        assertTrue(access.isAuthorized)
    }

    @Test
    fun `revoche ripetute restano false`() {
        val access = ProtectedPageAccess()
        access.grant()
        access.revoke()
        access.revoke()
        assertFalse(access.isAuthorized)
    }
}
