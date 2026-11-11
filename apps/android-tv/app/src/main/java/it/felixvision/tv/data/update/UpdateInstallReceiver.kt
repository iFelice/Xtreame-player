package it.felixvision.tv.data.update

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInstaller
import android.os.Build
import it.felixvision.tv.MainActivity
import it.felixvision.tv.core.AppLog

/**
 * Receiver interno non esportato che riceve gli stati della sessione
 * [PackageInstaller] (inclusa la richiesta di conferma utente
 * `STATUS_PENDING_USER_ACTION`) e riavvia l'app aggiornata a installazione
 * riuscita.
 */
class UpdateInstallReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent?) {
        val incoming = intent ?: return
        when (incoming.action) {
            ACTION_INSTALL_STATUS -> handleInstallStatus(context, incoming)
            Intent.ACTION_MY_PACKAGE_REPLACED -> handlePackageReplaced(context)
        }
    }

    private fun handleInstallStatus(context: Context, intent: Intent) {
        val status = intent.getIntExtra(
            PackageInstaller.EXTRA_STATUS,
            PackageInstaller.STATUS_FAILURE,
        )
        val statusMessage = intent.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE)

        when (val outcome = mapInstallStatus(status, statusMessage)) {
            InstallOutcome.PendingUserAction -> {
                val confirmIntent = extractConfirmationIntent(intent)
                if (confirmIntent == null) {
                    UpdateFiles.cleanup(context)
                    UpdateInstallBus.publish(InstallEvent.Failed(GENERIC_INSTALL_ERROR))
                    return
                }
                confirmIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                val started = runCatching { context.startActivity(confirmIntent) }.isSuccess
                if (!started) {
                    AppLog.warn("Impossibile avviare la finestra di conferma installazione")
                    UpdateFiles.cleanup(context)
                    UpdateInstallBus.publish(InstallEvent.Failed(GENERIC_INSTALL_ERROR))
                }
            }

            InstallOutcome.Succeeded -> {
                UpdateFiles.cleanup(context)
                UpdateInstallBus.publish(InstallEvent.Succeeded)
                restartUpdatedApp(context)
            }

            InstallOutcome.CancelledByUser -> {
                UpdateFiles.cleanup(context)
                UpdateInstallBus.publish(InstallEvent.CancelledByUser)
            }

            is InstallOutcome.Failed -> {
                UpdateFiles.cleanup(context)
                UpdateInstallBus.publish(InstallEvent.Failed(outcome.userMessage))
            }
        }
    }

    private fun handlePackageReplaced(context: Context) {
        val shouldRestart = UpdateFiles.consumePendingRestart(context)
        UpdateFiles.cleanup(context)
        if (shouldRestart) {
            restartUpdatedApp(context)
        }
    }

    private fun extractConfirmationIntent(intent: Intent): Intent? {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            intent.getParcelableExtra(Intent.EXTRA_INTENT, Intent::class.java)
        } else {
            @Suppress("DEPRECATION")
            intent.getParcelableExtra(Intent.EXTRA_INTENT)
        }
    }

    private fun restartUpdatedApp(context: Context) {
        val launchIntent = Intent(context, MainActivity::class.java).apply {
            addFlags(
                Intent.FLAG_ACTIVITY_NEW_TASK or
                    Intent.FLAG_ACTIVITY_CLEAR_TOP or
                    Intent.FLAG_ACTIVITY_SINGLE_TOP,
            )
        }
        runCatching { context.startActivity(launchIntent) }
    }

    companion object {
        const val ACTION_INSTALL_STATUS = "it.felixvision.tv.action.UPDATE_INSTALL_STATUS"
    }
}
