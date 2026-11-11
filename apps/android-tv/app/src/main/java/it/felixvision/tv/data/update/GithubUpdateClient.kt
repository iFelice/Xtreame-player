package it.felixvision.tv.data.update

import it.felixvision.tv.core.FvpJson
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.isActive
import kotlinx.coroutines.withContext
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

const val DEFAULT_LATEST_RELEASE_URL =
    "https://api.github.com/repos/iFelice/felixvp-releases/releases/latest"
const val APK_ASSET_NAME = "FelixVP.apk"
const val GITHUB_ACCEPT_HEADER = "application/vnd.github+json"
const val CHECK_TIMEOUT_MILLIS = 10_000L
const val UPDATES_DIR_NAME = "updates"

data class ReleaseInfo(
    val version: String,
    val downloadUrl: String,
    val sizeBytes: Long,
)

sealed interface ReleaseCheckResult {
    data class Available(val release: ReleaseInfo) : ReleaseCheckResult
    data object Failure : ReleaseCheckResult
}

sealed interface ApkDownloadResult {
    data class Success(val apkFile: File) : ApkDownloadResult
    data object SizeMismatch : ApkDownloadResult
    data object Failure : ApkDownloadResult
}

@Serializable
internal data class GithubReleaseDto(
    @SerialName("tag_name") val tagName: String = "",
    val assets: List<GithubReleaseAssetDto> = emptyList(),
)

@Serializable
internal data class GithubReleaseAssetDto(
    val name: String = "",
    @SerialName("browser_download_url") val browserDownloadUrl: String = "",
    val size: Long = 0L,
)

/**
 * Estrae `tag_name` e l'asset `FelixVP.apk` dalla risposta JSON di GitHub
 * (`releases/latest`). Restituisce `null` se il JSON non è valido o se manca
 * un asset `FelixVP.apk` con URL e dimensione positiva.
 */
fun parseLatestRelease(
    body: String,
    json: Json = FvpJson,
): ReleaseInfo? {
    if (body.isBlank()) return null
    val dto = try {
        json.decodeFromString<GithubReleaseDto>(body)
    } catch (_: Exception) {
        return null
    }
    val version = dto.tagName.trim()
    if (version.isEmpty()) return null
    val asset = dto.assets.firstOrNull { it.name == APK_ASSET_NAME } ?: return null
    val url = asset.browserDownloadUrl.trim()
    if (url.isEmpty() || asset.size <= 0L) return null
    return ReleaseInfo(
        version = version,
        downloadUrl = url,
        sizeBytes = asset.size,
    )
}

/** Percorso di destinazione dell'APK scaricato: `cacheDir/updates/FelixVP-<versione>.apk`. */
fun apkFileForVersion(updatesDir: File, version: String): File {
    val safeVersion = version.trim()
        .replace(Regex("[^0-9A-Za-z._+-]"), "_")
        .ifEmpty { "latest" }
    return File(updatesDir, "FelixVP-$safeVersion.apk")
}

interface UpdateClient {
    suspend fun fetchLatestRelease(): ReleaseCheckResult

    suspend fun downloadApk(
        release: ReleaseInfo,
        updatesDir: File,
        onProgressPercent: (Int) -> Unit,
    ): ApkDownloadResult
}

class GithubUpdateClient(
    private val http: OkHttpClient,
    private val latestReleaseUrl: String = DEFAULT_LATEST_RELEASE_URL,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
    checkTimeoutMillis: Long = CHECK_TIMEOUT_MILLIS,
) : UpdateClient {

    /**
     * Client derivato che condivide pool e dispatcher dell'[OkHttpClient]
     * dell'app applicando il timeout di 10 s richiesto per il controllo release.
     */
    private val checkHttp: OkHttpClient = http.newBuilder()
        .connectTimeout(checkTimeoutMillis, TimeUnit.MILLISECONDS)
        .readTimeout(checkTimeoutMillis, TimeUnit.MILLISECONDS)
        .callTimeout(checkTimeoutMillis, TimeUnit.MILLISECONDS)
        .build()

    override suspend fun fetchLatestRelease(): ReleaseCheckResult = withContext(io) {
        val url = latestReleaseUrl.trim().toHttpUrlOrNull()
            ?: return@withContext ReleaseCheckResult.Failure
        val request = Request.Builder()
            .url(url)
            .get()
            .header("Accept", GITHUB_ACCEPT_HEADER)
            .build()
        try {
            checkHttp.newCall(request).execute().use { response ->
                if (response.code != 200) {
                    return@withContext ReleaseCheckResult.Failure
                }
                val parsed = parseLatestRelease(response.body.string(), json)
                    ?: return@withContext ReleaseCheckResult.Failure
                ReleaseCheckResult.Available(parsed)
            }
        } catch (cancel: CancellationException) {
            throw cancel
        } catch (_: Exception) {
            if (!isActive) throw CancellationException("Controllo aggiornamenti annullato")
            ReleaseCheckResult.Failure
        }
    }

    override suspend fun downloadApk(
        release: ReleaseInfo,
        updatesDir: File,
        onProgressPercent: (Int) -> Unit,
    ): ApkDownloadResult = withContext(io) {
        if (release.sizeBytes <= 0L) return@withContext ApkDownloadResult.Failure
        val url = release.downloadUrl.trim().toHttpUrlOrNull()
            ?: return@withContext ApkDownloadResult.Failure

        UpdateFiles.cleanupDir(updatesDir)
        updatesDir.mkdirs()
        val targetFile = apkFileForVersion(updatesDir, release.version)

        val request = Request.Builder()
            .url(url)
            .get()
            .build()
        val call = http.newCall(request)
        val cancelRegistration = coroutineContext[Job]?.invokeOnCompletion { cause ->
            if (cause != null) call.cancel()
        }

        try {
            onProgressPercent(0)
            call.execute().use { response ->
                if (response.code != 200) {
                    targetFile.delete()
                    return@withContext ApkDownloadResult.Failure
                }
                var totalRead = 0L
                var lastReportedPercent = 0
                val buffer = ByteArray(16 * 1024)
                response.body.byteStream().use { input ->
                    FileOutputStream(targetFile).use { output ->
                        while (true) {
                            if (!isActive) {
                                throw CancellationException("Scaricamento annullato")
                            }
                            val read = input.read(buffer)
                            if (read < 0) break
                            if (read == 0) continue
                            output.write(buffer, 0, read)
                            totalRead += read
                            val percent = ((totalRead * 100L) / release.sizeBytes)
                                .toInt()
                                .coerceIn(0, 100)
                            if (percent != lastReportedPercent) {
                                lastReportedPercent = percent
                                onProgressPercent(percent)
                            }
                        }
                        output.flush()
                        runCatching { output.fd.sync() }
                    }
                }
            }
            if (!isActive) {
                targetFile.delete()
                throw CancellationException("Scaricamento annullato")
            }
            if (!targetFile.exists() || targetFile.length() != release.sizeBytes) {
                targetFile.delete()
                return@withContext ApkDownloadResult.SizeMismatch
            }
            onProgressPercent(100)
            ApkDownloadResult.Success(targetFile)
        } catch (cancel: CancellationException) {
            targetFile.delete()
            throw cancel
        } catch (ioError: IOException) {
            targetFile.delete()
            if (!isActive) {
                throw CancellationException("Scaricamento annullato", ioError)
            }
            ApkDownloadResult.Failure
        } catch (error: Exception) {
            targetFile.delete()
            if (!isActive) {
                throw CancellationException("Scaricamento annullato", error)
            }
            ApkDownloadResult.Failure
        } finally {
            cancelRegistration?.dispose()
        }
    }
}
