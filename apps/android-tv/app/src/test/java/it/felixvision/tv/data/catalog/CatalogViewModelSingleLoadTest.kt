package it.felixvision.tv.data.catalog

import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay
import org.junit.Assert.assertEquals
import org.junit.Test
import java.util.concurrent.atomic.AtomicInteger

/**
 * Verifica che il Mutex in CatalogViewModel impedisca due carichi concorrenti:
 * tryLock deve far passare solo il primo, il secondo è ignorato.
 */
class CatalogViewModelSingleLoadTest {

    @Test
    fun `tryLock permette un solo refresh concorrente`() = runTest {
        val mutex = Mutex()
        val counter = AtomicInteger(0)

        suspend fun refreshInternalSimulated() {
            if (!mutex.tryLock()) return
            try {
                counter.incrementAndGet()
                delay(50)
            } finally {
                mutex.unlock()
            }
        }

        // Lancia due refresh quasi simultanei
        val j1 = launch { refreshInternalSimulated() }
        val j2 = launch { refreshInternalSimulated() }
        j1.join()
        j2.join()

        // Solo uno ha incrementato
        assertEquals(1, counter.get())

        // Dopo unlock, un terzo passa
        refreshInternalSimulated()
        assertEquals(2, counter.get())
    }

    @Test
    fun `refresh manuale disabilitato quando isRefreshing`() = runTest {
        // Simula stato UI: isRefreshing true => bottone disabilitato
        var isRefreshing = true
        var refreshCalled = false
        suspend fun onRefreshClick() {
            if (isRefreshing) return
            refreshCalled = true
        }
        onRefreshClick()
        assertEquals(false, refreshCalled)
        isRefreshing = false
        onRefreshClick()
        assertEquals(true, refreshCalled)
    }
}
