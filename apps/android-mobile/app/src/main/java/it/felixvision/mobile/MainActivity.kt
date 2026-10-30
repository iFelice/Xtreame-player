package it.felixvision.mobile

import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.SystemBarStyle
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import it.felixvision.mobile.ui.FvpApp
import it.felixvision.mobile.ui.player.PlayerPipRegistry
import it.felixvision.mobile.ui.player.updatePlayerPip
import it.felixvision.mobile.ui.theme.FvpTheme

@androidx.media3.common.util.UnstableApi
class MainActivity : ComponentActivity() {

    private val localNetworkPermissionLauncher =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { /* l'esito non blocca l'app */ }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Da targetSdk 37 la visualizzazione edge-to-edge è obbligatoria:
        // il sistema ignora window.setDecorFitsSystemWindows(true). Qui si
        // dichiara l'edge-to-edge e si scelgono icone chiare su fondo scuro,
        // così le barre restano leggibili; i margini li applica la UI con
        // WindowInsets (barre laterali/in basso, intestazione, contenuto).
        enableEdgeToEdge(
            statusBarStyle = SystemBarStyle.dark(android.graphics.Color.TRANSPARENT),
            navigationBarStyle = SystemBarStyle.dark(android.graphics.Color.TRANSPARENT),
        )
        ensureLocalNetworkPermission()

        val container = (application as FvpApplication).container

        setContent {
            FvpTheme {
                FvpApp(container = container)
            }
        }
    }

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()
        if (Build.VERSION.SDK_INT in 26..30) {
            val player = PlayerPipRegistry.player
            if (player?.isPlaying == true) updatePlayerPip(this, player, PlayerPipRegistry.videoView, enter = true, autoEnter = false)
        }
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: android.content.res.Configuration,
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)
        if (isInPictureInPictureMode) {
            PlayerPipRegistry.markEntered()
        } else {
            PlayerPipRegistry.inPip = false
            window.decorView.post {
                val resumed = lifecycle.currentState
                    .isAtLeast(androidx.lifecycle.Lifecycle.State.RESUMED)
                if (!resumed) PlayerPipRegistry.notifyClosed()
            }
        }
    }

    /**
     * Da Android 17 (API 37) l'accesso alla rete locale richiede un permesso
     * runtime: senza, i server Xtream raggiunti con indirizzo privato non
     * rispondono. Stessa logica della MainActivity dell'app TV.
     */
    private fun ensureLocalNetworkPermission() {
        if (Build.VERSION.SDK_INT < LOCAL_NETWORK_API_LEVEL) return
        val granted = ContextCompat.checkSelfPermission(
            this,
            LOCAL_NETWORK_PERMISSION,
        ) == PackageManager.PERMISSION_GRANTED
        if (!granted) {
            localNetworkPermissionLauncher.launch(LOCAL_NETWORK_PERMISSION)
        }
    }

    private companion object {
        const val LOCAL_NETWORK_API_LEVEL = 37
        const val LOCAL_NETWORK_PERMISSION = "android.permission.ACCESS_LOCAL_NETWORK"
    }
}
