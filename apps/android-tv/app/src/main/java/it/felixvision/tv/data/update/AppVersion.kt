package it.felixvision.tv.data.update

/** Versione predefinita delle build locali di debug (`app/build.gradle.kts`). */
const val DEBUG_VERSION_NAME = "0.1.0"

fun isDebugVersion(versionName: String): Boolean =
    versionName.trim() == DEBUG_VERSION_NAME

/**
 * Estrae i segmenti numerici di una versione semantica (es. `"1.0.10"` -> `[1, 0, 10]`).
 * Tollera un prefisso `"v"`/`"V"` seguito da cifra; restituisce `null` per tag
 * vuoti o non numerici, senza lanciare eccezioni.
 */
fun parseNumericVersion(raw: String): List<Int>? {
    val trimmed = raw.trim()
    if (trimmed.isEmpty()) return null
    val normalized = if (
        trimmed.length >= 2 &&
        (trimmed[0] == 'v' || trimmed[0] == 'V') &&
        trimmed[1] in '0'..'9'
    ) {
        trimmed.substring(1)
    } else {
        trimmed
    }
    val parts = normalized.split('.')
    if (parts.isEmpty()) return null
    val numbers = ArrayList<Int>(parts.size)
    for (part in parts) {
        if (part.isEmpty() || part.any { it !in '0'..'9' }) return null
        val value = part.toIntOrNull() ?: return null
        numbers.add(value)
    }
    return numbers
}

/**
 * Confronto numerico tra due versioni semantiche:
 * - `< 0` se [left] è precedente a [right];
 * - `0` se equivalenti (es. `"1.0"` e `"1.0.0"`);
 * - `> 0` se [left] è più nuova di [right];
 * - `null` se almeno una delle due stringhe non è una versione numerica valida.
 */
fun compareSemanticVersions(left: String, right: String): Int? {
    val leftParts = parseNumericVersion(left) ?: return null
    val rightParts = parseNumericVersion(right) ?: return null
    val maxLength = maxOf(leftParts.size, rightParts.size)
    for (index in 0 until maxLength) {
        val leftSegment = leftParts.getOrElse(index) { 0 }
        val rightSegment = rightParts.getOrElse(index) { 0 }
        if (leftSegment != rightSegment) {
            return leftSegment.compareTo(rightSegment)
        }
    }
    return 0
}

/**
 * Stabilisce se la release remota [remoteTag] è proponibile come aggiornamento
 * rispetto alla versione installata [currentVersion].
 *
 * Regole:
 * - confronto numerico per segmento (`1.0.10 > 1.0.9`);
 * - le build locali di debug (`"0.1.0"` o [isDebugBuild] vero) considerano
 *   disponibile qualunque release non vuota;
 * - tag non numerici su build di rilascio sono ignorati senza crash.
 */
fun isUpdateAvailable(
    currentVersion: String,
    remoteTag: String,
    isDebugBuild: Boolean = isDebugVersion(currentVersion),
): Boolean {
    val cleanRemote = remoteTag.trim()
    if (cleanRemote.isEmpty()) return false
    if (isDebugBuild) return true
    val comparison = compareSemanticVersions(cleanRemote, currentVersion) ?: return false
    return comparison > 0
}
