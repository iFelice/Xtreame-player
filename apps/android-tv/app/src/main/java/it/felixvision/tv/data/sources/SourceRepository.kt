package it.felixvision.tv.data.sources

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Elenco delle sorgenti per l'interfaccia: lettura, interruttore "Mostra",
 * interruttore generale delle liste M3U, ordine delle liste e un contatore di
 * revisione che fa ricaricare catalogo e Impostazioni quando l'elenco cambia
 * (come per "I miei canali").
 *
 * ## Ordine delle liste M3U
 *
 * La posizione di una lista **è il numero della sua etichetta**: `M1` sta in
 * prima riga, `M2` in seconda, e così via. Le liste accese stanno davanti, quelle
 * spente in coda; "Sposta su" / "Sposta giù" scambiano due vicine dello stesso
 * gruppo e poi i numeri si ricompattano da 1 a n. Vedi
 * [Sources.normalizeM3uPositions] e [Sources.moveM3u].
 */
class SourceRepository(
    private val store: SourceStore,
    private val listsVisibility: M3uListsVisibility = M3uListsVisibility.ALWAYS_VISIBLE,
) {

    private val _revision = MutableStateFlow(0L)

    /** Incrementato dopo ogni modifica dell'elenco. */
    val revision: StateFlow<Long> = _revision.asStateFlow()

    /** Tutte le sorgenti, anche quelle disabilitate, in ordine di etichetta (= posizione). */
    suspend fun sources(): List<Source> = Sources.ordered(store.load())

    /**
     * Righe delle liste M3U salvate su disco, comprese quelle che non sono più
     * nell'indice (e quindi non compaiono né qui né nel catalogo): servono al
     * Log, che dice perché sono sparite. La riga resta, con i suoi dati.
     */
    suspend fun storedM3uSources(): List<Source> =
        Sources.ordered(store.loadAll()).filter { it.type == SourceType.M3U }

    /** Vero se le liste M3U possono comparire nel catalogo (interruttore generale). */
    fun listsVisible(): Boolean = listsVisibility.listsVisible()

    /**
     * Solo le sorgenti abilitate, in ordine di etichetta. Con l'interruttore
     * generale spento non c'è nessuna lista M3U, anche se le singole liste
     * restano accese nelle Impostazioni.
     */
    suspend fun enabledSources(): List<Source> {
        val enabled = Sources.enabled(store.load())
        if (listsVisible()) return enabled
        return enabled.filter { it.type != SourceType.M3U }
    }

    /**
     * Accende o spegne una sorgente. Per le liste M3U la posizione cambia: la
     * lista va in coda al proprio gruppo (accese o spente) e i numeri si
     * ricompattano. Gli account Xtream tengono l'etichetta `S1`/`S2`/`S3`.
     */
    suspend fun setEnabled(sourceId: String, enabled: Boolean) {
        val current = store.load()
        if (current.none { it.id == sourceId }) return
        val updated = current.map { source ->
            when {
                source.id != sourceId -> source
                source.type == SourceType.M3U -> source.copy(
                    enabled = enabled,
                    label = Sources.appendM3uLabel(current.map { it.label }),
                )
                else -> source.copy(enabled = enabled)
            }
        }
        val normalized = Sources.normalizeM3uPositions(updated)
        if (Sources.ordered(normalized) == Sources.ordered(current)) return
        store.save(normalized)
        _revision.value += 1L
    }

    /** Interruttore generale "Mostra" delle liste M3U. */
    suspend fun setM3uListsVisible(visible: Boolean) {
        if (listsVisibility.listsVisible() == visible) return
        listsVisibility.setListsVisible(visible)
        _revision.value += 1L
    }

    /**
     * "Sposta su" / "Sposta giù" di una lista nella pagina "Liste M3U": scambia
     * la lista con la vicina dello stesso gruppo e ricompatta le posizioni.
     * Ai bordi del gruppo non cambia nulla.
     */
    suspend fun moveM3u(sourceId: String, up: Boolean) {
        val current = store.load()
        val moved = Sources.moveM3u(current, sourceId, up)
        if (moved == current) return
        store.save(moved)
        _revision.value += 1L
    }

    /**
     * Elimina le righe degli **account Xtream** che non sono più nell'elenco e
     * che non hanno dati utente (preferiti, avanzamento, contenuti nascosti).
     *
     * Le righe delle **liste M3U** non si eliminano mai: una lista che esce
     * dall'indice sparisce dall'elenco, ma la sua riga resta su disco (al
     * massimo 32, vedi `EncryptedSourceStore`), perché il Log
     * deve poter dire perché è sparita e perché, se la lista tornasse, le sue
     * scelte, i suoi preferiti e il suo avanzamento sarebbero ancora lì.
     *
     * @param hasUserData vero se la sorgente ha dati utente da conservare.
     * @return vero se l'elenco è cambiato.
     */
    suspend fun cleanupOrphans(hasUserData: suspend (String) -> Boolean): Boolean {
        val visible = store.load()
        val visibleIds = visible.mapTo(HashSet(visible.size)) { it.id }
        val orphans = store.loadAll().filter {
            it.id !in visibleIds && it.type == SourceType.XTREAM
        }
        if (orphans.isEmpty()) return false
        val kept = orphans.filter { source -> hasUserData(source.id) }
        if (kept.size == orphans.size) return false
        store.save(Sources.normalizeM3uPositions(visible + kept))
        _revision.value += 1L
        return true
    }

    /** Notifica un cambiamento fatto altrove (per esempio dall'accesso). */
    fun notifyChanged() {
        _revision.value += 1L
    }
}
