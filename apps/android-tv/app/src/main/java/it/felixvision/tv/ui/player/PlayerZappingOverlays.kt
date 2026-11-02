package it.felixvision.tv.ui.player

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

/** Testi dello zapping automatico del player Live. */
object PlayerZappingTexts {

    /** Etichetta del pulsante nella barra info del canale. */
    const val BUTTON = "Zapping"

    /** Domanda della finestra di fine lista. */
    const val END_OF_LIST = "Fine della lista: vuoi ripartire dal primo canale?"

    const val YES = "Sì"
    const val NO = "No"

    /** Indicatore in alto a destra: "Zapping · 10". */
    fun indicator(seconds: Int): String = "Zapping · $seconds"
}

/**
 * Indicatore piccolo in alto a destra sopra il video: "Zapping · N" con i
 * secondi che mancano al prossimo canale. Stesso fondo e stessa forma degli
 * altri elementi del player ([playerOverlay]).
 */
@Composable
fun PlayerZappingIndicator(
    remainingSeconds: Int,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    Text(
        text = PlayerZappingTexts.indicator(remainingSeconds),
        color = FvpColors.TextPrimary,
        fontSize = scale.sp(13f),
        fontWeight = FontWeight.Medium,
        modifier = modifier
            .playerOverlay(scale)
            .padding(horizontal = scale.dp(12f), vertical = scale.dp(6f))
            .testTag("player_zapping_indicator"),
    )
}

/**
 * Finestra di fine lista: "Fine della lista: vuoi ripartire dal primo canale?"
 * con "Sì" (focus iniziale) e "No". Indietro vale come "No", sia con
 * `onPreviewKeyEvent` sulla radice sia con [BackHandler] come riserva; nessuna
 * risposta entro 15 secondi vale come "No" (conto nel controller).
 */
@Composable
fun PlayerZappingEndDialog(
    scale: UiScale,
    onYes: () -> Unit,
    onNo: () -> Unit,
) {
    val yesFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { yesFocus.requestFocus() }
    }
    Dialog(
        onDismissRequest = onNo,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onNo() }
        Box(
            modifier = Modifier
                .fillMaxSize()
                .onPreviewKeyEvent { event ->
                    if (event.type == KeyEventType.KeyDown && event.key == Key.Back) {
                        onNo()
                        true
                    } else {
                        false
                    }
                }
                .testTag("player_zapping_end_dialog"),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                modifier = Modifier
                    .widthIn(max = scale.dp(560f))
                    .playerOverlay(scale)
                    .padding(scale.dp(24f)),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(16f)),
            ) {
                Text(
                    text = PlayerZappingTexts.END_OF_LIST,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(19f),
                    fontWeight = FontWeight.SemiBold,
                    textAlign = TextAlign.Center,
                )
                Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(14f))) {
                    FvpCompactButton(
                        text = PlayerZappingTexts.YES,
                        onClick = onYes,
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(yesFocus)
                            .testTag("player_zapping_yes"),
                    )
                    FvpCompactButton(
                        text = PlayerZappingTexts.NO,
                        onClick = onNo,
                        scale = scale,
                        modifier = Modifier.testTag("player_zapping_no"),
                    )
                }
            }
        }
    }
}
