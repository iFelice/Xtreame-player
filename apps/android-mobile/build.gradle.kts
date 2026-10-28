// Progetto Gradle autonomo dell'app Android mobile (tablet) di
// FelixVisionPlayer. Non fa parte della build npm della radice: si apre e si
// compila da Android Studio o con il wrapper locale.
plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.kotlin.compose) apply false
    alias(libs.plugins.kotlin.serialization) apply false
}
