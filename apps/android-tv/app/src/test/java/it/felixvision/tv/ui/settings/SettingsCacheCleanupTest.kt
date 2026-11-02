package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.images.BYTES_PER_MB
import it.felixvision.tv.data.images.CacheCleanup
import it.felixvision.tv.data.update.UpdateFiles
import it.felixvision.tv.data.update.apkFileForVersion
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.io.File
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.shadows.ShadowLooper
import org.robolectric.annotation.Config

/**
 * "Svuota cache immagini" nella pagina "Impostazioni › Catalogo".
 *
 * Il test lavora su cartelle vere del contesto Robolectric: mette file finti in
 * `cacheDir/fvp_images` (la cache su disco di Coil) e in `cacheDir/updates`,
 * compone [SettingsCatalogPage] con lo spazio occupato calcolato da
 * [CacheCleanup] e attiva il pulsante con l'azione semantica, come fanno gli
 * altri test dei pulsanti tv-material.
 *
 * Tre cose devono restare vere dopo la pulizia: le due cartelle si svuotano,
 * l'APK di un aggiornamento in corso sopravvive (cancellarlo romperebbe
 * l'installazione) e il catalogo salvato in `filesDir` non viene toccato, perché
 * è l'unica copia dei dati letti dal server.
 *
 * I byte della cache in memoria dell'`ImageLoader` sono un valore fisso: in
 * Robolectric non c'è un ImageLoader con immagini caricate, e la pagina non lo
 * vede comunque (riceve solo i byte).
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsCacheCleanupTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private val context: Context
        get() = ApplicationProvider.getApplicationContext()

    /** Cache in memoria finta dell'ImageLoader: 1 MB. */
    private val memoryCacheBytes = BYTES_PER_MB

    private lateinit var imagesDir: File
    private lateinit var updatesDir: File
    private lateinit var apkInUso: File
    private lateinit var catalogCache: CatalogCache
    private lateinit var fileCatalogo: File

    @Before
    fun preparaCache() {
        context.cacheDir.mkdirs()
        context.filesDir.mkdirs()
        imagesDir = CacheCleanup.imageCacheDir(context.cacheDir).apply { mkdirs() }
        updatesDir = UpdateFiles.updatesDir(context).apply { mkdirs() }
        // L'APK della versione che si sta installando non va cancellato.
        apkInUso = apkFileForVersion(updatesDir, "1.0.3")
        scrivi(File(imagesDir, "logo.png"), megabytes = 3L)
        scrivi(File(imagesDir, "sub").apply { mkdirs() }.resolve("poster.jpg"), megabytes = 1L)
        scrivi(apkInUso, megabytes = 5L)
        scrivi(File(updatesDir, "FelixVP-1.0.2.apk"), megabytes = 1L)

        // Il catalogo salvato vive in filesDir, fuori dalle cache svuotabili.
        catalogCache = CatalogCache(context = context)
        fileCatalogo = catalogCache.fileFor(server = SERVER, username = UTENTE)
        runBlocking {
            catalogCache.save(
                server = SERVER,
                username = UTENTE,
                catalog = Catalog(updatedAtMillis = 1_700_000_000_000L),
            )
        }
        assertTrue("il catalogo salvato deve esistere prima della pulizia", fileCatalogo.exists())
    }

    @Test
    fun `la pagina Catalogo mostra lo spazio occupato senza l'APK in uso`() {
        mostraPagina()

        rule.onNodeWithTag(SETTINGS_PAGE_CATALOG_TAG).assertExists()
        rule.onNodeWithTag(SETTINGS_CACHE_SECTION_TAG).assertExists()
        // 3 MB + 1 MB di immagini, 1 MB del vecchio APK, 1 MB di memoria: 6 MB.
        // I 5 MB dell'APK in uso non contano.
        rule.onNodeWithTag(SETTINGS_CACHE_SIZE_TAG).assertTextEquals("6 MB")
        rule.onNodeWithTag(SETTINGS_CACHE_CLEAR_TAG).assertTextEquals(SETTINGS_CACHE_CLEAR_LABEL)
        rule.onNodeWithText(SETTINGS_CACHE_NOTE).assertExists()
    }

    @Test
    fun `Svuota cache svuota le cartelle, tiene l'APK in uso e dice quanti MB ha liberato`() {
        val testoCatalogo = fileCatalogo.readText()
        mostraPagina()

        rule.onNodeWithTag(SETTINGS_CACHE_CLEAR_TAG).performSemanticsAction(SemanticsActions.OnClick)
        attendiRisultato()

        rule.onNodeWithTag(SETTINGS_CACHE_RESULT_TAG)
            .assertTextEquals("Cache svuotata · liberati 6 MB")
        assertTrue(
            "la cartella delle immagini deve essere vuota: ${imagesDir.listFiles()?.toList()}",
            imagesDir.listFiles().isNullOrEmpty(),
        )
        assertEquals(
            "updates deve tenere solo l'APK in uso",
            listOf(apkInUso.name),
            updatesDir.listFiles()?.map { it.name },
        )
        assertTrue("l'APK in uso è stato cancellato", apkInUso.exists())
        assertTrue("il catalogo salvato è stato cancellato", fileCatalogo.exists())
        assertEquals("il catalogo salvato è cambiato", testoCatalogo, fileCatalogo.readText())
        // Dopo la pulizia lo spazio occupato è quello dell'APK rimasto, che non conta.
        assertEquals(
            0L,
            CacheCleanup.occupiedBytes(
                imagesDir = imagesDir,
                updatesDir = updatesDir,
                memoryCacheBytes = 0L,
                protectedApk = apkInUso,
            ),
        )
    }

    @Test
    fun `il catalogo salvato si rilegge anche dopo la pulizia`() {
        mostraPagina()

        rule.onNodeWithTag(SETTINGS_CACHE_CLEAR_TAG).performSemanticsAction(SemanticsActions.OnClick)
        attendiRisultato()
        rule.onNodeWithTag(SETTINGS_CACHE_RESULT_TAG).assertExists()

        val salvato = runBlocking { catalogCache.load(server = SERVER, username = UTENTE) }
        assertNotNull("il catalogo salvato non si rilegge più", salvato)
        assertEquals(1_700_000_000_000L, salvato?.catalog?.updatedAtMillis)
    }

    private fun mostraPagina() {
        val occupati = CacheCleanup.occupiedBytes(
            imagesDir = imagesDir,
            updatesDir = updatesDir,
            memoryCacheBytes = memoryCacheBytes,
            protectedApk = apkInUso,
        )
        rule.setContent {
            FvpTheme {
                SettingsCatalogPage(
                    state = SettingsUiState(),
                    scale = scale,
                    cacheBytes = occupati,
                    // La pagina non conosce Coil né il ViewModel: riceve i byte
                    // liberati, esattamente come fa SettingsScreen.
                    onClearCache = {
                        CacheCleanup.clear(
                            imagesDir = imagesDir,
                            updatesDir = updatesDir,
                            memoryCacheBytes = memoryCacheBytes,
                            protectedApk = apkInUso,
                        )
                    },
                )
            }
        }
        rule.waitForIdle()
    }

    /**
     * Aspetta il messaggio di cache svuotata: il pulsante lancia una coroutine
     * nello scope della composizione, che gira sul looper principale.
     */
    private fun attendiRisultato() {
        val scadenza = System.currentTimeMillis() + 5_000L
        while (System.currentTimeMillis() < scadenza && risultatoAssente()) {
            ShadowLooper.idleMainLooper()
            Thread.sleep(20L)
        }
        ShadowLooper.idleMainLooper()
        rule.waitForIdle()
        assertTrue("il messaggio di cache svuotata non è arrivato", !risultatoAssente())
    }

    private fun risultatoAssente(): Boolean =
        rule.onAllNodesWithTag(SETTINGS_CACHE_RESULT_TAG).fetchSemanticsNodes().isEmpty()

    private fun scrivi(file: File, megabytes: Long) {
        file.parentFile?.mkdirs()
        file.writeBytes(ByteArray((megabytes * BYTES_PER_MB).toInt()))
    }

    private companion object {
        /** Solo dati dimostrativi: nessun server reale. */
        const val SERVER = "http://server.esempio:8080"
        const val UTENTE = "demo"
    }
}
