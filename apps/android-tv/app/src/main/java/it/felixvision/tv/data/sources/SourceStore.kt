package it.felixvision.tv.data.sources

import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.data.store.CredentialCipher
import it.felixvision.tv.data.store.CredentialCipherException
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.SecurePreferences
import it.felixvision.tv.data.store.StoredCredentials
import java.util.Base64
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/** Elenco delle sorgenti come sta su disco. */
interface SourceStore {

    /** Sorgenti usabili adesso, in ordine di etichetta (S1, S2, S3). */
    suspend fun load(): List<Source>

    /** Sostituisce l'elenco: al massimo [Sources.MAX_SOURCES] sorgenti. */
    suspend fun save(sources: List<Source>)
}

/**
 * Elenco delle sorgenti cifrato con la stessa chiave del Keystore usata per le
 * credenziali: il payload JSON (credenziali Xtream comprese) è cifrato con
 * [CredentialCipher] e salvato come Base64 in [SecurePreferences].
 *
 * ## Migrazione dal blob singolo
 *
 * Prima di questa versione l'app salvava un solo record in
 * `credentials_blob_v1`. Alla prima lettura, se la chiave nuova
 * `sources_blob_v1` non c'è, il vecchio blob viene decifrato e convertito in una
 * lista con l'account Xtream come **S1** (id e etichetta salvati, quindi mai
 * riassegnati). La chiave vecchia viene rimossa solo dopo che la lista nuova è
 * stata scritta: un errore in scrittura lascia intatti i dati di prima.
 *
 * Se la decifratura fallisce (chiave del Keystore persa dopo un ripristino) i
 * dati vengono eliminati e [load] restituisce un elenco vuoto: l'app torna alla
 * schermata di accesso, senza crash.
 *
 * ## Lista M3U
 *
 * L'indirizzo della lista non è salvato nell'elenco: arriva da [m3uUrl]
 * (variabile di compilazione `FVP_M3U_URL`). Vuoto vuol dire "la sorgente M3U
 * non esiste": la riga non compare e le voci salvate restano su disco, pronte
 * se la variabile torna a essere valorizzata.
 */
class EncryptedSourceStore(
    private val preferences: SecurePreferences,
    private val cipher: CredentialCipher,
    private val json: Json = FvpJson,
    private val m3uUrl: String = "",
    private val onDecryptionFailure: (Throwable) -> Unit = {},
) : SourceStore {

    /** Vero quando la compilazione prevede la lista M3U. */
    private val hasM3uUrl: Boolean get() = m3uUrl.isNotBlank()

    override suspend fun load(): List<Source> {
        val stored = readStored().orEmpty()
        val completed = ensureM3uSource(stored)
        if (completed != stored) writeStored(completed)
        // Senza indirizzo la sorgente M3U non esiste, anche se era salvata.
        return Sources.ordered(
            completed.filter { source -> source.type != SourceType.M3U || hasM3uUrl },
        )
    }

    override suspend fun save(sources: List<Source>) {
        writeStored(sanitize(sources))
    }

    /** Al massimo tre sorgenti, etichette uniche, M3U solo con indirizzo. */
    private fun sanitize(sources: List<Source>): List<Source> = sources
        .filter { source ->
            when (source.type) {
                SourceType.XTREAM -> source.xtream != null
                SourceType.M3U -> hasM3uUrl
            }
        }
        .distinctBy { it.id }
        .take(Sources.MAX_SOURCES)
        .map { source ->
            if (source.type == SourceType.M3U) source.copy(m3uUrl = m3uUrl) else source
        }

    /**
     * Aggiunge la riga M3U la prima volta che l'indirizzo è configurato:
     * l'etichetta assegnata alla creazione resta poi per sempre.
     */
    private fun ensureM3uSource(stored: List<Source>): List<Source> {
        if (!hasM3uUrl) return stored
        if (stored.any { it.type == SourceType.M3U }) {
            return stored.map { if (it.type == SourceType.M3U) it.copy(m3uUrl = m3uUrl) else it }
        }
        if (stored.size >= Sources.MAX_SOURCES) return stored
        val label = Sources.nextLabel(stored.map { it.label }) ?: return stored
        return stored + Source(
            id = Sources.newId(stored),
            type = SourceType.M3U,
            label = label,
            enabled = true,
            m3uUrl = m3uUrl,
        )
    }

    private suspend fun readStored(): List<Source>? {
        val encoded = preferences.read(KEY_SOURCES)
        if (encoded != null) return decode(encoded)
        val legacy = preferences.read(KEY_LEGACY_CREDENTIALS) ?: return null
        val migrated = migrateLegacy(legacy)
        if (migrated == null) {
            discardUnreadableData(IllegalStateException("Blob delle credenziali non valido"))
            return null
        }
        writeStored(migrated)
        // Solo ora il vecchio blob può sparire: la lista nuova è su disco.
        preferences.write(KEY_LEGACY_CREDENTIALS, null)
        return migrated
    }

    private fun decode(encoded: String): List<Source>? = try {
        val blob = Base64.getDecoder().decode(encoded)
        val plaintext = cipher.decrypt(blob)
        val record = json.decodeFromString<SourceListRecord>(plaintext.toString(Charsets.UTF_8))
        val sources = record.sources.mapNotNull { it.toSource() }
        sanitize(sources).ifEmpty { null }
    } catch (error: CredentialCipherException) {
        discardUnreadableData(error)
        null
    } catch (error: Exception) {
        discardUnreadableData(error)
        null
    }

    /** Vecchio blob singolo → account Xtream come S1. */
    private fun migrateLegacy(encoded: String): List<Source>? = try {
        val blob = Base64.getDecoder().decode(encoded)
        val plaintext = cipher.decrypt(blob)
        val legacy = json.decodeFromString<LegacyCredentialRecord>(plaintext.toString(Charsets.UTF_8))
        val credentials = legacy.toStoredCredentials() ?: return emptyList()
        listOf(
            Source(
                id = LEGACY_XTREAM_ID,
                type = SourceType.XTREAM,
                label = Sources.LABELS.first(),
                enabled = true,
                xtream = credentials,
            ),
        )
    } catch (error: Exception) {
        null
    }

    private suspend fun writeStored(sources: List<Source>) {
        val record = SourceListRecord(
            sources = sources.map { SourceRecord.from(it) },
        )
        val plaintext = json.encodeToString(record).toByteArray(Charsets.UTF_8)
        val blob = cipher.encrypt(plaintext)
        preferences.write(KEY_SOURCES, Base64.getEncoder().encodeToString(blob))
    }

    private suspend fun discardUnreadableData(error: Throwable) {
        onDecryptionFailure(error)
        preferences.write(KEY_SOURCES, null)
        preferences.write(KEY_LEGACY_CREDENTIALS, null)
    }

    @Serializable
    internal data class SourceRecord(
        val id: String,
        val type: String,
        val label: String,
        val enabled: Boolean = true,
        val server: String? = null,
        val username: String? = null,
        val password: String? = null,
        val serverCode: String? = null,
    ) {
        fun toSource(): Source? {
            val sourceType = SourceType.fromStorage(type) ?: return null
            if (id.isBlank() || label.isBlank()) return null
            val credentials = if (sourceType == SourceType.XTREAM) {
                if (server.isNullOrBlank() || username.isNullOrBlank() || password.isNullOrEmpty()) {
                    return null
                }
                StoredCredentials(
                    server = server,
                    username = username,
                    password = password,
                    serverCode = serverCode?.takeIf { it.isNotBlank() },
                )
            } else {
                null
            }
            return Source(
                id = id,
                type = sourceType,
                label = label,
                enabled = enabled,
                xtream = credentials,
            )
        }

        companion object {
            fun from(source: Source): SourceRecord = SourceRecord(
                id = source.id,
                type = source.type.storageKey,
                label = source.label,
                enabled = source.enabled,
                server = source.xtream?.server,
                username = source.xtream?.username,
                password = source.xtream?.password,
                serverCode = source.xtream?.serverCode,
            )
        }
    }

    @Serializable
    internal data class SourceListRecord(
        val version: Int = LIST_VERSION,
        val sources: List<SourceRecord> = emptyList(),
    )

    /** Forma del vecchio blob singolo (`credentials_blob_v1`). */
    @Serializable
    internal data class LegacyCredentialRecord(
        val server: String = "",
        val username: String = "",
        val password: String = "",
        val serverCode: String? = null,
    ) {
        fun toStoredCredentials(): StoredCredentials? {
            if (server.isBlank() || username.isBlank() || password.isEmpty()) return null
            return StoredCredentials(
                server = server,
                username = username,
                password = password,
                serverCode = serverCode?.takeIf { it.isNotBlank() },
            )
        }
    }

    companion object {

        /** Chiave dell'elenco delle sorgenti. */
        const val KEY_SOURCES = "sources_blob_v1"

        /** Chiave del blob singolo delle versioni precedenti (solo in lettura). */
        const val KEY_LEGACY_CREDENTIALS = "credentials_blob_v1"

        /** Identificativo dell'account Xtream migrato: resta S1 per sempre. */
        const val LEGACY_XTREAM_ID = "src1"

        /** Versione del formato dell'elenco. */
        const val LIST_VERSION = 2
    }
}

/**
 * [CredentialStore] appoggiato all'elenco delle sorgenti: l'accesso, il rinnovo
 * da remoto e l'uscita dall'account continuano a parlare di **un solo** account
 * Xtream, che qui è la sorgente di tipo [SourceType.XTREAM].
 *
 * - [load] restituisce le credenziali dell'account Xtream, se c'è;
 * - [save] aggiorna quelle credenziali senza toccare id ed etichetta della
 *   sorgente (o crea la sorgente con la prima etichetta libera);
 * - [clear] rimuove solo le sorgenti Xtream: la Lista M3U e il suo interruttore
 *   restano come sono.
 */
class XtreamCredentialStore(
    private val sources: SourceStore,
) : CredentialStore {

    override suspend fun load(): StoredCredentials? =
        Sources.primaryXtream(sources.load())?.xtream

    override suspend fun save(credentials: StoredCredentials) {
        val current = sources.load()
        val primary = Sources.primaryXtream(current)
        if (primary != null) {
            sources.save(current.map { if (it.id == primary.id) it.copy(xtream = credentials) else it })
            return
        }
        val label = Sources.nextLabel(current.map { it.label }) ?: return
        sources.save(
            current + Source(
                id = Sources.newId(current),
                type = SourceType.XTREAM,
                label = label,
                enabled = true,
                xtream = credentials,
            ),
        )
    }

    override suspend fun clear() {
        sources.save(sources.load().filter { it.type != SourceType.XTREAM })
    }
}
