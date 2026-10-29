package it.felixvision.mobile.ui.player

import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.access.AccountSummary
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.PlayTarget
import it.felixvision.mobile.ui.main.AppSection
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.channels.MyChannelPlayback
import it.felixvision.tv.data.epg.CatchupRules
import it.felixvision.tv.data.playback.LiveZapping
import it.felixvision.tv.data.playback.buildEpisodeQueue
import it.felixvision.tv.data.playback.indexOfEpisode

suspend fun createMobilePlayerSession(
    target: PlayTarget, catalog: Catalog, container: AppContainer, account: AccountSummary,
    password: String, selectedSection: AppSection, viewModel: CatalogViewModel,
): MobilePlayerSession? {
    val allLive = catalog.liveStreams
    suspend fun liveSession(streamId: String, personal: Boolean = false): MobilePlaybackSource.Live? {
        val chosen = allLive.firstOrNull { it.streamId == streamId } ?: return null
        if (personal) {
            val my = container.myChannelsStore.getChannels(account.server, account.username)
            val ordered = MyChannelPlayback.streams(my, allLive)
            if (ordered.isNotEmpty()) return MobilePlaybackSource.Live(ordered, ordered.indexOfFirst { it.streamId == streamId }.coerceAtLeast(0), "I miei canali", true)
        }
        val category = chosen.categoryId
        val channels = if (category.isNullOrBlank()) allLive else allLive.filter { it.categoryId == category }
        val start = channels.indexOfFirst { it.streamId == streamId }.let { if (it < 0) 0 else it }
        val categoryName = catalog.liveCategories.firstOrNull { it.categoryId == category }?.categoryName
        return MobilePlaybackSource.Live(channels, LiveZapping.clamp(start, channels.size), categoryName)
    }
    val source: MobilePlaybackSource = when (target) {
        is PlayTarget.LiveChannel -> liveSession(target.streamId, target.fromMyChannels) ?: return null
        is PlayTarget.CatchupProgram -> {
            val live = liveSession(target.streamId) ?: return null
            val channel = live.channels.getOrNull(live.startIndex) ?: return null
            if (!CatchupRules.channelSupportsArchive(channel)) return null
            val programs = container.channelEpgClient.load(account.server, account.username, password, channel.streamId)
            val program = programs.firstOrNull { it.title.equals(target.programTitle, ignoreCase = true) && CatchupRules.isProgramReplayable(it, channel, container.clock.nowMillis() / 1_000L) } ?: return null
            MobilePlaybackSource.Catchup(channel, program.title, program.start, program.end - program.start, account.serverTimezone, live.channels, live.startIndex)
        }
        is PlayTarget.Movie -> {
            val stream = catalog.vodStreams.firstOrNull { it.streamId == target.streamId } ?: return null
            MobilePlaybackSource.Movie(stream)
        }
        is PlayTarget.SeriesEpisode -> {
            val item = catalog.series.firstOrNull { it.seriesId == target.seriesId } ?: return null
            val info = viewModel.loadSeriesInfo(target.seriesId) ?: return null
            val seasonOrder = info.seasons.map { it.seasonNumber.toString() }
            val queue = buildEpisodeQueue(seasonOrder, info.episodes)
            val index = if (target.episodeId.isBlank()) 0 else indexOfEpisode(queue, target.episodeId).takeIf { it >= 0 } ?: return null
            val episode = queue.getOrNull(index) ?: return null
            MobilePlaybackSource.Episode(episode.episode.id, episode.displayTitle, item.name, episode.episode.containerExtension, item.seriesId, item.categoryId, item.cover,
                queue.map { MobileEpisodeRef(it.episode.id, it.displayTitle, it.episode.containerExtension, it.seasonNumber, it.episode.episodeNum) })
        }
        is PlayTarget.ContinueItem -> {
            val entry = container.continueWatchingStore.getAll(account.server, account.username).firstOrNull { it.key == target.key } ?: return null
            if (entry.isMovie) {
                val stream = catalog.vodStreams.firstOrNull { it.streamId == entry.streamId } ?: return null
                MobilePlaybackSource.Movie(stream, entry.title)
            } else {
                val seriesId = entry.seriesId ?: return null
                val info = viewModel.loadSeriesInfo(seriesId) ?: return null
                val queue = buildEpisodeQueue(info.seasons.map { it.seasonNumber.toString() }, info.episodes)
                val episodeId = entry.episodeId ?: return null
                val index = indexOfEpisode(queue, episodeId).takeIf { it >= 0 } ?: return null
                val item = catalog.series.firstOrNull { it.seriesId == seriesId } ?: return null
                val episode = queue[index]
                MobilePlaybackSource.Episode(episodeId, episode.displayTitle, item.name, episode.episode.containerExtension, item.seriesId, item.categoryId, item.cover,
                    queue.map { MobileEpisodeRef(it.episode.id, it.displayTitle, it.episode.containerExtension, it.seasonNumber, it.episode.episodeNum) })
            }
        }
    }
    return MobilePlayerSession(account.server, account.username, password, account.allowedOutputFormats, source, autoResume = target is PlayTarget.ContinueItem)
}
