package it.felixvision.tv.data.update

import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import java.io.File
import kotlin.io.path.createTempDirectory
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.SocketPolicy
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class GithubUpdateClientTest {

    private lateinit var server: MockWebServer
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
        tempDir = createTempDirectory("fvp_updates_test").toFile()
    }

    @After
    fun tearDown() {
        server.shutdown()
        tempDir.deleteRecursively()
    }

    private fun newClient(checkTimeoutMillis: Long = 2_000L): GithubUpdateClient =
        GithubUpdateClient(
            http = HttpClientFactory.create(HttpConfig(readTimeoutMillis = 2_000L)),
            latestReleaseUrl = server.url("/repos/iFelice/felixvp-releases/releases/latest").toString(),
            checkTimeoutMillis = checkTimeoutMillis,
        )

    @Test
    fun `parsing latest con asset FelixVP_apk legge tag_name url e size`() = runBlocking {
        val downloadUrl = server.url("/releases/download/1.0.3/FelixVP.apk").toString()
        val body = """
            {
              "tag_name": "1.0.3",
              "name": "FelixVP 1.0.3",
              "draft": false,
              "prerelease": false,
              "assets": [
                {
                  "name": "SHA256SUMS.txt",
                  "browser_download_url": "${server.url("/releases/download/1.0.3/SHA256SUMS.txt")}",
                  "size": 128
                },
                {
                  "name": "FelixVP.apk",
                  "browser_download_url": "$downloadUrl",
                  "size": 18019251
                }
              ]
            }
        """.trimIndent()

        val direct = parseLatestRelease(body)
        assertNotNull(direct)
        assertEquals("1.0.3", direct!!.version)
        assertEquals(downloadUrl, direct.downloadUrl)
        assertEquals(18_019_251L, direct.sizeBytes)

        server.enqueue(MockResponse().setResponseCode(200).setBody(body))
        val result = newClient().fetchLatestRelease()
        assertTrue(result is ReleaseCheckResult.Available)
        val release = (result as ReleaseCheckResult.Available).release
        assertEquals("1.0.3", release.version)
        assertEquals(downloadUrl, release.downloadUrl)
        assertEquals(18_019_251L, release.sizeBytes)

        val recorded = server.takeRequest()
        assertEquals("GET", recorded.method)
        assertEquals("/repos/iFelice/felixvp-releases/releases/latest", recorded.path)
        assertEquals("application/vnd.github+json", recorded.headers["Accept"])
        assertNull(recorded.headers["Authorization"])
    }

    @Test
    fun `parsing latest senza asset FelixVP_apk restituisce null e Failure`() = runBlocking {
        val withoutApk = """
            {
              "tag_name": "1.0.3",
              "assets": [
                {
                  "name": "altro-pacchetto.apk",
                  "browser_download_url": "https://github.com/iFelice/felixvp-releases/releases/download/1.0.3/altro.apk",
                  "size": 4096
                }
              ]
            }
        """.trimIndent()
        val emptyAssets = """{"tag_name": "1.0.3", "assets": []}"""
        val zeroSize = """
            {
              "tag_name": "1.0.3",
              "assets": [
                {
                  "name": "FelixVP.apk",
                  "browser_download_url": "https://github.com/iFelice/felixvp-releases/releases/download/1.0.3/FelixVP.apk",
                  "size": 0
                }
              ]
            }
        """.trimIndent()

        assertNull(parseLatestRelease(withoutApk))
        assertNull(parseLatestRelease(emptyAssets))
        assertNull(parseLatestRelease(zeroSize))
        assertNull(parseLatestRelease("non-json"))

        server.enqueue(MockResponse().setResponseCode(200).setBody(withoutApk))
        assertEquals(ReleaseCheckResult.Failure, newClient().fetchLatestRelease())
    }

    @Test
    fun `errore HTTP o disconnessione restituisce Failure senza eccezioni`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(404).setBody("""{"message":"Not Found"}"""))
        assertEquals(ReleaseCheckResult.Failure, newClient().fetchLatestRelease())

        server.enqueue(MockResponse().setSocketPolicy(SocketPolicy.DISCONNECT_AT_START))
        assertEquals(ReleaseCheckResult.Failure, newClient(checkTimeoutMillis = 500L).fetchLatestRelease())
    }

    @Test
    fun `downloadApk salva FelixVP-versione_apk riporta percentuale e verifica size`() = runBlocking {
        val content = "FVP_APK_PAYLOAD_".repeat(4096) // 65536 byte esatti
        val expectedSize = content.toByteArray(Charsets.UTF_8).size.toLong()
        val apkUrl = server.url("/download/FelixVP.apk").toString()
        server.enqueue(MockResponse().setResponseCode(200).setBody(content))

        val updatesDir = File(tempDir, UPDATES_DIR_NAME)
        val percentages = mutableListOf<Int>()
        val result = newClient().downloadApk(
            release = ReleaseInfo(
                version = "1.0.3",
                downloadUrl = apkUrl,
                sizeBytes = expectedSize,
            ),
            updatesDir = updatesDir,
            onProgressPercent = { percentages.add(it) },
        )

        assertTrue(result is ApkDownloadResult.Success)
        val file = (result as ApkDownloadResult.Success).apkFile
        assertEquals("FelixVP-1.0.3.apk", file.name)
        assertTrue(file.exists())
        assertEquals(expectedSize, file.length())
        assertTrue(percentages.contains(0))
        assertEquals(100, percentages.last())
    }

    @Test
    fun `downloadApk cancella il file e segnala SizeMismatch se la dimensione non coincide`() = runBlocking {
        val content = "PARZIALE".repeat(128) // 1024 byte, ma size atteso è 8192
        val apkUrl = server.url("/download/FelixVP.apk").toString()
        server.enqueue(MockResponse().setResponseCode(200).setBody(content))

        val updatesDir = File(tempDir, UPDATES_DIR_NAME)
        val result = newClient().downloadApk(
            release = ReleaseInfo(
                version = "1.0.3",
                downloadUrl = apkUrl,
                sizeBytes = 8_192L,
            ),
            updatesDir = updatesDir,
            onProgressPercent = {},
        )

        assertEquals(ApkDownloadResult.SizeMismatch, result)
        assertFalse(File(updatesDir, "FelixVP-1.0.3.apk").exists())
    }

    @Test
    fun `annullamento dello scaricamento cancella il file parziale`() = runBlocking {
        val content = "X".repeat(64 * 1024)
        val expectedSize = content.length.toLong()
        val apkUrl = server.url("/download/FelixVP.apk").toString()
        server.enqueue(MockResponse().setResponseCode(200).setBody(content))

        val updatesDir = File(tempDir, UPDATES_DIR_NAME)
        var jobRef: Job? = null
        var cancelledCaught = false
        val job = launch {
            try {
                newClient().downloadApk(
                    release = ReleaseInfo(
                        version = "1.0.4",
                        downloadUrl = apkUrl,
                        sizeBytes = expectedSize,
                    ),
                    updatesDir = updatesDir,
                    onProgressPercent = { pct ->
                        if (pct >= 25) {
                            jobRef?.cancel()
                        }
                    },
                )
            } catch (_: CancellationException) {
                cancelledCaught = true
                throw CancellationException("propagato")
            }
        }
        jobRef = job
        job.join()

        assertTrue(job.isCancelled)
        assertTrue(cancelledCaught)
        assertFalse(File(updatesDir, "FelixVP-1.0.4.apk").exists())
    }
}
