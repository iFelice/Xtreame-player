package it.felixvision.tv.data.catalog

import java.util.Locale
import kotlin.math.abs
import kotlin.math.roundToInt

/** Byte in un megabyte (1024 × 1024), per la formattazione dell'avanzamento. */
const val CATALOG_BYTES_PER_MB = 1_048_576.0

/**
 * Stato dell'aggiornamento del catalogo, una riga per categoria.
 *
 * Nuova regola di caricamento (non più "sempre una richiesta alla volta"):
 * [CatalogClient.loadCatalog] avvia Live, Film e Serie insieme con
 * coroutineScope/async, al massimo 3 richieste contemporanee (una per
 * sezione); dentro ogni sezione resta l'ordine categorie → elenco. Le righe
 * della finestra restano nell'ordine Live, Film, Serie, ma le tappe arrivano
 * interlacciate: [CatalogRefresh.apply] non presume più alcun ordine fra
 * sezioni diverse.
 *
 * Misure reali sul provider in uso (curl dal Mac, risposta gzip):
 * - get_live_streams ≈ 0,6 s;
 * - get_vod_streams ≈ 21 s (6,9 MB non compressi, 1,1 MB compressi: lo
 *   stesso tempo indica elaborazione lato server, non banda);
 * - get_series ≈ 15 s.
 * In sequenza ≈ 37 s; Film e Serie richiesti insieme ≈ 22 s in tutto: il
 * pannello regge le richieste contemporanee senza rallentare. Il pannello non
 * invia ETag, Last-Modified né Cache-Control: le richieste condizionali non
 * sono possibili, quindi la velocizzazione passa solo dal parallelo.
 */
enum class CatalogSection(val label: String) {
    LIVE("Live"),
    FILM("Film"),
    SERIES("Serie"),
}

enum class CatalogSectionStatus {
    PENDING,
    DOWNLOADING,
    PROCESSING,
    COMPLETED,
    ERROR,
}

/**
 * Una tappa dell'aggiornamento, emessa da [CatalogClient.loadCatalog].
 *
 * @param bytesReceived byte letti finora dalla risposta dell'elenco della sezione.
 * @param bytesTotal dimensione totale in byte (da `Content-Length`), oppure `null` se sconosciuta.
 */
data class CatalogStage(
    val section: CatalogSection,
    val status: CatalogSectionStatus,
    val itemCount: Int = 0,
    val bytesReceived: Long = 0L,
    val bytesTotal: Long? = null,
)

data class CatalogSectionProgress(
    val section: CatalogSection,
    val status: CatalogSectionStatus = CatalogSectionStatus.PENDING,
    val itemCount: Int = 0,
    val bytesReceived: Long = 0L,
    val bytesTotal: Long? = null,
) {
    /** Percentuale intera (0..100) quando il totale dei byte è noto, altrimenti `null`. */
    val progressPercent: Int?
        get() {
            val total = bytesTotal
            if (total == null || total <= 0L) return null
            val safeReceived = bytesReceived.coerceAtLeast(0L)
            return if (safeReceived >= total) {
                100
            } else {
                ((safeReceived.toDouble() * 100.0) / total.toDouble())
                    .roundToInt()
                    .coerceIn(0, 99)
            }
        }

    /** Vero durante lo scaricamento quando il totale dei byte non è noto. */
    val isIndeterminate: Boolean
        get() = status == CatalogSectionStatus.DOWNLOADING && (bytesTotal == null || bytesTotal <= 0L)

    /**
     * Frazione di riempimento della barra (tra 0f e 1f):
     * - 0f in attesa o in scaricamento senza totale noto;
     * - proporzionale ai byte ricevuti quando il totale è noto;
     * - 1f in elaborazione, completato o errore.
     */
    val progressFraction: Float
        get() = when (status) {
            CatalogSectionStatus.PENDING -> 0f
            CatalogSectionStatus.DOWNLOADING -> {
                val total = bytesTotal
                if (total != null && total > 0L) {
                    (bytesReceived.coerceAtLeast(0L).toDouble() / total.toDouble())
                        .toFloat()
                        .coerceIn(0f, 1f)
                } else {
                    0f
                }
            }
            CatalogSectionStatus.PROCESSING,
            CatalogSectionStatus.COMPLETED,
            CatalogSectionStatus.ERROR,
            -> 1f
        }

    /** Testo mostrato a destra della barra nella finestra di aggiornamento. */
    val statusLabel: String
        get() = when (status) {
            CatalogSectionStatus.PENDING -> "In attesa"
            CatalogSectionStatus.DOWNLOADING -> {
                val total = bytesTotal
                val receivedMb = CatalogRefresh.formatMegabytes(bytesReceived)
                val pct = progressPercent
                if (total != null && total > 0L && pct != null) {
                    val totalMb = CatalogRefresh.formatMegabytes(total)
                    "$pct% · $receivedMb di $totalMb MB"
                } else {
                    "$receivedMb MB"
                }
            }
            CatalogSectionStatus.PROCESSING -> "Elaborazione…"
            CatalogSectionStatus.COMPLETED -> "Completato · ${CatalogRefresh.formatCount(itemCount)} elementi"
            CatalogSectionStatus.ERROR -> "Errore"
        }
}

object CatalogRefresh {

    /** Tutte le righe "In attesa": stato iniziale di un nuovo aggiornamento. */
    fun idle(): List<CatalogSectionProgress> =
        CatalogSection.entries.map { CatalogSectionProgress(section = it) }

    /**
     * Applica una tappa mantenendo sempre l'ordine Live, Film, Serie.
     *
     * Con le tre sezioni in parallelo le tappe di sezioni diverse si
     * interlacciano: la riga da aggiornare si cerca per [CatalogStage.section]
     * (non per posizione) e l'elenco viene ricostruito dall'ordine canonico,
     * così anche una lista parziale o in ordine diverso viene normalizzata.
     * Una riga già conclusa (COMPLETED o ERROR) non torna indietro su una
     * tappa di scaricamento/elaborazione arrivata in ritardo.
     */
    fun apply(
        current: List<CatalogSectionProgress>,
        stage: CatalogStage,
    ): List<CatalogSectionProgress> {
        val bySection = current.associateBy { it.section }
        return CatalogSection.entries.map { section ->
            val row = bySection[section] ?: CatalogSectionProgress(section = section)
            if (section != stage.section) return@map row
            val isTerminal = row.status == CatalogSectionStatus.COMPLETED ||
                row.status == CatalogSectionStatus.ERROR
            val isLateProgress = stage.status == CatalogSectionStatus.DOWNLOADING ||
                stage.status == CatalogSectionStatus.PROCESSING
            if (isTerminal && isLateProgress) return@map row
            row.copy(
                status = stage.status,
                itemCount = stage.itemCount,
                bytesReceived = stage.bytesReceived,
                bytesTotal = stage.bytesTotal,
            )
        }
    }

    /** Vero quando non restano righe in attesa o in corso ("Chiudi" attivo). */
    fun isFinished(current: List<CatalogSectionProgress>): Boolean =
        current.isNotEmpty() && current.none {
            it.status == CatalogSectionStatus.PENDING ||
                it.status == CatalogSectionStatus.DOWNLOADING ||
                it.status == CatalogSectionStatus.PROCESSING
        }

    fun hasError(current: List<CatalogSectionProgress>): Boolean =
        current.any { it.status == CatalogSectionStatus.ERROR }

    /** Formatta un numero di byte in MB con una cifra decimale e la virgola ("14,8"). */
    fun formatMegabytes(bytes: Long): String {
        val mb = bytes.coerceAtLeast(0L).toDouble() / CATALOG_BYTES_PER_MB
        return String.format(Locale.US, "%.1f", mb).replace('.', ',')
    }

    /** Formatta un intero con il punto delle migliaia ("21.277"). */
    fun formatCount(count: Int): String {
        val negative = count < 0
        val digits = abs(count.toLong()).toString()
        val grouped = digits.reversed().chunked(3).joinToString(".").reversed()
        return if (negative) "-$grouped" else grouped
    }
}
