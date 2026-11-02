package it.felixvision.tv.data.catalog

import kotlinx.serialization.KSerializer
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.descriptors.SerialDescriptor
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonDecoder
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonNull
import kotlinx.serialization.json.JsonPrimitive

/**
 * Elenco di identificativi tollerante, per il campo `category_ids` che alcuni
 * pannelli (XUI e simili) aggiungono accanto a `category_id`: l'elenco
 * completo delle categorie a cui il provider assegna un contenuto.
 *
 * Accetta, senza mai far fallire il parsing dell'intero elenco:
 * - un array di numeri o di stringhe (`[3, 7]`, `["3", "7"]`, misto);
 * - `null` o campo assente (lista vuota; con `explicitNulls = false` il campo
 *   assente non arriva nemmeno qui);
 * - una stringa o un numero singoli (`"3"`, `3` → lista di un elemento);
 * - elementi vuoti (stringa vuota, null, booleani, oggetti) → scartati, gli
 *   altri restano.
 *
 * Il descrittore è quello di una lista di stringhe: la forma "naturale" del
 * campo. La tolleranza sta tutta nel deserializzatore, che legge il
 * [JsonElement] qualunque sia la sua forma.
 */
object FlexibleStringListSerializer : KSerializer<List<String>> {

    override val descriptor: SerialDescriptor =
        ListSerializer(FlexibleStringSerializer).descriptor

    override fun deserialize(decoder: Decoder): List<String> {
        if (decoder !is JsonDecoder) {
            // Nessun JSON: l'unica forma sensata è già un elenco.
            return runCatching {
                decoder.decodeSerializableValue(ListSerializer(FlexibleStringSerializer))
            }.getOrDefault(emptyList())
        }
        return when (val element = decoder.decodeJsonElement()) {
            is JsonArray -> element.mapNotNull { it.asCategoryIdOrNull() }
            JsonNull -> emptyList()
            is JsonPrimitive -> listOfNotNull(element.asCategoryIdOrNull())
            else -> emptyList()
        }
    }

    override fun serialize(encoder: Encoder, value: List<String>) {
        ListSerializer(FlexibleStringSerializer).serialize(encoder, value)
    }
}

/**
 * Identificativo di un elemento dell'elenco: stringa o numero diventano la
 * loro forma testuale senza spazi ai bordi; null, stringa vuota, booleani e
 * oggetti non sono identificativi e vengono scartati. Non lancia mai.
 */
private fun JsonElement.asCategoryIdOrNull(): String? {
    if (this is JsonNull || this !is JsonPrimitive) return null
    if (isString) return content.trim().takeIf { it.isNotEmpty() }
    val text = content.trim()
    // `content` di un primitivo non stringa è già la forma testuale (numero o booleano).
    if (text.isEmpty() || text == "true" || text == "false") return null
    return text
}
