package it.felixvision.tv.data.protection

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem

/**
 * Regole pure di visibilità: dato l'archivio dei contenuti protetti, tolgono
 * categorie e contenuti nascosti dalle liste mostrate nell'app. Nessun
 * Android, nessuno stato, nessun import da ui/ o tv-material: le usano la
 * schermata principale della TV e i test.
 *
 * Le regole provengono da [ProtectedContentRules]: una categoria nascosta
 * porta via anche tutti i suoi contenuti, un contenuto singolo sparisce da
 * solo. Ogni funzione, quando [ProtectedContentData.hiddenCategories] e
 * [ProtectedContentData.hiddenItems] sono entrambe vuote, restituisce la
 * stessa istanza ricevuta (nessuna copia, nessuna allocazione).
 */
object ProtectedFilter {

    /** Vero quando non c'è nessun contenuto nascosto da applicare. */
    private fun isEmpty(data: ProtectedContentData): Boolean =
        data.hiddenCategories.isEmpty() && data.hiddenItems.isEmpty()

    /** Catalogo visibile: categorie e contenuti nascosti tolti, [Catalog.updatedAtMillis] invariato. */
    fun filterCatalog(catalog: Catalog, data: ProtectedContentData): Catalog {
        if (isEmpty(data)) return catalog
        val liveCategories = catalog.liveCategories.filterNot {
            ProtectedContentRules.isCategoryHidden(data, ProtectedKind.LIVE, it.categoryId)
        }
        val vodCategories = catalog.vodCategories.filterNot {
            ProtectedContentRules.isCategoryHidden(data, ProtectedKind.VOD, it.categoryId)
        }
        val seriesCategories = catalog.seriesCategories.filterNot {
            ProtectedContentRules.isCategoryHidden(data, ProtectedKind.SERIES, it.categoryId)
        }
        val liveStreams = catalog.liveStreams.filterNot {
            ProtectedContentRules.isItemHidden(data, ProtectedKind.LIVE, it.streamId, it.categoryId)
        }
        val vodStreams = catalog.vodStreams.filterNot {
            ProtectedContentRules.isItemHidden(data, ProtectedKind.VOD, it.streamId, it.categoryId)
        }
        val series = catalog.series.filterNot {
            ProtectedContentRules.isItemHidden(data, ProtectedKind.SERIES, it.seriesId, it.categoryId)
        }
        if (
            liveCategories.size == catalog.liveCategories.size &&
            vodCategories.size == catalog.vodCategories.size &&
            seriesCategories.size == catalog.seriesCategories.size &&
            liveStreams.size == catalog.liveStreams.size &&
            vodStreams.size == catalog.vodStreams.size &&
            series.size == catalog.series.size
        ) {
            // Nascosti presenti ma nessuno di questi riguarda il catalogo.
            return catalog
        }
        return catalog.copy(
            liveCategories = liveCategories,
            liveStreams = liveStreams,
            vodCategories = vodCategories,
            vodStreams = vodStreams,
            seriesCategories = seriesCategories,
            series = series,
        )
    }

    /** Film visibili: quelli nascosti singolarmente e quelli di categorie nascoste. */
    fun filterVodStreams(list: List<VodStream>, data: ProtectedContentData): List<VodStream> {
        if (isEmpty(data)) return list
        val filtered = list.filterNot {
            ProtectedContentRules.isItemHidden(data, ProtectedKind.VOD, it.streamId, it.categoryId)
        }
        return if (filtered.size == list.size) list else filtered
    }

    /** Serie visibili: quelle nascoste singolarmente e quelle di categorie nascoste. */
    fun filterSeries(list: List<SeriesItem>, data: ProtectedContentData): List<SeriesItem> {
        if (isEmpty(data)) return list
        val filtered = list.filterNot {
            ProtectedContentRules.isItemHidden(data, ProtectedKind.SERIES, it.seriesId, it.categoryId)
        }
        return if (filtered.size == list.size) list else filtered
    }

    /**
     * Preferiti visibili. Formati reali degli id (vedi [FavoriteItem]): film
     * `vod_<streamId>`, serie `series_<seriesId>`, categoria Live
     * `livecat_<categoryId>`, vecchio canale Live `live_<streamId>`.
     * Restano i tipi che non hanno un contenuto protetto associato.
     */
    fun filterFavorites(list: List<FavoriteItem>, data: ProtectedContentData): List<FavoriteItem> {
        if (isEmpty(data)) return list
        val filtered = list.filterNot { hidden(data, it) }
        return if (filtered.size == list.size) list else filtered
    }

    private fun hidden(data: ProtectedContentData, favorite: FavoriteItem): Boolean =
        when (favorite.type) {
            FavoriteItem.VOD -> ProtectedContentRules.isItemHidden(
                data = data,
                kind = ProtectedKind.VOD,
                itemId = favorite.id.removePrefix("vod_"),
                categoryId = favorite.categoryId,
            )

            FavoriteItem.SERIES -> ProtectedContentRules.isItemHidden(
                data = data,
                kind = ProtectedKind.SERIES,
                itemId = favorite.id.removePrefix("series_"),
                categoryId = favorite.categoryId,
            )

            FavoriteItem.LIVE_CATEGORY -> {
                // L'id è `livecat_<categoryId>`; la categoria è nota anche dal campo.
                val categoryId = favorite.categoryId
                    ?: favorite.id.removePrefix("livecat_").takeIf { it != favorite.id }
                categoryId != null &&
                    ProtectedContentRules.isCategoryHidden(data, ProtectedKind.LIVE, categoryId)
            }

            // Vecchi preferiti canale: non vengono più creati ma possono essere
            // rimasti in un archivio scritto da una versione precedente.
            FavoriteItem.LIVE -> ProtectedContentRules.isItemHidden(
                data = data,
                kind = ProtectedKind.LIVE,
                itemId = favorite.id.removePrefix("live_"),
                categoryId = favorite.categoryId,
            )

            else -> false
        }

    /** "Continua a guardare": film per streamId+categoria, serie per seriesId+categoria. */
    fun filterContinueEntries(list: List<ContinueEntry>, data: ProtectedContentData): List<ContinueEntry> {
        if (isEmpty(data)) return list
        val filtered = list.filterNot { entry ->
            when {
                entry.isMovie -> {
                    val streamId = entry.streamId
                    streamId != null && ProtectedContentRules.isItemHidden(
                        data = data,
                        kind = ProtectedKind.VOD,
                        itemId = streamId,
                        categoryId = entry.categoryId,
                    )
                }

                entry.isSeries -> {
                    val seriesId = entry.seriesId
                    seriesId != null && ProtectedContentRules.isItemHidden(
                        data = data,
                        kind = ProtectedKind.SERIES,
                        itemId = seriesId,
                        categoryId = entry.categoryId,
                    )
                }

                else -> false
            }
        }
        return if (filtered.size == list.size) list else filtered
    }

    /**
     * "I miei canali": [MyChannel] non ha la categoria, quindi si ricava dai
     * canali Live del catalogo (mappa streamId → categoryId costruita una sola
     * volta).
     */
    fun filterMyChannels(
        list: List<MyChannel>,
        data: ProtectedContentData,
        liveStreams: List<LiveStream>,
    ): List<MyChannel> {
        if (isEmpty(data) || list.isEmpty()) return list
        val categoryById = liveStreams.associate { it.streamId to it.categoryId }
        val filtered = list.filterNot { channel ->
            ProtectedContentRules.isItemHidden(
                data = data,
                kind = ProtectedKind.LIVE,
                itemId = channel.streamId,
                categoryId = categoryById[channel.streamId],
            )
        }
        return if (filtered.size == list.size) list else filtered
    }
}
