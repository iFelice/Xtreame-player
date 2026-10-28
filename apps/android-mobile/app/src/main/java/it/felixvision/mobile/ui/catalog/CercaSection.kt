@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.components.ChannelLogoImage
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.components.FvpTextField
import it.felixvision.mobile.ui.components.PosterCard
import it.felixvision.mobile.ui.components.RowTitle
import it.felixvision.mobile.ui.components.SecondaryText
import it.felixvision.mobile.ui.components.TouchListRow
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.search.CatalogSearch
import it.felixvision.tv.data.search.SearchResults

/**
 * Sezione "Cerca" del tablet: campo in alto con tastiera aperta all'entrata,
 * ricerca locale con debounce di ~300 ms nel [CatalogViewModel] (stessa
 * regola della TV, vedi [CatalogSearch]) e risultati in tre gruppi — Live,
 * Film, Serie — nascosti quando vuoti.
 *
 * Tocco su un canale = riproduzione (avviso temporaneo), su film/serie =
 * dettaglio; la pressione lunga apre il pannello azioni, come nelle sezioni.
 */
@Composable
fun CercaSection(
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
) {
    val query by viewModel.searchQuery.collectAsStateWithLifecycle()
    val results by viewModel.searchResults.collectAsStateWithLifecycle()

    val searchFocus = remember { FocusRequester() }
    val keyboard = LocalSoftwareKeyboardController.current

    // Tastiera aperta appena si entra nella sezione, senza tape preliminari.
    LaunchedEffect(Unit) {
        searchFocus.requestFocus()
        keyboard?.show()
    }

    Column(
        modifier = modifier.padding(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp),
    ) {
        FvpTextField(
            label = "Cerca",
            value = query,
            onValueChange = viewModel::onSearchQueryChange,
            placeholder = "Titolo, canale, serie...",
            imeAction = ImeAction.Search,
            onImeAction = { keyboard?.hide() },
            testTag = "cerca_field",
            modifier = Modifier
                .fillMaxWidth()
                .focusRequester(searchFocus),
        )

        when {
            CatalogSearch.normalize(query).length < CatalogSearch.MIN_QUERY_LENGTH ->
                SecondaryText(
                    text = "Digita almeno ${CatalogSearch.MIN_QUERY_LENGTH} caratteri",
                    modifier = Modifier.testTag("cerca_hint"),
                )
            results.isEmpty ->
                EmptyState(
                    title = "Nessun risultato",
                    description = "Prova con un altro termine",
                    modifier = Modifier.fillMaxWidth().padding(top = 32.dp),
                )
            else ->
                SearchResultsList(
                    results = results,
                    imageLoader = imageLoader,
                    viewModel = viewModel,
                    modifier = Modifier.fillMaxWidth(),
                )
        }
    }
}

@Composable
private fun SearchResultsList(
    results: SearchResults,
    imageLoader: ImageLoader,
    viewModel: CatalogViewModel,
    modifier: Modifier = Modifier,
) {
    LazyColumn(
        verticalArrangement = Arrangement.spacedBy(16.dp),
        contentPadding = PaddingValues(bottom = 24.dp),
        modifier = modifier.testTag("cerca_results"),
    ) {
        if (results.live.isNotEmpty()) {
            item(key = "cerca_live_title") { RowTitle(text = "Live") }
            items(results.live, key = { "cerca_live_${it.streamId}" }) { channel ->
                SearchLiveRow(
                    channel = channel,
                    imageLoader = imageLoader,
                    onClick = { viewModel.onPlayRequest(PlayTarget.LiveChannel(channel.streamId)) },
                    onLongClick = { viewModel.openActions(ActionTarget.Channel(channel)) },
                )
            }
        }
        if (results.vod.isNotEmpty()) {
            item(key = "cerca_film_title") { RowTitle(text = "Film") }
            item(key = "cerca_film_row") {
                LazyRow(
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(end = 8.dp),
                    modifier = Modifier.fillMaxWidth().testTag("cerca_row_film"),
                ) {
                    items(results.vod, key = { "cerca_film_${it.streamId}" }) { film ->
                        PosterCard(
                            imageUrl = film.streamIcon,
                            title = film.name,
                            imageLoader = imageLoader,
                            width = 132.dp,
                            subtitle = film.year,
                            onClick = { viewModel.openDetail(DetailTarget.Film(film)) },
                            onLongClick = { viewModel.openActions(ActionTarget.Film(film)) },
                            testTag = "cerca_film_${film.streamId}",
                        )
                    }
                }
            }
        }
        if (results.series.isNotEmpty()) {
            item(key = "cerca_serie_title") { RowTitle(text = "Serie") }
            item(key = "cerca_serie_row") {
                LazyRow(
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(end = 8.dp),
                    modifier = Modifier.fillMaxWidth().testTag("cerca_row_serie"),
                ) {
                    items(results.series, key = { "cerca_serie_${it.seriesId}" }) { serie ->
                        PosterCard(
                            imageUrl = serie.cover,
                            title = serie.name,
                            imageLoader = imageLoader,
                            width = 132.dp,
                            subtitle = serie.releaseDate,
                            onClick = { viewModel.openDetail(DetailTarget.Series(serie)) },
                            onLongClick = { viewModel.openActions(ActionTarget.Series(serie)) },
                            testTag = "cerca_serie_${serie.seriesId}",
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun SearchLiveRow(
    channel: LiveStream,
    imageLoader: ImageLoader,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
) {
    TouchListRow(
        onClick = onClick,
        onLongClick = onLongClick,
        modifier = Modifier.testTag("cerca_channel_${channel.streamId}"),
    ) {
        ChannelLogoImage(
            imageUrl = channel.streamIcon,
            name = channel.name,
            imageLoader = imageLoader,
            modifier = Modifier.size(42.dp),
            corner = 8.dp,
        )
        Column(modifier = Modifier.padding(start = 12.dp).weight(1f)) {
            Text(
                text = channel.name,
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
            )
            channel.num?.let { num ->
                SecondaryText(text = "Canale $num")
            }
        }
        Icon(
            imageVector = FvpIcons.Play,
            contentDescription = "Riproduci ${channel.name}",
            tint = FvpColors.Green,
            modifier = Modifier.size(24.dp),
        )
    }
}
