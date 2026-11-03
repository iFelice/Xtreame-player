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
 * Funzione pura (nessun Compose, nessun Android) così la scelta delle liste si
 * può verificare nei test senza comporre l'intera schermata. Riplicata dal
 * package TV (`it.felixvision.tv.ui.main`) ma non importata da esso.
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
    return VisibleContent(
        catalog = visibleCatalog,
        recentFilms = ProtectedFilter.filterVodStreams(recentFilms, data),
        recentSeries = ProtectedFilter.filterSeries(recentSeries, data),
        favorites = ProtectedFilter.filterFavorites(favorites, data),
        continueEntries = ProtectedFilter.filterContinueEntries(continueEntries, data),
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
