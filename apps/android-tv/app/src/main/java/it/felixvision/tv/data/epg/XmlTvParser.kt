package it.felixvision.tv.data.epg

import android.util.Xml
import java.io.InputStream
import java.time.LocalDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter
import java.util.Locale
import org.xmlpull.v1.XmlPullParser

/** Risultato dello streaming XMLTV; `complete=false` conserva gli elementi già letti. */
data class XmlTvParseResult(
    val programsByEpgChannelId: Map<String, List<EpgProgram>>,
    val complete: Boolean,
)

/** Timestamp XMLTV: i valori senza offset sono UTC per specifica del formato. */
object XmlTvTimestamp {
    private val timestampPattern = Regex("^(\\d{14})(?:\\s+(Z|[+-]\\d{4}(?:\\d{2})?))?(?:\\s+.*)?$")
    private val localFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss", Locale.ROOT)

    fun parse(value: String?): Long? {
        val raw = value?.trim()?.takeIf(String::isNotEmpty) ?: return null
        val match = timestampPattern.matchEntire(raw) ?: return null
        val local = runCatching { LocalDateTime.parse(match.groupValues[1], localFormatter) }.getOrNull() ?: return null
        val suffix = match.groupValues[2]
        val offset = when {
            suffix.isEmpty() || suffix == "Z" -> ZoneOffset.UTC
            else -> {
                val normalized = when (suffix.length) {
                    5 -> "${suffix.substring(0, 3)}:${suffix.substring(3, 5)}"
                    7 -> "${suffix.substring(0, 3)}:${suffix.substring(3, 5)}:${suffix.substring(5, 7)}"
                    else -> return null
                }
                runCatching { ZoneOffset.of(normalized) }.getOrNull() ?: return null
            }
        }
        return runCatching { local.toEpochSecond(offset) }.getOrNull()
    }
}

/** Parser XMLTV incrementale: conserva solo gli ID presenti nel catalogo. */
object XmlTvParser {
    /**
     * Legge il body senza materializzare l'intero XML. XMLPullParser risolve le
     * entità XML; i timestamp XMLTV senza offset sono interpretati come UTC.
     */
    fun parse(
        input: InputStream,
        catalogEpgChannelIds: Set<String>,
        nowEpochSeconds: Long,
        withinTimeLimit: () -> Boolean = { true },
    ): XmlTvParseResult {
        if (catalogEpgChannelIds.isEmpty()) return XmlTvParseResult(emptyMap(), complete = true)
        val interestedIds = catalogEpgChannelIds.mapNotNull { it.trim().takeIf(String::isNotEmpty) }.toSet()
        val grouped = LinkedHashMap<String, MutableList<EpgProgram>>()
        val cutoff = nowEpochSeconds - MINIMUM_PROGRAM_END_AGE_SECONDS
        var current: ProgrammeBuilder? = null
        var textField: String? = null

        fun appendCurrentProgramme() {
            val builder = current ?: return
            val program = EpgProgram(
                title = EpgRules.decode(builder.title.toString().trim()),
                description = EpgRules.decode(builder.description.toString().trim()),
                start = builder.start,
                end = builder.end,
                hasArchive = false,
            )
            grouped.getOrPut(builder.channelId) { mutableListOf() }.add(program)
            current = null
            textField = null
        }

        return try {
            val parser = Xml.newPullParser()
            parser.setFeature(XmlPullParser.FEATURE_PROCESS_DOCDECL, false)
            parser.setInput(input, null)
            var event = parser.eventType
            while (event != XmlPullParser.END_DOCUMENT) {
                if (!withinTimeLimit()) {
                    appendCurrentProgramme()
                    return result(grouped, complete = false)
                }
                when (event) {
                    XmlPullParser.START_TAG -> when (parser.name) {
                        "programme" -> {
                            val channelId = parser.getAttributeValue(null, "channel")?.trim().orEmpty()
                            val start = XmlTvTimestamp.parse(parser.getAttributeValue(null, "start"))
                            val end = XmlTvTimestamp.parse(parser.getAttributeValue(null, "stop"))
                            current = if (channelId in interestedIds && start != null && end != null && end > start && end > cutoff) {
                                ProgrammeBuilder(channelId, start, end)
                            } else {
                                null
                            }
                            textField = null
                        }
                        "title" -> if (current != null) textField = "title"
                        "desc" -> if (current != null) textField = "description"
                    }

                    XmlPullParser.TEXT, XmlPullParser.CDSECT -> {
                        val builder = current
                        val text = parser.text.orEmpty()
                        when (textField) {
                            "title" -> builder?.title?.append(text)
                            "description" -> builder?.description?.append(text)
                        }
                    }

                    XmlPullParser.END_TAG -> when (parser.name) {
                        "title", "desc" -> textField = null
                        "programme" -> appendCurrentProgramme()
                    }
                }
                event = parser.next()
            }
            result(grouped, complete = true)
        } catch (_: Exception) {
            appendCurrentProgramme()
            result(grouped, complete = false)
        }
    }

    private fun result(
        grouped: Map<String, List<EpgProgram>>,
        complete: Boolean,
    ): XmlTvParseResult = XmlTvParseResult(
        programsByEpgChannelId = grouped.mapValues { (_, programs) -> EpgRules.normalize(programs) }
            .filterValues { it.isNotEmpty() },
        complete = complete,
    )

    private data class ProgrammeBuilder(
        val channelId: String,
        val start: Long,
        val end: Long,
        val title: StringBuilder = StringBuilder(),
        val description: StringBuilder = StringBuilder(),
    )

    const val MINIMUM_PROGRAM_END_AGE_SECONDS = 3_600L
}
