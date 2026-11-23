package it.felixvision.tv.data.m3u

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.sources.SourceIds
import java.security.MessageDigest

/**
 * Da voci M3U a catalogo Film.
 *
 * Tutte le voci di una lista sono film. Le categorie sono i `group-title`
 * nell'ordine di prima comparsa nel file; chi non ha gruppo finisce in
 * "Senza categoria". Dentro una categoria l'ordine è quello del file, che è
 * anche l'ordine di riproduzione delle voci.
 *
 * L'identificativo di una voce è stabile tra un aggiornamento e l'altro: hash
 * (SHA-256) del `tvg-id` quando c'è, altrimenti dell'indirizzo. Due voci con lo
 * stesso hash (per esempio lo stesso `tvg-id` ripetuto) vengono disambiguate
 * con un indice `-2`, `-3`, … nell'ordine del file.
 */
object M3uLibrary {

    /** Categoria delle voci senza `group-title`. */
    const val UNCATEGORIZED = "Senza categoria"

    /** Prefisso degli identificativi di categoria interni alla lista. */
    const val CATEGORY_ID_PREFIX = "m3u_cat_"

    /** Byte dell'hash usati nell'identificativo (16 caratteri esadecimali). */
    private const val HASH_BYTES = 8

    private val HEX = "0123456789abcdef".toCharArray()

    /** Estensioni riconosciute come contenitore della voce. */
    private val CONTAINER_EXTENSIONS =
        setOf("m3u8", "mp4", "mkv", "ts", "avi", "mov", "webm", "m4v", "mpg", "mpeg")

    /** Nomi delle categorie nell'ordine di prima comparsa. */
    fun categoryNames(entries: List<M3uEntry>): List<String> {
        val names = LinkedHashSet<String>()
        for (entry in entries) {
            names += entry.group?.takeIf { it.isNotBlank() } ?: UNCATEGORIZED
        }
        return names.toList()
    }

    /** Nome della categoria di una voce. */
    fun categoryNameOf(entry: M3uEntry): String =
        entry.group?.takeIf { it.isNotBlank() } ?: UNCATEGORIZED

    /**
     * Identificativo stabile della voce, senza prefisso di sorgente.
     * [duplicate] è 1 per la prima voce con un certo hash.
     */
    fun stableId(entry: M3uEntry, duplicate: Int = 1): String {
        val key = entry.tvgId?.takeIf { it.isNotBlank() } ?: entry.url
        val base = hash(key)
        return if (duplicate > 1) "$base-$duplicate" else base
    }

    /** Identificativo di categoria interno alla lista, per posizione. */
    fun categoryId(index: Int): String = "$CATEGORY_ID_PREFIX$index"

    /**
     * Catalogo Film della sola lista, con identificativi già legati alla
     * sorgente ([SourceIds.scoped]): `s2:<hash>` per le voci e
     * `s2:<m3u_cat_n>` per le categorie.
     */
    fun buildCatalog(sourceId: String, entries: List<M3uEntry>): Catalog {
        val names = categoryNames(entries)
        val categoryIndex = names.withIndex().associate { (index, name) -> name to index }
        val used = HashMap<String, Int>()
        val streams = ArrayList<VodStream>(entries.size)
        for (entry in entries) {
            val plainId = stableId(entry)
            val occurrence = (used[plainId] ?: 0) + 1
            used[plainId] = occurrence
            val localId = if (occurrence > 1) "$plainId-$occurrence" else plainId
            val name = categoryNameOf(entry)
            val localCategoryIndex = categoryIndex[name] ?: 0
            streams += VodStream(
                name = entry.title.ifBlank { M3uParser.UNTITLED },
                streamId = SourceIds.scoped(sourceId, localId),
                streamIcon = entry.logo,
                categoryId = SourceIds.scoped(sourceId, categoryId(localCategoryIndex)),
                containerExtension = containerExtension(entry.url),
            )
        }
        val categories = names.mapIndexed { index, name ->
            Category(
                categoryId = SourceIds.scoped(sourceId, categoryId(index)),
                categoryName = name,
            )
        }
        return Catalog(vodCategories = categories, vodStreams = streams)
    }

    /** Voce della lista corrispondente all'identificativo aggregato, se c'è. */
    fun entryFor(entries: List<M3uEntry>, sourceId: String, streamId: String): M3uEntry? {
        if (SourceIds.sourceOf(streamId) != sourceId) return null
        val localId = SourceIds.localOf(streamId)
        val used = HashMap<String, Int>()
        for (entry in entries) {
            val plainId = stableId(entry)
            val occurrence = (used[plainId] ?: 0) + 1
            used[plainId] = occurrence
            val candidate = if (occurrence > 1) "$plainId-$occurrence" else plainId
            if (candidate == localId) return entry
        }
        return null
    }

    /**
     * Indirizzo di riproduzione di ogni voce, per identificativo aggregato
     * (`s2:<hash>` → indirizzo). Serve al player, che per le voci M3U riproduce
     * l'indirizzo così com'è, senza costruirlo come per Xtream.
     */
    fun urlsById(entries: List<M3uEntry>, sourceId: String): Map<String, String> {
        val urls = LinkedHashMap<String, String>(entries.size)
        val used = HashMap<String, Int>()
        for (entry in entries) {
            val plainId = stableId(entry)
            val occurrence = (used[plainId] ?: 0) + 1
            used[plainId] = occurrence
            val localId = if (occurrence > 1) "$plainId-$occurrence" else plainId
            urls[SourceIds.scoped(sourceId, localId)] = entry.url
        }
        return urls
    }

    /**
     * Voci della categoria [categoryId] nell'ordine del file, come le vede il
     * player: identificativo aggregato e indirizzo diretto di ciascuna voce.
     */
    fun entriesInCategory(
        entries: List<M3uEntry>,
        sourceId: String,
        categoryId: String,
    ): List<Pair<VodStream, String>> {
        val catalog = buildCatalog(sourceId, entries)
        val streams = catalog.vodStreams.filter { it.categoryId == categoryId }
        if (streams.isEmpty()) return emptyList()
        val urls = urlsById(entries, sourceId)
        return streams.mapNotNull { stream -> urls[stream.streamId]?.let { stream to it } }
    }

    /** Estensione del contenitore ricavata dall'indirizzo, se riconosciuta. */
    fun containerExtension(url: String): String? {
        val path = url.substringBefore('?').substringBefore('#')
        val extension = path.substringAfterLast('.', "").lowercase()
        return extension.takeIf { it in CONTAINER_EXTENSIONS }
    }

    /** Hash esadecimale troncato: stabile tra dispositivi e versioni. */
    private fun hash(value: String): String {
        val digest = MessageDigest.getInstance("SHA-256").digest(value.toByteArray(Charsets.UTF_8))
        val chars = CharArray(HASH_BYTES * 2)
        for (index in 0 until HASH_BYTES) {
            val byte = digest[index].toInt() and 0xFF
            chars[index * 2] = HEX[byte shr 4]
            chars[index * 2 + 1] = HEX[byte and 0x0F]
        }
        return String(chars)
    }
}
