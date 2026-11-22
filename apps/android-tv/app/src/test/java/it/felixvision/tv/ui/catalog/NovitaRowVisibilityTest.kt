package it.felixvision.tv.ui.catalog

import androidx.compose.ui.geometry.Rect
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class NovitaRowVisibilityTest {

    private val viewport = Rect(left = 0f, top = 0f, right = 100f, bottom = 100f)

    @Test
    fun `riga interamente nel viewport non richiede bring into view`() {
        assertTrue(isFullyVisibleInViewport(Rect(10f, 10f, 90f, 90f), viewport))
    }

    @Test
    fun `riga tagliata dal viewport richiede bring into view`() {
        assertFalse(isFullyVisibleInViewport(Rect(10f, 80f, 90f, 110f), viewport))
    }

    @Test
    fun `bounds non disponibili non vengono considerate visibili`() {
        assertFalse(isFullyVisibleInViewport(null, viewport))
        assertFalse(isFullyVisibleInViewport(Rect(10f, 10f, 90f, 90f), null))
    }
}
