package it.felixvision.tv

import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import it.felixvision.tv.ui.FvpApp
import it.felixvision.tv.ui.theme.FvpTheme

class MainActivity : ComponentActivity() {

    private val localNetworkPermissionLauncher =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { /* l'esito non blocca l'app */ }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ensureLocalNetworkPermission()

        val container = (application as FvpApplication).container
        setContent {
            FvpTheme {
                FvpApp(container = container)
            }
        }
    }

    /**
     * Da Android 17 (API 37) l'accesso alla rete locale richiede un permesso
     * runtime: senza, i server Xtream raggiunti con indirizzo privato non
     * rispondono. Su versioni precedenti il permesso non esiste.
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
