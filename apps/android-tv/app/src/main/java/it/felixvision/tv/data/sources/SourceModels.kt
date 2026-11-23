package it.felixvision.tv.data.sources

import java.security.MessageDigest

import it.felixvision.tv.data.store.StoredCredentials

/**
 * Tipo di sorgente del catalogo.
 *
 * In questa versione ne esistono due: l'account Xtream (uno solo, come oggi) e
 * la "Lista M3U" con indirizzo definito alla compilazione. Nessun altro tipo
 * (per esempio WebDAV) è previsto.
 */
enum class SourceType(val storageKey: String) {

    XTREAM("xtream"),

    M3U("m3u");

    companion object {
        /** Tipo salvato in [storageKey]; un valore sconosciuto vale `null`. */
        fun fromStorage(value: String?): SourceType? {
            val key = value?.trim()?.lowercase() ?: return null
            return entries.firstOrNull { it.storageKey == key }
        }
    }
}

/**
 * Una sorgente del catalogo.
 *
 * @property id identificativo stabile, assegnato alla creazione e mai riusato.
 * @property label etichetta visibile ("S1", "S2", "S3"), assegnata alla
 *   creazione e **mai riassegnata**: disabilitare o riabilitare una sorgente non
 *   cambia la sua etichetta.
 * @property enabled interruttore "Mostra" delle Impostazioni.
 * @property xtream credenziali dell'account Xtream (solo per [SourceType.XTREAM]).
 * @property m3uUrl indirizzo della lista M3U (solo per [SourceType.M3U]); arriva
 *   dalla compilazione ([it.felixvision.tv.data.sources.Sources.M3U_URL_ENV]) e
 *   non viene mai mostrato nell'interfaccia.
 */
data class Source(
    val id: String,
    val type: SourceType,
    val label: String,
    val enabled: Boolean = true,
    val xtream: StoredCredentials? = null,
    val m3uUrl: String? = null,
) {
    /** Rappresentazione sicura: né credenziali né indirizzo della lista. */
    override fun toString(): String =
        "Source(id=$id, type=$type, label=$label, enabled=$enabled)"
}

/** Regole comuni all'elenco delle sorgenti. */
object Sources {

    /** Massimo numero di sorgenti in totale, Lista M3U compresa. */
    const val MAX_SOURCES = 3

    /** Etichette disponibili, nell'ordine in cui vengono assegnate. */
    val LABELS: List<String> = listOf("S1", "S2", "S3")

    /** Separatore tra etichetta e nome nella categoria ("S2 · Film"). */
    const val LABEL_SEPARATOR = " · "

    /** Nome visibile del tipo di sorgente (mai l'indirizzo). */
    fun typeName(type: SourceType): String = when (type) {
        SourceType.XTREAM -> "Account Xtream"
        SourceType.M3U -> "Lista M3U"
    }

    /** Riga delle Impostazioni: "Account Xtream · S1" oppure "Lista M3U · S2". */
    fun rowTitle(source: Source): String =
        "${typeName(source.type)}$LABEL_SEPARATOR${source.label}"

    /** Stato mostrato accanto all'interruttore. */
    fun statusLabel(source: Source): String =
        if (source.enabled) "Abilitata" else "Disabilitata"

    /** Posizione dell'etichetta nell'ordine canonico (le ignote vanno in coda). */
    fun labelIndex(label: String): Int =
        LABELS.indexOf(label).let { if (it < 0) LABELS.size else it }

    /** Sorgenti nell'ordine delle etichette: S1, S2, S3. */
    fun ordered(sources: List<Source>): List<Source> =
        sources.sortedWith(compareBy({ labelIndex(it.label) }, { it.id }))

    /** Solo le sorgenti abilitate, in ordine di etichetta. */
    fun enabled(sources: List<Source>): List<Source> = ordered(sources).filter { it.enabled }

    /** Prima etichetta libera, oppure `null` quando le tre sono tutte occupate. */
    fun nextLabel(taken: Collection<String>): String? =
        LABELS.firstOrNull { label -> taken.none { it == label } }

    /**
     * Identificativo nuovo e stabile: `src1`, `src2`, … senza riusare quelli
     * già presenti.
     */
    fun newId(existing: Collection<Source>): String {
        val used = existing.mapTo(HashSet()) { it.id }
        var index = existing.size + 1
        while ("src$index" in used) index += 1
        return "src$index"
    }

    /** L'account Xtream (uno solo in questa versione), in ordine di etichetta. */
    fun primaryXtream(sources: List<Source>): Source? =
        ordered(sources).firstOrNull { it.type == SourceType.XTREAM }

    /**
     * Le liste M3U configurate, in ordine di etichetta: una sorgente per ogni
     * `playlist.m3u` previsto alla compilazione (al massimo quante ne stanno
     * nelle tre sorgenti, quindi due con l'account Xtream).
     */
    fun m3uSources(sources: List<Source>): List<Source> =
        ordered(sources).filter { it.type == SourceType.M3U }

    /**
     * Identificativo **stabile** di una lista M3U, ricavato dal solo indirizzo:
     * riordinare o rinominare i file nella variabile di compilazione non cambia
     * id, quindi etichette, ordinamenti e archivi restano attaccati alla lista
     * giusta.
     */
    fun m3uId(url: String): String {
        val digest = MessageDigest.getInstance("SHA-256").digest(url.trim().toByteArray(Charsets.UTF_8))
        val hex = digest.take(5).joinToString("") { byte ->
            (byte.toInt() and 0xff).toString(16).padStart(2, '0')
        }
        return "m3u_$hex"
    }

    /**
     * Indirizzi M3U dalla variabile di compilazione `FVP_M3U_URL`: uno solo
     * oppure più di uno separati da virgola, punto e virgola o a capo. Vuoto
     * vuol dire "nessuna lista".
     */
    fun parseM3uUrls(value: String): List<String> =
        value.split(Regex("[,;\\s]+"))
            .map { it.trim() }
            .filter { it.isNotEmpty() }
            .distinct()
}

/**
 * Identificativi aggregati.
 *
 * Le voci di una sorgente che non è l'account Xtream portano il proprio
 * `sourceId` dentro l'identificativo (`s2:9f3c…`), così restano univoche anche
 * con più sorgenti e non dipendono da quali sorgenti sono abilitate. Le voci
 * dell'account Xtream restano identiche a prima: preferiti, avanzamento e
 * "Riprendi" già salvati continuano a valere senza migrazioni.
 */
object SourceIds {

    const val SEPARATOR = ":"

    /** Identificativo della voce [localId] nella sorgente [sourceId]. */
    fun scoped(sourceId: String, localId: String): String =
        if (sourceId.isEmpty() || localId.isEmpty()) localId else "$sourceId$SEPARATOR$localId"

    /** Vero quando l'identificativo porta il `sourceId` (voci non Xtream). */
    fun isScoped(id: String): Boolean = id.contains(SEPARATOR)

    /** Sorgente proprietaria dell'identificativo, `null` per le voci Xtream. */
    fun sourceOf(id: String): String? =
        id.takeIf { isScoped(it) }?.substringBefore(SEPARATOR)?.takeIf { it.isNotEmpty() }

    /** Identificativo interno alla sorgente (quello originale). */
    fun localOf(id: String): String =
        if (isScoped(id)) id.substringAfter(SEPARATOR) else id
}

/**
 * Partizione degli archivi per server+utente.
 *
 * L'account Xtream continua a usare la coppia server+utente dell'accesso (le
 * chiavi su disco restano identiche). Le sorgenti M3U non hanno utente: usano
 * un "server" convenzionale `m3u:<id>` e utente vuoto, quindi archivi separati
 * e nessuna collisione con le chiavi esistenti.
 */
data class SourceAccount(val server: String, val username: String) {

    companion object {

        const val M3U_PREFIX = "m3u:"

        /** Partizione della voce della [source] nella sessione corrente. */
        fun of(source: Source, sessionServer: String, sessionUsername: String): SourceAccount =
            when (source.type) {
                SourceType.XTREAM -> SourceAccount(sessionServer, sessionUsername)
                SourceType.M3U -> forM3u(source.id)
            }

        /** Partizione di una sorgente M3U. */
        fun forM3u(sourceId: String): SourceAccount = SourceAccount("$M3U_PREFIX$sourceId", "")
    }
}
