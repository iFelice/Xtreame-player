package it.felixvision.tv.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.ChannelScheduleRules
import it.felixvision.tv.data.epg.EpgProgram
import kotlinx.coroutines.delay

/**
 * Guida dei canali visibili a schermo.
 *
 * La richiesta parte 300 ms dopo l'ultima mossa di scorrimento (l'effetto
 * riparte a ogni cambio di [streamIds], quindi il ritardo fa da debounce), usa
 * [ChannelScheduleLoader] per il limite di 4 richieste contemporanee e non
 * chiede nulla per i canali già in cache valida.
 */
@Composable
fun rememberChannelSchedulePrograms(
    streamIds: List<String>,
    loader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
): Map<String, List<EpgProgram>> {
    var programs by remember(server, username) {
        mutableStateOf<Map<String, List<EpgProgram>>>(emptyMap())
    }
    LaunchedEffect(streamIds, loader, server, username, password) {
        val scheduleLoader = loader ?: return@LaunchedEffect
        if (streamIds.isEmpty()) return@LaunchedEffect
        delay(ChannelScheduleRules.DEBOUNCE_MILLIS)
        val loaded = scheduleLoader.load(server, username, password, streamIds)
        if (loaded.isNotEmpty()) programs = programs + loaded
    }
    return programs
}
