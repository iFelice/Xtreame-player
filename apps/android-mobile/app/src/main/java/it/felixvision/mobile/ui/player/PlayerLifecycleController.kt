package it.felixvision.mobile.ui.player

import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.progress.WatchRules
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

interface PlayerLifecyclePort {
    val positionMillis: Long
    val durationMillis: Long

    fun open(source: MobilePlaybackSource, positionMillis: Long, autoplay: Boolean)
    fun seekTo(positionMillis: Long)
    fun play()
    fun pause()
    fun release()
}

interface PlayerProgressPort {
    suspend fun load(key: String): WatchProgress?
    suspend fun save(
        source: MobilePlaybackSource,
        key: String,
        positionMillis: Long,
        durationMillis: Long,
    )
}

/** Lifecycle and resume behavior shared by production and deterministic fake-player tests. */
class PlayerLifecycleController(
    initialSource: MobilePlaybackSource,
    private val player: PlayerLifecyclePort,
    private val progress: PlayerProgressPort,
    private val scope: CoroutineScope,
    private val nowMillis: () -> Long,
    private val keyForSource: (MobilePlaybackSource) -> String?,
    private val serverTimezone: String? = null,
    private val dispatcher: CoroutineDispatcher = Dispatchers.IO,
    private val canResume: (WatchProgress?) -> Boolean = { WatchRules.canResume(it) },
    private val shouldPersist: (Long) -> Boolean = { WatchRules.shouldPersist(it) },
) {
    private val liveChannels = when (val source = initialSource) {
        is MobilePlaybackSource.Live -> source.channels
        is MobilePlaybackSource.Catchup -> source.channels
        else -> emptyList()
    }
    private val initialLiveIndex = LiveZapping.clamp(
        when (val source = initialSource) {
            is MobilePlaybackSource.Live -> source.startIndex
            is MobilePlaybackSource.Catchup -> source.startIndex
            else -> 0
        },
        liveChannels.size,
    )
    var currentSource: MobilePlaybackSource = when (initialSource) {
        is MobilePlaybackSource.Live -> initialSource.copy(startIndex = initialLiveIndex)
        is MobilePlaybackSource.Catchup -> initialSource.copy(startIndex = initialLiveIndex)
        else -> initialSource
    }
        private set
    var resumePromptMillis: Long? = null
        private set
    var closed: Boolean = false
        private set
    private var liveIndex = initialLiveIndex

    suspend fun start(autoResume: Boolean): Long? {
        if (closed) return null
        val key = keyForSource(currentSource)
        val saved = key?.let { runCatching { progress.load(it) }.getOrNull() }
        val resumePosition = saved.takeIf(canResume)?.positionMillis
        resumePromptMillis = resumePosition.takeIf { !autoResume }
        player.open(currentSource, resumePosition ?: 0L, autoResume || resumePosition == null)
        return resumePromptMillis
    }

    fun openSource(source: MobilePlaybackSource, positionMillis: Long = 0L, autoplay: Boolean = true) {
        if (closed) return
        saveProgress()
        currentSource = source
        resumePromptMillis = null
        player.open(source, positionMillis, autoplay)
    }

    fun selectChannel(index: Int): Boolean {
        if (index !in liveChannels.indices) return false
        liveIndex = index
        val current = currentSource
        val source = MobilePlaybackSource.Live(
            channels = liveChannels,
            startIndex = liveIndex,
            categoryName = when (current) {
                is MobilePlaybackSource.Live -> current.categoryName
                is MobilePlaybackSource.Catchup -> current.stream.categoryId
                else -> null
            },
            isPersonal = (initialSource as? MobilePlaybackSource.Live)?.isPersonal == true,
        )
        openSource(source)
        return true
    }

    fun nextChannel(): Boolean = moveChannel(1)

    fun previousChannel(): Boolean = moveChannel(-1)

    private fun moveChannel(direction: Int): Boolean {
        if (liveChannels.isEmpty()) return false
        val index = if (direction > 0) {
            LiveZapping.next(liveIndex, liveChannels.size)
        } else {
            LiveZapping.previous(liveIndex, liveChannels.size)
        }
        return selectChannel(index)
    }

    fun playCatchup(
        streamId: String,
        programStartSeconds: Long,
        programs: List<EpgProgram>,
    ): Boolean {
        val channel = liveChannels.getOrNull(liveIndex) ?: return false
        if (channel.streamId != streamId) return false
        val program = programs.firstOrNull { it.start == programStartSeconds } ?: return false
        if (!CatchupRules.isProgramReplayable(program, channel, nowMillis() / 1_000L)) return false
        openSource(
            MobilePlaybackSource.Catchup(
                stream = channel,
                title = program.title,
                start = program.start,
                duration = program.end - program.start,
                timezone = serverTimezone,
                channels = liveChannels,
                startIndex = liveIndex,
            ),
        )
        return true
    }

    fun returnToLive(): Boolean {
        val source = when (val current = currentSource) {
            is MobilePlaybackSource.Live -> current.copy(startIndex = liveIndex)
            is MobilePlaybackSource.Catchup -> MobilePlaybackSource.Live(
                channels = current.channels,
                startIndex = liveIndex,
                categoryName = current.stream.categoryId,
            )
            else -> return false
        }
        openSource(source)
        return true
    }

    fun selectEpisode(episodeId: String): Boolean {
        val source = currentSource as? MobilePlaybackSource.Episode ?: return false
        val selected = source.queue.firstOrNull { it.id == episodeId } ?: return false
        if (selected.id == source.episodeId) return false
        openSource(
            source.copy(
                episodeId = selected.id,
                title = selected.title,
                extension = selected.extension,
            ),
        )
        return true
    }

    fun nextEpisode(): Boolean {
        val source = currentSource as? MobilePlaybackSource.Episode ?: return false
        val currentIndex = source.queue.indexOfFirst { it.id == source.episodeId }
        val next = source.queue.getOrNull(currentIndex + 1) ?: return false
        openSource(
            source.copy(
                episodeId = next.id,
                title = next.title,
                extension = next.extension,
            ),
        )
        return true
    }

    fun resumeFromSaved() {
        val position = resumePromptMillis ?: return
        resumePromptMillis = null
        player.seekTo(position)
        player.play()
    }

    fun startFromBeginning() {
        if (closed) return
        resumePromptMillis = null
        player.seekTo(0L)
        player.play()
    }

    fun pause() {
        if (closed) return
        player.pause()
        saveProgress()
    }

    fun onStop(inPictureInPicture: Boolean) {
        if (!inPictureInPicture) pause()
    }

    fun saveProgress() {
        if (closed) return
        val key = keyForSource(currentSource) ?: return
        val position = player.positionMillis
        if (!shouldPersist(position)) return
        val duration = player.durationMillis.coerceAtLeast(0L)
        val source = currentSource
        scope.launch(dispatcher) {
            runCatching { progress.save(source, key, position, duration) }
        }
    }

    fun close() {
        if (closed) return
        saveProgress()
        closed = true
        player.release()
    }
}
