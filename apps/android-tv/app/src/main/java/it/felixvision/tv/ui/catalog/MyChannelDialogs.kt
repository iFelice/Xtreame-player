package it.felixvision.tv.ui.catalog

import android.view.KeyEvent as AndroidKeyEvent
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
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
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.data.channels.ChannelPositionField
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.ignoreHeldOkUntilReleased
import it.felixvision.tv.ui.theme.FvpColors

/** Testi delle finestre di "I miei canali". */
object MyChannelDialogTexts {
    const val ADD_TITLE = "Aggiungi a I miei canali"
    const val CHANGE_NUMBER = "Cambia numero"
    const val MOVE_UP = "Sposta su"
    const val MOVE_DOWN = "Sposta giù"
    const val REMOVE = "Rimuovi"
    const val REMOVE_CONFIRM = "Rimuovere il canale da I miei canali?"
    const val CANCEL = "Annulla"
    const val CONFIRM = "OK"
}

/**
 * Finestra di pressione lunga su un canale.
 *
 * - canale assente da "I miei canali": campo numerico precompilato con N+1,
 *   OK inserisce alla posizione voluta (oltre la fine = in fondo);
 * - canale presente: menu "Cambia numero", "Sposta su", "Sposta giù",
 *   "Rimuovi" (con conferma). Il menu resta aperto dopo gli spostamenti e
 *   mostra sempre il numero aggiornato.
 *
 * Indietro annulla senza modifiche.
 */
@Composable
fun MyChannelDialog(
    channel: MyChannel,
    channels: List<MyChannel>,
    scale: UiScale,
    onInsertAt: (position: Int) -> Unit,
    onMoveUp: () -> Unit,
    onMoveDown: () -> Unit,
    onRemove: () -> Unit,
    onDismiss: () -> Unit,
) {
    val number = MyChannels.numberOf(channels, channel.streamId)
    var editingNumber by remember(channel.streamId) { mutableStateOf(number == null) }
    var confirmingRemove by remember(channel.streamId) { mutableStateOf(false) }

    if (editingNumber) {
        ChannelNumberDialog(
            title = if (number == null) MyChannelDialogTexts.ADD_TITLE else MyChannelDialogTexts.CHANGE_NUMBER,
            channelName = channel.name,
            initial = if (number == null) {
                ChannelPositionField.forAppend(channels.size)
            } else {
                ChannelPositionField.forPosition(number)
            },
            scale = scale,
            onConfirm = { position -> onInsertAt(position) },
            onDismiss = onDismiss,
        )
        return
    }

    val firstButton = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { firstButton.requestFocus() }
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                // Aperta dalla pressione lunga di OK: ripetizioni e rilascio del
                // tasto ancora premuto non devono attivare il primo pulsante.
                .ignoreHeldOkUntilReleased()
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(32f)),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                modifier = Modifier
                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                    .padding(scale.dp(20f))
                    .testTag("my_channel_dialog"),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
            ) {
                Text(
                    text = channel.name,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(20f),
                    fontWeight = FontWeight.Bold,
                )
                Text(
                    text = "Numero ${number ?: 0}",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(15f),
                    modifier = Modifier.testTag("my_channel_dialog_number"),
                )
                if (confirmingRemove) {
                    Text(
                        text = MyChannelDialogTexts.REMOVE_CONFIRM,
                        color = FvpColors.TextPrimary,
                        fontSize = scale.sp(16f),
                    )
                    Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                        FvpSecondaryButton(
                            text = MyChannelDialogTexts.CANCEL,
                            onClick = { confirmingRemove = false },
                            scale = scale,
                            modifier = Modifier
                                .focusRequester(firstButton)
                                .testTag("my_channel_remove_cancel"),
                        )
                        FvpPrimaryButton(
                            text = MyChannelDialogTexts.REMOVE,
                            onClick = onRemove,
                            scale = scale,
                            modifier = Modifier.testTag("my_channel_remove_confirm"),
                        )
                    }
                } else {
                    FvpPrimaryButton(
                        text = MyChannelDialogTexts.CHANGE_NUMBER,
                        onClick = { editingNumber = true },
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(firstButton)
                            .testTag("my_channel_change_number"),
                    )
                    FvpSecondaryButton(
                        text = MyChannelDialogTexts.MOVE_UP,
                        onClick = onMoveUp,
                        scale = scale,
                        enabled = (number ?: 1) > 1,
                        modifier = Modifier.testTag("my_channel_move_up"),
                    )
                    FvpSecondaryButton(
                        text = MyChannelDialogTexts.MOVE_DOWN,
                        onClick = onMoveDown,
                        scale = scale,
                        enabled = number != null && number < channels.size,
                        modifier = Modifier.testTag("my_channel_move_down"),
                    )
                    FvpSecondaryButton(
                        text = MyChannelDialogTexts.REMOVE,
                        onClick = { confirmingRemove = true },
                        scale = scale,
                        modifier = Modifier.testTag("my_channel_remove"),
                    )
                }
            }
        }
    }
}

/**
 * Campo numerico a 4 cifre del telecomando: OK conferma la posizione, Indietro
 * annulla. Il valore iniziale è già selezionato: la prima cifra lo sostituisce.
 */
@Composable
fun ChannelNumberDialog(
    title: String,
    channelName: String,
    initial: ChannelPositionField,
    scale: UiScale,
    onConfirm: (Int) -> Unit,
    onDismiss: () -> Unit,
) {
    var field by remember(initial) { mutableStateOf(initial) }
    val fieldFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { fieldFocus.requestFocus() }
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                // Aperta dalla pressione lunga di OK (aggiunta): ripetizioni e
                // rilascio del tasto ancora premuto non confermano il numero.
                .ignoreHeldOkUntilReleased()
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(32f)),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                modifier = Modifier
                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                    .padding(scale.dp(24f))
                    .testTag("my_channel_number_dialog"),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
            ) {
                Text(
                    text = title,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(20f),
                    fontWeight = FontWeight.Bold,
                )
                Text(text = channelName, color = FvpColors.TextSecondary, fontSize = scale.sp(15f))
                Box(
                    modifier = Modifier
                        .focusRequester(fieldFocus)
                        .focusable()
                        .onPreviewKeyEvent { event ->
                            val native = event.nativeKeyEvent
                            if (native.action == AndroidKeyEvent.ACTION_UP) {
                                // Il rilascio del tasto non deve arrivare ai comandi sotto.
                                val upHandled = ChannelNumberInput.digitFromKeyCode(native.keyCode) != null ||
                                    ChannelNumberInput.isConfirmKeyCode(native.keyCode)
                                upHandled
                            } else if (native.action == AndroidKeyEvent.ACTION_DOWN) {
                                val digit = ChannelNumberInput.digitFromKeyCode(native.keyCode)
                                if (digit != null) {
                                    field = field.digit(digit)
                                    true
                                } else if (ChannelNumberInput.isConfirmKeyCode(native.keyCode)) {
                                    field.value?.let { position -> onConfirm(position) }
                                    true
                                } else {
                                    false
                                }
                            } else {
                                false
                            }
                        }
                        .testTag("channel_number_field"),
                ) {
                    Text(
                        text = field.digits.ifEmpty { "—" },
                        color = FvpColors.TextPrimary,
                        fontSize = scale.sp(34f),
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier
                            .background(FvpColors.SurfaceElevated, RoundedCornerShape(scale.dp(8f)))
                            .padding(horizontal = scale.dp(22f), vertical = scale.dp(8f))
                            .testTag("channel_number_value"),
                    )
                }
                Text(
                    text = "OK conferma · Indietro annulla",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(13f),
                )
            }
        }
    }
}
