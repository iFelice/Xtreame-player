package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import it.felixvision.tv.player.PlayerPreferences
import it.felixvision.tv.player.ZappingSeconds
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Durata dello zapping nello stato delle Impostazioni: [SettingsViewModel]
 * tiene il valore in uno `StateFlow` osservato dalla schermata, così la riga di
 * stato della card Player si aggiorna appena la pagina la cambia, senza rileggere
 * l'archivio durante la composizione.
 *
 * Nessun server reale: [AppContainer] è quello vero ma nessun test fa rete.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class SettingsZappingSecondsStateTest {

    /** Archivio credenziali in memoria: qui non serve a nulla, ma evita il disco. */
    private class InMemoryCredentialStore : CredentialStore {
        override suspend fun load(): StoredCredentials? = null
        override suspend fun save(credentials: StoredCredentials) = Unit
        override suspend fun clear() = Unit
    }

    /** Preferenze del player su un archivio pulito, come a un primo avvio. */
    private fun freshPreferences(): PlayerPreferences {
        val context = ApplicationProvider.getApplicationContext<Context>()
        context.getSharedPreferences(PlayerPreferences.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .edit().clear().commit()
        return PlayerPreferences(context)
    }

    private fun newViewModel(preferences: PlayerPreferences): SettingsViewModel {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val container = AppContainer(
            context = context,
            credentialStoreOverride = InMemoryCredentialStore(),
            playerPreferencesOverride = preferences,
        )
        return SettingsViewModel(
            container = container,
            server = "http://server.esempio:8080",
            username = "demo",
            password = "demo",
            expiresAtEpochSeconds = null,
            status = "Attivo",
            maxConnections = null,
            activeConnections = null,
            onCredentialsReplaced = { _, _, _ -> },
            onSignOut = {},
            credentialStore = InMemoryCredentialStore(),
        )
    }

    @Test
    fun `lo stato parte dal valore salvato e onZappingSecondsSelected lo salva e lo pubblica`() {
        val preferences = freshPreferences()
        preferences.zappingSeconds = 12
        val viewModel = newViewModel(preferences)

        // Lo stato osservato parte dal valore già in archivio.
        assertEquals(12, viewModel.zappingSeconds.value)

        viewModel.onZappingSecondsSelected(37)
        assertEquals(37, viewModel.zappingSeconds.value)
        assertEquals(37, preferences.zappingSeconds)

        // Lo stesso valore si rilegge da capo: è salvato, non solo mostrato.
        assertEquals(37, PlayerPreferences(ApplicationProvider.getApplicationContext()).zappingSeconds)
    }

    @Test
    fun `un valore fuori dall intervallo diventa il predefinito anche nello stato`() {
        val preferences = freshPreferences()
        val viewModel = newViewModel(preferences)

        viewModel.onZappingSecondsSelected(120)
        assertEquals(120, viewModel.zappingSeconds.value)

        // PlayerPreferences normalizza: lo stato pubblicato è quello salvato.
        viewModel.onZappingSecondsSelected(121)
        assertEquals(ZappingSeconds.DEFAULT, viewModel.zappingSeconds.value)
        assertEquals(ZappingSeconds.DEFAULT, preferences.zappingSeconds)
    }
}
