package it.felixvision.tv.data.backup

import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem
import java.security.MessageDigest
import java.security.SecureRandom
import java.util.Base64
import kotlinx.serialization.Serializable

/** Versione dell'unico formato di backup letto e scritto da questa app. */
const val BACKUP_FORMAT_VERSION = 1

/** Estensione del file di backup salvato dal telefono. */
const val BACKUP_FILE_EXTENSION = ".fvpbackup"

/** Lunghezza minima della password scelta sulla TV per cifrare il backup. */
const val BACKUP_MIN_PASSWORD_LENGTH = 8

/**
 * Configurazione VPN WireGuard inclusa nel backup: il testo `.conf` e il nome
 * mostrato nelle Impostazioni. Mai nei log: contiene la chiave privata.
 */
@Serializable
data class BackupVpn(
    val text: String,
    val serverName: String,
)

/**
 * Identificatore dell'account che ha creato il backup, senza possibilità di
 * risalire a server, username o password: [hash] è SHA-256 del sale seguìto
 * dalla coppia normalizzata `server|username`, entrambi in base64url.
 * Serve solo a rilevare se il backup proviene da un altro account.
 */
@Serializable
data class BackupAccountId(
    val salt: String,
    val hash: String,
) {
    override fun toString(): String = "BackupAccountId"
}

/**
 * Contenuto del backup, cifrato con la password prima di lasciare la TV.
 *
 * Incluso: preferiti, "I miei canali", categorie nascoste, contenuti singoli
 * nascosti (mai il PIN), avanzamento di visione con data di aggiornamento per
 * titolo e configurazione VPN. Esclusi: credenziali Xtream, PIN, formato e
 * dimensione dell'interfaccia, cache del catalogo.
 */
@Serializable
data class BackupData(
    val favorites: List<FavoriteItem> = emptyList(),
    val myChannels: List<MyChannel> = emptyList(),
    val hiddenCategories: List<HiddenCategory> = emptyList(),
    val hiddenItems: List<HiddenItem> = emptyList(),
    val progress: Map<String, WatchProgress> = emptyMap(),
    val vpn: BackupVpn? = null,
    val account: BackupAccountId,
) {
    override fun toString(): String = "BackupData"
}

/**
 * File di backup: l'involucro JSON con i parametri di derivazione e il
 * contenuto cifrato con la password (AES-GCM, vedi [BackupCrypto]).
 * Sale, nonce e testo cifrato sono in base64url senza padding.
 */
@Serializable
data class BackupEnvelope(
    val formatVersion: Int,
    val kdfSalt: String,
    val kdfIterations: Int,
    val nonce: String,
    val ciphertext: String,
) {
    override fun toString(): String = "BackupEnvelope(formatVersion=$formatVersion)"
}

object BackupAccountIds {

    /** Sale casuale per file: 16 byte, come il PIN. */
    const val SALT_BYTES = 16

    private val random = SecureRandom()

    /**
     * Identificatore per l'account [server]/[username] con un [salt] nuovo:
     * l'hash non permette di risalire ai valori di partenza.
     */
    fun forAccount(server: String, username: String, salt: ByteArray = randomSalt()): BackupAccountId {
        val normalized = normalizedAccount(server, username).toByteArray(Charsets.UTF_8)
        val digest = MessageDigest.getInstance("SHA-256")
        digest.update(salt)
        val hash = digest.digest(normalized)
        normalized.fill(0)
        return BackupAccountId(salt = encode(salt), hash = encode(hash))
    }

    /**
     * Vero quando [account] è stato creato per l'account [server]/[username]:
     * confronto a tempo costante, falso su dati malformati senza eccezioni.
     */
    fun matches(account: BackupAccountId, server: String, username: String): Boolean {
        val salt = decode(account.salt) ?: return false
        val expected = decode(account.hash) ?: return false
        val normalized = normalizedAccount(server, username).toByteArray(Charsets.UTF_8)
        val digest = MessageDigest.getInstance("SHA-256")
        digest.update(salt)
        val actual = digest.digest(normalized)
        normalized.fill(0)
        return MessageDigest.isEqual(expected, actual)
    }

    private fun normalizedAccount(server: String, username: String): String =
        "${server.lowercase().trim()}|${username.lowercase().trim()}"

    private fun randomSalt(): ByteArray = ByteArray(SALT_BYTES).also { random.nextBytes(it) }

    private fun encode(bytes: ByteArray): String =
        Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)

    private fun decode(value: String): ByteArray? = try {
        Base64.getUrlDecoder().decode(value.trim())
    } catch (_: IllegalArgumentException) {
        null
    }
}
