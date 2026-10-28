package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress

/**
 * Riga "Continua a guardare" usata come prima riga di Novità (in entrambe le
 * modalità) e dalla sezione dedicata. Le voci arrivano già filtrate e
 * ordinate da [CatalogViewModel.continueEntries] (regole
 * ContinueWatchingStore condivise).
 *
 * Tocco = riprende (avviso temporaneo del PR2), pressione lunga = pannello
 * azioni con rimozione. L'avanzamento della voce è sulla scheda della sezione
 * [WatchProgress] condivisa (chiavi `vod_*`/`ep_*`).
 */
@Composable
fun ContinueWatchingRow(
    entries: List<ContinueEntry>,
    progress: Map<String, WatchProgress>,
    imageLoader: ImageLoader,
    onPlayEntry: (ContinueEntry) -> Unit,
    onRemoveEntry: (ContinueEntry) -> Unit,
    scrollStore: SectionStateStore,
    listKey: String,
    modifier: Modifier = Modifier,
    showTitle: Boolean = true,
) {
    if (entries.isEmpty()) return
    Column(modifier = modifier.fillMaxWidth()) {
        if (showTitle) {
            RowTitle(text = "Continua a guardare")
        }
        val rowState = rememberSectionListState(scrollStore, listKey)
        LazyRow(
            state = rowState,
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(end = 8.dp),
            modifier = Modifier.fillMaxWidth().testTag("continue_row"),
        ) {
            items(entries, key = { "continue_${it.key}" }) { entry ->
                val entryProgress = if (entry.isSeries) {
                    progress[ProgressKeys.episode(entry.episodeId.orEmpty())]
                } else {
                    progress[ProgressKeys.movie(entry.streamId.orEmpty())]
                }
                PosterCard(
                    imageUrl = entry.poster,
                    title = entry.title,
                    imageLoader = imageLoader,
                    width = 132.dp,
                    subtitle = entry.episodeLabel,
                    progress = entryProgress,
                    onClick = { onPlayEntry(entry) },
                    onLongClick = { onRemoveEntry(entry) },
                    testTag = "continue_card_${entry.key}",
                )
            }
        }
    }
}
