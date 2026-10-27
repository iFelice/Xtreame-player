package it.felixvision.tv.ui.player

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

/** Testi del menu della pressione lunga nel player Live. */
object PlayerLongPressTexts {
    const val GUIDE = "Guida del canale"
    const val ADD_TO_MY_CHANNELS = "Aggiungi a I miei canali"
    const val EDIT_IN_MY_CHANNELS = "Modifica in I miei canali"
}

/**
 * Menu della pressione lunga nel player Live, sopra il video.
 *
 * Due voci: la guida del canale (la stessa che aprono GUIDE/INFO) e
 * l'aggiunta a "I miei canali" oppure, se il canale è già nella lista, la
 * modifica. Il focus parte dalla prima voce e Indietro chiude il menu senza
 * fare nulla: la riproduzione continua sotto.
 */
@Composable
fun PlayerLongPressMenu(
    channelName: String,
    inMyChannels: Boolean,
    scale: UiScale,
    onGuide: () -> Unit,
    onMyChannels: () -> Unit,
    onDismiss: () -> Unit,
) {
    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(32f)),
            contentAlignment = Alignment.Center,
        ) {
            PlayerLongPressMenuContent(
                channelName = channelName,
                inMyChannels = inMyChannels,
                scale = scale,
                onGuide = onGuide,
                onMyChannels = onMyChannels,
            )
        }
    }
}

/**
 * Contenuto del menu, senza finestra: due pulsanti con il nome del canale
 * sopra, focus iniziale sulla guida. Stesso stile delle finestre di "I miei
 * canali".
 */
@Composable
fun PlayerLongPressMenuContent(
    channelName: String,
    inMyChannels: Boolean,
    scale: UiScale,
    onGuide: () -> Unit,
    onMyChannels: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val firstItem = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { firstItem.requestFocus() }
    }
    Column(
        modifier = modifier
            .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
            .padding(scale.dp(20f))
            .testTag("player_long_press_menu"),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text(
            text = channelName,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(20f),
            fontWeight = FontWeight.Bold,
        )
        FvpPrimaryButton(
            text = PlayerLongPressTexts.GUIDE,
            onClick = onGuide,
            scale = scale,
            modifier = Modifier
                .focusRequester(firstItem)
                .testTag("player_long_press_guide"),
        )
        FvpSecondaryButton(
            text = if (inMyChannels) {
                PlayerLongPressTexts.EDIT_IN_MY_CHANNELS
            } else {
                PlayerLongPressTexts.ADD_TO_MY_CHANNELS
            },
            onClick = onMyChannels,
            scale = scale,
            modifier = Modifier.testTag("player_long_press_my_channels"),
        )
    }
}
