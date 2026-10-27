@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.core

import androidx.annotation.OptIn
import androidx.media3.common.util.Log as Media3Log
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Test

class Media3LoggingTest {
    @Test
    fun configureReleaseDisablesMedia3Logs() {
        Media3Logging.configure(isDebugBuild = false)

        assertEquals(Media3Log.LOG_LEVEL_OFF, Media3Log.getLogLevel())
    }

    @Test
    fun configureDebugEnablesMedia3Logs() {
        Media3Logging.configure(isDebugBuild = true)

        assertEquals(Media3Log.LOG_LEVEL_ALL, Media3Log.getLogLevel())
    }

    @After
    fun restoreLogLevel() {
        Media3Log.setLogLevel(Media3Log.LOG_LEVEL_ALL)
    }
}
