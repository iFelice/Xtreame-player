package it.felixvision.tv.ui.components

import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.runtime.withFrameNanos
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

/**
 * Helper condiviso per riportare il focus sulla locandina da cui è stata aperta una scheda.
 * Usato da FilmSection, SerieSection, NovitaSection, FavoritesSection.
 *
 * Logica:
 * - all'apertura memorizza chiave e indice;
 * - alla chiusura, dopo rimozione scheda e un frame, se l'elemento non è visibile fa scrollToItem;
 * - poi chiede focus all'elemento (FocusRequester agganciato solo a quella chiave);
 * - se requestFocus fallisce, riprova al frame successivo e solo dopo ripiega su fallback.
 */
class DetailFocusRestoreHelper(
    private val scope: CoroutineScope,
    private val gridState: LazyGridState?,
    private val listState: LazyListState?,
    private val focusRequesters: () -> Map<String, FocusRequester>,
    private val fallback: FocusRequester
) {
    var pendingKey: String? by mutableStateOf(null)
    var pendingIndex: Int by mutableStateOf(-1)

    fun onOpen(key: String, index: Int) {
        pendingKey = key
        pendingIndex = index
    }

    fun onClose() {
        val key = pendingKey
        val idx = pendingIndex
        if (key == null || idx < 0) {
            pendingKey = null
            pendingIndex = -1
            return
        }
        scope.launch {
            // attende rimozione scheda e un frame
            withFrameNanos { }
            val isVisible = when {
                gridState != null -> gridState.layoutInfo.visibleItemsInfo.any { it.key == key }
                listState != null -> listState.layoutInfo.visibleItemsInfo.any { it.key == key }
                else -> false
            }
            if (!isVisible) {
                try {
                    if (gridState != null) gridState.scrollToItem(idx)
                    else listState?.scrollToItem(idx)
                } catch (_: Exception) { }
                withFrameNanos { }
            }
            val fr = focusRequesters()[key]
            var ok = fr?.requestFocus() ?: false
            if (!ok) {
                withFrameNanos { }
                ok = fr?.requestFocus() ?: false
                if (!ok) fallback.requestFocus()
            }
            pendingKey = null
            pendingIndex = -1
        }
    }

    fun clear() {
        pendingKey = null
        pendingIndex = -1
    }
}

@Composable
fun rememberGridDetailFocusRestore(
    gridState: LazyGridState,
    focusRequesters: () -> Map<String, FocusRequester>,
    fallback: FocusRequester
): DetailFocusRestoreHelper {
    val scope = rememberCoroutineScope()
    return remember(gridState, fallback) {
        DetailFocusRestoreHelper(scope, gridState, null, focusRequesters, fallback)
    }
}

@Composable
fun rememberListDetailFocusRestore(
    listState: LazyListState,
    focusRequesters: () -> Map<String, FocusRequester>,
    fallback: FocusRequester
): DetailFocusRestoreHelper {
    val scope = rememberCoroutineScope()
    return remember(listState, fallback) {
        DetailFocusRestoreHelper(scope, null, listState, focusRequesters, fallback)
    }
}
