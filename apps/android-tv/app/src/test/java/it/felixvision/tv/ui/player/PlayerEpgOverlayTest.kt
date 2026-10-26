package it.felixvision.tv.ui.player

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onRoot
import androidx.compose.ui.test.onNodeWithTag
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpTheme
import java.time.LocalDate
import java.time.ZoneId
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class PlayerEpgOverlayTest {
    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun duplicateStartRowsCanScrollToEndAndBackToTop() {
        val zone = ZoneId.systemDefault()
        val start = LocalDate.now(zone).atTime(12, 0).atZone(zone).toEpochSecond()
        val nowMillis = (start + 60 * 60).times(1000)
        val programs = buildList {
            for (index in 0 until 32) {
                val programStart = start - 8 * 60 * 60 + index * 30 * 60L
                if (programStart != start) {
                    add(EpgProgram("Rubrica inventata $index", "Descrizione di prova", programStart, programStart + 20 * 60, false))
                }
            }
            add(EpgProgram("Il giardino di vetro", "Prima trasmissione inventata", start, start + 3 * 60 * 60, false))
            add(EpgProgram("La mappa delle stelle", "Seconda trasmissione inventata", start, start + 4 * 60 * 60, false))
        }
        val listStateRef = AtomicReference<LazyListState?>()
        val scrollFailure = AtomicReference<Throwable?>()
        val scrollCompleted = AtomicBoolean(false)

        rule.setContent {
            FvpTheme {
                val listState = rememberLazyListState()
                listStateRef.set(listState)
                Box(Modifier.fillMaxSize()) {
                    PlayerEpgOverlay(
                        channelName = "Canale di prova",
                        programs = programs,
                        loading = false,
                        unavailable = false,
                        expanded = null,
                        scale = UiScale(1f),
                        clock = Clock { nowMillis },
                        onDescription = {},
                        listState = listState,
                    )
                }
            }
        }
        rule.waitForIdle()
        rule.onRoot().assertExists()

        val state = requireNotNull(listStateRef.get())
        val lastItemIndex = programs.size // intestazione "Oggi" più tutte le righe
        rule.runOnIdle {
            CoroutineScope(Dispatchers.Main.immediate).launch {
                try {
                    state.scrollToItem(lastItemIndex)
                    assertTrue(state.layoutInfo.visibleItemsInfo.any { it.index == lastItemIndex })
                    state.scrollToItem(0)
                    assertEquals(0, state.firstVisibleItemIndex)
                } catch (failure: Throwable) {
                    scrollFailure.set(failure)
                } finally {
                    scrollCompleted.set(true)
                }
            }
        }
        rule.waitUntil(timeoutMillis = 5_000) { scrollCompleted.get() }
        assertNull(scrollFailure.get())
    }

    @Test
    fun replayButtonIsShownOnlyForEligibleExpandedPrograms() {
        val zone = ZoneId.systemDefault()
        val nowSeconds = LocalDate.now(zone).atTime(15, 0).atZone(zone).toEpochSecond()
        val nowMillis = nowSeconds * 1_000L
        val program = EpgProgram("La lanterna blu", "Una storia inventata", nowSeconds - 2_100L, nowSeconds - 300L, true)
        val tag = "epg_replay_${program.start}"

        rule.setContent {
            FvpTheme {
                PlayerEpgOverlay(
                    channelName = "Canale di prova", programs = listOf(program), loading = false,
                    unavailable = false, expanded = program.start, scale = UiScale(1f),
                    clock = Clock { nowMillis }, onDescription = {},
                    channel = LiveStream(streamId = "001", tvArchive = 1, tvArchiveDuration = 7),
                )
            }
        }
        rule.onNodeWithTag(tag).assertExists()

        rule.setContent {
            FvpTheme {
                PlayerEpgOverlay(
                    channelName = "Canale di prova", programs = listOf(program.copy(hasArchive = false)), loading = false,
                    unavailable = false, expanded = program.start, scale = UiScale(1f),
                    clock = Clock { nowMillis }, onDescription = {},
                    channel = LiveStream(streamId = "001", tvArchive = 1, tvArchiveDuration = 7),
                )
            }
        }
        rule.onNodeWithTag(tag).assertDoesNotExist()

        val onAir = program.copy(start = nowSeconds - 900L, end = nowSeconds + 900L, hasArchive = false)
        rule.setContent {
            FvpTheme {
                PlayerEpgOverlay(
                    channelName = "Canale di prova", programs = listOf(onAir), loading = false,
                    unavailable = false, expanded = onAir.start, scale = UiScale(1f),
                    clock = Clock { nowMillis }, onDescription = {},
                    channel = LiveStream(streamId = "001", tvArchive = 1, tvArchiveDuration = 7),
                )
            }
        }
        rule.onNodeWithTag("epg_replay_${onAir.start}").assertExists()
    }
}
