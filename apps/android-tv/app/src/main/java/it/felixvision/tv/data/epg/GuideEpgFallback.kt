package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay

/** Canale del catalogo usato per una richiesta short EPG, identificato dall'ID XMLTV. */
data class GuideEpgChannel(val epgChannelId: String, val streamId: String)

/** Esito di una singola richiesta get_short_epg; un elenco vuoto è una risposta riuscita. */
sealed interface EpgFetchResult {
    data class Success(val programs: List<EpgProgram>) : EpgFetchResult
    data object Failure : EpgFetchResult
}

/** Contatori mantenuti per la sessione corrente di riserva short EPG. */
data class GuideFallbackState(
    val consecutiveRequestErrors: Int = 0,
    val channelsTried: Int = 0,
    val firstTenReturnedData: Boolean = false,
    val stopped: Boolean = false,
    val attemptedEpgIds: Set<String> = emptySet(),
    val lastRequestFinishedAtMillis: Long? = null,
)

/** Risultato di un batch seriale di canali visibili. */
data class GuideFallbackBatch(
    val state: GuideFallbackState,
    val programsByEpgChannelId: Map<String, CachedGuidePrograms>,
    val requestsMade: Int,
)

/** Politica seriale e deterministica del fallback `get_short_epg`. */
class GuideEpgFallback(
    private val clock: Clock = SystemClock,
    private val sleep: suspend (Long) -> Unit = { delay(it) },
) {
    suspend fun load(
        channels: Collection<GuideEpgChannel>,
        initialState: GuideFallbackState = GuideFallbackState(),
        fetch: suspend (GuideEpgChannel) -> EpgFetchResult,
    ): GuideFallbackBatch {
        var state = initialState
        var requestCount = 0
        val result = LinkedHashMap<String, CachedGuidePrograms>()
        val uniqueChannels = channels.asSequence()
            .map { it.copy(epgChannelId = it.epgChannelId.trim(), streamId = it.streamId.trim()) }
            .filter { it.epgChannelId.isNotEmpty() && it.streamId.isNotEmpty() }
            .distinctBy { it.epgChannelId }
            .toList()

        for (channel in uniqueChannels) {
            if (state.stopped) break
            if (channel.epgChannelId in state.attemptedEpgIds) continue

            val channelNumber = state.channelsTried + 1
            state = state.copy(
                channelsTried = channelNumber,
                attemptedEpgIds = state.attemptedEpgIds + channel.epgChannelId,
            )

            var channelPrograms: List<EpgProgram>? = null
            var attempt = 0
            while (attempt <= MAX_RETRIES) {
                val retryDelay = if (attempt == 0) 0L else RETRY_BACKOFF_MILLIS[attempt - 1]
                val spacingDelay = state.lastRequestFinishedAtMillis?.let { lastFinished ->
                    (MIN_REQUEST_SPACING_MILLIS - (clock.nowMillis() - lastFinished)).coerceAtLeast(0L)
                } ?: 0L
                val waitMillis = maxOf(retryDelay, spacingDelay)
                if (waitMillis > 0L) sleep(waitMillis)

                val response = try {
                    fetch(channel)
                } catch (cancelled: CancellationException) {
                    throw cancelled
                } catch (_: Exception) {
                    EpgFetchResult.Failure
                }
                requestCount++
                attempt++
                state = state.copy(lastRequestFinishedAtMillis = clock.nowMillis())

                when (response) {
                    EpgFetchResult.Failure -> {
                        val errors = state.consecutiveRequestErrors + 1
                        state = state.copy(
                            consecutiveRequestErrors = errors,
                            stopped = errors >= MAX_CONSECUTIVE_REQUEST_ERRORS,
                        )
                        if (state.stopped || attempt > MAX_RETRIES) break
                    }

                    is EpgFetchResult.Success -> {
                        val normalized = EpgRules.normalize(response.programs)
                        channelPrograms = normalized
                        state = state.copy(consecutiveRequestErrors = 0)
                        if (channelNumber <= FIRST_CHANNELS_TO_CHECK && normalized.isNotEmpty()) {
                            state = state.copy(firstTenReturnedData = true)
                        }
                        break
                    }
                }
            }

            channelPrograms?.let { programs ->
                result[channel.epgChannelId] = CachedGuidePrograms(
                    programs = programs,
                    savedAtMillis = clock.nowMillis(),
                )
            }

            if (
                channelNumber == FIRST_CHANNELS_TO_CHECK &&
                !state.firstTenReturnedData
            ) {
                state = state.copy(stopped = true)
            }
            if (state.stopped) break
        }

        return GuideFallbackBatch(
            state = state,
            programsByEpgChannelId = result,
            requestsMade = requestCount,
        )
    }

    companion object {
        /** Tre ripetizioni oltre alla richiesta iniziale: quattro richieste in totale. */
        const val MAX_RETRIES = 3
        const val MAX_REQUESTS_PER_CHANNEL = MAX_RETRIES + 1
        const val MIN_REQUEST_SPACING_MILLIS = 300L
        const val MAX_CONSECUTIVE_REQUEST_ERRORS = 5
        const val FIRST_CHANNELS_TO_CHECK = 10
        val RETRY_BACKOFF_MILLIS = longArrayOf(1_000L, 2_000L, 4_000L)
    }
}
