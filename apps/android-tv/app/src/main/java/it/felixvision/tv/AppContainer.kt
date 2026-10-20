package it.felixvision.tv

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.emptyPreferences
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.pairing.PairingClient
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.DataStoreSecurePreferences
import it.felixvision.tv.data.store.EncryptedCredentialStore
import it.felixvision.tv.data.store.KeystoreCredentialCipher
import it.felixvision.tv.data.xtream.XtreamClient
import java.io.File
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient

/**
 * Costruzione manuale delle dipendenze: niente framework di dependency
 * injection. Un'unica istanza per processo, creata da [FvpApplication].
 */
class AppContainer(private val context: Context) {

    val json = FvpJson
    val clock: Clock = SystemClock

    /** Un solo [OkHttpClient] per tutta l'app (vedi [HttpClientFactory]). */
    val httpClient: OkHttpClient by lazy { HttpClientFactory.create() }

    val xtreamClient: XtreamClient by lazy {
        XtreamClient(http = httpClient, json = json, clock = clock)
    }

    val pairingClient: PairingClient by lazy {
        PairingClient(
            http = httpClient,
            baseUrl = BuildConfig.PAIRING_RELAY_URL,
            json = json,
            clock = clock,
        )
    }

    val credentialStore: CredentialStore by lazy {
        EncryptedCredentialStore(
            preferences = DataStoreSecurePreferences(credentialPreferences),
            cipher = KeystoreCredentialCipher(),
            json = json,
        )
    }

    /** Macchina a stati del pannello di abbinamento, usata dal ViewModel di accesso. */
    fun newPairingCoordinator(): PairingCoordinator = PairingCoordinator(
        api = pairingClient,
        relayUrl = BuildConfig.PAIRING_RELAY_URL,
        clock = clock,
    )

    private val credentialPreferences by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_credentials.preferences_pb") },
        )
    }

    /**
     * Controllo in sottofondo del servizio di abbinamento, eseguito all'avvio
     * prima della prima creazione di una sessione.
     */
    fun checkPairingServiceHealth(scope: CoroutineScope) {
        scope.launch { pairingClient.healthCheck() }
    }
}
