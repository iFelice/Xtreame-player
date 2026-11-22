package it.felixvision.tv.ui.components

import androidx.compose.foundation.relocation.BringIntoViewRequester
import androidx.compose.foundation.relocation.bringIntoViewRequester
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch

/**
 * Coalesces row visibility requests: horizontal focus movement within the same
 * row must not repeatedly interrupt its vertical bring-into-view animation.
 */
internal class RowBringIntoViewCoordinator(
    private val scope: CoroutineScope,
    private val bringIntoView: suspend (Int) -> Unit,
) {
    private var lastRequestedRow: Int? = null
    private var pendingRequest: Job? = null

    fun onRowFocused(rowIndex: Int) {
        if (lastRequestedRow == rowIndex) return
        lastRequestedRow = rowIndex
        pendingRequest?.cancel()
        pendingRequest = scope.launch {
            try {
                bringIntoView(rowIndex)
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                // The row can detach while focus moves to another section.
            }
        }
    }
}

/**
 * Porta in vista l'intera riga di una sezione a righe (titolo compreso) quando
 * una sua card riceve il focus.
 *
 * Serve perché le card si ingrandiscono con il focus (1.04–1.05) e hanno una
 * cornice: senza questo, con lo spazio ridotto o con una scala grande, l'ultima
 * riga (o la prima) resterebbe tagliata dal bordo dello schermo. Le richieste
 * sono indicizzate per riga, così ogni riga ha il proprio requester e non si
 * creano oggetti durante la composizione.
 */
class RowsBringIntoViewer(private val scope: CoroutineScope) {

    private val requesters = mutableMapOf<Int, BringIntoViewRequester>()
    private val coordinator = RowBringIntoViewCoordinator(scope) { rowIndex ->
        val requester = requesters[rowIndex]
        if (requester != null) requester.bringIntoView()
    }

    /** Requester della riga [rowIndex]; va applicato al contenitore della riga. */
    fun requester(rowIndex: Int): BringIntoViewRequester =
        requesters.getOrPut(rowIndex) { BringIntoViewRequester() }

    /** Modifier del contenitore della riga: la rende raggiungibile dal focus. */
    fun rowModifier(rowIndex: Int): Modifier =
        Modifier.bringIntoViewRequester(requester(rowIndex))

    /** Da chiamare quando una card della riga riceve il focus. */
    fun onRowFocused(rowIndex: Int) {
        if (requesters[rowIndex] == null) return
        coordinator.onRowFocused(rowIndex)
    }
}

@Composable
fun rememberRowsBringIntoViewer(): RowsBringIntoViewer {
    val scope = rememberCoroutineScope()
    return remember(scope) { RowsBringIntoViewer(scope) }
}
