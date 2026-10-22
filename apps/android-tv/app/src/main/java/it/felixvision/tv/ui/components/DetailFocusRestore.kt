package it.felixvision.tv.ui.components

import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.platform.LocalWindowInfo
import androidx.compose.ui.platform.WindowInfo
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeoutOrNull

/**
 * Helper condiviso per riportare il focus sulla locandina da cui è stata aperta una scheda.
 * Usato da FilmSection, SerieSection, NovitaSection, FavoritesSection.
 *
 * Correzione TCL Dialog: la scheda è una finestra separata; al momento di onClose
 * la finestra principale non ha ancora riottenuto il focus. Attendiamo che
 * windowInfo.isWindowFocused torni true (timeout 1s) prima di richiedere focus.
 * Fallback su contentFocusRequester solo se la chiave non è più nella lista corrente.
 */

fun shouldFallbackToContent(pendingKey: String?, currentKeys: Set<String>): Boolean {
    if (pendingKey == null) return false
    return pendingKey !in currentKeys
}

class DetailFocusRestoreHelper(
    private val scope: CoroutineScope,
    private val gridState: LazyGridState?,
    private val listState: LazyListState?,
    private val focusRequesters: () -> Map<String, FocusRequester>,
    private val fallback: FocusRequester,
    private val windowInfo: WindowInfo?
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
            // Attendi che la finestra principale riottenga il focus (Dialog si è chiusa)
            if (windowInfo != null) {
                withTimeoutOrNull(1000) {
                    snapshotFlow { windowInfo.isWindowFocused }.first { it }
                }
            }
            withFrameNanos { }
            val currentKeys = focusRequesters().keys
            if (shouldFallbackToContent(key, currentKeys)) {
                fallback.requestFocus()
                pendingKey = null
                pendingIndex = -1
                return@launch
            }
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
            var ok = try { fr?.requestFocus() == true } catch (_: Exception) { false }
            if (!ok) {
                withFrameNanos { }
                try { fr?.requestFocus() } catch (_: Exception) { }
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
    val windowInfo = LocalWindowInfo.current
    return remember(gridState, fallback, windowInfo) {
        DetailFocusRestoreHelper(scope, gridState, null, focusRequesters, fallback, windowInfo)
    }
}

@Composable
fun rememberListDetailFocusRestore(
    listState: LazyListState,
    focusRequesters: () -> Map<String, FocusRequester>,
    fallback: FocusRequester
): DetailFocusRestoreHelper {
    val scope = rememberCoroutineScope()
    val windowInfo = LocalWindowInfo.current
    return remember(listState, fallback, windowInfo) {
        DetailFocusRestoreHelper(scope, null, listState, focusRequesters, fallback, windowInfo)
    }
}
