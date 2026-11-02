package it.felixvision.tv.data.catalog

/**
 * Appartenenza di un contenuto alle categorie del provider.
 *
 * `category_id` è la categoria principale; `category_ids` (quando il pannello
 * lo manda) è l'elenco completo: un film assegnato ad "Azione" e a "Ultimi
 * usciti" compare in entrambe. Il contenuto va quindi cercato con
 * "appartiene a" e non con "è uguale a".
 *
 * L'insieme risultante non contiene identificativi vuoti (né la primaria
 * vuota o assente) e non ha doppioni: la primaria è inclusa anche quando
 * l'elenco del provider la ripete o la omette. L'ordine interno non conta:
 * l'ordine mostrato dentro una categoria resta quello dell'elenco del
 * provider, non questo insieme.
 */
fun allCategoryIds(primary: String?, others: List<String>): Set<String> {
    val ids = LinkedHashSet<String>(others.size + 1)
    primary?.trim()?.takeIf { it.isNotEmpty() }?.let { ids += it }
    for (other in others) {
        other.trim().takeIf { it.isNotEmpty() }?.let { ids += it }
    }
    return ids
}

/** Categorie del film: principale + elenco completo, senza vuoti né doppioni. */
val VodStream.allCategoryIds: Set<String>
    get() = allCategoryIds(categoryId, categoryIds)

/** Categorie del canale: principale + elenco completo, senza vuoti né doppioni. */
val LiveStream.allCategoryIds: Set<String>
    get() = allCategoryIds(categoryId, categoryIds)

/** Categorie della serie: principale + elenco completo, senza vuoti né doppioni. */
val SeriesItem.allCategoryIds: Set<String>
    get() = allCategoryIds(categoryId, categoryIds)
