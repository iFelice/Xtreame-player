package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.CategorySideColumn
import it.felixvision.mobile.ui.components.CollapsingCategoryHeader
import it.felixvision.mobile.ui.components.CollapsingCategoryPanel
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.rememberSectionGridState
import it.felixvision.tv.data.progress.ProgressKeys

/**
 * Sezione "Film": categorie a sinistra (orizzontale) o nell'intestazione a
 * scomparsa (verticale) e griglia adattiva di locandine (minimo ~140dp) con
 * titolo sotto. Tocco apre il dettaglio a schermo intero; pressione lunga
 * apre il pannello azioni (preferiti).
 *
 * La prima categoria è "Novità" (come nella TV): mostra i film recenti del
 * catalogo. Le categorie del provider seguono nello stesso ordine. Un film
 * assegnato a più categorie (`category_id` + `category_ids`) compare in ognuna
 * di loro: il filtro usa l'appartenenza (`categoryId in allCategoryIds`), non
 * l'uguaglianza. Al cambio di categoria la griglia torna in cima.
 */
@Composable
fun FilmSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    wideLayout: Boolean,
    modifier: Modifier = Modifier,
) {
    val catalogState by viewModel.ui.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()

    val catalog = catalogState.catalog
    val displayCategories = remember(catalog?.vodCategories) {
        withNovitaCategory(catalog?.vodCategories.orEmpty())
    }
    val streams = catalog?.vodStreams.orEmpty()

    val sectionKey = "film"
    val selectedCategoryId = viewModel.sectionStates.selectedCategory(sectionKey)
        ?.takeIf { selected -> displayCategories.any { it.categoryId == selected } }
        ?: displayCategories.firstOrNull()?.categoryId
    val headerOpen = viewModel.sectionStates.isHeaderOpen(sectionKey)
    val filtered = remember(streams, catalogState.recentFilms, selectedCategoryId) {
        if (selectedCategoryId == null) {
            emptyList()
        } else {
            filmsForCategory(selectedCategoryId, streams, catalogState.recentFilms)
        }
    }

    val gridState = rememberSectionGridState(viewModel.sectionStates, "film_grid")

    // Al cambio di categoria la griglia torna in cima (stessa regola della TV).
    LaunchedEffect(selectedCategoryId) {
        gridState.scrollToItem(0)
    }

    val grid: @Composable (Modifier) -> Unit = { gridModifier ->
        if (displayCategories.isEmpty()) {
            EmptyState(
                title = "Nessuna categoria",
                description = "Il server non ha restituito categorie.",
                modifier = gridModifier,
            )
        } else if (filtered.isEmpty()) {
            EmptyState(
                title = "Nessun film",
                description = "Nessun film in questa categoria.",
                modifier = gridModifier,
            )
        } else {
            LazyVerticalGrid(
                state = gridState,
                columns = GridCells.Adaptive(minSize = 140.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                contentPadding = PaddingValues(bottom = 16.dp),
                modifier = gridModifier.testTag("film_grid"),
            ) {
                items(filtered, key = { "vod_${it.streamId}" }) { film ->
                    val isFav = favorites.any { it.id == "vod_${film.streamId}" }
                    val filmProgress = progress[ProgressKeys.movie(film.streamId)]
                    PosterCard(
                        imageUrl = film.streamIcon,
                        title = film.name,
                        imageLoader = imageLoader,
                        width = 140.dp,
                        subtitle = film.year,
                        isFavorite = isFav,
                        progress = filmProgress,
                        isWatched = filmProgress?.isWatched == true,
                        onClick = { viewModel.openDetail(DetailTarget.Film(film)) },
                        onLongClick = { viewModel.openActions(ActionTarget.Film(film)) },
                        testTag = "film_${film.streamId}",
                    )
                }
            }
        }
    }

    if (wideLayout) {
        Row(
            modifier = modifier.padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            CategorySideColumn(
                categories = displayCategories,
                selectedCategoryId = selectedCategoryId,
                onSelect = { category ->
                    viewModel.sectionStates.selectCategory(sectionKey, category.categoryId)
                },
                sectionKey = sectionKey,
            )
            grid(Modifier.weight(1f).fillMaxSize())
        }
    } else {
        Box(modifier = modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                CollapsingCategoryHeader(
                    categories = displayCategories,
                    selectedCategoryId = selectedCategoryId,
                    open = headerOpen,
                    onToggleOpen = {
                        viewModel.sectionStates.setHeaderOpen(sectionKey, !headerOpen)
                    },
                    sectionKey = sectionKey,
                )
                grid(Modifier.weight(1f).fillMaxWidth())
            }
            if (headerOpen) {
                CollapsingCategoryPanel(
                    categories = displayCategories,
                    selectedCategoryId = selectedCategoryId,
                    onSelect = { category ->
                        viewModel.sectionStates.selectCategory(sectionKey, category.categoryId)
                        viewModel.sectionStates.setHeaderOpen(sectionKey, false)
                    },
                    sectionKey = sectionKey,
                    modifier = Modifier.padding(top = 56.dp),
                )
            }
        }
    }
}
