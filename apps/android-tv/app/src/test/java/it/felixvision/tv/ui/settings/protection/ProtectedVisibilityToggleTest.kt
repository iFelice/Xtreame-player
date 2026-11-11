package it.felixvision.tv.ui.settings.protection

import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.protection.ProtectedPageAccess
import it.felixvision.tv.data.protection.ProtectedSession
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * L'interruttore Mostra/Nascondi non può MAI sbloccare senza un'autorizzazione
 * valida: `session.unlock()` sta nel solo callback di sblocco della decisione.
 * "Nascondi" (lock) non revoca l'autorizzazione della visita.
 */
class ProtectedVisibilityToggleTest {

    private val clock = Clock { 0L }

    @Test
    fun `senza autorizzazione session unlock non e raggiungibile dall interruttore`() {
        val session = ProtectedSession(clock = clock)
        val access = ProtectedPageAccess()
        assertFalse(access.isAuthorized)
        var unauthorized = 0

        handleProtectedVisibilityToggle(
            authorized = access.isAuthorized,
            unlocked = session.unlocked.value,
            onUnlock = { session.unlock() },
            onLock = { session.lock() },
            onUnauthorized = { unauthorized += 1 },
        )

        assertEquals(1, unauthorized)
        assertFalse(session.unlocked.value)
    }

    @Test
    fun `con autorizzazione Mostra sblocca e Nascondi riblocca senza revocare`() {
        val session = ProtectedSession(clock = clock)
        val access = ProtectedPageAccess()
        access.grant()
        var unauthorized = 0

        // Stato iniziale: contenuti nascosti, interruttore "Mostra".
        handleProtectedVisibilityToggle(
            authorized = access.isAuthorized,
            unlocked = session.unlocked.value,
            onUnlock = { session.unlock() },
            onLock = { session.lock() },
            onUnauthorized = { unauthorized += 1 },
        )
        assertTrue(session.unlocked.value)

        // "Nascondi": lock, autorizzazione ancora valida.
        handleProtectedVisibilityToggle(
            authorized = access.isAuthorized,
            unlocked = session.unlocked.value,
            onUnlock = { session.unlock() },
            onLock = { session.lock() },
            onUnauthorized = { unauthorized += 1 },
        )
        assertFalse(session.unlocked.value)
        assertTrue(access.isAuthorized)
        assertEquals(0, unauthorized)
    }

    @Test
    fun `dopo la revoca l interruttore non sblocca anche se unlocked era true`() {
        val session = ProtectedSession(clock = clock)
        val access = ProtectedPageAccess()
        access.grant()
        session.unlock()
        // ON_STOP / ACTION_SCREEN_OFF: la sessione si riblocca e l'autorizzazione
        // viene revocata dagli stessi punti in FvpMainScreen.
        session.lock()
        access.revoke()
        var unauthorized = 0

        handleProtectedVisibilityToggle(
            authorized = access.isAuthorized,
            unlocked = session.unlocked.value,
            onUnlock = { session.unlock() },
            onLock = { session.lock() },
            onUnauthorized = { unauthorized += 1 },
        )
        assertFalse(session.unlocked.value)
        assertEquals(1, unauthorized)
    }

    @Test
    fun `etichette di rimozione mostrano il numero di voci`() {
        assertEquals("Rimuovi selezionati (2)", removeSelectedLabel(2))
        assertEquals(
            "Rimuovere 2 elementi dai contenuti protetti?",
            removeConfirmationText(2),
        )
    }
}
