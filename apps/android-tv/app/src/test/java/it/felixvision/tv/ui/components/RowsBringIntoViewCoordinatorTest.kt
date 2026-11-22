package it.felixvision.tv.ui.components

import kotlinx.coroutines.awaitCancellation
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test

class RowsBringIntoViewCoordinatorTest {

    @Test
    fun `focus nella stessa riga non ripete richieste e cambio riga cancella quella pendente`() = runTest {
        val started = mutableListOf<Int>()
        val cancelled = mutableListOf<Int>()
        val coordinator = RowBringIntoViewCoordinator(backgroundScope) { rowIndex ->
            started += rowIndex
            try {
                awaitCancellation()
            } finally {
                cancelled += rowIndex
            }
        }

        coordinator.onRowFocused(1)
        coordinator.onRowFocused(1)
        runCurrent()
        assertEquals(listOf(1), started)
        assertEquals(emptyList<Int>(), cancelled)

        coordinator.onRowFocused(2)
        coordinator.onRowFocused(2)
        runCurrent()
        assertEquals(listOf(1, 2), started)
        assertEquals(listOf(1), cancelled)

        coordinator.onRowFocused(1)
        runCurrent()
        assertEquals(listOf(1, 2, 1), started)
        assertEquals(listOf(1, 2), cancelled)
    }
}
