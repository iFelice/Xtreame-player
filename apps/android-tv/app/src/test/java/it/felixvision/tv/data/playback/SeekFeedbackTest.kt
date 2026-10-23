package it.felixvision.tv.data.playback

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SeekFeedbackTest {

    @Test
    fun `prima pressione mostra dieci secondi`() {
        val feedback = SeekAccumulator.next(null, direction = 1, stepSeconds = 10, nowMillis = 1_000L)
        assertEquals("+10 s", feedback.label)
        assertEquals(1, feedback.direction)
    }

    @Test
    fun `pressioni ravvicinate si sommano`() {
        var feedback = SeekAccumulator.next(null, 1, 10, 1_000L)
        feedback = SeekAccumulator.next(feedback, 1, 10, 1_200L)
        assertEquals("+20 s", feedback.label)
        feedback = SeekAccumulator.next(feedback, 1, 10, 1_500L)
        assertEquals("+30 s", feedback.label)
    }

    @Test
    fun `verso opposto riparte da zero`() {
        var feedback = SeekAccumulator.next(null, 1, 10, 1_000L)
        feedback = SeekAccumulator.next(feedback, 1, 10, 1_100L)
        feedback = SeekAccumulator.next(feedback, -1, 10, 1_200L)
        assertEquals("−10 s", feedback.label)
        assertEquals(-1, feedback.direction)
    }

    @Test
    fun `oltre la finestra di un secondo e mezzo riparte`() {
        val first = SeekAccumulator.next(null, 1, 10, 1_000L)
        val afterWindow = SeekAccumulator.next(first, 1, 10, 2_501L)
        assertEquals("+10 s", afterWindow.label)

        val exactlyAtWindow = SeekAccumulator.next(first, 1, 10, 2_500L)
        assertEquals("+20 s", exactlyAtWindow.label)
    }

    @Test
    fun `con il tasto tenuto si somma il passo accelerato`() {
        var feedback = SeekAccumulator.next(null, 1, 10, 1_000L)
        feedback = SeekAccumulator.next(feedback, 1, 30, 1_300L)
        feedback = SeekAccumulator.next(feedback, 1, 60, 1_600L)
        assertEquals("+100 s", feedback.label)
    }

    @Test
    fun `visibilita limitata alla finestra`() {
        val feedback = SeekFeedback(direction = 1, seconds = 10, updatedAtMillis = 1_000L)
        assertTrue(SeekAccumulator.isVisible(feedback, 2_499L))
        assertFalse(SeekAccumulator.isVisible(feedback, 2_500L))
        assertFalse(SeekAccumulator.isVisible(null, 1_000L))
    }
}
