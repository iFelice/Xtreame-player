package it.felixvision.mobile.ui.detail

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil3.ImageLoader
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.DetailTarget
import it.felixvision.mobile.ui.catalog.PlayTarget
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.tv.data.catalog.VodInfoResponse
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.ProgressKeys

/**
 * Dettaglio film a schermo intero: in orizzontale locandina a sinistra e
 * testi a destra, in verticale impilati. Trama, anno, durata e valutazione
 * dalle info del server; "Riproduci" alimenta l'avviso temporaneo del PR2
 * tramite `CatalogViewModel.onPlayRequest`; la stella aggiunge/toglie dai
 * preferiti.
 */
@Composable
fun FilmDetailScreen(
    target: DetailTarget.Film,
    viewModel: CatalogViewModel,
    imageLoader: ImageLoader,
    modifier: Modifier = Modifier,
) {
    val film = target.stream
    val progress by viewModel.watchProgress.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()
    val isFavorite = favorites.any { it.id == "vod_${film.streamId}" }
    val filmProgress = progress[ProgressKeys.movie(film.streamId)]

    var info by remember(film.streamId) { mutableStateOf<VodInfoResponse?>(null) }
    var isLoading by remember(film.streamId) { mutableStateOf(true) }
    var hasError by remember(film.streamId) { mutableStateOf(false) }
    var retryKey by remember { mutableStateOf(0) }

    LaunchedEffect(film.streamId, retryKey) {
        isLoading = true
        hasError = false
        val loaded = viewModel.loadVodInfo(film.streamId)
        if (loaded != null) {
            info = loaded
        } else {
            hasError = true
        }
        isLoading = false
    }

    DetailShell(
        title = film.name,
        onBack = viewModel::closeDetail,
        modifier = modifier.testTag("film_detail"),
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
            val landscape = maxWidth > maxHeight
            val texts: @Composable () -> Unit = {
                DetailTexts(
                    meta = buildList {
                        film.year?.takeIf { it.isNotBlank() }?.let { add(it) }
                        info?.info?.duration?.takeIf { it.isNotBlank() }?.let { add(it) }
                        info?.info?.rating?.takeIf { it.isNotBlank() }?.let { add("★ $it") }
                        info?.info?.genre?.takeIf { it.isNotBlank() }?.let { add(it) }
                    },
                    plot = info?.info?.plot?.takeIf { it.isNotBlank() },
                    isFavorite = isFavorite,
                    onToggleFavorite = { viewModel.toggleFavorite(film.favoriteItem()) },
                    onPlay = { viewModel.onPlayRequest(PlayTarget.Movie(film.streamId)) },
                    playLabel = if (filmProgress?.canResume == true) "Riprendi" else "Riproduci",
                )
            }
            when {
                isLoading -> DetailInfoLoading()
                hasError -> EmptyState(
                    title = "Informazioni non disponibili",
                    description = "Controlla la connessione e riprova",
                    actionLabel = "Riprova",
                    onAction = { retryKey += 1 },
                    modifier = Modifier.fillMaxSize().testTag("film_detail_error"),
                )
                landscape -> Row(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(horizontal = 20.dp, vertical = 12.dp),
                    horizontalArrangement = Arrangement.spacedBy(24.dp),
                    verticalAlignment = Alignment.Top,
                ) {
                    MediaPoster(
                        imageUrl = film.streamIcon,
                        title = film.name,
                        imageLoader = imageLoader,
                        watched = filmProgress?.isWatched == true,
                        progress = filmProgress,
                        modifier = Modifier.width(240.dp),
                    )
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .verticalScroll(rememberScrollState()),
                    ) { texts() }
                }
                else -> Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(horizontal = 20.dp, vertical = 12.dp)
                        .verticalScroll(rememberScrollState()),
                    verticalArrangement = Arrangement.spacedBy(16.dp),
                ) {
                    MediaPoster(
                        imageUrl = film.streamIcon,
                        title = film.name,
                        imageLoader = imageLoader,
                        watched = filmProgress?.isWatched == true,
                        progress = filmProgress,
                        modifier = Modifier.width(170.dp),
                    )
                    texts()
                }
            }
        }
    }
}

/** Voce preferito del film, con la chiave `vod_<id>` come sulla TV. */
private fun VodStream.favoriteItem(): FavoriteItem = FavoriteItem(
    id = "vod_$streamId",
    type = FavoriteItem.VOD,
    title = name,
    poster = streamIcon,
    categoryId = categoryId,
)
