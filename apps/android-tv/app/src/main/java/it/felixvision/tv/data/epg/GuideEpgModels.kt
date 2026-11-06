package it.felixvision.tv.data.epg

import kotlinx.coroutines.flow.Flow
import kotlinx.serialization.Serializable

/** Programmi EPG persistiti per ID canale XMLTV. */
@Serializable
data class CachedGuidePrograms(
    val programs: List<EpgProgram> = emptyList(),
    val savedAtMillis: Long = 0L,
)

/** Cache Guida salvata con lo stesso JSON atomico del catalogo. */
@Serializable
data class CachedGuideEpg(
    val xmlTvPrograms: Map<String, List<EpgProgram>> = emptyMap(),
    val xmlTvUpdatedAtMillis: Long? = null,
    val shortEpgPrograms: Map<String, CachedGuidePrograms> = emptyMap(),
)

/** Snapshot in memoria osservato dalla Guida TV. */
data class GuideEpgSnapshot(
    val xmlTvPrograms: Map<String, List<EpgProgram>> = emptyMap(),
    val shortEpgPrograms: Map<String, CachedGuidePrograms> = emptyMap(),
    val xmlTvLoading: Boolean = false,
    val xmlTvResolved: Boolean = false,
    val xmlTvFailed: Boolean = false,
    val loadingEpgIds: Set<String> = emptySet(),
    val fallbackStopped: Boolean = false,
) {
    val isLoading: Boolean get() = xmlTvLoading || loadingEpgIds.isNotEmpty()

    val hasPrograms: Boolean
        get() = xmlTvPrograms.values.any { it.isNotEmpty() } ||
            shortEpgPrograms.values.any { it.programs.isNotEmpty() }

    /** XMLTV ha precedenza; il dato short EPG riempie solo i canali mancanti. */
    fun programsFor(epgChannelId: String?): List<EpgProgram> {
        val id = epgChannelId?.trim()?.takeIf(String::isNotEmpty) ?: return emptyList()
        return xmlTvPrograms[id].orEmpty().takeIf { it.isNotEmpty() }
            ?: shortEpgPrograms[id]?.programs.orEmpty()
    }
}

/**
 * Confine dati/UI della Guida: il modulo `data/` non dipende da Compose o
 * tv-material e resta compilabile dall'app Android Mobile.
 */
interface GuideEpgDataSource {
    fun observe(server: String, username: String): Flow<GuideEpgSnapshot>

    suspend fun loadVisible(
        server: String,
        username: String,
        password: String,
        channels: List<it.felixvision.tv.data.catalog.LiveStream>,
    )
}
