package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.CatalogCache
import it.felixvision.tv.data.catalog.LiveStream
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

/**
 * Coordina XMLTV, il ripiego seriale Xtream e la cache persistente. È in `data/`
 * e non importa componenti UI: Android Mobile compila le stesse sorgenti.
 */
class GuideEpgRepository(
    private val cache: CatalogCache,
    private val xmlTvClient: XmlTvClient,
    private val channelEpgClient: ChannelEpgClient,
    private val applicationScope: CoroutineScope,
    private val clock: Clock = SystemClock,
    private val fallback: GuideEpgFallback = GuideEpgFallback(clock),
) : GuideEpgDataSource {

    private data class AccountKey(val server: String, val username: String)

    private class Session {
        val fallbackMutex = Mutex()
        @Volatile var generation: Long = 0L
        @Volatile var fallbackState: GuideFallbackState = GuideFallbackState()
    }

    private val snapshots = MutableStateFlow<Map<AccountKey, GuideEpgSnapshot>>(emptyMap())
    private val sessions = ConcurrentHashMap<AccountKey, Session>()
    private val persistenceMutex = Mutex()
    private val refreshJobs = ConcurrentHashMap<AccountKey, Job>()
    private val generationCounter = AtomicLong()

    override fun observe(server: String, username: String): Flow<GuideEpgSnapshot> {
        val key = accountKey(server, username)
        return snapshots.map { it[key] ?: GuideEpgSnapshot() }.distinctUntilChanged()
    }

    /**
     * Avvia un solo download XMLTV in background per il refresh catalogo. Non
     * attende il risultato e gli errori non risalgono mai al CatalogClient.
     */
    fun scheduleCatalogRefresh(
        server: String,
        username: String,
        password: String,
        liveStreams: List<LiveStream>,
    ) {
        val key = accountKey(server, username)
        val session = sessionFor(key)
        val generation = generationCounter.incrementAndGet()
        session.generation = generation
        session.fallbackState = GuideFallbackState()
        update(key) { current ->
            current.copy(
                xmlTvLoading = true,
                xmlTvResolved = false,
                xmlTvFailed = false,
                loadingEpgIds = emptySet(),
                fallbackStopped = false,
            )
        }

        val catalogIds = liveStreams.asSequence()
            .mapNotNull { it.epgChannelId?.trim()?.takeIf(String::isNotEmpty) }
            .toSet()
        val job = applicationScope.launch(start = CoroutineStart.LAZY) {
            try {
                val cached = runCatching { cache.loadGuide(server, username) }.getOrNull()
                if (!isCurrent(session, generation)) return@launch
                if (cached != null) {
                    val now = clock.nowMillis()
                    val cutoff = now / 1_000L - XmlTvParser.MINIMUM_PROGRAM_END_AGE_SECONDS
                    val cachedXml = cached.xmlTvPrograms
                        .filterKeys { it in catalogIds }
                        .mapValues { (_, programs) -> normalizeXmlPrograms(programs, cutoff) }
                        .filterValues { it.isNotEmpty() }
                    val cachedShort = cached.shortEpgPrograms
                        .filterKeys { it in catalogIds }
                        .filterValues { entry -> isFreshShortEntry(entry, now) }
                    update(key) { current ->
                        current.copy(
                            xmlTvPrograms = cachedXml,
                            shortEpgPrograms = cachedShort,
                        )
                    }
                }

                val result = xmlTvClient.fetch(
                    server = server,
                    username = username,
                    password = password,
                    catalogEpgChannelIds = catalogIds,
                )
                if (!isCurrent(session, generation)) return@launch

                val current = snapshotFor(key)
                val cutoff = clock.nowMillis() / 1_000L - XmlTvParser.MINIMUM_PROGRAM_END_AGE_SECONDS
                val xmlPrograms = if (result.complete) {
                    result.programsByEpgChannelId
                        .filterKeys { it in catalogIds }
                        .mapValues { (_, programs) -> normalizeXmlPrograms(programs, cutoff) }
                        .filterValues { it.isNotEmpty() }
                } else {
                    mergePrograms(current.xmlTvPrograms, result.programsByEpgChannelId, catalogIds, cutoff)
                }
                update(key) { snapshot ->
                    snapshot.copy(
                        xmlTvPrograms = xmlPrograms,
                        xmlTvLoading = false,
                        xmlTvResolved = true,
                        xmlTvFailed = !result.complete,
                        fallbackStopped = session.fallbackState.stopped,
                    )
                }
                persistGuide(server, username, snapshotFor(key), clock.nowMillis(), session, generation)
            } catch (cancelled: CancellationException) {
                if (isCurrent(session, generation)) {
                    update(key) { it.copy(xmlTvLoading = false, xmlTvResolved = true, xmlTvFailed = true) }
                }
                throw cancelled
            } catch (_: Exception) {
                if (isCurrent(session, generation)) {
                    update(key) { it.copy(xmlTvLoading = false, xmlTvResolved = true, xmlTvFailed = true) }
                }
            }
        }
        val previous = refreshJobs.put(key, job)
        previous?.cancel()
        job.start()
    }

    /**
     * Azzera gli stop di sessione quando l'utente richiede un aggiornamento
     * manuale del catalogo. La nuova XMLTV verrà avviata a catalogo aggiornato.
     */
    fun resetFallbackSession(server: String, username: String) {
        val key = accountKey(server, username)
        val session = sessionFor(key)
        session.generation = generationCounter.incrementAndGet()
        session.fallbackState = GuideFallbackState()
        refreshJobs.remove(key)?.cancel()
        update(key) {
            it.copy(
                xmlTvLoading = false,
                xmlTvResolved = false,
                xmlTvFailed = false,
                loadingEpgIds = emptySet(),
                fallbackStopped = false,
            )
        }
    }

    /** Stato terminale se il primo refresh fallisce e non esiste un catalogo in cache. */
    fun markCatalogUnavailable(server: String, username: String) {
        val key = accountKey(server, username)
        update(key) {
            it.copy(
                xmlTvLoading = false,
                xmlTvResolved = true,
                xmlTvFailed = true,
                loadingEpgIds = emptySet(),
            )
        }
    }

    override suspend fun loadVisible(
        server: String,
        username: String,
        password: String,
        channels: List<LiveStream>,
    ) {
        val key = accountKey(server, username)
        val session = sessionFor(key)
        session.fallbackMutex.withLock {
            val generation = session.generation
            var snapshot = snapshotFor(key)
            if (snapshot.xmlTvLoading || !snapshot.xmlTvResolved) return

            val now = clock.nowMillis()
            val freshShort = snapshot.shortEpgPrograms.filterValues { isFreshShortEntry(it, now) }
            if (freshShort.size != snapshot.shortEpgPrograms.size) {
                snapshot = snapshot.copy(shortEpgPrograms = freshShort)
                update(key) { it.copy(shortEpgPrograms = freshShort) }
            }

            val uniqueVisible = channels.asSequence()
                .mapNotNull { channel ->
                    val epgId = channel.epgChannelId?.trim()?.takeIf(String::isNotEmpty) ?: return@mapNotNull null
                    val streamId = channel.streamId.trim().takeIf(String::isNotEmpty) ?: return@mapNotNull null
                    GuideEpgChannel(epgChannelId = epgId, streamId = streamId)
                }
                .distinctBy { it.epgChannelId }
                .filter { channel ->
                    snapshot.xmlTvPrograms[channel.epgChannelId].isNullOrEmpty() &&
                        channel.epgChannelId !in freshShort &&
                        channel.epgChannelId !in session.fallbackState.attemptedEpgIds
                }
                .toList()

            if (session.fallbackState.stopped) {
                update(key) { it.copy(fallbackStopped = true) }
                return
            }
            if (uniqueVisible.isEmpty()) return

            val loadingIds = uniqueVisible.mapTo(LinkedHashSet()) { it.epgChannelId }
            update(key) { it.copy(loadingEpgIds = it.loadingEpgIds + loadingIds) }
            try {
                val batch = fallback.load(
                    channels = uniqueVisible,
                    initialState = session.fallbackState,
                ) { channel ->
                    if (!isCurrent(session, generation)) throw CancellationException("Guida aggiornata")
                    channelEpgClient.loadShort(server, username, password, channel.streamId)
                }
                if (!isCurrent(session, generation)) return
                session.fallbackState = batch.state
                val updatedShort = snapshotFor(key).shortEpgPrograms + batch.programsByEpgChannelId
                update(key) {
                    it.copy(
                        shortEpgPrograms = updatedShort,
                        loadingEpgIds = it.loadingEpgIds - loadingIds,
                        fallbackStopped = batch.state.stopped,
                    )
                }
                persistGuide(server, username, snapshotFor(key), clock.nowMillis(), session, generation)
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                // Gli errori del ripiego sono rappresentati dalla policy; qui
                // si mantiene il catalogo e si lascia visibile lo stato senza log sensibili.
            } finally {
                if (isCurrent(session, generation)) {
                    update(key) { it.copy(loadingEpgIds = it.loadingEpgIds - loadingIds) }
                }
            }
        }
    }

    /** Cancella cache EPG su disco e in memoria senza toccare il catalogo. */
    suspend fun clearCache(): Long {
        refreshJobs.values.forEach { it.cancel() }
        refreshJobs.clear()
        sessions.values.forEach { session ->
            session.generation = generationCounter.incrementAndGet()
            session.fallbackState = GuideFallbackState()
        }
        val freedBytes = persistenceMutex.withLock { cache.clearGuideCaches() }
        // La cache svuotata non deve lasciare la pagina bloccata nello stato
        // iniziale irrisolto: al prossimo ingresso la riserva short EPG può
        // riempire i soli canali visibili, senza richiedere un refresh catalogo.
        snapshots.update { current ->
            current.mapValues { (_, snapshot) ->
                snapshot.copy(
                    xmlTvPrograms = emptyMap(),
                    shortEpgPrograms = emptyMap(),
                    xmlTvLoading = false,
                    xmlTvResolved = true,
                    xmlTvFailed = true,
                    loadingEpgIds = emptySet(),
                    fallbackStopped = false,
                )
            }
        }
        return freedBytes
    }

    private fun accountKey(server: String, username: String) =
        AccountKey(server.lowercase().trim(), username.lowercase().trim())

    private fun sessionFor(key: AccountKey): Session = sessions.computeIfAbsent(key) { Session() }

    private fun snapshotFor(key: AccountKey): GuideEpgSnapshot =
        snapshots.value[key] ?: GuideEpgSnapshot()

    private fun isCurrent(session: Session, generation: Long): Boolean = session.generation == generation

    private fun update(key: AccountKey, transform: (GuideEpgSnapshot) -> GuideEpgSnapshot) {
        snapshots.update { current ->
            val updated = transform(current[key] ?: GuideEpgSnapshot())
            current + (key to updated)
        }
    }

    private fun mergePrograms(
        previous: Map<String, List<EpgProgram>>,
        partial: Map<String, List<EpgProgram>>,
        eligibleIds: Set<String>,
        minimumEndEpochSeconds: Long,
    ): Map<String, List<EpgProgram>> {
        val merged = previous
            .filterKeys { it in eligibleIds }
            .mapValues { (_, programs) -> normalizeXmlPrograms(programs, minimumEndEpochSeconds) }
            .filterValues { it.isNotEmpty() }
            .toMutableMap()
        partial.filterKeys { it in eligibleIds }.forEach { (id, programs) ->
            val normalized = normalizeXmlPrograms(programs, minimumEndEpochSeconds)
            if (normalized.isNotEmpty()) merged[id] = normalized
        }
        return merged
    }

    private fun normalizeXmlPrograms(
        programs: List<EpgProgram>,
        minimumEndEpochSeconds: Long,
    ): List<EpgProgram> = EpgRules.normalize(programs.filter { it.end > minimumEndEpochSeconds })

    private fun isFreshShortEntry(entry: CachedGuidePrograms, nowMillis: Long): Boolean {
        val age = nowMillis - entry.savedAtMillis
        val ttl = if (entry.programs.isEmpty()) ChannelEpgClient.EMPTY_TTL_MILLIS else ChannelEpgClient.PROGRAM_TTL_MILLIS
        return entry.savedAtMillis > 0L && age >= 0L && age < ttl
    }

    private suspend fun persistGuide(
        server: String,
        username: String,
        snapshot: GuideEpgSnapshot,
        savedAtMillis: Long,
        session: Session,
        generation: Long,
    ) {
        persistenceMutex.withLock {
            if (!isCurrent(session, generation)) return@withLock
            try {
                cache.saveGuide(
                    server = server,
                    username = username,
                    guide = CachedGuideEpg(
                        xmlTvPrograms = snapshot.xmlTvPrograms,
                        xmlTvUpdatedAtMillis = savedAtMillis,
                        shortEpgPrograms = snapshot.shortEpgPrograms,
                    ),
                )
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                // La persistenza EPG non deve bloccare la Guida né il catalogo.
            }
        }
    }
}
