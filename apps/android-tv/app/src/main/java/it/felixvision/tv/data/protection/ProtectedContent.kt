package it.felixvision.tv.data.protection

import kotlinx.serialization.Serializable

/**
 * Tipo di contenuto protetto. [storageKey] è il valore scritto negli elenchi
 * [HiddenCategory.kind] e [HiddenItem.kind]: resta invariato anche se i nomi
 * dei tipi cambiano.
 */
enum class ProtectedKind(val storageKey: String) {
    LIVE("live"),
    VOD("vod"),
    SERIES("series"),
}

/** Categoria d'intero catalogo resa invisibile (Live, Film o Serie). */
@Serializable
data class HiddenCategory(
    val kind: String,
    val categoryId: String,
    val name: String,
)

/** Singolo contenuto reso invisibile (canale, film o serie). */
@Serializable
data class HiddenItem(
    val kind: String,
    val itemId: String,
    val categoryId: String?,
    val name: String,
)

/**
 * Archivio dei contenuti protetti per server+utente: PIN (solo come hash
 * PBKDF2, mai in chiaro) ed elenchi di categorie e contenuti nascosti.
 */
@Serializable
data class ProtectedContentData(
    val pinHash: String? = null,
    val pinSalt: String? = null,
    val pinIterations: Int = 0,
    val hiddenCategories: List<HiddenCategory> = emptyList(),
    val hiddenItems: List<HiddenItem> = emptyList(),
) {
    /** Vero quando il PIN è stato impostato (hash, sale e iterazioni presenti). */
    val hasPin: Boolean
        get() = !pinHash.isNullOrBlank() && !pinSalt.isNullOrBlank() && pinIterations > 0

    /** Quante cose sono nascoste in tutto (l'elenco "Nascosti" delle Impostazioni). */
    val hiddenCount: Int
        get() = hiddenCategories.size + hiddenItems.size
}

/**
 * Regole pure sull'archivio dei contenuti protetti: consultazione, aggiunta
 * e rimozione dalle liste di invisibilità. Nessun duplicato (una categoria o
 * un contenuto compare una sola volta) e ordine di inserimento conservato.
 */
object ProtectedContentRules {

    /** Vero se la categoria [categoryId] del tipo [kind] è nascosta per intero. */
    fun isCategoryHidden(data: ProtectedContentData, kind: ProtectedKind, categoryId: String): Boolean =
        data.hiddenCategories.any { it.kind == kind.storageKey && it.categoryId == categoryId }

    /**
     * Vero se il singolo contenuto [itemId] è nascosto, oppure è nascosta la
     * sua categoria [categoryId] (null = nessuna categoria nota).
     */
    fun isItemHidden(
        data: ProtectedContentData,
        kind: ProtectedKind,
        itemId: String,
        categoryId: String?,
    ): Boolean {
        if (data.hiddenItems.any { it.kind == kind.storageKey && it.itemId == itemId }) return true
        return categoryId != null && isCategoryHidden(data, kind, categoryId)
    }

    /** Nasconde la categoria; se è già nascosta la mostra di nuovo. */
    fun toggleCategory(
        data: ProtectedContentData,
        kind: ProtectedKind,
        categoryId: String,
        name: String,
    ): ProtectedContentData {
        val hidden = isCategoryHidden(data, kind, categoryId)
        val categories = if (hidden) {
            data.hiddenCategories.filterNot { it.kind == kind.storageKey && it.categoryId == categoryId }
        } else {
            data.hiddenCategories + HiddenCategory(kind = kind.storageKey, categoryId = categoryId, name = name)
        }
        return data.copy(hiddenCategories = categories)
    }

    /** Nasconde il singolo contenuto; se è già nascosto lo mostra di nuovo. */
    fun toggleItem(
        data: ProtectedContentData,
        kind: ProtectedKind,
        itemId: String,
        categoryId: String?,
        name: String,
    ): ProtectedContentData {
        val alreadyHidden = data.hiddenItems.any { it.kind == kind.storageKey && it.itemId == itemId }
        val items = if (alreadyHidden) {
            data.hiddenItems.filterNot { it.kind == kind.storageKey && it.itemId == itemId }
        } else {
            data.hiddenItems + HiddenItem(
                kind = kind.storageKey,
                itemId = itemId,
                categoryId = categoryId,
                name = name,
            )
        }
        return data.copy(hiddenItems = items)
    }

    /** Quanti singoli contenuti della categoria [categoryId] sono nascosti. */
    fun hiddenCountInCategory(data: ProtectedContentData, kind: ProtectedKind, categoryId: String): Int =
        data.hiddenItems.count { it.kind == kind.storageKey && it.categoryId == categoryId }

    /** Toglie la categoria dall'elenco "Nascosti" (la categoria riappare). */
    fun removeCategory(
        data: ProtectedContentData,
        kind: ProtectedKind,
        categoryId: String,
    ): ProtectedContentData =
        data.copy(
            hiddenCategories = data.hiddenCategories.filterNot {
                it.kind == kind.storageKey && it.categoryId == categoryId
            },
        )

    /** Toglie il contenuto dall'elenco "Nascosti" (il contenuto riappare). */
    fun removeItem(data: ProtectedContentData, kind: ProtectedKind, itemId: String): ProtectedContentData =
        data.copy(hiddenItems = data.hiddenItems.filterNot { it.kind == kind.storageKey && it.itemId == itemId })
}
