package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import androidx.test.core.app.ApplicationProvider
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.ui.SessionCounter
import it.felixvision.tv.ui.main.catalogSessionKey
import it.felixvision.tv.ui.main.sessionViewModelKey
import it.felixvision.tv.ui.main.settingsSessionKey
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowLooper

/**
 * Verifica dell'aggiornamento di [SettingsUiState.serverLabel] all'apertura
 * delle Impostazioni ([SettingsViewModel.onSettingsVisible]) e del cambio della
 * chiave di sessione tra due accessi successivi con gli stessi server e utente.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class SettingsViewModelSessionTest {

    private class InMemoryCredentialStore(
        var stored: StoredCredentials? = null,
    ) : CredentialStore {
        override suspend fun load(): StoredCredentials? = stored

        override suspend fun save(credentials: StoredCredentials) {
            stored = credentials
        }

        override suspend fun clear() {
            stored = null
        }
    }

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val password = "demo"

    private fun newViewModel(
        credentialStore: CredentialStore,
        onCredentialsReplaced: (String, String, String) -> Unit = { _, _, _ -> },
        onSignOut: () -> Unit = {},
    ): SettingsViewModel {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val container = AppContainer(
            context = context,
            credentialStoreOverride = credentialStore,
        )
        return SettingsViewModel(
            container = container,
            server = server,
            username = username,
            password = password,
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = 2,
            activeConnections = 1,
            onCredentialsReplaced = onCredentialsReplaced,
            onSignOut = onSignOut,
            credentialStore = credentialStore,
        )
    }

    @Test
    fun `con credenziali salvate con serverCode 001 onSettingsVisible porta serverLabel a 001`() {
        val store = InMemoryCredentialStore(stored = null)
        val vm = newViewModel(store)
        ShadowLooper.idleMainLooper()
        assertEquals("Personalizzato", vm.ui.value.serverLabel)

        store.stored = StoredCredentials(
            server = server,
            username = username,
            password = password,
            serverCode = "001",
        )
        vm.onSettingsVisible()
        ShadowLooper.idleMainLooper()

        assertEquals("001", vm.ui.value.serverLabel)
        vm.onSettingsHidden()
    }

    @Test
    fun `con serverCode assente onSettingsVisible porta serverLabel a Personalizzato`() {
        val store = InMemoryCredentialStore(
            stored = StoredCredentials(
                server = server,
                username = username,
                password = password,
                serverCode = "001",
            ),
        )
        val vm = newViewModel(store)
        ShadowLooper.idleMainLooper()
        assertEquals("001", vm.ui.value.serverLabel)

        store.stored = StoredCredentials(
            server = server,
            username = username,
            password = password,
            serverCode = null,
        )
        vm.onSettingsVisible()
        ShadowLooper.idleMainLooper()

        assertEquals("Personalizzato", vm.ui.value.serverLabel)

        // Anche senza credenziali salvate resta "Personalizzato".
        store.stored = null
        vm.onSettingsVisible()
        ShadowLooper.idleMainLooper()

        assertEquals("Personalizzato", vm.ui.value.serverLabel)
        vm.onSettingsHidden()
    }

    @Test
    fun `la chiave di sessione cambia tra due accessi successivi con stessi server e utente`() {
        val counter = SessionCounter()
        val firstSession = counter.next()
        val secondSession = counter.next()

        assertNotEquals(firstSession, secondSession)

        val firstSettingsKey = settingsSessionKey(firstSession, server, username)
        val secondSettingsKey = settingsSessionKey(secondSession, server, username)
        assertNotEquals(firstSettingsKey, secondSettingsKey)

        val firstCatalogKey = catalogSessionKey(firstSession, server, username)
        val secondCatalogKey = catalogSessionKey(secondSession, server, username)
        assertNotEquals(firstCatalogKey, secondCatalogKey)

        assertNotEquals(
            sessionViewModelKey("settings", firstSession, server, username),
            sessionViewModelKey("settings", secondSession, server, username),
        )
    }

    @Test
    fun `dopo uscita e nuovo accesso con stesso server e utente lo store restituisce una nuova istanza`() {
        val viewModelStore = ViewModelStore()
        val credentialStore = InMemoryCredentialStore(
            stored = StoredCredentials(
                server = server,
                username = username,
                password = password,
                serverCode = null,
            ),
        )
        val counter = SessionCounter()

        var firstSessionSignedOut = false
        val firstSessionId = counter.next()
        val firstKey = settingsSessionKey(firstSessionId, server, username)
        val firstVm = ViewModelProvider(
            viewModelStore,
            viewModelFactory {
                initializer {
                    newViewModel(
                        credentialStore = credentialStore,
                        onSignOut = { firstSessionSignedOut = true },
                    )
                }
            },
        ).get(firstKey, SettingsViewModel::class.java)
        ShadowLooper.idleMainLooper()
        assertEquals("Personalizzato", firstVm.ui.value.serverLabel)

        // Nuovo accesso dopo uscita: stesso server e stesso utente, ma con codice rubrica "001".
        credentialStore.stored = StoredCredentials(
            server = server,
            username = username,
            password = password,
            serverCode = "001",
        )
        var secondSessionSignedOut = false
        val secondSessionId = counter.next()
        val secondKey = settingsSessionKey(secondSessionId, server, username)
        val secondVm = ViewModelProvider(
            viewModelStore,
            viewModelFactory {
                initializer {
                    newViewModel(
                        credentialStore = credentialStore,
                        onSignOut = { secondSessionSignedOut = true },
                    )
                }
            },
        ).get(secondKey, SettingsViewModel::class.java)
        ShadowLooper.idleMainLooper()

        assertNotSame(firstVm, secondVm)
        assertEquals("001", secondVm.ui.value.serverLabel)

        // I callback della nuova istanza appartengono alla seconda sessione.
        secondVm.onExitConfirm()
        // onExitConfirm pulisce gli archivi su IO prima di chiamare onSignOut: attesa limitata.
        val deadline = System.currentTimeMillis() + 5_000
        while (!secondSessionSignedOut && System.currentTimeMillis() < deadline) {
            ShadowLooper.idleMainLooper()
            Thread.sleep(20)
        }
        assertFalse(firstSessionSignedOut)
        assertTrue(secondSessionSignedOut)

        viewModelStore.clear()
    }
}
