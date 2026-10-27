package it.felixvision.tv.ui

import android.app.Activity
import androidx.activity.ComponentActivity
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.assertIsNotFocused
import androidx.compose.ui.test.isFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.onRoot
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performKeyInput
import androidx.compose.ui.test.printToLog
import androidx.compose.ui.test.printToString
import androidx.compose.ui.test.pressKey
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.Text
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.favorites.FavoritesStore
import it.felixvision.tv.ui.catalog.FavoritesSection
import it.felixvision.tv.ui.catalog.MY_CHANNELS_EMPTY_MESSAGE
import it.felixvision.tv.ui.catalog.FilmSection
import it.felixvision.tv.ui.catalog.LiveSection
import it.felixvision.tv.ui.catalog.MyChannelDialog
import it.felixvision.tv.ui.catalog.NovitaSection
import it.felixvision.tv.ui.catalog.SerieSection
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.navigation.DrawerFocusHandle
import it.felixvision.tv.ui.navigation.DrawerSection
import it.felixvision.tv.ui.navigation.FvpNavigationDrawer
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.junit.Rule
import org.junit.Test
import org.junit.Ignore
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

private fun fakeCategories(prefix: String) = listOf(
    Category("${prefix}1", "Cat $prefix 1"),
    Category("${prefix}2", "Cat $prefix 2")
)
private fun fakeLiveStreams() = listOf(
    LiveStream(streamId = "101", name = "Canale 101", categoryId = "live1", streamIcon = null, epgChannelId = "ch101"),
    LiveStream(streamId = "102", name = "Canale 102", categoryId = "live2", streamIcon = null)
)
private fun fakeVodStreams() = listOf(
    VodStream(streamId = "201", name = "Film 201", categoryId = "vod1", streamIcon = null, year = "2024"),
    VodStream(streamId = "202", name = "Film 202", categoryId = "vod2", streamIcon = null, year = "2023")
)
private fun fakeSeries() = listOf(
    SeriesItem(seriesId = "301", name = "Serie 301", categoryId = "series1", cover = null, releaseDate = "2024-01-01"),
    SeriesItem(seriesId = "302", name = "Serie 302", categoryId = "series2", cover = null)
)

@Ignore("Navigazione a focus verificata sul dispositivo reale; da sostituire con test strumentali su emulatore Android TV")
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class DpadNavigationTest {

    @get:Rule val rule = createAndroidComposeRule<ComponentActivity>()
    private val scale = UiScale(factor = 1f)

    private fun dumpTree(testName: String) {
        try {
            rule.onRoot(useUnmergedTree = true).printToLog("DPAD")
            val str = rule.onRoot(useUnmergedTree = true).printToString()
            val f = java.io.File("build/dpad-tree-${testName}.txt")
            f.parentFile?.mkdirs()
            f.writeText(str)
        } catch (_: Exception) {}
    }

    @Composable
    private fun TestFvpScreen(
        contentFocusRequester: FocusRequester,
        drawerFocusHandle: DrawerFocusHandle,
        favoritesInMemory: FavoritesStore.InMemory = FavoritesStore.InMemory(),
        onExitConfirmShown: (() -> Unit)? = null
    ) {
        var selectedTab by remember { mutableStateOf(DrawerSection.Novita) }
        var showExitConfirm by remember { mutableStateOf(false) }
        var showPlaybackMessage by remember { mutableStateOf<String?>(null) }
        var favoritesMessage by remember { mutableStateOf<String?>(null) }
        var favTick by remember { mutableStateOf(0) }
        // "I miei canali": lista personale e finestra di aggiunta/modifica.
        var myChannels by remember { mutableStateOf(listOf<MyChannel>()) }
        var myChannelEdit by remember { mutableStateOf<MyChannel?>(null) }
        val scope = rememberCoroutineScope()
        val context = LocalContext.current
        val drawerState = rememberDrawerState(initialValue = DrawerValue.Closed)

        // favorites for film/serie/novita detail
        val allFavs = favoritesInMemory.get("http://server.esempio:8080", "demo")

        androidx.activity.compose.BackHandler(enabled = true) {
            if (showPlaybackMessage != null) {
                showPlaybackMessage = null
                return@BackHandler
            }
            if (showExitConfirm) {
                showExitConfirm = false
                scope.launch {
                    drawerState.setValue(DrawerValue.Open)
                    drawerFocusHandle.requestFocus()
                }
                return@BackHandler
            }
            if (drawerState.currentValue == DrawerValue.Open) {
                if (selectedTab != DrawerSection.Novita) {
                    selectedTab = DrawerSection.Novita
                    scope.launch {
                        delay(50)
                        drawerFocusHandle.requestFocus()
                    }
                } else {
                    showExitConfirm = true
                    onExitConfirmShown?.invoke()
                }
                return@BackHandler
            }
            // in content -> open drawer
            scope.launch {
                drawerState.setValue(DrawerValue.Open)
            }
        }

        fun toggleFav(item: FavoriteItem) {
            val added = favoritesInMemory.toggle("http://server.esempio:8080", "demo", item)
            favTick++
            favoritesMessage = if (added) "Aggiunto ai preferiti" else "Rimosso dai preferiti"
        }

        LaunchedEffect(favoritesMessage) {
            if (favoritesMessage != null) {
                delay(2000)
                favoritesMessage = null
            }
        }

        FvpNavigationDrawer(
            selected = selectedTab,
            onSelect = { selectedTab = it },
            scale = scale,
            drawerState = drawerState,
            contentFocusRequester = contentFocusRequester,
            drawerFocusHandle = drawerFocusHandle,
        ) {
            Box(modifier = Modifier.fillMaxSize().testTag("main_content_box")) {
                when (selectedTab) {
                    DrawerSection.Novita -> {
                        NovitaSection(
                            recentFilms = fakeVodStreams(),
                            recentSeries = fakeSeries(),
                            scale = scale,
                            onLongPressFilm = { vod ->
                                val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                toggleFav(fav)
                            },
                            onLongPressSeries = { serie ->
                                val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                toggleFav(fav)
                            },
                            onPlayFilm = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            onPlaySerie = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            favorites = favoritesInMemory.get("http://server.esempio:8080", "demo"),
                            contentFocusRequester = contentFocusRequester,
                            modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester).testTag("novita_section")
                        )
                    }
                    DrawerSection.Live -> {
                        LiveSection(
                            categories = fakeCategories("live"),
                            streams = fakeLiveStreams(),
                            scale = scale,
                            onSelectChannel = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            // Pressione lunga su un canale: finestra di "I miei
                            // canali" (non più preferito Live).
                            onLongPressChannel = { stream ->
                                myChannelEdit = MyChannel(
                                    streamId = stream.streamId,
                                    name = stream.name,
                                    logo = stream.streamIcon,
                                )
                            },
                            myChannelIds = myChannels.map { it.streamId }.toSet(),
                            contentFocusRequester = contentFocusRequester,
                            modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester).testTag("live_section")
                        )
                    }
                    DrawerSection.Film -> {
                        FilmSection(
                            categories = fakeCategories("vod"),
                            streams = fakeVodStreams(),
                            scale = scale,
                            onLongPressFilm = { vod ->
                                val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                toggleFav(fav)
                            },
                            onPlayFilm = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            favorites = favoritesInMemory.get("http://server.esempio:8080", "demo"),
                            contentFocusRequester = contentFocusRequester,
                            modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester).testTag("film_section")
                        )
                    }
                    DrawerSection.Serie -> {
                        SerieSection(
                            categories = fakeCategories("series"),
                            series = fakeSeries(),
                            scale = scale,
                            onLongPressSerie = { serie ->
                                val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                toggleFav(fav)
                            },
                            onPlaySerie = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            onPlayEpisode = { _, _ -> showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            favorites = favoritesInMemory.get("http://server.esempio:8080", "demo"),
                            contentFocusRequester = contentFocusRequester,
                            modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester).testTag("serie_section")
                        )
                    }
                    DrawerSection.Preferiti -> {
                        val favs = favoritesInMemory.get("http://server.esempio:8080", "demo")
                        FavoritesSection(
                            favorites = favs,
                            scale = scale,
                            onSelectFavorite = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            onToggleFavorite = { toggleFav(it) },
                            myChannels = myChannels,
                            onPlayMyChannel = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                            onLongPressMyChannel = { channel -> myChannelEdit = channel },
                            contentFocusRequester = contentFocusRequester,
                            modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester).testTag("preferiti_section")
                        )
                    }
                    DrawerSection.ContinuaAGuardare -> {
                        // Le sezioni nuove non hanno test D-pad dedicati in questo file:
                        // qui servono solo a rendere esaustivo il quando.
                        Box(modifier = Modifier.fillMaxSize().testTag("continua_section").focusRequester(contentFocusRequester))
                    }
                    DrawerSection.Cerca -> {
                        Box(modifier = Modifier.fillMaxSize().testTag("cerca_section").focusRequester(contentFocusRequester))
                    }
                    DrawerSection.Impostazioni -> {
                        Box(modifier = Modifier.fillMaxSize().testTag("impostazioni_section").focusRequester(contentFocusRequester)) {
                            Text("Impostazioni - Account", modifier = Modifier.testTag("impostazioni_first"))
                        }
                    }
                }

                favoritesMessage?.let { msg ->
                    Box(modifier = Modifier.align(Alignment.BottomCenter).padding(scale.dp(8f)).testTag("favorites_message")) {
                        Text(text = msg)
                    }
                }

                showPlaybackMessage?.let { msg ->
                    Box(modifier = Modifier.fillMaxSize().background(FvpColors.Background.copy(alpha = 0.7f)).testTag("playback_message"), contentAlignment = Alignment.Center) {
                        Text(text = msg)
                    }
                }

                if (showExitConfirm) {
                    val annullaFocus = remember { FocusRequester() }
                    LaunchedEffect(Unit) { annullaFocus.requestFocus() }
                    Dialog(
                        onDismissRequest = {
                            showExitConfirm = false
                            scope.launch {
                                drawerState.setValue(DrawerValue.Open)
                                drawerFocusHandle.requestFocus()
                            }
                        },
                        properties = DialogProperties(usePlatformDefaultWidth = false)
                    ) {
                        Box(
                            modifier = Modifier.fillMaxSize().background(FvpColors.Background.copy(alpha = 0.8f)),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(
                                modifier = Modifier.background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f))).padding(scale.dp(20f)).testTag("exit_dialog"),
                                horizontalAlignment = Alignment.CenterHorizontally
                            ) {
                                Text(text = "Vuoi uscire da FelixVP?")
                                Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)), modifier = Modifier.padding(top = scale.dp(12f))) {
                                    FvpSecondaryButton(
                                        text = "Annulla",
                                        onClick = {
                                            showExitConfirm = false
                                            scope.launch {
                                                drawerState.setValue(DrawerValue.Open)
                                                drawerFocusHandle.requestFocus()
                                            }
                                        },
                                        scale = scale,
                                        modifier = Modifier.focusRequester(annullaFocus).testTag("exit_annulla")
                                    )
                                    FvpPrimaryButton(
                                        text = "Esci",
                                        onClick = {
                                            showExitConfirm = false
                                            (context as? Activity)?.finish()
                                        },
                                        scale = scale,
                                        modifier = Modifier.testTag("exit_esci")
                                    )
                                }
                            }
                        }
                    }
                }
            }

            // Finestra di "I miei canali" aperta dalla pressione lunga su un
            // canale (in Live, nei Preferiti o nella ricerca).
            myChannelEdit?.let { channel ->
                MyChannelDialog(
                    channel = channel,
                    channels = myChannels,
                    scale = scale,
                    onInsertAt = { position ->
                        myChannels = MyChannels.insertAt(myChannels, channel, position)
                        myChannelEdit = null
                    },
                    onMoveUp = { myChannels = MyChannels.moveUp(myChannels, channel.streamId) },
                    onMoveDown = { myChannels = MyChannels.moveDown(myChannels, channel.streamId) },
                    onRemove = {
                        myChannels = MyChannels.remove(myChannels, channel.streamId)
                        myChannelEdit = null
                    },
                    onDismiss = { myChannelEdit = null },
                )
            }
        }
    }

    private fun navigateTo(section: DrawerSection, handle: DrawerFocusHandle) {
        rule.runOnIdle { handle.requestFocus() }
        rule.waitForIdle()
        rule.onNodeWithTag("drawer_Novita").assertIsFocused()
        var currentIdx = 0
        val targetIdx = DrawerSection.entries.indexOf(section)
        while (currentIdx < targetIdx) {
            rule.onNodeWithTag("drawer_${DrawerSection.entries[currentIdx].name}").performKeyInput { pressKey(Key.DirectionDown) }
            rule.waitForIdle()
            currentIdx++
            rule.onNodeWithTag("drawer_${DrawerSection.entries[currentIdx].name}").assertIsFocused()
        }
        rule.onNodeWithTag("drawer_${section.name}").performKeyInput { pressKey(Key.DirectionRight) }
        rule.mainClock.advanceTimeBy(400)
        rule.waitForIdle()
    }

    @Test
    fun `a - freccia destra da ogni voce menu porta al primo elemento della sezione`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            // Solo le sezioni con contenuti reali: le nuove voci di menu hanno
            // verifiche dedicate (ordine del menu, ricerca, archivio).
            val sections = listOf(
                DrawerSection.Novita,
                DrawerSection.Live,
                DrawerSection.Film,
                DrawerSection.Serie,
                DrawerSection.Preferiti,
                DrawerSection.Impostazioni,
            )
            sections.forEach { section ->
                navigateTo(section, drawerFocusHandle)
                when (section) {
                    DrawerSection.Novita -> rule.onNodeWithTag("novita_film_201").assertIsFocused()
                    DrawerSection.Live -> rule.onNodeWithTag("live_channel_101").assertIsFocused()
                    DrawerSection.Film -> rule.onNodeWithTag("film_201").assertIsFocused()
                    DrawerSection.Serie -> rule.onNodeWithTag("serie_301").assertIsFocused()
                    DrawerSection.Preferiti -> {
                        // "I miei canali" è la scheda aperta per prima: elenco vuoto
                        // finché non si aggiungono canali.
                        rule.onNodeWithText(MY_CHANNELS_EMPTY_MESSAGE).assertIsDisplayed()
                        rule.onNodeWithTag("preferiti_section").performKeyInput { pressKey(Key.Back) }
                        rule.waitForIdle()
                        rule.onNodeWithTag("drawer_Preferiti").assertIsFocused()
                        return@forEach
                    }
                    DrawerSection.Impostazioni -> rule.onNodeWithTag("impostazioni_first").assertIsDisplayed()
                    DrawerSection.ContinuaAGuardare, DrawerSection.Cerca -> Unit
                }
                val tag = when (section) {
                    DrawerSection.Novita -> "novita_film_201"
                    DrawerSection.Live -> "live_channel_101"
                    DrawerSection.Film -> "film_201"
                    DrawerSection.Serie -> "serie_301"
                    DrawerSection.Preferiti -> "drawer_Preferiti"
                    DrawerSection.Impostazioni -> "impostazioni_first"
                    DrawerSection.ContinuaAGuardare -> "continua_section"
                    DrawerSection.Cerca -> "cerca_section"
                }
                rule.onNodeWithTag(tag).performKeyInput { pressKey(Key.Back) }
                rule.waitForIdle()
                rule.onNodeWithTag("drawer_${section.name}").assertIsFocused()
            }
        } catch (e: AssertionError) {
            dumpTree("a-freccia-destra")
            throw e
        } catch (e: Exception) {
            dumpTree("a-freccia-destra-exception")
            throw e
        }
    }

    @Test
    fun `b - OK su film apre dettaglio Back chiude e ritorna focus`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            navigateTo(DrawerSection.Film, drawerFocusHandle)
            rule.onNodeWithTag("film_201").assertIsFocused()
            rule.onNodeWithTag("film_201").performKeyInput { pressKey(Key.Enter) }
            rule.waitForIdle()
            rule.onNodeWithTag("film_detail_root").assertIsDisplayed()
            rule.onNodeWithTag("playback_message").assertDoesNotExist()
            rule.onNodeWithTag("film_detail_root").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("film_201").assertIsFocused()
        } catch (e: AssertionError) {
            dumpTree("b-dettaglio-film")
            throw e
        }
    }

    @Test
    fun `c - pressione lunga aggiunge a I miei canali e gestisce i preferiti film serie`() {
        val favStore = FavoritesStore.InMemory()
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle, favoritesInMemory = favStore) }
        try {
            navigateTo(DrawerSection.Live, drawerFocusHandle)
            // Pressione lunga su un canale Live: si apre "Aggiungi a I miei
            // canali" con il numero proposto (lista vuota = 1), non il
            // preferito Live di prima.
            rule.mainClock.autoAdvance = false
            rule.onNodeWithTag("live_channel_101").performKeyInput { keyDown(Key.Enter) }
            rule.mainClock.advanceTimeBy(700)
            rule.onNodeWithTag("live_channel_101").performKeyInput { keyUp(Key.Enter) }
            rule.mainClock.autoAdvance = true
            rule.waitForIdle()
            rule.onNodeWithText("Aggiungi a I miei canali").assertIsDisplayed()
            rule.onNodeWithTag("channel_number_value").assertIsDisplayed()
            assert(favStore.get("http://server.esempio:8080", "demo").none { it.id == "live_101" })
            // OK conferma la posizione precompilata: il canale entra in "I miei
            // canali" come numero 1.
            rule.onNodeWithTag("channel_number_field").performKeyInput { pressKey(Key.Enter) }
            rule.waitForIdle()
            navigateTo(DrawerSection.Preferiti, drawerFocusHandle)
            // I canali Live non stanno più nei preferiti: schede "I miei canali" e
            // "Film e Serie". La stella di Live indica "I miei canali".
            rule.onNodeWithTag("favorites_tab_my_channels").assertIsDisplayed()
            rule.onNodeWithTag("favorites_tab_film_series").assertIsDisplayed()
            rule.onNodeWithTag("my_channel_101").assertIsDisplayed()
            rule.onNodeWithTag("my_channel_number_101").assertIsDisplayed()
            assert(favStore.get("http://server.esempio:8080", "demo").none { it.id == "live_101" })

            navigateTo(DrawerSection.Film, drawerFocusHandle)
            rule.mainClock.autoAdvance = false
            rule.onNodeWithTag("film_201").performKeyInput { keyDown(Key.Enter) }
            rule.mainClock.advanceTimeBy(700)
            rule.onNodeWithTag("film_201").performKeyInput { keyUp(Key.Enter) }
            rule.mainClock.autoAdvance = true
            rule.waitForIdle()
            assert(favStore.get("http://server.esempio:8080", "demo").any { it.id == "vod_201" })
            rule.onNodeWithText("Aggiunto ai preferiti").assertIsDisplayed()

            navigateTo(DrawerSection.Serie, drawerFocusHandle)
            rule.mainClock.autoAdvance = false
            rule.onNodeWithTag("serie_301").performKeyInput { keyDown(Key.Enter) }
            rule.mainClock.advanceTimeBy(700)
            rule.onNodeWithTag("serie_301").performKeyInput { keyUp(Key.Enter) }
            rule.mainClock.autoAdvance = true
            rule.waitForIdle()
            assert(favStore.get("http://server.esempio:8080", "demo").any { it.id == "series_301" })
            rule.onNodeWithText("Aggiunto ai preferiti").assertIsDisplayed()
        } catch (e: AssertionError) {
            dumpTree("c-long-press")
            throw e
        }
    }

    @Test
    fun `d - Back sequenza Film contenuto menu Novita uscita`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            navigateTo(DrawerSection.Film, drawerFocusHandle)
            rule.onNodeWithTag("film_201").assertIsFocused()
            // Film contenuto -> Back -> voce Film del menu
            rule.onNodeWithTag("film_201").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("drawer_Film").assertIsFocused()
            // voce Film menu -> Back -> Novità
            rule.onNodeWithTag("drawer_Film").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("drawer_Novita").assertIsFocused()
            // Novità -> Back -> uscita
            rule.onNodeWithTag("drawer_Novita").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("exit_dialog").assertIsDisplayed()
            rule.onNodeWithText("Vuoi uscire da FelixVP?").assertIsDisplayed()
        } catch (e: AssertionError) {
            dumpTree("d-back-sequenza")
            throw e
        }
    }

    @Test
    fun `e - Live debounce 300ms non cambia elenco prima di 300ms e poi mostra ultima categoria`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            navigateTo(DrawerSection.Live, drawerFocusHandle)
            rule.onNodeWithTag("live_channel_101").assertIsDisplayed()
            rule.mainClock.autoAdvance = false
            rule.onNodeWithTag("live_category_live1").performKeyInput { pressKey(Key.DirectionDown) }
            rule.mainClock.advanceTimeBy(100)
            rule.onNodeWithTag("live_category_live2").assertIsFocused()
            rule.onNodeWithTag("live_channel_101").assertIsDisplayed()
            rule.onNodeWithTag("live_category_live2").performKeyInput { pressKey(Key.DirectionUp) }
            rule.mainClock.advanceTimeBy(100)
            rule.onNodeWithTag("live_channel_101").assertIsDisplayed()
            rule.mainClock.advanceTimeBy(300)
            rule.waitForIdle()
            rule.onNodeWithTag("live_channel_101").assertIsDisplayed()
            rule.onNodeWithTag("live_category_live1").performKeyInput { pressKey(Key.DirectionDown) }
            rule.mainClock.advanceTimeBy(300)
            rule.waitForIdle()
            rule.onNodeWithTag("live_channel_102").assertIsDisplayed()
            rule.mainClock.autoAdvance = true
        } catch (e: AssertionError) {
            dumpTree("e-debounce")
            throw e
        }
    }

    @Test
    fun `f - finestra conferma uscita focus iniziale Annulla freccia su Esci Indietro chiude`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            navigateTo(DrawerSection.Novita, drawerFocusHandle)
            rule.onNodeWithTag("novita_film_201").assertIsFocused()
            rule.onNodeWithTag("novita_film_201").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("drawer_Novita").assertIsFocused()
            rule.onNodeWithTag("drawer_Novita").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("exit_dialog").assertIsDisplayed()
            rule.onNodeWithTag("exit_annulla").assertIsFocused()
            // freccia destra su Esci
            rule.onNodeWithTag("exit_annulla").performKeyInput { pressKey(Key.DirectionRight) }
            rule.waitForIdle()
            rule.onNodeWithTag("exit_esci").assertIsFocused()
            // frecce non escono dalla finestra
            rule.onNodeWithTag("exit_esci").performKeyInput { pressKey(Key.DirectionDown) }
            rule.waitForIdle()
            // ancora dentro la finestra
            rule.onNodeWithTag("exit_dialog").assertIsDisplayed()
            // Indietro chiude
            rule.onNodeWithTag("exit_esci").performKeyInput { pressKey(Key.Back) }
            rule.waitForIdle()
            rule.onNodeWithTag("exit_dialog").assertDoesNotExist()
            rule.onNodeWithTag("drawer_Novita").assertIsFocused()
        } catch (e: AssertionError) {
            dumpTree("f-exit-dialog")
            throw e
        }
    }

    @Test
    fun `g - colonna categorie collassa su griglia e si espande con freccia sinistra`() {
        val contentFocusRequester = FocusRequester()
        val drawerFocusHandle = DrawerFocusHandle()
        rule.setContent { TestFvpScreen(contentFocusRequester = contentFocusRequester, drawerFocusHandle = drawerFocusHandle) }
        try {
            navigateTo(DrawerSection.Film, drawerFocusHandle)
            rule.onNodeWithTag("film_201").assertIsFocused()
            // focus nella griglia -> colonna ridotta
            rule.onNodeWithTag("film_category_column_collapsed").assertIsDisplayed()
            rule.onNodeWithTag("film_grid_6").assertIsDisplayed()
            // freccia sinistra dal primo elemento -> focus categoria attiva e colonna piena
            rule.onNodeWithTag("film_201").performKeyInput { pressKey(Key.DirectionLeft) }
            rule.waitForIdle()
            rule.onNodeWithTag("film_category_vod1").assertIsFocused()
            rule.onNodeWithTag("film_category_column_expanded").assertIsDisplayed()
            rule.onNodeWithTag("film_grid_5").assertIsDisplayed()
        } catch (e: AssertionError) {
            dumpTree("g-colonna")
            throw e
        }
    }
}
