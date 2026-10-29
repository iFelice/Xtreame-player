package it.felixvision.mobile.ui.player

import android.app.Activity
import android.app.PendingIntent
import android.app.PictureInPictureParams
import android.app.RemoteAction
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.graphics.Rect
import android.os.Build
import android.util.Rational
import android.view.View
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.media3.common.Player

object PlayerPipRegistry {
    var inPip by mutableStateOf(false)
    @Volatile var player: Player? = null
    @Volatile var videoView: View? = null
}

fun updatePlayerPip(activity: Activity?, player: Player?, view: View?, enter: Boolean, autoEnter: Boolean) {
    if (activity == null || player == null || Build.VERSION.SDK_INT < 26) return
    val size = player.videoSize
    val ratio = PlayerLayoutRules.pipRatio(size.width, size.height)
    val actionName = if (player.isPlaying) PlayerPipAction.PAUSE else PlayerPipAction.PLAY
    val icon = if (player.isPlaying) android.R.drawable.ic_media_pause else android.R.drawable.ic_media_play
    val intent = PendingIntent.getBroadcast(activity, 17, Intent(activity, PlayerPipAction::class.java).setAction(actionName), PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
    val actions = listOf(RemoteAction(android.graphics.drawable.Icon.createWithResource(activity, icon), if (player.isPlaying) "Pausa" else "Play", if (player.isPlaying) "Metti in pausa" else "Riprendi", intent))
    val rect = Rect().takeIf { view?.getGlobalVisibleRect(it) == true }
    val pipAspect = when {
        ratio <= PlayerLayoutRules.PIP_MIN_RATIO -> Rational(100, 239)
        ratio >= PlayerLayoutRules.PIP_MAX_RATIO -> Rational(239, 100)
        else -> Rational(size.width.coerceAtLeast(1), size.height.coerceAtLeast(1))
    }
    val params = PictureInPictureParams.Builder()
        .setAspectRatio(pipAspect)
        .setActions(actions)
        .apply {
            if (rect != null) setSourceRectHint(rect)
            if (Build.VERSION.SDK_INT >= 31) setAutoEnterEnabled(autoEnter && player.isPlaying)
        }.build()
    activity.setPictureInPictureParams(params)
    if (enter && player.isPlaying) activity.enterPictureInPictureMode(params)
}

class PlayerPipAction : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        when (intent.action) {
            PAUSE -> PlayerPipRegistry.player?.pause()
            PLAY -> PlayerPipRegistry.player?.play()
        }
    }
    companion object { const val PAUSE = "it.felixvision.mobile.player.PAUSE"; const val PLAY = "it.felixvision.mobile.player.PLAY" }
}
