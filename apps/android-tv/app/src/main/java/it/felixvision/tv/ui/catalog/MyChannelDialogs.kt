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
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
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
    const val ADD_CHANNELS = "Aggiungi canali"
    const val REMOVE_CHANNELS = "Rimuovi canali"
    const val REMOVE_CONFIRM = "Rimuovere il canale da I miei canali?"
    const val CANCEL = "Annulla"
    const val CONFIRM = "OK"
}

/**
 * Dopo la rimozione punta al canale che prende il posto rimosso; se era l'ultimo,
 * al precedente. `null` indica che non resta nessun canale visibile.
 */
internal fun myChannelFocusTargetAfterRemoval(
    channels: List<MyChannel>,
    removedStreamId: String,
): MyChannel? {
    val removedIndex = MyChannels.indexOf(channels, removedStreamId)
    if (removedIndex < 0) return null
    val remaining = MyChannels.remove(channels, removedStreamId)
    return remaining.getOrNull(removedIndex) ?: remaining.lastOrNull()
}

/**
 * Dopo un riordino, mantiene il focus sul numero di riga occupato prima del
 * cambio: il canale che entra in quello slot riceve il focus.
 */
internal fun myChannelFocusTargetAtOriginalPosition(
    before: List<MyChannel>,
    after: List<MyChannel>,
    movedStreamId: String,
): MyChannel? {
    val originalIndex = MyChannels.indexOf(before, movedStreamId)
    if (originalIndex < 0) return null
    return after.getOrNull(originalIndex)
}

/** Consuma Indietro sulla radice del Dialog e chiude solo al rilascio. */
private fun Modifier.closeDialogOnBack(onDismiss: () -> Unit): Modifier =
    onPreviewKeyEvent { event ->
        if (event.key != Key.Back) return@onPreviewKeyEvent false
        when (event.type) {
            KeyEventType.KeyDown -> true
            KeyEventType.KeyUp -> {
                onDismiss()
                true
            }
            else -> false
        }
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
    // Niente da raggruppare dove la pagina di scelta non esiste (per esempio
    // sopra il player): con `null` le due voci non compaiono affatto, invece di
    // restare lì a non fare nulla.
    onAddChannels: (() -> Unit)? = null,
    onRemoveChannels: (() -> Unit)? = null,
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
    val removeMenuButton = remember { FocusRequester() }
    val removeCancelButton = remember { FocusRequester() }
    var hasEnteredRemoveConfirmation by remember(channel.streamId) { mutableStateOf(false) }
    LaunchedEffect(confirmingRemove) {
        val target = when {
            confirmingRemove -> removeCancelButton
            hasEnteredRemoveConfirmation -> removeMenuButton
            else -> firstButton
        }
        runCatching { target.requestFocus() }
        if (confirmingRemove) hasEnteredRemoveConfirmation = true
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                .closeDialogOnBack(onDismiss)
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
                                .focusRequester(removeCancelButton)
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
                        onClick = {
                            hasEnteredRemoveConfirmation = true
                            confirmingRemove = true
                        },
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(removeMenuButton)
                            .testTag("my_channel_remove"),
                    )
                    // Scorciatoie alle selezioni multiple: la stessa cosa che si
                    // ottiene tenendo premuto sulla scheda "I miei canali", qui
                    // però partendo da un canale.
                    if (onAddChannels != null) {
                        FvpSecondaryButton(
                            text = MyChannelDialogTexts.ADD_CHANNELS,
                            onClick = onAddChannels,
                            scale = scale,
                            modifier = Modifier.testTag("my_channel_add_channels"),
                        )
                    }
                    if (onRemoveChannels != null && channels.isNotEmpty()) {
                        FvpSecondaryButton(
                            text = MyChannelDialogTexts.REMOVE_CHANNELS,
                            onClick = onRemoveChannels,
                            scale = scale,
                            modifier = Modifier.testTag("my_channel_remove_channels"),
                        )
                    }
                }
            }
        }
    }
}

/**
 * Selettore numerico a 4 cifre: ▲/Su incrementa di uno, ▼/Giù decrementa di
 * uno, le cifre permettono l'immissione diretta, OK conferma e Indietro annulla.
 * Il valore iniziale è già selezionato: la prima cifra lo sostituisce.
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
                .closeDialogOnBack(onDismiss)
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
                Column(
                    modifier = Modifier
                        .focusRequester(fieldFocus)
                        .focusable()
                        .onPreviewKeyEvent { event ->
                            val native = event.nativeKeyEvent
                            val isStepKey = native.keyCode == AndroidKeyEvent.KEYCODE_DPAD_UP ||
                                native.keyCode == AndroidKeyEvent.KEYCODE_DPAD_DOWN
                            if (native.action == AndroidKeyEvent.ACTION_UP) {
                                // Consuma anche i rilasci per non spostare il focus fuori dal selettore.
                                ChannelNumberInput.digitFromKeyCode(native.keyCode) != null ||
                                    ChannelNumberInput.isConfirmKeyCode(native.keyCode) ||
                                    isStepKey
                            } else if (native.action == AndroidKeyEvent.ACTION_DOWN) {
                                val digit = ChannelNumberInput.digitFromKeyCode(native.keyCode)
                                when {
                                    digit != null -> {
                                        field = field.digit(digit)
                                        true
                                    }
                                    ChannelNumberInput.isConfirmKeyCode(native.keyCode) -> {
                                        field.value?.let { position -> onConfirm(position) }
                                        true
                                    }
                                    native.keyCode == AndroidKeyEvent.KEYCODE_DPAD_UP -> {
                                        field = field.step(delta = 1)
                                        true
                                    }
                                    native.keyCode == AndroidKeyEvent.KEYCODE_DPAD_DOWN -> {
                                        field = field.step(delta = -1)
                                        true
                                    }
                                    else -> false
                                }
                            } else {
                                false
                            }
                        }
                        .testTag("channel_number_field"),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(scale.dp(2f)),
                ) {
                    Text(
                        text = "▲",
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(15f),
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.testTag("channel_number_step_up"),
                    )
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
                    Text(
                        text = "▼",
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(15f),
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.testTag("channel_number_step_down"),
                    )
                }
                Text(
                    text = "OK conferma · Indietro annulla",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.sp(13f),
                    modifier = Modifier.testTag("channel_number_hint"),
                )
            }
        }
    }
}

/** Testi del menu della scheda "I miei canali" e della conferma multipla. */
object MyChannelsMenuTexts {
    const val TITLE = "I miei canali"
    const val BACK = "Indietro"

    const val ADD_CHANNELS = "Aggiungi canali"
    const val REMOVE_CHANNELS = "Rimuovi canali"

    fun addConfirm(count: Int): String = if (count == 1) {
        "Aggiungere 1 canale a I miei canali?"
    } else {
        "Aggiungere $count canali a I miei canali?"
    }

    fun removeConfirm(count: Int): String = if (count == 1) {
        "Rimuovere 1 canale da I miei canali?"
    } else {
        "Rimuovere $count canali da I miei canali?"
    }
}

/**
 * Menu della pressione lunga sulla scheda "I miei canali": aggiungere o
 * togliere canali in blocco. Con la lista personale vuota resta solo
 * l'aggiunta, gli altri ingressi non servono.
 *
 * Indietro chiude senza fare nulla; il primo pulsante prende il focus
 * all'apertura, così il telecomando è subito utilizzabile.
 */
@Composable
fun MyChannelsTabMenuDialog(
    scale: UiScale,
    canRemove: Boolean,
    onAddChannels: () -> Unit,
    onRemoveChannels: () -> Unit,
    onDismiss: () -> Unit,
) {
    val firstButton = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        runCatching { firstButton.requestFocus() }
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                .closeDialogOnBack(onDismiss)
                // Aperta dalla pressione lunga di OK: il tasto ancora premuto
                // non deve attivare subito la prima voce.
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
                    .testTag(MY_CHANNELS_TAB_MENU_TAG),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
            ) {
                Text(
                    text = MyChannelsMenuTexts.TITLE,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(20f),
                    fontWeight = FontWeight.Bold,
                )
                FvpPrimaryButton(
                    text = MyChannelsMenuTexts.ADD_CHANNELS,
                    onClick = onAddChannels,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(firstButton)
                        .testTag(MY_CHANNELS_TAB_MENU_ADD_TAG),
                )
                if (canRemove) {
                    FvpSecondaryButton(
                        text = MyChannelsMenuTexts.REMOVE_CHANNELS,
                        onClick = onRemoveChannels,
                        scale = scale,
                        modifier = Modifier.testTag(MY_CHANNELS_TAB_MENU_REMOVE_TAG),
                    )
                }
            }
        }
    }
}

const val MY_CHANNELS_TAB_MENU_TAG = "my_channels_tab_menu"
const val MY_CHANNELS_TAB_MENU_ADD_TAG = "my_channels_tab_menu_add"
const val MY_CHANNELS_TAB_MENU_REMOVE_TAG = "my_channels_tab_menu_remove"

/**
 * Unica conferma della modifica multipla: "No" ha il focus iniziale ed è la
 * scelta sicura, Indietro chiude senza toccare nulla. Una sola scrittura
 * sull'archivio per tutta la selezione, come nei Contenuti protetti.
 */
@Composable
fun MyChannelBulkConfirmDialog(
    count: Int,
    adding: Boolean,
    scale: UiScale,
    onYes: () -> Unit,
    onNo: () -> Unit,
) {
    val noFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        runCatching { noFocus.requestFocus() }
    }

    Dialog(
        onDismissRequest = onNo,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onNo() }
        Box(
            modifier = Modifier
                .closeDialogOnBack(onNo)
                .ignoreHeldOkUntilReleased()
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(32f))
                .testTag(MY_CHANNEL_BULK_CONFIRM_TAG),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                modifier = Modifier
                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                    .padding(scale.dp(20f)),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
            ) {
                Text(
                    text = if (adding) {
                        MyChannelsMenuTexts.addConfirm(count)
                    } else {
                        MyChannelsMenuTexts.removeConfirm(count)
                    },
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(18f),
                    fontWeight = FontWeight.SemiBold,
                )
                Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                    FvpSecondaryButton(
                        text = MyChannelDialogTexts.CANCEL,
                        onClick = onNo,
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(noFocus)
                            .testTag(MY_CHANNEL_BULK_CONFIRM_NO_TAG),
                    )
                    FvpPrimaryButton(
                        text = if (adding) "Aggiungi" else "Rimuovi",
                        onClick = onYes,
                        scale = scale,
                        modifier = Modifier.testTag(MY_CHANNEL_BULK_CONFIRM_YES_TAG),
                    )
                }
            }
        }
    }
}

const val MY_CHANNEL_BULK_CONFIRM_TAG = "my_channel_bulk_confirm"
const val MY_CHANNEL_BULK_CONFIRM_NO_TAG = "my_channel_bulk_confirm_no"
const val MY_CHANNEL_BULK_CONFIRM_YES_TAG = "my_channel_bulk_confirm_yes"
