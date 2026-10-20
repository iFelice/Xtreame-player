package it.felixvision.tv.core

import kotlinx.serialization.json.Json

/**
 * Unica configurazione JSON dell'app.
 *
 * `ignoreUnknownKeys` è indispensabile: i server Xtream restituiscono campi
 * aggiuntivi che non ci interessano e non devono far fallire l'accesso.
 */
val FvpJson: Json = Json {
    ignoreUnknownKeys = true
    isLenient = true
    coerceInputValues = true
    explicitNulls = false
}
