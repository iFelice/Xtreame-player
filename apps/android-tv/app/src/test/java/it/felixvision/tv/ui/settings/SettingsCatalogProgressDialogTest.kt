package it.felixvision.tv.ui.settings

import androidx.activity.ComponentActivity
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.data.catalog.CATALOG_BYTES_PER_MB
import it.felixvision.tv.data.catalog.CatalogRefresh
import it.felixvision.tv.data.catalog.CatalogSection
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import it.felixvision.tv.data.catalog.CatalogStage
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Test Robolectric della finestra di avanzamento dell'aggiornamento del
 * catalogo (Impostazioni › Catalogo): verifica per ciascuna sezione Live, Film,
 * Serie la barra di avanzamento e il testo a destra ("In attesa",
 * "62% · 14,8 di 23,9 MB" con totale noto, "14,8 MB" senza totale con barra
 * indeterminata animata, "Elaborazione…", "Completato · 21.277 elementi",
 * "Errore") e l'attivazione del pulsante "Chiudi" a fine aggiornamento.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class SettingsCatalogProgressDialogTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    @Test
    fun `la finestra mostra per ogni sezione percentuale con totale noto MB senza totale Elaborazione e Completato`() {
        rule.mainClock.autoAdvance = false
        var sections by mutableStateOf(CatalogRefresh.idle())
        var refreshing by mutableStateOf(true)
        var dismissed = false

        rule.setContent {
            FvpTheme {
                CatalogRefreshDialogContent(
                    catalogSections = sections,
                    catalogRefreshing = refreshing,
                    scale = scale,
                    onDismiss = { dismissed = true },
                )
            }
        }
        avanzaOrologio()

        rule.onNodeWithTag("settings_catalog_dialog").assertExists()
        rule.onNodeWithText("Aggiornamento catalogo").assertIsDisplayed()

        // Stato iniziale: tutte e tre le sezioni "In attesa" con barra vuota e "Chiudi" disattivato
        CatalogSection.entries.forEach { section ->
            val key = section.name.lowercase()
            rule.onNodeWithTag("settings_catalog_$key").assertExists()
            rule.onNodeWithText(section.label).assertIsDisplayed()
            rule.onNodeWithTag("settings_catalog_${key}_bar").assertExists()
            rule.onNodeWithTag("settings_catalog_${key}_bar_fill").assertDoesNotExist()
            rule.onNodeWithTag("settings_catalog_${key}_bar_indeterminate").assertDoesNotExist()
            rule.onNodeWithTag("settings_catalog_${key}_status").assertTextEquals("In attesa")
        }
        assertTrue(
            SemanticsProperties.Disabled in
                rule.onNodeWithTag("settings_catalog_close").fetchSemanticsNode().config,
        )

        val totalBytes = (23.9 * CATALOG_BYTES_PER_MB).toLong()
        val received62Bytes = (totalBytes * 0.62).toLong()
        val receivedUnknownTotalBytes = (14.8 * CATALOG_BYTES_PER_MB).toLong()

        // Verifica per ciascuna sezione Live, Film, Serie tutte le fasi richieste
        CatalogSection.entries.forEach { section ->
            val key = section.name.lowercase()

            // 1) Scaricamento con totale noto: barra proporzionale e "62% · 14,8 di 23,9 MB"
            sections = CatalogRefresh.apply(
                sections,
                CatalogStage(
                    section = section,
                    status = CatalogSectionStatus.DOWNLOADING,
                    bytesReceived = received62Bytes,
                    bytesTotal = totalBytes,
                ),
            )
            avanzaOrologio()
            rule.onNodeWithTag("settings_catalog_${key}_status")
                .assertTextEquals("62% · 14,8 di 23,9 MB")
            rule.onNodeWithTag("settings_catalog_${key}_bar_fill").assertExists()
            rule.onNodeWithTag("settings_catalog_${key}_bar_indeterminate").assertDoesNotExist()
            val barWidth = rule.onNodeWithTag("settings_catalog_${key}_bar")
                .fetchSemanticsNode().boundsInRoot.width
            val fillWidth = rule.onNodeWithTag("settings_catalog_${key}_bar_fill")
                .fetchSemanticsNode().boundsInRoot.width
            assertEquals(0.62f, fillWidth / barWidth, 0.03f)

            // 2) Scaricamento senza totale: barra indeterminata animata e "14,8 MB"
            sections = CatalogRefresh.apply(
                sections,
                CatalogStage(
                    section = section,
                    status = CatalogSectionStatus.DOWNLOADING,
                    bytesReceived = receivedUnknownTotalBytes,
                    bytesTotal = null,
                ),
            )
            avanzaOrologio()
            rule.onNodeWithTag("settings_catalog_${key}_status")
                .assertTextEquals("14,8 MB")
            rule.onNodeWithTag("settings_catalog_${key}_bar_indeterminate").assertExists()
            rule.onNodeWithTag("settings_catalog_${key}_bar_fill").assertDoesNotExist()
            // Avanza l'animazione della barra indeterminata
            rule.mainClock.advanceTimeBy(500)
            rule.waitForIdle()
            rule.onNodeWithTag("settings_catalog_${key}_bar_indeterminate").assertExists()

            // 3) Elaborazione: barra piena e "Elaborazione…"
            sections = CatalogRefresh.apply(
                sections,
                CatalogStage(
                    section = section,
                    status = CatalogSectionStatus.PROCESSING,
                    bytesReceived = totalBytes,
                    bytesTotal = totalBytes,
                ),
            )
            avanzaOrologio()
            rule.onNodeWithTag("settings_catalog_${key}_status")
                .assertTextEquals("Elaborazione…")
            rule.onNodeWithTag("settings_catalog_${key}_bar_fill").assertExists()
            rule.onNodeWithTag("settings_catalog_${key}_bar_indeterminate").assertDoesNotExist()
            val processingFillWidth = rule.onNodeWithTag("settings_catalog_${key}_bar_fill")
                .fetchSemanticsNode().boundsInRoot.width
            assertEquals(barWidth, processingFillWidth, 1f)

            // 4) Completato: barra piena e "Completato · 21.277 elementi"
            sections = CatalogRefresh.apply(
                sections,
                CatalogStage(
                    section = section,
                    status = CatalogSectionStatus.COMPLETED,
                    itemCount = 21_277,
                    bytesReceived = totalBytes,
                    bytesTotal = totalBytes,
                ),
            )
            avanzaOrologio()
            rule.onNodeWithTag("settings_catalog_${key}_status")
                .assertTextEquals("Completato · 21.277 elementi")
            rule.onNodeWithTag("settings_catalog_${key}_bar_fill").assertExists()
            val completedFillWidth = rule.onNodeWithTag("settings_catalog_${key}_bar_fill")
                .fetchSemanticsNode().boundsInRoot.width
            assertEquals(barWidth, completedFillWidth, 1f)
        }

        // Fine aggiornamento: "Chiudi" diventa attivo e chiude la finestra
        refreshing = false
        avanzaOrologio()
        val closeButton = rule.onNodeWithTag("settings_catalog_close")
        assertFalse(SemanticsProperties.Disabled in closeButton.fetchSemanticsNode().config)
        closeButton.performSemanticsAction(SemanticsActions.OnClick)
        avanzaOrologio()
        assertTrue(dismissed)
    }

    @Test
    fun `stato di errore mostra barra piena di errore e testo Errore`() {
        var sections = CatalogRefresh.idle()
        sections = CatalogRefresh.apply(
            sections,
            CatalogStage(CatalogSection.LIVE, CatalogSectionStatus.COMPLETED, itemCount = 21_277),
        )
        sections = CatalogRefresh.apply(
            sections,
            CatalogStage(CatalogSection.FILM, CatalogSectionStatus.ERROR),
        )

        rule.setContent {
            FvpTheme {
                CatalogRefreshDialogContent(
                    catalogSections = sections,
                    catalogRefreshing = false,
                    scale = scale,
                )
            }
        }
        rule.waitForIdle()

        rule.onNodeWithTag("settings_catalog_live_status")
            .assertTextEquals("Completato · 21.277 elementi")
        rule.onNodeWithTag("settings_catalog_film_status")
            .assertTextEquals("Errore")
        rule.onNodeWithTag("settings_catalog_film_bar_fill").assertExists()
        val barWidth = rule.onNodeWithTag("settings_catalog_film_bar")
            .fetchSemanticsNode().boundsInRoot.width
        val fillWidth = rule.onNodeWithTag("settings_catalog_film_bar_fill")
            .fetchSemanticsNode().boundsInRoot.width
        assertEquals(barWidth, fillWidth, 1f)
        rule.onNodeWithTag("settings_catalog_series_status")
            .assertTextEquals("In attesa")
    }

    private fun avanzaOrologio() {
        rule.mainClock.advanceTimeBy(64)
        rule.waitForIdle()
    }
}
