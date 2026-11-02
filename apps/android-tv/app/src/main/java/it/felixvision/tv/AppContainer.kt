package it.felixvision.tv

import android.content.Context
import com.wireguard.android.backend.GoBackend
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.emptyPreferences
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.catalog.CatalogClient
import it.felixvision.tv.data.continuewatching.ContinueWatchingStore
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.epg.ChannelEpgClient
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.images.CacheCleanup
import it.felixvision.tv.data.images.FvpImageLoader
import it.felixvision.tv.data.pairing.PairingClient
import it.felixvision.tv.data.pairing.PairingCoordinator
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.playback.ChannelVideoFormatStore
import it.felixvision.tv.data.playback.PlaybackActivityTracker
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.DataStoreSecurePreferences
import it.felixvision.tv.data.store.EncryptedCredentialStore
import it.felixvision.tv.data.store.KeystoreCredentialCipher
import it.felixvision.tv.data.update.AndroidUpdateInstaller
import it.felixvision.tv.data.update.GithubUpdateClient
import it.felixvision.tv.data.update.UpdateChecker
import it.felixvision.tv.data.update.UpdateClient
import it.felixvision.tv.data.update.UpdateInstaller
import it.felixvision.tv.data.update.isDebugVersion
import it.felixvision.tv.data.volume.VolumeStore
import it.felixvision.tv.data.xtream.XtreamClient
import it.felixvision.tv.player.PlayerPreferences
import it.felixvision.tv.ui.settings.InterfaceSizeStore
import it.felixvision.tv.vpn.KeystoreVpnConfigCipher
import it.felixvision.tv.vpn.VpnController
import it.felixvision.tv.vpn.VpnRelayClient
import it.felixvision.tv.vpn.VpnStore
import java.io.File
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient

/**
 * Costruzione manuale delle dipendenze: niente framework di dependency
 * injection. Un'unica istanza per processo, creata da [FvpApplication].
 */
class AppContainer(
    private val context: Context,
    credentialStoreOverride: CredentialStore? = null,
    updateClientOverride: UpdateClient? = null,
    updateInstallerOverride: UpdateInstaller? = null,
) {

    val json = FvpJson
    val clock: Clock = SystemClock

    /** Scope di processo per le scritture che devono sopravvivere alla UI (avanzamento player). */
    val applicationScope: CoroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    /** Vero mentre questa TV ha una riproduzione aperta. */
    val playbackActivity = PlaybackActivityTracker()

    /** Un solo [OkHttpClient] per tutta l'app (vedi [HttpClientFactory]). */
    val httpClient: OkHttpClient by lazy { HttpClientFactory.create() }

    /** Client dedicato alle immagini: max 4 download simultanee, nessuna retry, cache 200MB via Coil. */
    val imageHttpClient: OkHttpClient by lazy { FvpImageLoader.createImageHttpClient() }

    val imageLoader by lazy { FvpImageLoader.create(context) }

    /**
     * Cartella della cache su disco delle immagini (`cacheDir/fvp_images`): la
     * pagina Catalogo delle Impostazioni ne mostra lo spazio occupato e la
     * svuota (vedi [CacheCleanup]).
     */
    val imageCacheDir: File get() = CacheCleanup.imageCacheDir(context.cacheDir)

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

    /** "I miei canali": lista personale numerata, una per server+utente. */
    val myChannelsStore: MyChannelsStore by lazy {
        MyChannelsStore(context = context, json = json, clock = clock)
    }

    val progressStore: ProgressStore by lazy {
        ProgressStore(context = context, json = json, clock = clock)
    }

    /** Contenuti per adulti: PIN (solo hash) ed elenchi nascosti, per server+utente. */
    val protectedContentStore: ProtectedContentStore by lazy {
        ProtectedContentStore(context = context)
    }

    /**
     * Visibilità dei contenuti protetti: solo in memoria, spenta a ogni avvio.
     * In questa fase comanda soltanto la pagina "Contenuti protetti".
     */
    val protectedSession: ProtectedSession by lazy {
        ProtectedSession(clock = clock)
    }

    /** Livello del volume del player (0-15), ripristinato a ogni avvio. */
    val volumeStore: VolumeStore by lazy {
        VolumeStore(context = context)
    }

    /**
     * Dimensione dell'interfaccia scelta nelle Impostazioni (predefinita
     * "Compatta"). Letta in modo sincrono all'avvio, così il primo fotogramma
     * ha già la misura giusta.
     */
    val interfaceSizeStore: InterfaceSizeStore by lazy {
        InterfaceSizeStore(context)
    }

    /** Formato dello schermo scelto per ogni canale Live, per server+utente. */
    val channelVideoFormatStore: ChannelVideoFormatStore by lazy {
        ChannelVideoFormatStore(context = context)
    }

    /**
     * Preferenze del player TV (`fvp_player`): per ora l'intervallo dello
     * zapping automatico. Pacchetto solo TV, mai `data/` o `core/`.
     */
    val playerPreferences: PlayerPreferences by lazy {
        PlayerPreferences(context = context)
    }

    /** Archivio "Continua a guardare": una voce per film e una per serie. */
    val continueWatchingStore: ContinueWatchingStore by lazy {
        ContinueWatchingStore(context = context, json = json, clock = clock)
    }

    val pairingClient: PairingClient by lazy {
        PairingClient(
            http = httpClient,
            baseUrl = BuildConfig.PAIRING_RELAY_URL,
            json = json,
            clock = clock,
        )
    }

    /** Trasferimento della configurazione VPN dal telefono, sul canale cifrato del relay. */
    val vpnRelayClient: VpnRelayClient by lazy {
        VpnRelayClient(
            http = httpClient,
            baseUrl = BuildConfig.PAIRING_RELAY_URL,
            json = json,
        )
    }

    /**
     * VPN WireGuard di FelixVP: un solo controller per processo, creato al
     * primo uso. Il backend WireGuard (libreria nativa) nasce solo al primo
     * avvio del tunnel, mai alla costruzione.
     */
    val vpnController: VpnController by lazy {
        VpnController(
            context = context,
            store = VpnStore(context = context, cipher = KeystoreVpnConfigCipher()),
            httpClient = httpClient,
            imageHttpClient = imageHttpClient,
            scope = applicationScope,
            clock = clock,
            backendFactory = { GoBackend(context.applicationContext) },
            relayBaseUrl = BuildConfig.PAIRING_RELAY_URL,
        )
    }

    val updateClient: UpdateClient by lazy {
        updateClientOverride ?: GithubUpdateClient(
            http = httpClient,
            json = json,
        )
    }

    val updateInstaller: UpdateInstaller by lazy {
        updateInstallerOverride ?: AndroidUpdateInstaller(context = context)
    }

    /**
     * Controllo unico degli aggiornamenti, a livello di app: un solo flusso di
     * stato osservato sia dal menu laterale sia dalle Impostazioni, così non ci
     * sono richieste duplicate. Vive nello scope di applicazione.
     */
    val updateChecker: UpdateChecker by lazy {
        UpdateChecker(
            client = updateClient,
            currentVersion = BuildConfig.VERSION_NAME,
            scope = applicationScope,
            isDebugBuild = BuildConfig.DEBUG || isDebugVersion(BuildConfig.VERSION_NAME),
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

    /** Elimina eventuali APK scaricati rimasti da un aggiornamento precedente. */
    fun cleanupDownloadedUpdates(scope: CoroutineScope) {
        scope.launch { updateInstaller.cleanupDownloadedFiles() }
    }
}
