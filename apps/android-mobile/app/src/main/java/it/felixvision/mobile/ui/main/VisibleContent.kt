package it.felixvision.mobile.ui.main

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedFilter

/**
 * Tutte le liste che la schermata principale mostra, già filtrate in base alla
 * visibilità dei contenuti protetti.
 *
 * È una funzione pura (nessun Compose, nessun Android) così la scelta delle
 * liste si può verificare nei test senza comporre l'intera schermata: con
 * [unlocked] vero, o senza nulla di nascosto, restituisce le stesse istanze
 * ricevute.
 *
 * [pending] è vero quando la sessione è bloccata e l'archivio dei contenuti
 * protetti dell'account corrente non è ancora stato letto: in quel caso non si
 * mostra niente, perché finché non si sa cosa è nascosto qualunque contenuto
 * potrebbe esserlo.
 */
data class VisibleContent(
    val catalog: Catalog?,
    val recentFilms: List<VodStream>,
    val recentSeries: List<SeriesItem>,
    val favorites: List<FavoriteItem>,
    val continueEntries: List<ContinueEntry>,
    val myChannels: List<MyChannel>,
    val pending: Boolean = false,
)

fun visibleContent(
    catalog: Catalog?,
    recentFilms: List<VodStream>,
    recentSeries: List<SeriesItem>,
    favorites: List<FavoriteItem>,
    continueEntries: List<ContinueEntry>,
    myChannels: List<MyChannel>,
    data: ProtectedContentData?,
    unlocked: Boolean,
): VisibleContent {
    if (unlocked) {
        return VisibleContent(
            catalog = catalog,
            recentFilms = recentFilms,
            recentSeries = recentSeries,
            favorites = favorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
        )
    }
    if (data == null) {
        // Sessione bloccata e archivio non ancora letto (primo avvio, cambio
        // account, ricarica dopo una modifica): nessun contenuto finché non si
        // sa cosa è nascosto.
        return VisibleContent(
            catalog = null,
            recentFilms = emptyList(),
            recentSeries = emptyList(),
            favorites = emptyList(),
            continueEntries = emptyList(),
            myChannels = emptyList(),
            pending = true,
        )
    }
    val visibleCatalog = catalog?.let { ProtectedFilter.filterCatalog(it, data) }
    // Gli archivi dei preferiti e di Riprendi conservano solo la categoria
    // principale. Il catalogo completo permette di riconoscere anche le
    // categorie secondarie, senza scartare le voci non più nel catalogo.
    val hiddenLive = catalog?.liveStreams.orEmpty().map { it.streamId }.toSet() -
        visibleCatalog?.liveStreams.orEmpty().map { it.streamId }.toSet()
    val hiddenVod = catalog?.vodStreams.orEmpty().map { it.streamId }.toSet() -
        visibleCatalog?.vodStreams.orEmpty().map { it.streamId }.toSet()
    val hiddenSeries = catalog?.series.orEmpty().map { it.seriesId }.toSet() -
        visibleCatalog?.series.orEmpty().map { it.seriesId }.toSet()
    val filteredFavorites = ProtectedFilter.filterFavorites(favorites, data)
    val matchedFavorites = filteredFavorites.filterNot {
        when (it.type) {
            FavoriteItem.LIVE -> it.id.removePrefix("live_") in hiddenLive
            FavoriteItem.VOD -> it.id.removePrefix("vod_") in hiddenVod
            FavoriteItem.SERIES -> it.id.removePrefix("series_") in hiddenSeries
            else -> false
        }
    }
    val filteredContinue = ProtectedFilter.filterContinueEntries(continueEntries, data)
    val matchedContinue = filteredContinue.filterNot {
        (it.isMovie && it.streamId?.let { id -> id in hiddenVod } == true) ||
            (it.isSeries && it.seriesId?.let { id -> id in hiddenSeries } == true)
    }
    return VisibleContent(
        catalog = visibleCatalog,
        recentFilms = ProtectedFilter.filterVodStreams(recentFilms, data),
        recentSeries = ProtectedFilter.filterSeries(recentSeries, data),
        favorites = if (matchedFavorites.size == filteredFavorites.size) filteredFavorites else matchedFavorites,
        continueEntries = if (matchedContinue.size == filteredContinue.size) filteredContinue else matchedContinue,
        // La categoria dei canali si ricava dal catalogo COMPLETO: se la
        // categoria è nascosta i suoi canali non sono più nel catalogo visibile
        // e la mappa perderebbe proprio quelli da togliere (categoria ignota =
        // canale lasciato). Le categorie nascoste se le toglie isItemHidden.
        myChannels = ProtectedFilter.filterMyChannels(
            list = myChannels,
            data = data,
            liveStreams = catalog?.liveStreams.orEmpty(),
        ),
    )
}
