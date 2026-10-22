package it.felixvision.tv.ui.components

import android.view.KeyEvent as AndroidKeyEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class FvpLongPressTest {

    @Test
    fun `flag long press triggers once and consumes UP`() {
        var longPressCalls = 0
        var clickCalls = 0
        val handler = FvpLongPressHandler { longPressCalls++ }

        // DOWN with FLAG_LONG_PRESS
        val downFlag = AndroidKeyEvent(
            0L, 0L, AndroidKeyEvent.ACTION_DOWN,
            AndroidKeyEvent.KEYCODE_DPAD_CENTER, 0, AndroidKeyEvent.FLAG_LONG_PRESS
        )
        // Simulate Android KeyEvent with flag - but constructor above sets flags? Need to use correct constructor: (downTime, eventTime, action, keyCode, repeatCount, metaState)
        // For FLAG_LONG_PRESS we need to use constructor with flags via KeyEvent.obtain? Simpler: call handle directly with flags param
        val consumedDown = handler.handle(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            repeatCount = 0,
            flags = AndroidKeyEvent.FLAG_LONG_PRESS,
            eventTime = 1000L
        )
        assertTrue(consumedDown)
        assertEquals(1, longPressCalls)

        // Subsequent repeat should not trigger again
        val consumedRepeat = handler.handle(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            repeatCount = 1,
            flags = AndroidKeyEvent.FLAG_LONG_PRESS,
            eventTime = 1010L
        )
        assertFalse(consumedRepeat)
        assertEquals(1, longPressCalls)

        // UP should be consumed and not trigger click
        val consumedUp = handler.handle(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_UP,
            repeatCount = 0,
            flags = 0,
            eventTime = 1020L
        )
        assertTrue(consumedUp)
        assertEquals(1, longPressCalls)
        // click should be considered consumed (handler indicates)
        assertEquals(1, handler.longPressCount)
    }

    @Test
    fun `repeatCount triggers long press`() {
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }

        // First DOWN without repeat
        handler.handle(AndroidKeyEvent.KEYCODE_ENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 2000L)
        assertEquals(0, calls)

        // Second DOWN with repeatCount>0
        val consumed = handler.handle(AndroidKeyEvent.KEYCODE_ENTER, AndroidKeyEvent.ACTION_DOWN, 1, 0, 2010L)
        assertTrue(consumed)
        assertEquals(1, calls)

        // Next repeat should not trigger again
        val consumed2 = handler.handle(AndroidKeyEvent.KEYCODE_ENTER, AndroidKeyEvent.ACTION_DOWN, 2, 0, 2020L)
        assertFalse(consumed2)
        assertEquals(1, calls)

        // UP consumed
        val upConsumed = handler.handle(AndroidKeyEvent.KEYCODE_ENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 2030L)
        assertTrue(upConsumed)
        assertEquals(1, calls)
    }

    @Test
    fun `elapsed 600ms triggers long press on UP`() {
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }

        handler.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 3000L)
        assertEquals(0, calls)

        // UP after 700ms
        val consumed = handler.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 3700L)
        assertTrue(consumed)
        assertEquals(1, calls)

        // Another UP quickly should not trigger again (reset)
        handler.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 4000L)
        val notLong = handler.handle(AndroidKeyEvent.KEYCODE_NUMPAD_ENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 4300L) // 300ms <600
        assertFalse(notLong)
        assertEquals(1, calls)
    }

    @Test
    fun `short press does not trigger long press and does not consume UP`() {
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 5000L)
        val consumedUp = handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 5400L) // 400ms
        assertFalse(consumedUp)
        assertEquals(0, calls)
    }

    @Test
    fun `menu key triggers long press immediately`() {
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }
        val consumed = handler.handle(AndroidKeyEvent.KEYCODE_MENU, AndroidKeyEvent.ACTION_DOWN, 0, 0, 6000L)
        assertTrue(consumed)
        assertEquals(1, calls)
        val upConsumed = handler.handle(AndroidKeyEvent.KEYCODE_MENU, AndroidKeyEvent.ACTION_UP, 0, 0, 6100L)
        assertTrue(upConsumed)
    }

    @Test
    fun `button Y triggers long press`() {
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }
        val consumed = handler.handle(AndroidKeyEvent.KEYCODE_BUTTON_Y, AndroidKeyEvent.ACTION_DOWN, 0, 0, 7000L)
        assertTrue(consumed)
        assertEquals(1, calls)
    }

    @Test
    fun `three modes each only once per press and no click`() {
        // Test each mode in isolation already ensures single call
        // Additional: after long press, next short press should not be affected
        var calls = 0
        val handler = FvpLongPressHandler { calls++ }
        // flag mode
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_DOWN, 0, AndroidKeyEvent.FLAG_LONG_PRESS, 8000L)
        assertEquals(1, calls)
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 8010L)
        // next normal press should be short and not long
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 9000L)
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 9300L)
        assertEquals(1, calls)
        // now elapsed mode
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_DOWN, 0, 0, 10000L)
        handler.handle(AndroidKeyEvent.KEYCODE_DPAD_CENTER, AndroidKeyEvent.ACTION_UP, 0, 0, 10700L)
        assertEquals(2, calls)
    }
}
