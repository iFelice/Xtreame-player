package it.felixvision.mobile.ui.player

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.progress.WatchProgress
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class PlayerLifecycleControllerTest {
    @Test
    fun savedProgressPromptsThenResumesTheSavedPosition() = runTest {
        val source = movieSource()
        val fixture = fixture(source, savedProgress = WatchProgress(positionMillis = 60_000L))

        val prompt = fixture.controller.start(autoResume = false)

        assertEquals(60_000L, prompt)
        assertEquals(OpenCall(source, 60_000L, autoplay = false), fixture.player.opens.single())
        fixture.controller.resumeFromSaved()
        assertNull(fixture.controller.resumePromptMillis)
        assertEquals(listOf(60_000L), fixture.player.seeks)
        assertEquals(1, fixture.player.playCount)
    }

    @Test
    fun startFromBeginningClearsPromptAndStartsAtZero() = runTest {
        val fixture = fixture(movieSource(), savedProgress = WatchProgress(positionMillis = 60_000L))
        fixture.controller.start(autoResume = false)
        fixture.controller.startFromBeginning()

        assertNull(fixture.controller.resumePromptMillis)
        assertEquals(listOf(0L), fixture.player.seeks)
        assertEquals(1, fixture.player.playCount)
    }

    @Test
    fun automaticResumeUsesSavedPositionWithoutPrompt() = runTest {
        val source = movieSource()
        val fixture = fixture(source, savedProgress = WatchProgress(positionMillis = 90_000L))

        assertNull(fixture.controller.start(autoResume = true))

        assertEquals(OpenCall(source, 90_000L, autoplay = true), fixture.player.opens.single())
        assertNull(fixture.controller.resumePromptMillis)
    }

    @Test
    fun pauseAndClosePersistEligibleProgress() = runTest {
        val fixture = fixture(movieSource())
        fixture.player.positionMillis = 41_000L
        fixture.player.durationMillis = 120_000L
        fixture.controller.pause()
        advanceUntilIdle()

        assertEquals(1, fixture.player.pauseCount)
        assertEquals(listOf(SaveCall("vod_001", 41_000L, 120_000L)), fixture.progress.saves)

        fixture.controller.close()
        advanceUntilIdle()
        assertTrue(fixture.controller.closed)
        assertEquals(1, fixture.player.releaseCount)
        assertEquals(2, fixture.progress.saves.size)
    }

    @Test
    fun pictureInPictureStopKeepsThePlayerUntilTheCloseCallback() = runTest {
        val ordinary = fixture(movieSource())
        ordinary.player.positionMillis = 45_000L
        ordinary.controller.onStop(inPictureInPicture = false)
        assertEquals(1, ordinary.player.pauseCount)
        assertEquals(0, ordinary.player.releaseCount)

        val pip = fixture(movieSource())
        pip.player.positionMillis = 45_000L
        pip.controller.onStop(inPictureInPicture = true)
        assertEquals(0, pip.player.pauseCount)
        assertEquals(0, pip.player.releaseCount)
        assertFalse(pip.controller.closed)
        pip.controller.close()
        assertEquals(1, pip.player.releaseCount)
        assertTrue(pip.controller.closed)
    }

    @Test
    fun channelSelectionAndZappingPreserveThePersonalListAndWrapAround() = runTest {
        val source = MobilePlaybackSource.Live(
            channels = demoChannels,
            startIndex = 0,
            categoryName = "001",
            isPersonal = true,
        )
        val fixture = fixture(source)

        assertTrue(fixture.controller.nextChannel())
        assertEquals("stream-002", (fixture.controller.currentSource as MobilePlaybackSource.Live).channels[1].streamId)
        assertEquals(1, (fixture.controller.currentSource as MobilePlaybackSource.Live).startIndex)
        assertTrue((fixture.controller.currentSource as MobilePlaybackSource.Live).isPersonal)
        assertTrue(fixture.controller.previousChannel())
        assertEquals(0, (fixture.controller.currentSource as MobilePlaybackSource.Live).startIndex)
        assertTrue(fixture.controller.previousChannel())
        assertEquals(1, (fixture.controller.currentSource as MobilePlaybackSource.Live).startIndex)
        assertFalse(fixture.controller.selectChannel(99))
    }

    @Test
    fun invalidInitialLiveIndexIsClampedBeforeOpeningTheSource() = runTest {
        val source = MobilePlaybackSource.Live(
            channels = demoChannels,
            startIndex = 99,
            categoryName = "001",
        )
        val fixture = fixture(source)

        assertEquals(1, (fixture.controller.currentSource as MobilePlaybackSource.Live).startIndex)
        fixture.controller.start(autoResume = false)
        assertEquals(1, (fixture.player.opens.single().source as MobilePlaybackSource.Live).startIndex)
    }

    @Test
    fun catchupRequiresTheSelectedStreamAndExactProgramStartAndReturnsToLive() = runTest {
        val source = MobilePlaybackSource.Live(
            channels = demoChannels,
            startIndex = 0,
            categoryName = "001",
            isPersonal = false,
        )
        val fixture = fixture(source, nowMillis = { 1_000_100_000L })
        val program = EpgProgram("Programma demo", "", 1_000_000L, 1_003_600L, hasArchive = true)
        val otherStart = program.copy(start = 1_000_001L)

        assertFalse(
            fixture.controller.playCatchup(
                streamId = "stream-002",
                programStartSeconds = program.start,
                programs = listOf(program),
            ),
        )
        assertFalse(
            fixture.controller.playCatchup(
                streamId = "stream-001",
                programStartSeconds = program.start,
                programs = listOf(otherStart),
            ),
        )
        assertTrue(
            fixture.controller.playCatchup(
                streamId = "stream-001",
                programStartSeconds = program.start,
                programs = listOf(program),
            ),
        )
        val catchup = fixture.controller.currentSource as MobilePlaybackSource.Catchup
        assertEquals("stream-001", catchup.stream.streamId)
        assertEquals(program.start, catchup.start)
        assertEquals(program.end - program.start, catchup.duration)
        assertTrue(fixture.controller.returnToLive())
        assertEquals(MobilePlaybackType.LIVE, fixture.controller.currentSource.playbackType())
    }

    @Test
    fun episodeSelectionAndNextEpisodeOpenMatchingQueueEntries() = runTest {
        val first = MobileEpisodeRef("episode-001", "Episodio uno", "mp4", "1", "1")
        val second = MobileEpisodeRef("episode-002", "Episodio due", "mp4", "1", "2")
        val source = MobilePlaybackSource.Episode(
            episodeId = first.id,
            title = first.title,
            seriesTitle = "Serie demo",
            extension = first.extension,
            seriesId = "series-001",
            categoryId = "001",
            poster = null,
            queue = listOf(first, second),
        )
        val fixture = fixture(source)

        assertTrue(fixture.controller.nextEpisode())
        assertEquals(second.id, (fixture.controller.currentSource as MobilePlaybackSource.Episode).episodeId)
        assertFalse(fixture.controller.nextEpisode())
        assertTrue(fixture.controller.selectEpisode(first.id))
        assertEquals(first.id, (fixture.controller.currentSource as MobilePlaybackSource.Episode).episodeId)
    }

    @Test
    fun progressBelowTheMinimumIsNotPersisted() = runTest {
        val fixture = fixture(movieSource())
        fixture.player.positionMillis = 29_999L
        fixture.controller.saveProgress()
        advanceUntilIdle()

        assertTrue(fixture.progress.saves.isEmpty())
    }

    private fun TestScope.fixture(
        source: MobilePlaybackSource,
        savedProgress: WatchProgress? = null,
        nowMillis: () -> Long = { testScheduler.currentTime },
    ): Fixture {
        val dispatcher = StandardTestDispatcher(testScheduler)
        val player = FakePlayer()
        val progress = FakeProgress(savedProgress)
        val controller = PlayerLifecycleController(
            initialSource = source,
            player = player,
            progress = progress,
            scope = backgroundScope,
            nowMillis = nowMillis,
            keyForSource = { source ->
                when (source) {
                    is MobilePlaybackSource.Movie -> "vod_${source.stream.streamId}"
                    is MobilePlaybackSource.Episode -> "ep_${source.episodeId}"
                    else -> null
                }
            },
            dispatcher = dispatcher,
        )
        return Fixture(controller, player, progress)
    }

    private fun movieSource() = MobilePlaybackSource.Movie(
        VodStream(streamId = "001", name = "Film demo", containerExtension = "mp4"),
    )

    private data class Fixture(
        val controller: PlayerLifecycleController,
        val player: FakePlayer,
        val progress: FakeProgress,
    )

    private data class OpenCall(
        val source: MobilePlaybackSource,
        val positionMillis: Long,
        val autoplay: Boolean,
    )

    private data class SaveCall(val key: String, val positionMillis: Long, val durationMillis: Long)

    private class FakePlayer : PlayerLifecyclePort {
        override var positionMillis: Long = 0L
        override var durationMillis: Long = 0L
        var isPlaying: Boolean = false
        val opens = mutableListOf<OpenCall>()
        val seeks = mutableListOf<Long>()
        var playCount = 0
        var pauseCount = 0
        var releaseCount = 0

        override fun open(source: MobilePlaybackSource, positionMillis: Long, autoplay: Boolean) {
            opens += OpenCall(source, positionMillis, autoplay)
            this.positionMillis = positionMillis
            isPlaying = autoplay
        }

        override fun seekTo(positionMillis: Long) {
            seeks += positionMillis
            this.positionMillis = positionMillis
        }

        override fun play() {
            playCount += 1
            isPlaying = true
        }

        override fun pause() {
            pauseCount += 1
            isPlaying = false
        }

        override fun release() {
            releaseCount += 1
        }
    }

    private class FakeProgress(savedProgress: WatchProgress?) : PlayerProgressPort {
        private val saved = savedProgress
        val saves = mutableListOf<SaveCall>()

        override suspend fun load(key: String): WatchProgress? = saved

        override suspend fun save(
            source: MobilePlaybackSource,
            key: String,
            positionMillis: Long,
            durationMillis: Long,
        ) {
            saves += SaveCall(key, positionMillis, durationMillis)
        }
    }

    private companion object {
        val demoChannels = listOf(
            LiveStream(
                name = "Canale demo uno",
                streamId = "stream-001",
                categoryId = "001",
                tvArchive = 1,
                tvArchiveDuration = 7,
            ),
            LiveStream(
                name = "Canale demo due",
                streamId = "stream-002",
                categoryId = "001",
                tvArchive = 1,
                tvArchiveDuration = 7,
            ),
        )
    }
}
