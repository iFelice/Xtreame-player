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

/**
 * Sezione "Serie": stessa struttura di Film (categorie fisse a sinistra in
 * orizzontale, intestazione a scomparsa in verticale) con griglia di copertine
 * adattiva. Tocco apre il dettaglio (stagioni/episodi/continuo), pressione
 * lunga il pannello azioni.
 *
 * La prima categoria è "Novità" (come nella TV): mostra le serie recenti del
 * catalogo. Un contenuto assegnato a più categorie compare in ognuna di loro
 * (appartenenza, non uguaglianza). Al cambio di categoria la griglia torna in
 * cima.
 */
@Composable
fun SerieSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    wideLayout: Boolean,
    modifier: Modifier = Modifier,
) {
    val catalogState by viewModel.ui.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()

    val catalog = catalogState.catalog
    val displayCategories = remember(catalog?.seriesCategories) {
        withNovitaCategory(catalog?.seriesCategories.orEmpty())
    }
    val streams = catalog?.series.orEmpty()

    val sectionKey = "serie"
    val selectedCategoryId = viewModel.sectionStates.selectedCategory(sectionKey)
        ?.takeIf { selected -> displayCategories.any { it.categoryId == selected } }
        ?: displayCategories.firstOrNull()?.categoryId
    val headerOpen = viewModel.sectionStates.isHeaderOpen(sectionKey)
    val filtered = remember(streams, catalogState.recentSeries, selectedCategoryId) {
        if (selectedCategoryId == null) {
            emptyList()
        } else {
            seriesForCategory(selectedCategoryId, streams, catalogState.recentSeries)
        }
    }

    val gridState = rememberSectionGridState(viewModel.sectionStates, "serie_grid")

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
                title = "Nessuna serie",
                description = "Nessuna serie in questa categoria.",
                modifier = gridModifier,
            )
        } else {
            LazyVerticalGrid(
                state = gridState,
                columns = GridCells.Adaptive(minSize = 140.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                contentPadding = PaddingValues(bottom = 16.dp),
                modifier = gridModifier.testTag("serie_grid"),
            ) {
                items(filtered, key = { "series_${it.seriesId}" }) { serie ->
                    val isFav = favorites.any { it.id == "series_${serie.seriesId}" }
                    PosterCard(
                        imageUrl = serie.cover,
                        title = serie.name,
                        imageLoader = imageLoader,
                        width = 140.dp,
                        subtitle = serie.releaseDate,
                        isFavorite = isFav,
                        onClick = { viewModel.openDetail(DetailTarget.Series(serie)) },
                        onLongClick = { viewModel.openActions(ActionTarget.Series(serie)) },
                        testTag = "serie_${serie.seriesId}",
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
