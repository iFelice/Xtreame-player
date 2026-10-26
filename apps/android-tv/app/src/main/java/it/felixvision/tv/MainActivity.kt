package it.felixvision.tv

import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import it.felixvision.tv.ui.FvpApp
import it.felixvision.tv.ui.theme.FvpTheme

class MainActivity : ComponentActivity() {

    private val localNetworkPermissionLauncher =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { /* l'esito non blocca l'app */ }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ensureLocalNetworkPermission()

        val container = (application as FvpApplication).container

        // Su Android TV l'app resta spesso in memoria: riaprirla dalla Home non
        // la riavvia, quindi una release pubblicata nel frattempo resterebbe
        // invisibile finché non si aprono le Impostazioni. Ogni volta che
        // l'activity torna in primo piano (ON_START) si chiede un controllo,
        // che parte solo se dall'ultimo tentativo sono passati almeno 30
        // minuti. Si osserva il Lifecycle di questa Activity perché
        // lifecycle-process non è tra le dipendenze dell'app.
        lifecycle.addObserver(
            LifecycleEventObserver { _, event ->
                if (event == Lifecycle.Event.ON_START) {
                    container.updateChecker.checkOnForeground()
                }
            },
        )

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
