package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream

/**
 * Selezione multipla per aggiungere o togliere canali da "I miei canali" in un
 * colpo solo, invece di ripetere la pressione lunga canale per canale.
 *
 * La selezione è una **lista ordinata di id**, non un insieme: l'ordine di
 * scelta è quello con cui i canali finiscono in fondo alla lista personale.
 * Le funzioni sono pure e restituiscono una lista nuova, così lo stato Compose
 * vede il cambiamento e le spunte si aggiornano da sole.
 *
 * La selezione contiene canali, non categorie: scegliere una categoria intera
 * significa scegliere tutti i suoi canali. Così il numero sul tasto
 * ("Aggiungi (12)") è sempre il numero vero di canali che si muovono, e togliere
 * un singolo canale da una categoria già scelta funziona senza casi speciali.
 */
object MyChannelSelection {

    /** Aggiunge o toglie un canale, tenendo l'ordine di scelta. */
    fun toggle(selected: List<String>, streamId: String): List<String> {
        if (streamId.isBlank()) return selected
        return if (streamId in selected) selected - streamId else selected + streamId
    }

    /**
     * Vero se **tutti** gli id sono scelti: è la condizione per la spunta piena
     * sull'intestazione. Un gruppo senza canali non è mai "tutto scelto".
     */
    fun containsAll(selected: List<String>, streamIds: List<String>): Boolean =
        streamIds.isNotEmpty() && streamIds.all { it in selected }

    /** Vero se almeno uno degli id è scelto (spunta parziale). */
    fun containsAny(selected: List<String>, streamIds: List<String>): Boolean =
        streamIds.any { it in selected }

    /**
     * Spunta o toglie un intero gruppo (categoria o intera lista personale).
     *
     * Se sono già tutti scelti li toglie tutti: la pressione lunga è un
     * interruttore, come nei Contenuti protetti. Altrimenti aggiunge quelli che
     * mancano, in coda, nell'ordine del catalogo.
     */
    fun toggleAll(selected: List<String>, streamIds: List<String>): List<String> {
        if (streamIds.isEmpty()) return selected
        return if (containsAll(selected, streamIds)) {
            val removing = streamIds.toSet()
            selected.filterNot { it in removing }
        } else {
            val missing = streamIds.filterNot { it in selected }
            selected + missing
        }
    }

    /**
     * Interruttore sull'intero elenco: se è già tutto scelto azzera la
     * selezione, altrimenti la porta a [all]. Serve alla riga "Tutti i canali".
     */
    fun toggleEvery(selected: List<String>, all: List<String>): List<String> =
        if (all.isNotEmpty() && all.all { it in selected }) emptyList() else all

    /** Toglie tutti gli id indicati; quelli assenti vengono ignorati. */
    fun removeAll(selected: List<String>, streamIds: Collection<String>): List<String> {
        if (streamIds.isEmpty()) return selected
        val removing = streamIds.toSet()
        return selected.filterNot { it in removing }
    }
}

/**
 * Risultato di una modifica in blocco, con l'elenco dei canali toccati: serve
 * a sapere dove riportare il focus e cosa raccontare nel log.
 */
data class MyChannelBulkResult(
    val channels: List<MyChannel>,
    /** Canali davvero aggiunti (quelli già presenti non compaiono). */
    val added: List<String> = emptyList(),
    /** Canali davvero tolti (quelli assenti non compaiono). */
    val removed: List<String> = emptyList(),
)

/**
 * Operazioni in blocco su "I miei canali", sopra le primitive di [MyChannels].
 *
 * Le regole sono quelle di sempre: un canale compare una sola volta e il numero
 * è la posizione (1..N), quindi aggiungere in fondo assegna automaticamente i
 * numeri successivi all'ultimo esistente.
 */
object MyChannelBulk {

    /**
     * Aggiunge [channels] **in fondo**, nell'ordine ricevuto; i canali già
     * presenti restano dove sono e non vengono duplicati.
     */
    fun addAll(
        current: List<MyChannel>,
        channels: List<MyChannel>,
    ): MyChannelBulkResult {
        var result = current
        val added = mutableListOf<String>()
        channels.forEach { channel ->
            if (MyChannels.contains(result, channel.streamId)) return@forEach
            result = MyChannels.add(result, channel)
            added += channel.streamId
        }
        return MyChannelBulkResult(channels = result, added = added)
    }

    /** Toglie [streamIds]; quelli assenti vengono ignorati. */
    fun removeAll(
        current: List<MyChannel>,
        streamIds: Collection<String>,
    ): MyChannelBulkResult {
        val present = streamIds.filter { MyChannels.contains(current, it) }
        if (present.isEmpty()) return MyChannelBulkResult(channels = current)
        val presentSet = present.toSet()
        val remaining = current.filterNot { it.streamId in presentSet }
        return MyChannelBulkResult(channels = remaining, removed = present)
    }
}

/** Nome mostrato per una categoria senza nome nel catalogo. */
const val MY_CHANNEL_UNNAMED_CATEGORY = "Senza nome"

/** Nome mostrato per i canali che il pannello manda senza categoria. */
const val MY_CHANNEL_NO_CATEGORY = "Altri canali"

/**
 * I canali di una categoria, nell'ordine del catalogo.
 *
 * Il catalogo Live è piatto (`categoryId` su ogni canale), quindi non serve
 * altro che filtrare: niente elenchi annidati da tenere allineati.
 */
fun liveStreamsOfCategory(streams: List<LiveStream>, categoryId: String?): List<LiveStream> =
    streams.filter { it.categoryId == categoryId }

/** Canale pronto per essere aggiunto, dalla voce di catalogo. */
fun LiveStream.toMyChannel(): MyChannel = MyChannel(
    streamId = streamId,
    name = name,
    logo = streamIcon,
)

/**
 * Un gruppo della pagina di scelta: l'intestazione di una categoria con i suoi
 * canali, come nei Contenuti protetti.
 *
 * Struttura pura (niente spunte dentro): lo stato "spuntato" si calcola dalla
 * selezione corrente con [checkedCount], [allChecked] e [someChecked], così non
 * esiste una copia della selezione che possa restare indietro.
 *
 * [categoryId] è `null` per il gruppo finale dei canali senza categoria.
 */
data class MyChannelPickerGroup(
    val categoryId: String?,
    val name: String,
    val streams: List<LiveStream>,
    /**
     * Canali di questa categoria che sono **già** in "I miei canali".
     *
     * Nell'aggiunta restano visibili, ma non si possono scegliere: sparire era
     * il modo più rapido per aggiungere due volte lo stesso canale senza
     * accorgersene. La pagina li mostra in fondo al gruppo, in grigio, con il
     * simbolo della TV. Nella rimozione è sempre vuota.
     */
    val alreadyMine: List<LiveStream> = emptyList(),
) {
    val total: Int get() = streams.size

    /** Canali già in "I miei canali" in questa categoria. */
    val alreadyMineIds: List<String> get() = alreadyMine.map { it.streamId }

    /** Canali del catalogo più quelli già miei: è il totale della riga. */
    val visibleTotal: Int get() = total + alreadyMine.size

    /** Canali che si possono ancora scegliere (quelli già miei esclusi). */
    val selectableTotal: Int get() = total

    /** Canali del gruppo nell'ordine del catalogo (o personale, in rimozione). */
    val streamIds: List<String> get() = streams.map { it.streamId }

    /** Vero se il canale è già in "I miei canali" (solo in aggiunta). */
    fun isAlreadyMine(streamId: String): Boolean =
        alreadyMine.any { it.streamId == streamId }

    /** Quanti canali del gruppo sono nella [selected]. */
    fun checkedCount(selected: Collection<String>): Int =
        streams.count { it.streamId in selected }

    /** Tutti i canali del gruppo sono scelti: spunta piena sull'intestazione. */
    fun allChecked(selected: Collection<String>): Boolean =
        total > 0 && checkedCount(selected) == total

    /** Almeno uno ma non tutti: spunta parziale sull'intestazione. */
    fun someChecked(selected: Collection<String>): Boolean {
        val count = checkedCount(selected)
        return count in 1 until total
    }
}

/**
 * Raggruppa i canali per categoria, tenendo l'ordine del catalogo.
 *
 * - le categorie con almeno un canale compaiono nell'ordine di [categories];
 * - i canali senza categoria, o con una categoria assente dal catalogo,
 *   finiscono in un gruppo finale "Altri canali", così nessun canale sfugge
 *   alla scelta multipla.
 *
 */
fun myChannelPickerGroups(
    categories: List<Category>,
    streams: List<LiveStream>,
    /**
     * Canali già in "I miei canali": restano nei gruppi come [MyChannelPickerGroup.alreadyMine],
     * così si vedono (con il simbolo della TV) invece di sparire dalla pagina.
     */
    mine: Set<String> = emptySet(),
): List<MyChannelPickerGroup> {
    val known = categories.map { it.categoryId }.toSet()
    val groups = mutableListOf<MyChannelPickerGroup>()
    val used = mutableSetOf<String>()
    // I già miei si tolgono dai selezionabili: una categoria che ha solo canali
    // già presenti resta visibile (tutta con la TV), altrimenti l'utente non
    // capirebbe dove sono finiti.
    fun groupOf(categoryId: String?, name: String, all: List<LiveStream>): MyChannelPickerGroup? {
        if (all.isEmpty()) return null
        val selectable = all.filterNot { it.streamId in mine }
        val already = all.filter { it.streamId in mine }
        if (selectable.isEmpty() && already.isEmpty()) return null
        return MyChannelPickerGroup(
            categoryId = categoryId,
            name = name,
            streams = selectable,
            alreadyMine = already,
        )
    }
    categories.forEach { category ->
        val id = category.categoryId
        // Un `category_id` ripetuto dal provider resterebbe una chiave
        // duplicata nella lista e la farebbe crashare: vale la prima.
        if (!used.add(id)) return@forEach
        groupOf(
            categoryId = id,
            name = category.categoryName?.takeIf { it.isNotBlank() } ?: MY_CHANNEL_UNNAMED_CATEGORY,
            all = liveStreamsOfCategory(streams, id),
        )?.let { groups += it }
    }
    val orphans = streams.filter { it.categoryId == null || it.categoryId !in known }
    groupOf(categoryId = null, name = MY_CHANNEL_NO_CATEGORY, all = orphans)?.let { groups += it }
    return groups
}

/**
 * I canali di "I miei canali" raggruppati per categoria del catalogo, per la
 * pagina "Rimuovi canali": i canali che non sono più nel catalogo (o che non
 * hanno categoria) restano in "Altri canali" e si possono togliere lo stesso.
 *
 * Un canale personale che il catalogo non conosce più resta selezionabile: non
 * deve esistere un canale impossibile da rimuovere dalla lista.
 */
fun myChannelRemovalGroups(
    channels: List<MyChannel>,
    categories: List<Category>,
    streams: List<LiveStream>,
): List<MyChannelPickerGroup> {
    val known = categories.associateBy { it.categoryId }
    // streamId -> categoryId del catalogo: la mappa serve a sapere sotto quale
    // intestazione finisce ogni canale personale.
    val categoryOfStream = streams
        .mapNotNull { stream -> stream.categoryId?.let { stream.streamId to it } }
        .toMap()
    val byCategory = LinkedHashMap<String?, MutableList<MyChannel>>()
    channels.forEach { channel ->
        val categoryId = categoryOfStream[channel.streamId]?.takeIf { it in known }
        byCategory.getOrPut(categoryId) { mutableListOf() } += channel
    }
    return byCategory.map { (categoryId, members) ->
        MyChannelPickerGroup(
            categoryId = categoryId,
            name = categoryId
                ?.let { known[it]?.categoryName?.takeIf { name -> name.isNotBlank() } }
                ?: MY_CHANNEL_NO_CATEGORY,
            // Per la rimozione conta l'ordine personale dei canali, non quello
            // del catalogo: è la numerazione che l'utente vede.
            streams = members.map { it.toLiveStreamPlaceholder() },
        )
    }
}

/**
 * Voce di catalogo fittizia per un canale personale che il catalogo non
 * conosce: serve solo a disegnare la riga e a portare id, nome e logo.
 */
private fun MyChannel.toLiveStreamPlaceholder(): LiveStream = LiveStream(
    name = name,
    streamId = streamId,
    streamIcon = logo,
)
