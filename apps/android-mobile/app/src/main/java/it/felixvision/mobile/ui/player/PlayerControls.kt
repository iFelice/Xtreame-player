package it.felixvision.mobile.ui.player

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.epg.EpgProgram

@androidx.media3.common.util.UnstableApi
@Composable
fun PlayerControls(
    state: MobilePlayerState,
    currentProgram: EpgProgram?,
    nowMillis: Long,
    isFit: Boolean,
    onBack: () -> Unit,
    onTracks: () -> Unit,
    onFit: () -> Unit,
    onPip: () -> Unit,
    onPlayPause: () -> Unit,
    onSeek: (Long) -> Unit,
    onSeekBy: (Int) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .background(Color.Black.copy(alpha = .68f))
            .padding(horizontal = 6.dp, vertical = 4.dp),
    ) {
        PlayerTopControls(
            state = state,
            currentProgram = currentProgram,
            isFit = isFit,
            onBack = onBack,
            onTracks = onTracks,
            onFit = onFit,
            onPip = onPip,
        )
        if (state.playbackType.supportsSeeking) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                PlayerIconAction(
                    image = FvpIcons.Indietro10,
                    description = "Indietro di dieci secondi",
                    onClick = { onSeekBy(-10) },
                )
                PlayerIconAction(
                    image = if (state.playing) FvpIcons.Pause else FvpIcons.Play,
                    description = if (state.playing) "Metti in pausa" else "Riproduci",
                    onClick = onPlayPause,
                    emphasized = true,
                )
                PlayerIconAction(
                    image = FvpIcons.Avanti10,
                    description = "Avanti di dieci secondi",
                    onClick = { onSeekBy(10) },
                )
            }
        }
        PlayerTimeline(
            state = state,
            currentProgram = currentProgram,
            nowMillis = nowMillis,
            onSeek = onSeek,
        )
    }
}

@Composable
private fun PlayerTopControls(
    state: MobilePlayerState,
    currentProgram: EpgProgram?,
    isFit: Boolean,
    onBack: () -> Unit,
    onTracks: () -> Unit,
    onFit: () -> Unit,
    onPip: () -> Unit,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        PlayerIconAction(
            image = FvpIcons.Indietro,
            description = "Indietro",
            onClick = onBack,
        )
        Column(
            modifier = Modifier.weight(1f).padding(horizontal = 4.dp),
        ) {
            Text(
                text = state.channelName,
                color = FvpColors.TextPrimary,
                fontSize = 14.sp,
                maxLines = 1,
            )
            if (currentProgram != null) {
                Text(
                    text = currentProgram.title,
                    color = FvpColors.TextSecondary,
                    fontSize = 11.sp,
                    maxLines = 1,
                )
            }
        }
        PlayerIconAction(
            image = FvpIcons.Tracce,
            description = "Tracce audio e sottotitoli",
            onClick = onTracks,
        )
        PlayerIconAction(
            image = FvpIcons.Adatta,
            description = if (isFit) "Riempi lo schermo" else "Adatta allo schermo",
            onClick = onFit,
        )
        PlayerIconAction(
            image = FvpIcons.PictureInPicture,
            description = "Picture in picture",
            onClick = onPip,
        )
    }
}

@Composable
private fun PlayerTimeline(
    state: MobilePlayerState,
    currentProgram: EpgProgram?,
    nowMillis: Long,
    onSeek: (Long) -> Unit,
) {
    if (state.playbackType == MobilePlaybackType.LIVE) {
        Column(Modifier.fillMaxWidth().padding(horizontal = 10.dp)) {
            val label = currentProgram?.title?.let { "IN DIRETTA · $it" } ?: "IN DIRETTA"
            Text(label, color = FvpColors.TextPrimary, fontSize = 11.sp, maxLines = 1)
            if (currentProgram != null) {
                val now = nowMillis / 1_000L
                val fraction = ((now - currentProgram.start).toFloat() /
                    (currentProgram.end - currentProgram.start).coerceAtLeast(1L))
                    .coerceIn(0f, 1f)
                LinearProgressIndicator(
                    progress = { fraction },
                    modifier = Modifier.fillMaxWidth().height(3.dp),
                    color = FvpColors.Green,
                    trackColor = FvpColors.SurfaceElevated,
                )
            }
        }
        return
    }

    val duration = state.duration.coerceAtLeast(0L)
    if (duration <= 0L) {
        Text(
            text = if (state.playbackType == MobilePlaybackType.CATCHUP) "REGISTRATO" else "",
            color = FvpColors.TextSecondary,
            fontSize = 11.sp,
            modifier = Modifier.padding(horizontal = 12.dp),
        )
        return
    }

    var sliderPosition by remember(state.position, duration) {
        mutableFloatStateOf(state.position.toFloat().coerceIn(0f, duration.toFloat()))
    }
    Slider(
        value = sliderPosition,
        onValueChange = { sliderPosition = it },
        onValueChangeFinished = { onSeek(sliderPosition.toLong()) },
        valueRange = 0f..duration.toFloat(),
        modifier = Modifier.fillMaxWidth().height(28.dp),
    )
    Row(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 10.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
    ) {
        Text(
            text = if (state.playbackType == MobilePlaybackType.CATCHUP) {
                "REGISTRATO · ${formatPlayerTime(state.position)}"
            } else {
                formatPlayerTime(state.position)
            },
            color = FvpColors.TextPrimary,
            fontSize = 11.sp,
        )
        Text(
            text = formatPlayerTime(duration),
            color = FvpColors.TextSecondary,
            fontSize = 11.sp,
        )
    }
}

@Composable
fun PlayerIconAction(
    image: androidx.compose.ui.graphics.vector.ImageVector,
    description: String,
    onClick: () -> Unit,
    emphasized: Boolean = false,
    modifier: Modifier = Modifier,
) {
    IconButton(
        onClick = onClick,
        modifier = modifier
            .sizeIn(minWidth = 48.dp, minHeight = 48.dp)
            .semantics { contentDescription = description },
    ) {
        Box(
            modifier = Modifier
                .size(if (emphasized) 42.dp else 38.dp)
                .clip(CircleShape)
                .background(if (emphasized) FvpColors.Green else Color.Transparent),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = image,
                contentDescription = null,
                tint = if (emphasized) FvpColors.OnGreen else FvpColors.TextPrimary,
                modifier = Modifier.size(22.dp),
            )
        }
    }
}

fun formatPlayerTime(milliseconds: Long): String {
    val totalSeconds = (milliseconds / 1_000L).coerceAtLeast(0L)
    val hours = totalSeconds / 3_600L
    val minutes = totalSeconds % 3_600L / 60L
    val seconds = totalSeconds % 60L
    return if (hours > 0L) {
        "%d:%02d:%02d".format(hours, minutes, seconds)
    } else {
        "%02d:%02d".format(minutes, seconds)
    }
}
