package it.felixvision.tv.data.images

import android.content.Context
import coil3.ImageLoader
import coil3.disk.DiskCache
import coil3.network.okhttp.OkHttpNetworkFetcherFactory
import coil3.request.crossfade
import coil3.util.DebugLogger
import it.felixvision.tv.core.HttpClientFactory
import it.felixvision.tv.core.HttpConfig
import okhttp3.Dispatcher
import okhttp3.OkHttpClient
import okio.Path.Companion.toOkioPath

/**
 * Immagini (loghi e copertine) con Coil 3 su un client di rete dedicato:
 * massimo 4 immagini scaricate contemporaneamente in totale, nessun nuovo
 * tentativo automatico, cache su disco limitata a 200 MB, solo le immagini
 * visibili più quelle immediatamente vicine.
 *
 * Se un'immagine non si carica: segnaposto con le iniziali, nessun errore.
 */
object FvpImageLoader {

    /**
     * Client dedicato alle immagini: massimo 4 download contemporanei totali,
     * nessun retry automatico.
     */
    fun createImageHttpClient(): OkHttpClient {
        val dispatcher = Dispatcher().apply {
            maxRequests = 4
            maxRequestsPerHost = 4
        }
        return OkHttpClient.Builder()
            .dispatcher(dispatcher)
            .connectTimeout(HttpConfig.DEFAULT_CONNECT_TIMEOUT_MILLIS, java.util.concurrent.TimeUnit.MILLISECONDS)
            .readTimeout(HttpConfig.DEFAULT_READ_TIMEOUT_MILLIS, java.util.concurrent.TimeUnit.MILLISECONDS)
            .retryOnConnectionFailure(false)
            .followRedirects(true)
            .build()
    }

    fun create(context: Context, debug: Boolean = false): ImageLoader {
        val imageClient = createImageHttpClient()
        return ImageLoader.Builder(context)
            .components {
                add(
                    OkHttpNetworkFetcherFactory(
                        callFactory = { imageClient },
                    ),
                )
            }
            .diskCache {
                DiskCache.Builder()
                    .directory(context.cacheDir.resolve("fvp_images").toOkioPath())
                    .maxSizeBytes(200L * 1024L * 1024L) // 200 MB
                    .build()
            }
            .crossfade(true)
            .apply { if (debug) logger(DebugLogger()) }
            .build()
    }

    /**
     * Verifica per i test: il client immagini non supera 4 richieste contemporanee.
     */
    fun verifyLimit(client: OkHttpClient): Boolean {
        return client.dispatcher.maxRequests == 4 && client.dispatcher.maxRequestsPerHost == 4
    }
}
