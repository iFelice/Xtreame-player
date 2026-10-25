package it.felixvision.tv.data.update

import android.app.PendingIntent
import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInstaller
import android.net.Uri
import android.os.Build
import android.provider.Settings
import it.felixvision.tv.core.AppLog
import java.io.File
import java.io.IOException
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.withContext

const val APP_PACKAGE_NAME = "it.felixvision.tv"
const val APP_PACKAGE_URI = "package:it.felixvision.tv"

const val UNKNOWN_SOURCES_INSTRUCTIONS =
    "Consenti a FelixVP di installare app: Impostazioni → App → Accesso speciale → Installa app sconosciute"

const val INCOMPATIBLE_UPDATE_MESSAGE =
    "Aggiornamento non compatibile con la versione installata. Disinstalla e reinstalla con Downloader, codice 9966403"

const val GENERIC_INSTALL_ERROR = "Impossibile installare l'aggiornamento."
const val STORAGE_INSTALL_ERROR = "Spazio insufficiente per installare l'aggiornamento."
const val DOWNLOAD_ERROR_MESSAGE = "Impossibile scaricare l'aggiornamento. Riprova."
const val DOWNLOAD_SIZE_MISMATCH_MESSAGE = "Il file scaricato non è integro. Riprova."
const val INSTALL_CANCELLED_MESSAGE = "Installazione annullata."

sealed interface InstallEvent {
    data object Succeeded : InstallEvent
    data object CancelledByUser : InstallEvent
    data class Failed(val message: String) : InstallEvent
}

data class InstallNotification(
    val id: Long,
    val event: InstallEvent,
)

/** Bus interno di processo tra [UpdateInstallReceiver] e il ViewModel delle Impostazioni. */
object UpdateInstallBus {
    private var nextId = 0L
    private val _notifications = MutableStateFlow<InstallNotification?>(null)
    val notifications: StateFlow<InstallNotification?> = _notifications.asStateFlow()

    @Synchronized
    fun publish(event: InstallEvent) {
        nextId += 1L
        _notifications.value = InstallNotification(id = nextId, event = event)
    }
}

/** Gestione della cartella `cacheDir/updates` e del contrassegno di riavvio post-aggiornamento. */
object UpdateFiles {
    private const val PENDING_RESTART_MARKER = ".pending_restart"

    fun updatesDir(context: Context): File = File(context.cacheDir, UPDATES_DIR_NAME)

    fun cleanup(context: Context) {
        cleanupDir(updatesDir(context))
    }

    fun cleanupDir(dir: File) {
        runCatching {
            if (!dir.exists()) return
            dir.listFiles()?.forEach { child ->
                if (child.isDirectory) {
                    child.deleteRecursively()
                } else {
                    child.delete()
                }
            }
            dir.delete()
        }
    }

    fun markPendingRestart(dir: File) {
        runCatching {
            dir.mkdirs()
            File(dir, PENDING_RESTART_MARKER).writeText("1")
        }
    }

    fun consumePendingRestart(context: Context): Boolean = runCatching {
        val marker = File(updatesDir(context), PENDING_RESTART_MARKER)
        if (marker.exists()) {
            marker.delete()
            true
        } else {
            false
        }
    }.getOrDefault(false)
}

/** Mappatura pura del codice `EXTRA_STATUS` restituito da [PackageInstaller]. */
sealed interface InstallOutcome {
    data object PendingUserAction : InstallOutcome
    data object Succeeded : InstallOutcome
    data object CancelledByUser : InstallOutcome
    data class Failed(val userMessage: String) : InstallOutcome
}

fun mapInstallStatus(status: Int, statusMessage: String?): InstallOutcome = when (status) {
    PackageInstaller.STATUS_PENDING_USER_ACTION -> InstallOutcome.PendingUserAction
    PackageInstaller.STATUS_SUCCESS -> InstallOutcome.Succeeded
    PackageInstaller.STATUS_FAILURE_ABORTED -> InstallOutcome.CancelledByUser
    PackageInstaller.STATUS_FAILURE_CONFLICT,
    PackageInstaller.STATUS_FAILURE_INCOMPATIBLE,
    -> InstallOutcome.Failed(INCOMPATIBLE_UPDATE_MESSAGE)
    PackageInstaller.STATUS_FAILURE_STORAGE -> InstallOutcome.Failed(STORAGE_INSTALL_ERROR)
    else -> {
        val upper = statusMessage?.uppercase().orEmpty()
        if (
            upper.contains("INCOMPATIBLE") ||
            upper.contains("CONFLICT") ||
            upper.contains("CERTIFICATES") ||
            upper.contains("DOWNGRADE")
        ) {
            InstallOutcome.Failed(INCOMPATIBLE_UPDATE_MESSAGE)
        } else {
            InstallOutcome.Failed(GENERIC_INSTALL_ERROR)
        }
    }
}

interface UpdateInstaller {
    val updatesDir: File
    val notifications: StateFlow<InstallNotification?>

    fun canRequestPackageInstalls(): Boolean

    /**
     * Apre la schermata di sistema `ACTION_MANAGE_UNKNOWN_APP_SOURCES` per
     * `package:it.felixvision.tv`. Restituisce `false` se l'attività non è
     * presente sul dispositivo.
     */
    fun openUnknownSourcesSettings(): Boolean

    /**
     * Avvia l'installazione tramite sessione [PackageInstaller]. Restituisce
     * `null` se il commit della sessione è andato a buon fine (l'esito finale
     * arriverà su [notifications]), oppure un messaggio di errore utente.
     */
    suspend fun installApk(apkFile: File): String?

    fun cleanupDownloadedFiles()
}

class AndroidUpdateInstaller(
    private val context: Context,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) : UpdateInstaller {

    override val updatesDir: File
        get() = UpdateFiles.updatesDir(context)

    override val notifications: StateFlow<InstallNotification?> = UpdateInstallBus.notifications

    override fun canRequestPackageInstalls(): Boolean =
        runCatching { context.packageManager.canRequestPackageInstalls() }.getOrDefault(false)

    override fun openUnknownSourcesSettings(): Boolean {
        val intent = Intent(
            Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,
            Uri.parse(APP_PACKAGE_URI),
        ).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        return try {
            context.startActivity(intent)
            true
        } catch (_: ActivityNotFoundException) {
            false
        } catch (_: Exception) {
            false
        }
    }

    override suspend fun installApk(apkFile: File): String? = withContext(io) {
        if (!apkFile.exists() || apkFile.length() <= 0L) {
            cleanupDownloadedFiles()
            return@withContext GENERIC_INSTALL_ERROR
        }

        val packageInstaller = context.packageManager.packageInstaller
        var sessionId = -1
        var session: PackageInstaller.Session? = null
        try {
            val fileLength = apkFile.length()
            val params = PackageInstaller.SessionParams(
                PackageInstaller.SessionParams.MODE_FULL_INSTALL,
            ).apply {
                setAppPackageName(APP_PACKAGE_NAME)
                setSize(fileLength)
            }
            sessionId = packageInstaller.createSession(params)
            session = packageInstaller.openSession(sessionId)
            session.openWrite(APK_ASSET_NAME, 0L, fileLength).use { out ->
                apkFile.inputStream().use { input ->
                    input.copyTo(out, bufferSize = 16 * 1024)
                }
                session.fsync(out)
            }

            UpdateFiles.markPendingRestart(updatesDir)

            val callbackIntent = Intent(context, UpdateInstallReceiver::class.java).apply {
                action = UpdateInstallReceiver.ACTION_INSTALL_STATUS
                setPackage(context.packageName)
            }
            val pendingFlags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE
            } else {
                PendingIntent.FLAG_UPDATE_CURRENT
            }
            val pendingIntent = PendingIntent.getBroadcast(
                context,
                sessionId,
                callbackIntent,
                pendingFlags,
            )
            session.commit(pendingIntent.intentSender)
            session.close()
            session = null
            null
        } catch (cancel: CancellationException) {
            abandonQuietly(packageInstaller, sessionId, session)
            cleanupDownloadedFiles()
            throw cancel
        } catch (ioError: IOException) {
            abandonQuietly(packageInstaller, sessionId, session)
            cleanupDownloadedFiles()
            AppLog.warn("Copia APK nella sessione PackageInstaller fallita", ioError)
            GENERIC_INSTALL_ERROR
        } catch (error: Exception) {
            abandonQuietly(packageInstaller, sessionId, session)
            cleanupDownloadedFiles()
            AppLog.warn("Avvio installazione aggiornamento fallito", error)
            GENERIC_INSTALL_ERROR
        }
    }

    override fun cleanupDownloadedFiles() {
        UpdateFiles.cleanup(context)
    }

    private fun abandonQuietly(
        packageInstaller: PackageInstaller,
        sessionId: Int,
        session: PackageInstaller.Session?,
    ) {
        if (session != null) {
            runCatching { session.abandon() }
            runCatching { session.close() }
        } else if (sessionId >= 0) {
            runCatching { packageInstaller.abandonSession(sessionId) }
        }
    }
}
