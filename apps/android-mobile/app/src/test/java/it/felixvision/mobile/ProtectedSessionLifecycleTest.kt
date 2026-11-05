@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.mobile

import android.content.Intent
import android.content.res.Configuration
import android.os.Looper
import androidx.test.core.app.ApplicationProvider
import it.felixvision.mobile.ui.player.PlayerPipRegistry
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.android.controller.ActivityController
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], application = FvpApplication::class)
class ProtectedSessionLifecycleTest {
    private var controller: ActivityController<MainActivity>? = null
    private val app get() = ApplicationProvider.getApplicationContext<FvpApplication>()

    private fun start(): MainActivity {
        val created = Robolectric.buildActivity(MainActivity::class.java).setup()
        controller = created
        return created.get()
    }

    @After
    fun cleanup() {
        PlayerPipRegistry.inPip = false
        PlayerPipRegistry.onClosed = null
        controller?.destroy()
    }

    @Test
    fun screenOffLocksSessionAndReceiverIsUnregistered() {
        start()
        app.container.protectedSession.unlock()
        app.sendBroadcast(Intent(Intent.ACTION_SCREEN_OFF))
        shadowOf(Looper.getMainLooper()).idle()
        assertFalse(app.container.protectedSession.unlocked.value)
        controller?.pause()?.stop()?.destroy()
        controller = null
        app.container.protectedSession.unlock()
        app.sendBroadcast(Intent(Intent.ACTION_SCREEN_OFF))
        shadowOf(Looper.getMainLooper()).idle()
        assertTrue(app.container.protectedSession.unlocked.value)
    }

    @Test
    fun stoppingOutsidePipLocksSession() {
        start()
        app.container.protectedSession.unlock()
        controller?.pause()?.stop()
        assertFalse(app.container.protectedSession.unlocked.value)
    }

    @Test
    fun destructionInPipLocksEvenWithoutModeChangedCallback() {
        start()
        app.container.protectedSession.unlock()
        PlayerPipRegistry.markEntered()
        controller?.pause()?.stop()?.destroy()
        controller = null
        assertFalse(app.container.protectedSession.unlocked.value)
        assertFalse(PlayerPipRegistry.inPip)
    }

    @Test
    fun stoppingInPipDoesNotLockButClosingPipDoes() {
        val activity = start()
        app.container.protectedSession.unlock()
        PlayerPipRegistry.markEntered()
        controller?.pause()?.stop()
        assertTrue(app.container.protectedSession.unlocked.value)
        activity.onPictureInPictureModeChanged(false, Configuration())
        shadowOf(Looper.getMainLooper()).idle()
        assertFalse(app.container.protectedSession.unlocked.value)
    }
}
