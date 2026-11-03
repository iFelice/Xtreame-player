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
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.rememberSectionListState
import it.felixvision.tv.data.progress.ProgressKeys

/**
 * Sezione "Novità": prima la riga "Riprendi" (se non vuota), poi
 * "Ultimi film" e "Ultime serie" — stesso contenuto della NovitaSection
 * della TV (liste recenti calcolate dal ViewModel). Tocco orizzontale.
 */
@Composable
fun NovitaSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
) {
    val state by viewModel.ui.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()
    val continueEntries by viewModel.continueEntries.collectAsStateWithLifecycle()

    val listState = rememberSectionListState(viewModel.sectionStates, "novita_list")

    LazyColumn(
        state = listState,
        verticalArrangement = Arrangement.spacedBy(18.dp),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        modifier = modifier.fillMaxSize().testTag("novita_list"),
    ) {
        item(key = "novita_continue") {
            ContinueWatchingRow(
                entries = continueEntries,
                progress = progress,
                imageLoader = imageLoader,
                onPlayEntry = { entry ->
                    viewModel.onPlayRequest(PlayTarget.ContinueItem(entry.key))
                },
                onRemoveEntry = { entry ->
                    viewModel.openActions(ActionTarget.Continue(entry))
                },
                scrollStore = viewModel.sectionStates,
                listKey = "novita_continue_row",
            )
        }

        item(key = "novita_films_header") {
            RowTitle(text = "Ultimi film")
        }
        item(key = "novita_films_row") {
            if (state.recentFilms.isEmpty()) {
                SecondaryText(text = "Nessun film recente nel catalogo")
            } else {
                val rowState = rememberSectionListState(viewModel.sectionStates, "novita_films_row")
                LazyRow(
                    state = rowState,
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(end = 8.dp),
                    modifier = Modifier.fillMaxWidth().testTag("novita_films_row"),
                ) {
                    items(state.recentFilms, key = { "novita_vod_${it.streamId}" }) { film ->
                        val filmProgress = progress[ProgressKeys.movie(film.streamId)]
                        PosterCard(
                            imageUrl = film.streamIcon,
                            title = film.name,
                            imageLoader = imageLoader,
                            width = 132.dp,
                            subtitle = film.year,
                            isFavorite = viewModel.isFavorite("vod_${film.streamId}"),
                            progress = filmProgress,
                            isWatched = filmProgress?.isWatched == true,
                            onClick = { viewModel.openDetail(DetailTarget.Film(film)) },
                            onLongClick = { viewModel.openActions(ActionTarget.Film(film)) },
                            testTag = "novita_film_${film.streamId}",
                        )
                    }
                }
            }
        }

        item(key = "novita_series_header") {
            RowTitle(text = "Ultime serie")
        }
        item(key = "novita_series_row") {
            if (state.recentSeries.isEmpty()) {
                SecondaryText(text = "Nessuna serie recente nel catalogo")
            } else {
                val rowState = rememberSectionListState(viewModel.sectionStates, "novita_series_row")
                LazyRow(
                    state = rowState,
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(end = 8.dp),
                    modifier = Modifier.fillMaxWidth().testTag("novita_series_row"),
                ) {
                    items(state.recentSeries, key = { "novita_series_${it.seriesId}" }) { serie ->
                        PosterCard(
                            imageUrl = serie.cover,
                            title = serie.name,
                            imageLoader = imageLoader,
                            width = 132.dp,
                            subtitle = serie.releaseDate,
                            isFavorite = viewModel.isFavorite("series_${serie.seriesId}"),
                            onClick = { viewModel.openDetail(DetailTarget.Series(serie)) },
                            onLongClick = { viewModel.openActions(ActionTarget.Series(serie)) },
                            testTag = "novita_series_${serie.seriesId}",
                        )
                    }
                }
            }
        }
    }
}
