package it.felixvision.tv.data.catalog

/**
 * Stato dell'aggiornamento del catalogo, una riga per categoria.
 *
 * Le tappe restano quelle di [CatalogClient.loadCatalog] (Live, Film, Serie,
 * nello stesso ordine e sempre una richiesta alla volta): qui c'è solo la
 * rappresentazione per la finestra di Impostazioni.
 */
enum class CatalogSection(val label: String) {
    LIVE("Live"),
    FILM("Film"),
    SERIES("Serie"),
}

enum class CatalogSectionStatus {
    PENDING,
    DOWNLOADING,
    COMPLETED,
    ERROR,
}

/** Una tappa dell'aggiornamento, emessa da [CatalogClient.loadCatalog]. */
data class CatalogStage(
    val section: CatalogSection,
    val status: CatalogSectionStatus,
    val itemCount: Int = 0,
)

data class CatalogSectionProgress(
    val section: CatalogSection,
    val status: CatalogSectionStatus = CatalogSectionStatus.PENDING,
    val itemCount: Int = 0,
) {
    /** Testo mostrato nella finestra: nessuna percentuale. */
    val statusLabel: String
        get() = when (status) {
            CatalogSectionStatus.PENDING -> "In attesa"
            CatalogSectionStatus.DOWNLOADING -> "Scaricamento…"
            CatalogSectionStatus.COMPLETED -> "Completato ($itemCount elementi)"
            CatalogSectionStatus.ERROR -> "Errore"
        }
}

object CatalogRefresh {

    /** Tutte le righe "In attesa": stato iniziale di un nuovo aggiornamento. */
    fun idle(): List<CatalogSectionProgress> =
        CatalogSection.entries.map { CatalogSectionProgress(section = it) }

    /** Applica una tappa mantenendo l'ordine Live, Film, Serie. */
    fun apply(
        current: List<CatalogSectionProgress>,
        stage: CatalogStage,
    ): List<CatalogSectionProgress> {
        val base = if (current.isEmpty()) idle() else current
        return base.map { row ->
            if (row.section == stage.section) {
                row.copy(status = stage.status, itemCount = stage.itemCount)
            } else {
                row
            }
        }
    }

    /** Vero quando non restano righe in attesa o in corso ("Chiudi" attivo). */
    fun isFinished(current: List<CatalogSectionProgress>): Boolean =
        current.isNotEmpty() && current.none {
            it.status == CatalogSectionStatus.PENDING || it.status == CatalogSectionStatus.DOWNLOADING
        }

    fun hasError(current: List<CatalogSectionProgress>): Boolean =
        current.any { it.status == CatalogSectionStatus.ERROR }
}
