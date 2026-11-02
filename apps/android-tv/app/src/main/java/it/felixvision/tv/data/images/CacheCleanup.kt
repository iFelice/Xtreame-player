package it.felixvision.tv.data.images

import java.io.File

/** Nome della cartella della cache su disco delle immagini, dentro `cacheDir`. */
const val IMAGE_CACHE_DIR_NAME = "fvp_images"

/** Byte in un megabyte: i messaggi all'utente parlano di MB. */
const val BYTES_PER_MB = 1_048_576L

/**
 * Spazio occupato dalle cache che l'app può ricostruire e loro pulizia.
 *
 * Le cache svuotabili sono tre: le immagini scaricate da Coil su disco
 * (`cacheDir/fvp_images`), la cache in memoria dell'`ImageLoader` (misurata da
 * chi chiama, che è l'unico a vederla) e i file scaricati in `cacheDir/updates`.
 *
 * Il catalogo salvato in `filesDir` NON è tra queste: è l'unica copia dei dati
 * letti dal server e ricostruirlo costa un'intera sessione di richieste, quindi
 * non viene mai toccato.
 *
 * Un APK già scaricato per un aggiornamento in corso non va cancellato: chi
 * chiama lo indica con `protectedApk` e il file resta al suo posto, escluso sia
 * dal conto dello spazio occupato sia da quello dello spazio liberato.
 *
 * Funzioni pure su [File], senza dipendenze dalla UI né da Coil: la stessa
 * regola vale per tutto `data/`, che è compilato anche dall'app per il tablet.
 */
object CacheCleanup {

    /** Cartella della cache su disco delle immagini dentro [cacheDir]. */
    fun imageCacheDir(cacheDir: File): File = File(cacheDir, IMAGE_CACHE_DIR_NAME)

    /** Byte occupati da [dir], ricorsivamente; [skip] non conta. */
    fun dirBytes(dir: File, skip: File? = null): Long {
        if (!dir.exists()) return 0L
        var total = 0L
        dir.walkTopDown().forEach { file ->
            if (file.isFile && !isSameFile(file, skip)) {
                total += file.length()
            }
        }
        return total
    }

    /**
     * Byte occupati dalle cache svuotabili: immagini su disco, cache in memoria
     * dell'`ImageLoader` e file degli aggiornamenti, senza [protectedApk].
     */
    fun occupiedBytes(
        imagesDir: File,
        updatesDir: File,
        memoryCacheBytes: Long,
        protectedApk: File?,
    ): Long = dirBytes(imagesDir) +
        dirBytes(updatesDir, skip = protectedApk) +
        memoryCacheBytes.coerceAtLeast(0L)

    /**
     * Svuota le cache: cancella il contenuto di [imagesDir] e di [updatesDir]
     * (lasciando le cartelle, che Coil e l'installer ricreano comunque) e
     * restituisce i byte liberati, cache in memoria compresa.
     *
     * [protectedApk] non viene cancellato. Chi chiama svuota anche la cache in
     * memoria dell'`ImageLoader`, che vive nel processo e non su disco.
     */
    fun clear(
        imagesDir: File,
        updatesDir: File,
        memoryCacheBytes: Long,
        protectedApk: File?,
    ): Long {
        val freedImages = deleteContents(imagesDir, skip = null)
        val freedUpdates = deleteContents(updatesDir, skip = protectedApk)
        return freedImages + freedUpdates + memoryCacheBytes.coerceAtLeast(0L)
    }

    /** Megabyte arrotondati all'unità, per i messaggi all'utente. */
    fun megabytes(bytes: Long): Long =
        (bytes.coerceAtLeast(0L) + BYTES_PER_MB / 2) / BYTES_PER_MB

    /** Cancella i figli di [dir] tranne [skip]; restituisce i byte cancellati. */
    private fun deleteContents(dir: File, skip: File?): Long {
        if (!dir.exists()) return 0L
        val children = dir.listFiles() ?: return 0L
        var freed = 0L
        children.forEach { child ->
            if (isSameFile(child, skip)) return@forEach
            freed += subtreeBytes(child)
            val deleted = if (child.isDirectory) child.deleteRecursively() else child.delete()
            if (!deleted) {
                // Il file è ancora lì (permesso o corsa con uno scaricamento):
                // lo spazio non è liberato e non va contato.
                freed -= subtreeBytes(child)
            }
        }
        return freed.coerceAtLeast(0L)
    }

    /** Byte di [file] o, se è una cartella, di tutto il suo contenuto. */
    private fun subtreeBytes(file: File): Long =
        if (file.isDirectory) dirBytes(file) else file.length()

    /** Confronto tra percorsi: lo stesso file anche se scritto in modo diverso. */
    private fun isSameFile(file: File, other: File?): Boolean {
        if (other == null) return false
        if (file == other) return true
        return runCatching { file.canonicalPath == other.canonicalPath }.getOrDefault(false)
    }
}
