package it.felixvision.tv.data.sources

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Elenco delle sorgenti per l'interfaccia: lettura, interruttore "Mostra" e un
 * contatore di revisione che fa ricaricare catalogo e Impostazioni quando
 * l'elenco cambia (come per "I miei canali").
 */
class SourceRepository(
    private val store: SourceStore,
) {

    private val _revision = MutableStateFlow(0L)

    /** Incrementato dopo ogni modifica dell'elenco. */
    val revision: StateFlow<Long> = _revision.asStateFlow()

    /** Tutte le sorgenti, anche quelle disabilitate, in ordine di etichetta. */
    suspend fun sources(): List<Source> = Sources.ordered(store.load())

    /** Solo le sorgenti abilitate, in ordine di etichetta. */
    suspend fun enabledSources(): List<Source> =
        Sources.enabled(store.load())

    /**
     * Accende o spegne una sorgente. L'etichetta e l'identificativo non
     * cambiano: al prossimo avvio la sorgente resta S2 (per esempio).
     */
    suspend fun setEnabled(sourceId: String, enabled: Boolean) {
        val current = store.load()
        val updated = current.map { source ->
            if (source.id == sourceId) source.copy(enabled = enabled) else source
        }
        if (updated == current) return
        store.save(updated)
        _revision.value += 1L
    }

    /**
     * Elimina le righe delle liste che non hanno più un indirizzo **e** che non
     * hanno dati utente (preferiti, avanzamento, contenuti nascosti). Le righe
     * con dati restano salvate, quindi nascoste, come prima: se la lista
     * tornasse, preferiti e avanzamento sarebbero ancora lì.
     *
     * @param hasUserData vero se la sorgente ha dati utente da conservare.
     * @return vero se l'elenco è cambiato.
     */
    suspend fun cleanupOrphans(hasUserData: suspend (String) -> Boolean): Boolean {
        val visible = store.load()
        val visibleIds = visible.mapTo(HashSet(visible.size)) { it.id }
        val orphans = store.loadAll().filter { it.id !in visibleIds }
        if (orphans.isEmpty()) return false
        val kept = orphans.filter { source -> hasUserData(source.id) }
        if (kept.size == orphans.size) return false
        store.save(visible + kept)
        _revision.value += 1L
        return true
    }

    /** Notifica un cambiamento fatto altrove (per esempio dall'accesso). */
    fun notifyChanged() {
        _revision.value += 1L
    }
}
