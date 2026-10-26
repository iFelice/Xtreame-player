package it.felixvision.tv

import android.app.Application
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

class FvpApplication : Application() {

    lateinit var container: AppContainer
        private set

    private val applicationScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    override fun onCreate() {
        super.onCreate()
        container = AppContainer(this)
        container.cleanupDownloadedUpdates(applicationScope)
        // Prima della prima creazione di una sessione di abbinamento si verifica
        // in sottofondo che il servizio risponda; l'esito non blocca l'avvio.
        container.checkPairingServiceHealth(applicationScope)
    }
}
