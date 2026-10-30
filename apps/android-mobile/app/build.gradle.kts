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

// Chiave di debug stabile (fornita dal CI solo quando è configurata).
val debugKeystorePath = System.getenv("FVP_DEBUG_KEYSTORE_PATH")?.takeIf { it.isNotBlank() }

android {
    if (debugKeystorePath != null) {
        signingConfigs.getByName("debug") {
            storeFile = file(debugKeystorePath)
            storePassword = "android"
            keyAlias = "androiddebugkey"
            keyPassword = "android"
        }
    }

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

    namespace = "it.felixvision.mobile"
    compileSdk = libs.versions.androidCompileSdk.get().toInt()

    defaultConfig {
        applicationId = "it.felixvision.mobile"
        minSdk = libs.versions.androidMinSdk.get().toInt()
        targetSdk = libs.versions.androidTargetSdk.get().toInt()
        versionCode = (System.getenv("FVP_VERSION_CODE") ?: "1").toIntOrNull()
            ?: throw GradleException("FVP_VERSION_CODE must be an integer")
        versionName = System.getenv("FVP_VERSION_NAME") ?: "0.1.0"

        // Indirizzo del servizio di abbinamento (Cloudflare Worker) usato per
        // il pairing da remoto: stesso valore dell'app TV. Per puntare a un
        // altro deployment si modifica qui (vedi README) e si ricompila.
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

// Sorgenti condivise con l'app TV: data/ e core/ del progetto TV entrano nella
// compilazione del tablet SENZA copiare i file; i package originali
// it.felixvision.tv.data.* / it.felixvision.tv.core.* restano invariati.
// Con AGP 9 il Kotlin è integrato nel plugin Android: le directory si
// aggiungono a sourceSets["main"].kotlin come da forma supportata;
// kotlin { sourceSets } e java.srcDir NON funzionano per i sorgenti Kotlin.
// Regola di allineamento: ogni libreria importata da qualunque file in data/
// e core/ deve risultare dichiarata tra le dipendenze di questo modulo,
// perché quei file sono compilati anche qui (vedi README).
android.sourceSets.named("main") {
    kotlin.directories += "../../android-tv/app/src/main/java/it/felixvision/tv/data"
    kotlin.directories += "../../android-tv/app/src/main/java/it/felixvision/tv/core"
}

tasks.withType<Test>().configureEach {
    testLogging {
        events("failed")
        exceptionFormat = org.gradle.api.tasks.testing.logging.TestExceptionFormat.FULL
        showStackTraces = true
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

    // Compose per il tablet: material3 (non tv-material/tv-foundation) e la
    // navigation suite adattiva, entrambi con la versione del Compose BOM.
    implementation(mobileLibs.androidx.compose.material3)
    implementation(mobileLibs.androidx.compose.material3.adaptive.navigation.suite)

    // --- Dipendenze allineate con i sorgenti condivisi (data/ e core/ della TV) ---
    // Archiviazione locale cifrata (blob già cifrato con chiave nel Keystore).
    implementation(libs.androidx.datastore.preferences)

    // Rete: un solo OkHttpClient per l'app, JSON con kotlinx.serialization.
    implementation(libs.okhttp)
    implementation(libs.kotlinx.serialization.json)
    implementation(libs.kotlinx.coroutines.android)

    // QR generato in locale (nessuna dipendenza da servizi esterni): serve al
    // pannello di abbinamento del tablet.
    implementation(libs.zxing.core)

    // Immagini: Coil 3 con client di rete dedicato (max 4 download simultanei).
    implementation(libs.coil3.compose)
    implementation(libs.coil3.network.okhttp)

    // Player: Media3 1.9.0 allineato al decoder FFmpeg di Jellyfin 1.9.0+1.
    // Il player arriva nel PR3, ma core/ può contenere codice che usa
    // androidx.media3 (e FvpApplication configura il logging Media3): le
    // dipendenze vengono dichiarate fin da subito, come da regola di
    // allineamento.
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.exoplayer.hls)
    implementation(libs.media3.ui)
    implementation(libs.media3.ffmpeg.decoder)

    testImplementation(libs.junit)
    testImplementation(libs.kotlinx.coroutines.test)
    testImplementation(platform(libs.androidx.compose.bom))
    testImplementation(libs.androidx.compose.ui.test.junit4)
    debugImplementation(libs.androidx.compose.ui.test.manifest)
    testImplementation(libs.robolectric)
    testImplementation(libs.androidx.test.core)
    testImplementation(libs.androidx.test.ext.junit)
}
