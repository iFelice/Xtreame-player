pluginManagement {
    repositories {
        google {
            content {
                includeGroupByRegex("com\\.android.*")
                includeGroupByRegex("com\\.google.*")
                includeGroupByRegex("androidx.*")
            }
        }
        mavenCentral()
        gradlePluginPortal()
    }
}

// Cataloghi di versione.
//
// "libs" è lo stesso catalogo dell'app TV, letto dal progetto TV: il tablet
// deve dichiarare ogni libreria usata dai sorgenti condivisi (data/ e core/)
// con le IDENTICHE versioni della TV. Attenzione: qui NON va creato un file
// gradle/libs.versions.toml locale, perché Gradle lo caricherebbe in
// automatico con lo stesso nome "libs" e sovrascrivendo questo catalogo.
//
// "mobileLibs" raccoglie solo le librerie che la TV non ha (material3 e
// navigation suite adattiva), tutte gestite dal Compose BOM già
// presente nel catalogo "libs": nessuna versione esplicita.
versionCatalogs {
    create("libs") {
        from(files("../android-tv/gradle/libs.versions.toml"))
    }
    create("mobileLibs") {
        from(files("gradle/mobile.versions.toml"))
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "FelixVisionPlayerMobile"
include(":app")
