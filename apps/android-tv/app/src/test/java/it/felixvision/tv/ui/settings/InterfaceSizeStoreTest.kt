package it.felixvision.tv.ui.settings

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

/**
 * Archivio della dimensione interfaccia in SharedPreferences.
 *
 * La lettura è sincrona: chi crea lo store ha subito il valore salvato, senza
 * attendere un flusso. Il secondo test simula il riavvio dell'app creando una
 * nuova istanza dello store dopo aver salvato "Grande".
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class InterfaceSizeStoreTest {

    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Test
    fun `senza valore salvato la dimensione e' Compatta`() {
        // Archivio vuoto: nessun valore scritto da un avvio precedente.
        context.getSharedPreferences("fvp_ui", Context.MODE_PRIVATE).edit().clear().commit()

        val store = InterfaceSizeStore(context)

        assertEquals(InterfaceSize.COMPACT, store.size.value)
    }

    @Test
    fun `set Grande resta dopo un riavvio`() {
        val store = InterfaceSizeStore(context)
        store.set(InterfaceSize.LARGE)
        assertEquals(InterfaceSize.LARGE, store.size.value)

        // Nuova istanza come dopo un riavvio dell'app: legge lo stesso file.
        val restarted = InterfaceSizeStore(context)
        assertEquals(InterfaceSize.LARGE, restarted.size.value)
    }
}
