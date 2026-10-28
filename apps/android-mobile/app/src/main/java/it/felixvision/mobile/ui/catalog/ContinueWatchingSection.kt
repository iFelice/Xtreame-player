package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.tv.data.progress.ProgressKeys

/**
 * Sezione dedicata "Continua a guardare" (disponibile solo con la barra
 * laterale, dove le 8 sezioni sono tutte visibili): stesse voci della riga in
 * Novità — una voce per serie/film secondo le regole ContinueWatchingStore —
 * con rimozione da pressione lunga.
 */
@Composable
fun ContinueWatchingSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
) {
    val entries by viewModel.continueEntries.collectAsStateWithLifecycle()
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()

    if (entries.isEmpty()) {
        EmptyState(
            title = "Niente da riprendere",
            description = "Quando inizi a guardare qualcosa, lo trovi qui.",
            modifier = modifier.testTag("continua_empty"),
        )
        return
    }

    val listState = rememberSectionListState(viewModel.sectionStates, "continua_list")
    LazyColumn(
        state = listState,
        verticalArrangement = Arrangement.spacedBy(18.dp),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        modifier = modifier.fillMaxSize().testTag("continua_list"),
    ) {
        item(key = "continua_title") {
            RowTitle(text = "Continua a guardare")
        }
        item(key = "continua_row") {
            Column(modifier = Modifier.fillMaxWidth()) {
                val rowState = rememberSectionListState(viewModel.sectionStates, "continua_row_list")
                LazyRow(
                    state = rowState,
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(end = 8.dp),
                    modifier = Modifier.fillMaxWidth(),
                ) {
                    items(entries, key = { "continua_${it.key}" }) { entry ->
                        val entryProgress = if (entry.isSeries) {
                            progress[ProgressKeys.episode(entry.episodeId.orEmpty())]
                        } else {
                            progress[ProgressKeys.movie(entry.streamId.orEmpty())]
                        }
                        PosterCard(
                            imageUrl = entry.poster,
                            title = entry.title,
                            imageLoader = imageLoader,
                            width = 148.dp,
                            subtitle = entry.episodeLabel,
                            progress = entryProgress,
                            onClick = {
                                viewModel.onPlayRequest(PlayTarget.ContinueItem(entry.key))
                            },
                            onLongClick = { viewModel.openActions(ActionTarget.Continue(entry)) },
                            testTag = "continua_card_${entry.key}",
                        )
                    }
                }
            }
        }
    }
}
