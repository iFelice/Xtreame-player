package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.favorites.FavoriteItem
import kotlinx.serialization.Serializable

/**
 * Un canale di "I miei canali": lo [streamId] per riprodurlo e i dati per
 * mostrarlo anche quando il catalogo non è ancora caricato.
 *
 * Il numero del canale non è salvato: è la sua posizione nella lista (1..N),
 * senza buchi.
 */
@Serializable
data class MyChannel(
    val streamId: String,
    val name: String,
    val logo: String? = null,
)

/**
 * Operazioni pure sulla lista ordinata di "I miei canali".
 *
 * Un canale compare una sola volta: tutte le operazioni che ricevono un canale
 * già presente lo spostano, senza duplicarlo. Le posizioni sono 1-based; una
 * posizione oltre la fine vale come ultimo posto.
 */
object MyChannels {

    fun indexOf(channels: List<MyChannel>, streamId: String): Int =
        channels.indexOfFirst { it.streamId == streamId }

    fun contains(channels: List<MyChannel>, streamId: String): Boolean =
        indexOf(channels, streamId) >= 0

    /** Numero personale del canale (1..N), `null` se non è nella lista. */
    fun numberOf(channels: List<MyChannel>, streamId: String): Int? {
        val index = indexOf(channels, streamId)
        return if (index < 0) null else index + 1
    }

    /** Canale alla posizione [number] (1-based); `null` se la posizione non esiste. */
    fun channelAt(channels: List<MyChannel>, number: Int): MyChannel? =
        if (number <= 0) null else channels.getOrNull(number - 1)

    /** Aggiunge in fondo; se il canale c'è già lo sposta in fondo. */
    fun add(channels: List<MyChannel>, channel: MyChannel): List<MyChannel> {
        val others = channels.filterNot { it.streamId == channel.streamId }
        return others + channel
    }

    /**
     * Inserisce [channel] alla posizione [position] (1-based): gli altri da
     * quella posizione in giù scalano di uno. Oltre la fine vale come fondo.
     */
    fun insertAt(channels: List<MyChannel>, channel: MyChannel, position: Int): List<MyChannel> {
        val others = channels.filterNot { it.streamId == channel.streamId }
        val index = targetIndex(position, others.size)
        return others.toMutableList().apply { add(index, channel) }
    }

    /**
     * Sposta il canale alla posizione [position]: rimosso e reinserito, gli
     * altri scalano. Un canale assente lascia la lista invariata.
     */
    fun moveTo(channels: List<MyChannel>, streamId: String, position: Int): List<MyChannel> {
        val current = indexOf(channels, streamId)
        if (current < 0) return channels
        val others = channels.filterIndexed { index, _ -> index != current }
        val index = targetIndex(position, others.size)
        if (index == current) return channels
        return others.toMutableList().apply { add(index, channels[current]) }
    }

    /** Sposta su di una posizione; il primo canale resta dov'è. */
    fun moveUp(channels: List<MyChannel>, streamId: String): List<MyChannel> {
        val current = indexOf(channels, streamId)
        if (current <= 0) return channels
        return channels.toMutableList().apply {
            val item = removeAt(current)
            add(current - 1, item)
        }
    }

    /** Sposta giù di una posizione; l'ultimo canale resta dov'è. */
    fun moveDown(channels: List<MyChannel>, streamId: String): List<MyChannel> {
        val current = indexOf(channels, streamId)
        if (current < 0 || current >= channels.size - 1) return channels
        return channels.toMutableList().apply {
            val item = removeAt(current)
            add(current + 1, item)
        }
    }

    /** Rimuove il canale: quelli sotto risalgono di una posizione. */
    fun remove(channels: List<MyChannel>, streamId: String): List<MyChannel> =
        channels.filterNot { it.streamId == streamId }

    /** Indice 0-based per una posizione 1-based, limitato a `0..size`. */
    fun targetIndex(position: Int, size: Int): Int =
        (position - 1).coerceIn(0, size.coerceAtLeast(0))
}

/**
 * Allineamento del player alla lista personale aggiornata mentre si guarda:
 * lo zapping resta la [channels] nuova, [index] è la posizione del canale in
 * onda (o, se non è più in lista, la posizione valida più vicina), [onAir] il
 * canale che deve restare in onda, [number] il suo numero personale (`null`
 * quando non è più nella lista) e [insertIndex] la posizione che il canale
 * occupava nella lista (`0..size`), da cui ripartono Su/Giù.
 */
data class MyChannelZapping(
    val channels: List<LiveStream>,
    val index: Int,
    val onAir: LiveStream?,
    val number: Int?,
    val insertIndex: Int,
)

/**
 * Canali Live nello stesso ordine di "I miei canali": i dati del catalogo
 * (numero del provider, categoria, guida) restano disponibili quando il canale
 * è già nel catalogo, altrimenti si usano nome e logo salvati.
 */
object MyChannelPlayback {

    fun streams(channels: List<MyChannel>, catalogStreams: List<LiveStream>): List<LiveStream> {
        val byId = catalogStreams.associateBy { it.streamId }
        return channels.map { mine ->
            val fromCatalog = byId[mine.streamId]
            if (fromCatalog == null) {
                LiveStream(
                    streamId = mine.streamId,
                    name = mine.name,
                    streamIcon = mine.logo,
                )
            } else {
                fromCatalog.copy(
                    name = mine.name.ifBlank { fromCatalog.name },
                    streamIcon = mine.logo ?: fromCatalog.streamIcon,
                )
            }
        }
    }

    /**
     * Allinea il player alla lista personale appena cambiata (aggiunta,
     * spostamento o rimozione dal menu del player).
     *
     * Il riferimento è sempre [onAir], il canale davvero in onda: se è già
     * stato tolto dalla lista, la posizione che occupa in [updated] è di un
     * altro canale e non va usata come riferimento. [positionHint] è la
     * posizione che occupava prima del cambio.
     *
     * - canale in onda presente nella lista nuova: resta in onda con il nuovo
     *   numero, cioè la sua nuova posizione (vale anche se era stato tolto e
     *   viene riaggiunto: `number` non è più `null`);
     * - canale in onda assente: resta in onda senza numero e [MyChannelZapping.insertIndex]
     *   è la posizione che occupava, da cui ripartono Su/Giù;
     * - lista nuova vuota: resta il canale in onda, senza numero.
     */
    fun sync(
        onAir: LiveStream?,
        positionHint: Int,
        updated: List<LiveStream>,
    ): MyChannelZapping {
        val position = if (onAir == null) -1 else updated.indexOfFirst { it.streamId == onAir.streamId }
        if (onAir == null) {
            // Nessun canale in onda: si resta sulla posizione valida più vicina.
            val index = positionHint.coerceIn(0, (updated.size - 1).coerceAtLeast(0))
            return MyChannelZapping(
                channels = updated,
                index = index,
                onAir = updated.getOrNull(index),
                number = if (updated.isEmpty()) null else index + 1,
                insertIndex = positionHint.coerceIn(0, updated.size),
            )
        }
        if (position >= 0) {
            return MyChannelZapping(
                channels = updated,
                index = position,
                onAir = onAir,
                number = position + 1,
                insertIndex = position,
            )
        }
        // Canale tolto dalla lista: resta in onda, senza numero, e Su/Giù
        // ripartono dalla posizione che occupava (0..size).
        val insertIndex = positionHint.coerceIn(0, updated.size)
        return MyChannelZapping(
            channels = updated,
            index = if (updated.isEmpty()) 0 else insertIndex.coerceIn(0, updated.size - 1),
            onAir = onAir,
            number = null,
            insertIndex = insertIndex,
        )
    }

    /**
     * Indice per Su/Giù mentre il canale in onda non è più nella lista
     * personale: si va al canale che stava subito sotto ([down]) o a quello
     * subito sopra, ripartendo dalla posizione che il canale occupava.
     * Circolare: sotto l'ultimo c'è il primo, sopra il primo c'è l'ultimo.
     */
    fun zapFromDetached(insertIndex: Int, size: Int, down: Boolean): Int {
        if (size <= 0) return 0
        val index = insertIndex.coerceIn(0, size)
        return if (down) {
            if (index >= size) 0 else index
        } else {
            if (index == 0) size - 1 else index - 1
        }
    }
}

/** Esito della rimozione dei vecchi preferiti Live alla prima apertura. */
data class LiveFavoritesMigration(
    val favorites: List<FavoriteItem>,
    val removed: Int,
) {
    val hasRemovals: Boolean get() = removed > 0
}

/**
 * I preferiti di tipo "live" non vengono migrati in "I miei canali": alla prima
 * apertura si tolgono dall'archivio preferiti. Film, serie e categorie Live
 * restano.
 */
object LiveFavoriteRules {

    fun withoutLiveChannels(favorites: List<FavoriteItem>): LiveFavoritesMigration {
        val remaining = favorites.filterNot { it.type == FavoriteItem.LIVE }
        return LiveFavoritesMigration(favorites = remaining, removed = favorites.size - remaining.size)
    }
}
