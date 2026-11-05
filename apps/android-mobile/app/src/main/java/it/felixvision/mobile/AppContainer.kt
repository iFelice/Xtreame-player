package it.felixvision.mobile

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.emptyPreferences
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.SystemClock
import it.felixvision.mobile.data.catalog.CatalogDownloadInterceptor
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.catalog.CatalogClient
import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.continuewatching.ContinueWatchingStore
import it.felixvision.tv.data.epg.ChannelEpgClient
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.images.FvpImageLoader
import it.felixvision.tv.data.pairing.PairingClient
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.playback.PlaybackActivityTracker
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.DataStoreSecurePreferences
import it.felixvision.tv.data.store.EncryptedCredentialStore
import it.felixvision.tv.data.store.KeystoreCredentialCipher
import it.felixvision.tv.data.xtream.XtreamClient
import java.io.File
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient

/**
 * Costruzione manuale delle dipendenze: niente framework di dependency
 * injection. Un'unica istanza per processo, creata da [FvpApplication].
 *
 * Costruito con le stesse classi condivise della TV (data/ e core/), senza il
 * package `data.update` (aggiornamento in-app: PR4, package proprio del
 * tablet) e senza `data.volume` (gestione volume specifica della TV).
 */
class AppContainer(
    private val context: Context,
    credentialStoreOverride: CredentialStore? = null,
) {

    val json = FvpJson
    val clock: Clock = SystemClock

    /** Scope di processo per le scritture che devono sopravvivere alla UI. */
    val applicationScope: CoroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    /** Vero mentre questo tablet ha una riproduzione aperta. */
    val playbackActivity = PlaybackActivityTracker()

    /**
     * Avanzamento dei download del catalogo (get_live_streams, get_vod_streams,
     * get_series), misurato dall'interceptor qui sotto: lo osserva la finestra
     * di aggiornamento delle Impostazioni.
     */
    val catalogDownloadMonitor = CatalogDownloadMonitor()

    /**
     * Un solo [OkHttpClient] per tutta l'app (vedi [HttpClientFactory]), con in
     * più l'interceptor che misura i byte ricevuti dai download del catalogo:
     * è aggiunto QUI, solo al client del tablet, senza toccare il codice
     * condiviso della TV.
     */
    val httpClient: OkHttpClient by lazy {
        HttpClientFactory.create()
            .newBuilder()
            .addInterceptor(CatalogDownloadInterceptor(catalogDownloadMonitor))
            .build()
    }

    /** Client dedicato alle immagini: max 4 download simultanee, nessuna retry, cache 200MB via Coil. */
    val imageHttpClient: OkHttpClient by lazy { FvpImageLoader.createImageHttpClient() }

    val imageLoader by lazy { FvpImageLoader.create(context) }

    val xtreamClient: XtreamClient by lazy {
        XtreamClient(http = httpClient, json = json, clock = clock)
    }

    val channelEpgClient: ChannelEpgClient by lazy { ChannelEpgClient(http = httpClient, clock = clock) }

    /** Guida "in onda / a seguire": solo i canali richiesti, al massimo 4 richieste insieme. */
    val channelScheduleLoader: ChannelScheduleLoader by lazy {
        ChannelScheduleLoader(client = channelEpgClient)
    }

    val catalogClient: CatalogClient by lazy {
        CatalogClient(http = httpClient, json = json)
    }

    val catalogCache: CatalogCache by lazy {
        CatalogCache(context = context, json = json)
    }

    val favoritesStore: FavoritesStore by lazy {
        FavoritesStore(context = context, json = json, clock = clock)
    }

    val progressStore: ProgressStore by lazy {
        ProgressStore(context = context, json = json, clock = clock)
    }

    /** "I miei canali": lista personale numerata, una per server+utente. */
    val myChannelsStore: MyChannelsStore by lazy {
        MyChannelsStore(context = context, json = json, clock = clock)
    }

    /** Archivio "Continua a guardare": una voce per film e una per serie. */
    val continueWatchingStore: ContinueWatchingStore by lazy {
        ContinueWatchingStore(context = context, json = json, clock = clock)
    }

    /**
     * Contenuti protetti: PIN (solo hash PBKDF2, mai in chiaro) ed elenchi di
     * categorie e contenuti nascosti, per server+utente. Stessa classe
     * condivisa della TV ([ProtectedContentStore]), nessuna copia.
     */
    val protectedContentStore: ProtectedContentStore by lazy {
        ProtectedContentStore(context = context)
    }

    /**
     * Visibilità dei contenuti protetti: solo in memoria, spenta a ogni avvio.
     * Le schermate e il player osservano questa sessione condivisa.
     */
    val protectedSession: ProtectedSession by lazy {
        ProtectedSession(clock = clock)
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
        credentialStoreOverride ?: EncryptedCredentialStore(
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
