package it.felixvision.tv.data.images

import java.io.File
import java.nio.file.Files
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/**
 * La pulizia delle cache è logica pura su [File]: qui bastano cartelle vere sul
 * disco, senza Robolectric né Android.
 */
class CacheCleanupTest {

    private lateinit var root: File
    private lateinit var cacheDir: File
    private lateinit var filesDir: File
    private lateinit var imagesDir: File
    private lateinit var updatesDir: File

    @Before
    fun setUp() {
        root = Files.createTempDirectory("fvp-cache-test").toFile()
        cacheDir = File(root, "cache").apply { mkdirs() }
        filesDir = File(root, "files").apply { mkdirs() }
        imagesDir = CacheCleanup.imageCacheDir(cacheDir).apply { mkdirs() }
        updatesDir = File(cacheDir, "updates").apply { mkdirs() }
    }

    @After
    fun tearDown() {
        root.deleteRecursively()
    }

    @Test
    fun `la cartella delle immagini è cacheDir-fvp_images`() {
        assertEquals(File(cacheDir, "fvp_images"), CacheCleanup.imageCacheDir(cacheDir))
        assertEquals("fvp_images", IMAGE_CACHE_DIR_NAME)
    }

    @Test
    fun `lo spazio occupato conta immagini, aggiornamenti e memoria senza l'APK in uso`() {
        writeFile(File(imagesDir, "logo.png"), megabytes = 3L)
        writeFile(File(updatesDir, "FelixVP-1.0.3.apk"), megabytes = 5L)
        writeFile(File(updatesDir, "FelixVP-1.0.2.apk"), megabytes = 2L)
        val apkInUso = File(updatesDir, "FelixVP-1.0.3.apk")

        val occupied = CacheCleanup.occupiedBytes(
            imagesDir = imagesDir,
            updatesDir = updatesDir,
            memoryCacheBytes = MB,
            protectedApk = apkInUso,
        )

        // 3 MB di immagini + 2 MB del vecchio APK + 1 MB di memoria: l'APK in uso non conta.
        // Lo stesso conto torna dopo la pulizia: 5 MB di immagini (con la sottocartella),
        // 2 MB del vecchio APK e 1 MB di memoria.
        assertEquals(6L, CacheCleanup.megabytes(occupied))
    }

    @Test
    fun `la pulizia svuota le due cartelle e lascia l'APK di un aggiornamento in corso`() {
        writeFile(File(imagesDir, "logo.png"), megabytes = 3L)
        writeFile(File(imagesDir, "journal.tmp"), megabytes = 1L)
        writeFile(File(imagesDir, "sub").apply { mkdirs() }.resolve("poster.jpg"), megabytes = 1L)
        val apkInUso = File(updatesDir, "FelixVP-1.0.3.apk")
        writeFile(apkInUso, megabytes = 5L)
        writeFile(File(updatesDir, "FelixVP-1.0.2.apk"), megabytes = 2L)
        writeFile(File(filesDir, "catalog_demo.json"), megabytes = 1L)

        val freed = CacheCleanup.clear(
            imagesDir = imagesDir,
            updatesDir = updatesDir,
            memoryCacheBytes = MB,
            protectedApk = apkInUso,
        )

        assertEquals("byte liberati", 8L, CacheCleanup.megabytes(freed))
        assertTrue("cartella immagini ancora piena: ${imagesDir.listFiles()?.toList()}", imagesDir.listFiles().isNullOrEmpty())
        assertEquals("updates deve tenere solo l'APK in uso", listOf("FelixVP-1.0.3.apk"), updatesDir.listFiles()?.map { it.name })
        assertTrue("APK in uso cancellato", apkInUso.exists())
        assertTrue("le cartelle restano, vuote", imagesDir.isDirectory && updatesDir.isDirectory)
        // Il catalogo salvato vive in filesDir: nessuna delle cache lo conosce.
        assertTrue("catalogo salvato cancellato", File(filesDir, "catalog_demo.json").exists())
    }

    @Test
    fun `senza APK in uso la cartella degli aggiornamenti si svuota del tutto`() {
        writeFile(File(updatesDir, "FelixVP-1.0.3.apk"), megabytes = 5L)

        val freed = CacheCleanup.clear(
            imagesDir = imagesDir,
            updatesDir = updatesDir,
            memoryCacheBytes = 0L,
            protectedApk = null,
        )

        assertEquals(5L, CacheCleanup.megabytes(freed))
        assertTrue(updatesDir.listFiles().isNullOrEmpty())
    }

    @Test
    fun `cartelle mancanti e cache vuote non danno errori né byte`() {
        val mancante = File(cacheDir, "assente")

        assertEquals(0L, CacheCleanup.dirBytes(mancante))
        assertEquals(0L, CacheCleanup.occupiedBytes(mancante, mancante, 0L, null))
        assertEquals(0L, CacheCleanup.clear(mancante, mancante, 0L, null))
        assertFalse(mancante.exists())
    }

    @Test
    fun `i byte negativi della memoria contano come zero`() {
        writeFile(File(imagesDir, "logo.png"), megabytes = 2L)

        assertEquals(
            2L * MB,
            CacheCleanup.occupiedBytes(imagesDir, updatesDir, memoryCacheBytes = -5L, protectedApk = null),
        )
    }

    @Test
    fun `i megabyte sono arrotondati all'unità`() {
        assertEquals(0L, CacheCleanup.megabytes(0L))
        assertEquals(0L, CacheCleanup.megabytes(MB / 3))
        assertEquals(1L, CacheCleanup.megabytes(MB))
        assertEquals(2L, CacheCleanup.megabytes(MB + MB / 2 + 1L))
        assertEquals("i byte negativi non esistono, ma non rompono il conto", 0L, CacheCleanup.megabytes(-MB))
    }

    private fun writeFile(file: File, megabytes: Long) {
        file.parentFile?.mkdirs()
        file.writeBytes(ByteArray((megabytes * MB).toInt()))
    }

    private companion object {
        const val MB = BYTES_PER_MB
    }
}
