package it.felixvision.mobile.ui.components

import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.snapshotFlow
import it.felixvision.mobile.ui.catalog.SectionStateStore

/**
 * Liste e griglie con posizione conservata nella [SectionStateStore] del
 * ViewModel: la posizione sopravvive al cambio di sezione e alla rotazione
 * dello schermo (il composable viene ricomposto, il ViewModel resta).
 *
 * Alla prima composizione la lista parte dalla posizione salvata; ogni mossa
 * di scorrimento aggiorna lo store.
 */
@Composable
fun rememberSectionListState(store: SectionStateStore, key: String): LazyListState {
    val saved = store.scrollPosition(key)
    val state = rememberLazyListState(
        initialFirstVisibleItemIndex = saved.index,
        initialFirstVisibleItemScrollOffset = saved.offset,
    )
    LaunchedEffect(state, store, key) {
        snapshotFlow { state.firstVisibleItemIndex to state.firstVisibleItemScrollOffset }
            .collect { (index, offset) -> store.saveScroll(key, index, offset) }
    }
    return state
}

/** Variante griglia di [rememberSectionListState]. */
@Composable
fun rememberSectionGridState(store: SectionStateStore, key: String): LazyGridState {
    val saved = store.scrollPosition(key)
    val state = rememberLazyGridState(
        initialFirstVisibleItemIndex = saved.index,
        initialFirstVisibleItemScrollOffset = saved.offset,
    )
    LaunchedEffect(state, store, key) {
        snapshotFlow { state.firstVisibleItemIndex to state.firstVisibleItemScrollOffset }
            .collect { (index, offset) -> store.saveScroll(key, index, offset) }
    }
    return state
}
