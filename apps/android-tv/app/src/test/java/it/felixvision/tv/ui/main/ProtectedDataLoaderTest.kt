@file:OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)

package it.felixvision.tv.ui.main

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.test.core.app.ApplicationProvider
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import java.util.concurrent.CopyOnWriteArrayList
import kotlinx.coroutines.launch
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class ProtectedDataLoaderTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `le modifiche non emettono null ma il cambio account si`() = runTest {
        val initialServer = "http://server.esempio:8080"
        val server = mutableStateOf(initialServer)
        val username = mutableStateOf("demo")
        val store = ProtectedContentStore(
            context = ApplicationProvider.getApplicationContext<Context>(),
            io = StandardTestDispatcher(testScheduler),
        )
        val observed = CopyOnWriteArrayList<ProtectedContentData?>()
        val category = HiddenCategory(ProtectedKind.LIVE.storageKey, "001", "News")
        val item = HiddenItem(ProtectedKind.VOD.storageKey, "001", "001", "Film di prova")

        // Un solo host: né le scritture né il cambio account ricreano setContent.
        rule.setContent {
            val data by rememberProtectedData(store, server.value, username.value)
            val current = data
            SideEffect { observed.add(current) }
        }
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            observed.lastOrNull() != null
        }
        assertEquals(ProtectedContentData(), observed.last())
        val firstLoadedIndex = observed.indexOfFirst { it != null }

        val categoryWrite = launch {
            store.toggleCategory(initialServer, username.value, ProtectedKind.LIVE, category.categoryId, category.name)
        }
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            categoryWrite.isCompleted
        }
        rule.waitForIdle()
        val afterCategory = ProtectedContentData(hiddenCategories = listOf(category))
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            observed.lastOrNull() == afterCategory
        }

        val itemWrite = launch {
            store.toggleItem(initialServer, username.value, ProtectedKind.VOD, item.itemId, item.categoryId, item.name)
        }
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            itemWrite.isCompleted
        }
        rule.waitForIdle()
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            observed.lastOrNull() == afterCategory.copy(hiddenItems = listOf(item))
        }
        assertTrue(observed.drop(firstLoadedIndex).none { it == null })

        val beforeAccountSwitch = observed.size
        rule.runOnIdle { server.value = "http://altro.esempio:8080" }
        // L'IO resta sospeso sul dispatcher di test finché il null del nuovo
        // account è osservato: anche una lettura veloce non può nasconderlo.
        rule.waitUntil(timeoutMillis = 5_000L) {
            observed.drop(beforeAccountSwitch).any { it == null }
        }
        rule.waitUntil(timeoutMillis = 5_000L) {
            testScheduler.runCurrent()
            observed.lastOrNull() != null
        }
        // L'altro account è vuoto, non eredita categoria e contenuto del primo.
        assertEquals(ProtectedContentData(), observed.last())
    }
}
