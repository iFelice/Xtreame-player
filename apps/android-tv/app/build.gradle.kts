plugins {
    alias(libs.plugins.android.application)
    // Con AGP 9 il supporto a Kotlin è integrato: non si applica più
    // org.jetbrains.kotlin.android. Restano i plugin per il compilatore Compose
    // e per kotlinx.serialization.
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.kotlin.serialization)
}

android {
    namespace = "it.felixvision.tv"
    compileSdk = libs.versions.androidCompileSdk.get().toInt()

    defaultConfig {
        applicationId = "it.felixvision.tv"
        minSdk = libs.versions.androidMinSdk.get().toInt()
        targetSdk = libs.versions.androidTargetSdk.get().toInt()
        versionCode = 1
        versionName = "0.1.0"

        // Indirizzo del servizio di abbinamento (Cloudflare Worker) usato per il
        // pairing da remoto. Per puntare a un altro deployment si modifica qui
        // (vedi README) e si ricompila.
        buildConfigField(
            "String",
            "PAIRING_RELAY_URL",
            "\"https://felixvision-pairing-relay.manganiellofelice.workers.dev\"",
        )
    }

    buildFeatures {
        compose = true
        buildConfig = true
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildTypes {
        release {
            // Nessuna minificazione in questa fase: l'APK è quello di debug/release
            // senza shrinker, così i simboli restano leggibili nei log.
            isMinifyEnabled = false
        }
    }

    testOptions {
        unitTests.isIncludeAndroidResources = true
        unitTests.isReturnDefaultValues = true
    }

    lint {
        // La build locale non deve fallire per avvisi di versione delle
        // dipendenze (Dependabot/aggiornamenti) ma solo per errori reali.
        abortOnError = true
        disable += setOf("GradleDependency", "AndroidGradlePluginVersion", "NewerVersionAvailable")
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.lifecycle.runtime.compose)
    implementation(libs.androidx.lifecycle.viewmodel.compose)

    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.foundation)
    implementation(libs.androidx.compose.ui.tooling.preview)

    // Compose for TV: material3 e foundation specifici per telecomando/focus.
    implementation(libs.androidx.tv.material)
    implementation(libs.androidx.tv.foundation)

    // Archiviazione locale cifrata (blob già cifrato con chiave nel Keystore).
    implementation(libs.androidx.datastore.preferences)

    // Rete: un solo OkHttpClient per l'app, JSON con kotlinx.serialization.
    implementation(libs.okhttp)
    implementation(libs.kotlinx.serialization.json)
    implementation(libs.kotlinx.coroutines.android)

    // QR generato in locale (nessuna dipendenza da servizi esterni).
    implementation(libs.zxing.core)

    // Immagini: Coil 3 con client di rete dedicato (max 4 download simultanei).
    implementation(libs.coil3.compose)
    implementation(libs.coil3.network.okhttp)

    // Player: Media3 1.9.0 allineato al decoder FFmpeg di Jellyfin 1.9.0+1.
    // Il decoder entra in gioco solo come ripiego (EXTENSION_RENDERER_MODE_ON):
    // la decodifica di sistema resta preferita.
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.exoplayer.hls)
    implementation(libs.media3.ui)
    implementation(libs.media3.ffmpeg.decoder)

    testImplementation(libs.junit)
    testImplementation(libs.okhttp.mockwebserver)
    testImplementation(libs.kotlinx.coroutines.test)
    testImplementation(libs.zxing.core)
    testImplementation(platform(libs.androidx.compose.bom))
    testImplementation(libs.androidx.compose.ui.test.junit4)
    debugImplementation(libs.androidx.compose.ui.test.manifest)
    testImplementation(libs.robolectric)
    testImplementation(libs.androidx.test.core)
    testImplementation(libs.androidx.test.ext.junit)
}
