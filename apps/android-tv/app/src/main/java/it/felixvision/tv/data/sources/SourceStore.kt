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

    /** Sostituisce l'elenco delle sorgenti (tetti per tipo, vedi [sanitize]). */
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
 * ## Liste M3U
 *
 * Gli indirizzi delle liste non sono salvati nell'elenco: arrivano da
 * [m3uUrls] (variabile di compilazione `FVP_M3U_URL`, uno o più separati da
 * virgola). Ogni lista è **una sorgente a sé** con la stessa etichetta di tipo
 * ("Lista M3U · S2", "Lista M3U · S3") e un identificativo ricavato dal solo
 * indirizzo, così l'etichetta assegnata alla creazione non cambia mai. Nessun
 * indirizzo vuol dire "le sorgenti M3U non esistono": le righe non compaiono e
 * quelle salvate restano su disco, pronte se la variabile torna a essere
 * valorizzata.
 */
class EncryptedSourceStore(
    private val preferences: SecurePreferences,
    private val cipher: CredentialCipher,
    private val json: Json = FvpJson,
    private val m3uUrls: () -> List<String> = { emptyList() },
    private val onDecryptionFailure: (Throwable) -> Unit = {},
) : SourceStore {

    /** Indirizzi delle liste attualmente configurate, senza vuoti né doppioni. */
    private fun configuredM3uUrls(): List<String> = m3uUrls()
        .map { it.trim() }
        .filter { it.isNotEmpty() }
        .distinct()

    /** Identificativo stabile → indirizzo di ogni lista configurata. */
    private fun configuredM3uIds(): Map<String, String> =
        configuredM3uUrls().associateBy { url -> Sources.m3uId(url) }

    override suspend fun load(): List<Source> {
        val stored = readStored().orEmpty()
        val normalized = normalizeM3uLabels(stored)
        val completed = ensureM3uSources(normalized)
        if (completed != stored) writeStored(completed)
        val configured = configuredM3uIds()
        // Senza indirizzo la lista non esiste, anche se la riga era salvata.
        return Sources.ordered(
            completed
                .filter { source -> source.type != SourceType.M3U || source.id in configured }
                .map { source ->
                    if (source.type == SourceType.M3U) {
                        source.copy(m3uUrl = configured[source.id])
                    } else {
                        source
                    }
                },
        )
    }

    override suspend fun save(sources: List<Source>) {
        writeStored(sanitize(sources))
    }

    /**
     * Al massimo [Sources.MAX_XTREAM_SOURCES] account Xtream; le liste M3U non
     * hanno un tetto, ma sul disco se ne tengono al massimo [MAX_STORED_LISTS]
     * (prima quelle configurate): le righe non più configurate restano così con
     * la loro etichetta, pronte se la lista torna nell'indice.
     */
    private fun sanitize(sources: List<Source>): List<Source> {
        val configured = configuredM3uIds()
        val xtream = sources
            .filter { it.type == SourceType.XTREAM && it.xtream != null }
            .distinctBy { it.id }
            .take(Sources.MAX_XTREAM_SOURCES)
        val lists = sources
            .filter { it.type == SourceType.M3U }
            .distinctBy { it.id }
            .sortedWith(
                compareBy<Source> { if (it.id in configured) 0 else 1 }
                    .thenBy { Sources.labelNumber(it.label) ?: Int.MAX_VALUE }
                    .thenBy { it.id },
            )
            .take(MAX_STORED_LISTS)
            .map { it.copy(m3uUrl = configured[it.id]) }
        return xtream + lists
    }

    /**
     * Aggiunge una riga per ogni lista configurata che non ce l'ha ancora: la
     * prima volta prende la prima etichetta `M` libera (`M1`, `M2`, …) e quella
     * resta per sempre. Le liste non hanno un tetto.
     */
    private fun ensureM3uSources(stored: List<Source>): List<Source> {
        val configured = configuredM3uIds()
        if (configured.isEmpty()) return stored
        val known = stored.filter { it.type == SourceType.M3U }.map { it.id }.toSet()
        val missing = configured.keys.filter { id -> id !in known }
        if (missing.isEmpty()) return stored
        val result = stored.toMutableList()
        for (id in missing) {
            val label = Sources.nextLabel(SourceType.M3U, result.map { it.label }) ?: break
            result += Source(
                id = id,
                type = SourceType.M3U,
                label = label,
                enabled = true,
                m3uUrl = configured[id],
            )
        }
        return result
    }

    /**
     * Migrazione delle etichette: le liste create da una versione precedente
     * avevano un'etichetta `S2`/`S3`. La lettera `S` è ora riservata agli
     * account Xtream, quindi le liste passano a `M1`, `M2`, … nell'ordine in
     * cui erano e da lì non cambiano più.
     */
    private fun normalizeM3uLabels(sources: List<Source>): List<Source> {
        val legacy = sources.withIndex().filter {
            it.value.type == SourceType.M3U && !Sources.isM3uLabel(it.value.label)
        }
        if (legacy.isEmpty()) return sources
        val result = sources.toMutableList()
        val taken = result
            .filter { it.type == SourceType.M3U && Sources.isM3uLabel(it.label) }
            .mapTo(HashSet()) { it.label }
        val ordered = legacy.sortedWith(
            compareBy<IndexedValue<Source>> { Sources.labelNumber(it.value.label) ?: Int.MAX_VALUE }
                .thenBy { it.value.id },
        )
        for ((index, source) in ordered) {
            val label = Sources.nextLabel(SourceType.M3U, taken) ?: continue
            taken += label
            result[index] = source.copy(label = label)
        }
        return result
    }

    private suspend fun readStored(): List<Source>? {
        val encoded = preferences.read(KEY_SOURCES)
        if (encoded != null) return decode(encoded)
        val legacy = preferences.read(KEY_LEGACY_CREDENTIALS) ?: return null
        val migrated = try {
            migrateLegacy(legacy)
        } catch (error: CredentialCipherException) {
            // Chiave del Keystore persa: i dati non sono leggibili, come per
            // l'elenco nuovo.
            discardUnreadableData(error)
            return null
        }
        if (migrated == null) {
            discardUnreadableData(IllegalStateException("Blob delle credenziali non valido"))
            return null
        }
        writeStored(migrated)
        // Solo ora il vecchio blob può sparire: la lista nuova è su disco.
        preferences.write(KEY_LEGACY_CREDENTIALS, null)
        return migrated
    }

    private suspend fun decode(encoded: String): List<Source>? = try {
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
                label = Sources.XTREAM_LABELS.first(),
                enabled = true,
                xtream = credentials,
            ),
        )
    } catch (error: CredentialCipherException) {
        throw error
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

        /**
         * Righe di liste M3U tenute su disco: le configurate più le ultime
         * rimaste, così un'etichetta `M<n>` non si perde quando una lista esce
         * temporaneamente dall'indice.
         */
        const val MAX_STORED_LISTS = 32
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
        val label = Sources.nextLabel(SourceType.XTREAM, current.map { it.label }) ?: return
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
