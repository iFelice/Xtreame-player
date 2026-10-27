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
