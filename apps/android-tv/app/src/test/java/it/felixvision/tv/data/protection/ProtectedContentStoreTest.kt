package it.felixvision.tv.data.protection

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ProtectedContentStoreTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"

    private fun context(): Context = ApplicationProvider.getApplicationContext()

    private fun store() = ProtectedContentStore(context = context())

    @Test
    fun `senza PIN l archivio e vuoto`() = runTest {
        val store = store()
        val data = store.get(server, username)
        assertFalse(data.hasPin)
        assertTrue(data.hiddenCategories.isEmpty())
        assertTrue(data.hiddenItems.isEmpty())
        // Senza PIN salvato nessuna verifica passa.
        assertFalse(store.verifyPin(server, username, "1234"))
        assertEquals(0L, store.revision.value)
    }

    @Test
    fun `setPin poi verifyPin accetta solo il PIN giusto`() = runTest {
        val store = store()
        val updated = store.setPin(server, username, "4321")
        assertTrue(updated.hasPin)
        assertTrue(store.verifyPin(server, username, "4321"))
        assertFalse(store.verifyPin(server, username, "1234"))
        // Nell'archivio resta solo l'hash: il PIN in chiaro non è salvato.
        val stored = store.get(server, username)
        assertNotEquals("4321", stored.pinHash)
        assertNotEquals("4321", stored.pinSalt)
        assertTrue(stored.pinIterations > 0)
    }

    @Test
    fun `setPin conserva gli elenchi nascosti`() = runTest {
        val store = store()
        store.toggleCategory(server, username, ProtectedKind.LIVE, "001", "News")
        store.toggleItem(server, username, ProtectedKind.VOD, "201", "007", "Il film inventato")
        store.setPin(server, username, "0909")
        val data = store.get(server, username)
        assertTrue(data.hasPin)
        assertEquals(1, data.hiddenCategories.size)
        assertEquals("News", data.hiddenCategories.first().name)
        assertEquals(1, data.hiddenItems.size)
        assertTrue(ProtectedContentRules.isItemHidden(data, ProtectedKind.VOD, "201", "007"))
        // Un secondo PIN sostituisce l'hash, gli elenchi restano.
        store.setPin(server, username, "7777")
        assertTrue(store.verifyPin(server, username, "7777"))
        assertFalse(store.verifyPin(server, username, "0909"))
        assertEquals(1, store.get(server, username).hiddenCategories.size)
    }

    @Test
    fun `toggle e rimozione passano dalla revisione`() = runTest {
        val store = store()
        val start = store.revision.value
        val afterToggle = store.toggleCategory(server, username, ProtectedKind.SERIES, "010", "Cartoni")
        assertTrue(ProtectedContentRules.isCategoryHidden(afterToggle, ProtectedKind.SERIES, "010"))
        assertTrue(store.revision.value > start)
        val afterRemove = store.removeCategory(server, username, ProtectedKind.SERIES, "010")
        assertFalse(ProtectedContentRules.isCategoryHidden(afterRemove, ProtectedKind.SERIES, "010"))
        val afterRemoval = store.revision.value
        assertTrue(afterRemoval > start)
        // Un'operazione che non cambia nulla non scrive e non tocca la revisione.
        store.removeItem(server, username, ProtectedKind.LIVE, "inesistente")
        assertEquals(afterRemoval, store.revision.value)
    }

    @Test
    fun `account separati non condividono nulla`() = runTest {
        val store = store()
        store.setPin(server, username, "1111")
        store.toggleCategory(server, username, ProtectedKind.SERIES, "010", "Cartoni")
        val other = store.get(server, "altro")
        assertFalse(other.hasPin)
        assertTrue(other.hiddenCategories.isEmpty())
        assertFalse(store.verifyPin(server, "altro", "1111"))
        // A ritroso: "1111" vale solo per demo.
        assertTrue(store.verifyPin(server, username, "1111"))
    }
}
