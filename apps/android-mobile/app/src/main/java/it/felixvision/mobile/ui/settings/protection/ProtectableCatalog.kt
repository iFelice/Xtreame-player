package it.felixvision.mobile.ui.settings.protection

import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedSession

/**
 * Contenuti nascondibili di una categoria: le stesse regole della pagina
 * "Contenuti protetti" della TV, lette dal catalogo reale già caricato dal
 * [it.felixvision.mobile.ui.catalog.CatalogViewModel]. Nessuna copia delle
 * classi condivise: solo due funzioni di consultazione, lato interfaccia.
 */

/** Id e nome di un contenuto nascondibile, nell'ordine del catalogo. */
internal class MobileProtectableItem(val itemId: String, val name: String)

/**
 * Categorie del tipo scelto senza doppioni: un `category_id` ripetuto dal
 * provider resterebbe una chiave duplicata della lista e la farebbe crashare.
 * Vale la prima comparsa, l'ordine del catalogo è conservato.
 */
internal fun categoriesForKind(catalog: Catalog?, kind: ProtectedKind): List<Category> =
    when (kind) {
        ProtectedKind.LIVE -> catalog?.liveCategories
        ProtectedKind.VOD -> catalog?.vodCategories
        ProtectedKind.SERIES -> catalog?.seriesCategories
    }.orEmpty().distinctBy { it.categoryId }

/**
 * Contenuti di una categoria nell'ordine del catalogo, senza doppioni sul loro
 * id (stesso motivo della lista categorie: chiavi lazy uniche).
 *
 * Vale l'appartenenza completa (`category_id` + `category_ids`): un contenuto
 * che il provider assegna a più categorie compare nell'elenco di ognuna, così
 * lo si può nascondere partendo da quella che si sta guardando.
 */
internal fun itemsForCategory(
    catalog: Catalog?,
    kind: ProtectedKind,
    categoryId: String,
): List<MobileProtectableItem> = when (kind) {
    ProtectedKind.LIVE -> catalog?.liveStreams.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { MobileProtectableItem(itemId = it.streamId, name = it.name) }

    ProtectedKind.VOD -> catalog?.vodStreams.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { MobileProtectableItem(itemId = it.streamId, name = it.name) }

    ProtectedKind.SERIES -> catalog?.series.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { MobileProtectableItem(itemId = it.seriesId, name = it.name) }
}.distinctBy { it.itemId }

/**
 * Secondi che mancano alla fine del blocco anti-brute-force, arrotondati per
 * eccesso; 0 quando il blocco non c'è (o è scaduto). L'orologio è quello
 * iniettato nel container, così nei test coincide col tempo virtuale.
 */
internal fun lockSecondsLeft(session: ProtectedSession, clock: Clock): Long {
    val until = session.lockedUntilMillis(clock.nowMillis()) ?: return 0L
    val remaining = until - clock.nowMillis()
    if (remaining <= 0L) return 0L
    return (remaining + 999L) / 1_000L
}
