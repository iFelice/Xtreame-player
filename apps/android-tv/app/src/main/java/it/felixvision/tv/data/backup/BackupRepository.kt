package it.felixvision.tv.data.backup

import it.felixvision.tv.data.channels.MyChannelsStore
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.data.progress.ProgressStore
import it.felixvision.tv.data.protection.ProtectedContentStore
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * Raccolta, cifratura e applicazione del backup. Tutto gira su [io]: letture
 * dagli archivi, derivazione PBKDF2 e scritture non toccano mai il thread
 * principale.
 *
 * La VPN non sta in `data/` ma nel controller della TV: entra ed esce come
 * parametro ([BackupVpn] in raccolta, `saveVpn` in applicazione), così questo
 * tipo resta compilabile anche dall'app mobile.
 */
class BackupRepository(
    private val favorites: FavoritesStore,
    private val myChannels: MyChannelsStore,
    private val progress: ProgressStore,
    private val protectedContent: ProtectedContentStore,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    /**
     * Raccoglie i dati dell'account da includere nel backup. [vpn] è la
     * configurazione attiva della TV (`null` quando non ce n'è una).
     */
    suspend fun collectBackup(server: String, username: String, vpn: BackupVpn?): BackupData =
        withContext(io) {
            val protected = protectedContent.get(server, username)
            BackupData(
                favorites = favorites.getFavorites(server, username),
                myChannels = myChannels.getChannels(server, username),
                hiddenCategories = protected.hiddenCategories,
                hiddenItems = protected.hiddenItems,
                progress = progress.getAll(server, username),
                vpn = vpn,
                account = BackupAccountIds.forAccount(server, username),
            )
        }

    /**
     * Cifra il backup con la password e restituisce il testo del file
     * `.fvpbackup` da depositare sul relay.
     */
    suspend fun encryptBackup(password: String, data: BackupData): String =
        withContext(io) {
            val plaintext = BackupCodec.encodeData(data)
            try {
                BackupCodec.encodeEnvelope(BackupCrypto.encrypt(password, plaintext))
            } finally {
                plaintext.fill(0)
            }
        }

    /**
     * Legge e decifra il file di backup con la password.
     *
     * @throws BackupFormatException file non riconosciuto o versione più
     *   recente (vedi [BackupFormatException.Kind]).
     * @throws BackupCryptoException password errata o file alterato.
     * @throws BackupTransferException file di trasporto non valido: solo
     *   quando il chiamante passa i dati già decifrati dal trasporto, mai qui.
     */
    suspend fun decryptBackup(password: String, fileText: String): BackupData =
        withContext(io) {
            val envelope = BackupCodec.decodeEnvelope(fileText)
            val plaintext = BackupCrypto.decrypt(password, envelope)
            try {
                BackupCodec.decodeData(plaintext)
            } finally {
                plaintext.fill(0)
            }
        }

    /**
     * Applica l'unione del backup decifrato agli archivi della TV, secondo le
     * regole di [BackupMerge]: nulla di esistente viene cancellato.
     *
     * Il chiamante ha già chiesto le conferme dovute (altro account, VPN
     * presente) e ha già fatto creare il PIN quando serviva: qui [importVpn]
     * dice se salvare la VPN del backup tramite [saveVpn], che verifica e
     * salva la configurazione e restituisce `false` se non riesce (il resto
     * dell'unione resta comunque applicato).
     */
    suspend fun applyImport(
        server: String,
        username: String,
        data: BackupData,
        importVpn: Boolean,
        saveVpn: suspend (text: String, serverName: String) -> Boolean,
    ): BackupSummary = withContext(io) {
        val currentFavorites = favorites.getFavorites(server, username)
        val favoritesMerge = BackupMerge.mergeFavorites(currentFavorites, data.favorites)
        val favoritesAdded = if (favoritesMerge.added > 0) {
            favorites.addFavorites(server, username, data.favorites)
        } else {
            0
        }

        val currentChannels = myChannels.getChannels(server, username)
        val channelsMerge = BackupMerge.mergeMyChannels(currentChannels, data.myChannels)
        val channelsAdded = if (channelsMerge.added > 0) {
            myChannels.setChannels(server, username, channelsMerge.merged)
            channelsMerge.added
        } else {
            0
        }

        val currentProtected = protectedContent.get(server, username)
        val categoriesMerge = BackupMerge.mergeHiddenCategories(currentProtected.hiddenCategories, data.hiddenCategories)
        val itemsMerge = BackupMerge.mergeHiddenItems(currentProtected.hiddenItems, data.hiddenItems)
        val hiddenAdded = if (categoriesMerge.added > 0 || itemsMerge.added > 0) {
            protectedContent.unionHidden(server, username, data.hiddenCategories, data.hiddenItems)
        } else {
            0
        }

        val currentProgress = progress.getAll(server, username)
        val progressMerge = BackupMerge.mergeProgress(currentProgress, data.progress)
        if (progressMerge.added > 0 || progressMerge.updated > 0) {
            progress.putAll(server, username, progressMerge.merged)
        }

        val backupVpn = data.vpn
        val vpnImported = importVpn && backupVpn != null &&
            saveVpn(backupVpn.text, backupVpn.serverName)

        BackupSummary(
            favoritesAdded = favoritesAdded,
            channelsAdded = channelsAdded,
            hiddenAdded = hiddenAdded,
            progressAdded = progressMerge.added,
            progressUpdated = progressMerge.updated,
            vpnImported = vpnImported,
        )
    }
}
