import org.gradle.api.tasks.testing.Test

plugins {
    alias(libs.plugins.android.application)
    // Con AGP 9 il supporto a Kotlin è integrato: non si applica più
    // org.jetbrains.kotlin.android. Restano i plugin per il compilatore Compose
    // e per kotlinx.serialization.
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.kotlin.serialization)
}

// La release è firmata soltanto quando tutte le credenziali arrivano
// dall'ambiente (mai da file di configurazione versionati).
val releaseKeystorePath = System.getenv("FVP_KEYSTORE_PATH")
val releaseKeystorePassword = System.getenv("FVP_KEYSTORE_PASSWORD")
val releaseKeyAlias = System.getenv("FVP_KEY_ALIAS")
val releaseKeyPassword = System.getenv("FVP_KEY_PASSWORD")
val releaseSigningValues = listOf(
    releaseKeystorePath,
    releaseKeystorePassword,
    releaseKeyAlias,
    releaseKeyPassword,
)
val hasReleaseSigning = releaseSigningValues.all { !it.isNullOrBlank() }

if (!hasReleaseSigning) {
    logger.warn(
        "FVP release signing is not configured: set FVP_KEYSTORE_PATH, " +
            "FVP_KEYSTORE_PASSWORD, FVP_KEY_ALIAS and FVP_KEY_PASSWORD to sign release APKs. " +
            "The release APK will be unsigned.",
    )
}

android {
    if (hasReleaseSigning) {
        signingConfigs {
            create("release") {
                storeFile = file(releaseKeystorePath!!)
                storePassword = releaseKeystorePassword
                keyAlias = releaseKeyAlias
                keyPassword = releaseKeyPassword
                storeType = "PKCS12"
            }
        }
    }

    namespace = "it.felixvision.tv"
    compileSdk = libs.versions.androidCompileSdk.get().toInt()

    defaultConfig {
        applicationId = "it.felixvision.tv"
        minSdk = libs.versions.androidMinSdk.get().toInt()
        targetSdk = libs.versions.androidTargetSdk.get().toInt()
        versionCode = (System.getenv("FVP_VERSION_CODE") ?: "1").toIntOrNull()
            ?: throw GradleException("FVP_VERSION_CODE must be an integer")
        versionName = System.getenv("FVP_VERSION_NAME") ?: "0.1.0"

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
        // Richiesto dalla libreria WireGuard (java.time, stream): stessa
        // configurazione dell'app WireGuard ufficiale.
        isCoreLibraryDesugaringEnabled = true
    }

    buildTypes {
        release {
            // Nessuna minificazione in questa fase: l'APK è quello di debug/release
            // senza shrinker, così i simboli restano leggibili nei log.
            isMinifyEnabled = false
            if (hasReleaseSigning) {
                signingConfig = signingConfigs.getByName("release")
            }
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

tasks.withType<Test>().configureEach {
    testLogging {
        events("failed")
        exceptionFormat = org.gradle.api.tasks.testing.logging.TestExceptionFormat.FULL
        showStackTraces = true
    }
    // Diagnostica temporanea per la CI: ogni test fallito diventa un'annotazione di GitHub.
    if (System.getenv("GITHUB_ACTIONS") == "true") {
        addTestListener(object : TestListener {
            override fun beforeSuite(suite: TestDescriptor) = Unit

            override fun afterSuite(suite: TestDescriptor, result: TestResult) = Unit

            override fun beforeTest(testDescriptor: TestDescriptor) = Unit

            override fun afterTest(testDescriptor: TestDescriptor, result: TestResult) {
                if (result.resultType != TestResult.ResultType.FAILURE) return
                val reason = result.exceptions.joinToString(" || ") { error ->
                    error.toString() + " @ " + error.stackTrace.take(6).joinToString(" < ")
                }.replace("%", "%25").replace("\r", "").replace("\n", " | ").take(1500)
                println("::error title=${testDescriptor.className}::${testDescriptor.name}: $reason")
            }
        })
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

    // VPN di FelixVP: tunnel WireGuard (GoBackend con wireguard-go). Nel tunnel
    // passa solo il traffico di questa app. Il manifest della libreria dichiara
    // già il proprio VpnService.
    implementation(libs.wireguard.tunnel)
    coreLibraryDesugaring(libs.desugar.jdk.libs)

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
