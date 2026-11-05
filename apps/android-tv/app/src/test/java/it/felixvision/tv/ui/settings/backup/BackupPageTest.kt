package it.felixvision.tv.ui.settings.backup

import androidx.activity.ComponentActivity
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertTextEquals
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.SETTINGS_PAGE_BACKUP_TAG
import it.felixvision.tv.ui.settings.SETTINGS_PAGE_TITLE_TAG
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Pagina "Impostazioni › Backup": titolo, descrizione e i due pulsanti
 * "Esporta backup" e "Importa backup". I pulsanti sono tv-material, quindi OK
 * si prova con l'azione semantica `SemanticsActions.OnClick`. Un solo
 * `setContent` per test.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class BackupPageTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    private val scale = UiScale(1f)

    private fun showPage(onExport: () -> Unit = {}, onImport: () -> Unit = {}) {
        rule.setContent {
            FvpTheme {
                BackupPage(
                    scale = scale,
                    onExport = onExport,
                    onImport = onImport,
                )
            }
        }
        rule.waitForIdle()
    }

    @Test
    fun `la pagina mostra titolo descrizione e due pulsanti`() {
        showPage()

        rule.onNodeWithTag(SETTINGS_PAGE_BACKUP_TAG).assertIsDisplayed()
        rule.onNodeWithTag(SETTINGS_PAGE_TITLE_TAG).assertTextEquals("Impostazioni › Backup")
        rule.onNodeWithTag(BACKUP_EXPORT_TAG).assertIsDisplayed()
        rule.onNodeWithTag(BACKUP_IMPORT_TAG).assertIsDisplayed()
    }

    @Test
    fun `OK su Esporta apre l'esportazione`() {
        var exportCalls = 0
        showPage(onExport = { exportCalls++ })

        rule.onNodeWithTag(BACKUP_EXPORT_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, exportCalls)
    }

    @Test
    fun `OK su Importa apre l'importazione`() {
        var importCalls = 0
        showPage(onImport = { importCalls++ })

        rule.onNodeWithTag(BACKUP_IMPORT_TAG).performSemanticsAction(SemanticsActions.OnClick)
        rule.waitForIdle()

        assertEquals(1, importCalls)
    }

    @Test
    fun `i pulsanti stanno nell'ordine esporta poi importa`() {
        showPage()

        val export = rule.onNodeWithTag(BACKUP_EXPORT_TAG).fetchSemanticsNode().boundsInRoot
        val import = rule.onNodeWithTag(BACKUP_IMPORT_TAG).fetchSemanticsNode().boundsInRoot
        assertTrue("Importa non sta sotto Esporta", import.top >= export.bottom - 1f)
    }
}
