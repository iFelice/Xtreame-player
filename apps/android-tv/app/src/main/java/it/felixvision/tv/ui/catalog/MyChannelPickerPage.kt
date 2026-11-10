package it.felixvision.tv.ui.catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.data.channels.MyChannelPickerGroup
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.theme.FvpColors

/** Testi della pagina di scelta multipla dei canali. */
object MyChannelPickerTexts {
    const val ADD_TITLE = "Aggiungi canali"
    const val REMOVE_TITLE = "Rimuovi canali"
    const val BACK = "Indietro"
    const val EMPTY = "Nessun canale disponibile"
    const val ALL_CHANNELS = "Tutti i canali"
    const val CHECK = "✓ "
    const val PARTIAL = "• "

    /** Etichetta del tasto di conferma: "Aggiungi (12)" oppure "Rimuovi (3)". */
    fun confirmLabel(adding: Boolean, count: Int): String =
        (if (adding) ADD_TITLE else REMOVE_TITLE) + " ($count)"
}

/** Test tag stabili, usati dai test Compose. */
const val MY_CHANNEL_PICKER_TAG = "my_channel_picker"
const val MY_CHANNEL_PICKER_CONFIRM_TAG = "my_channel_picker_confirm"
const val MY_CHANNEL_PICKER_EMPTY_TAG = "my_channel_picker_empty"
const val MY_CHANNEL_PICKER_BACK_TAG = "my_channel_picker_back"
const val MY_CHANNEL_PICKER_ALL_TAG = "my_channel_picker_all"

private const val PICKER_ALL_KEY = "all"

fun myChannelPickerCategoryTag(categoryId: String?): String =
    "my_channel_picker_cat_${categoryId ?: "others"}"

fun myChannelPickerStreamTag(streamId: String): String =
    "my_channel_picker_stream_$streamId"

/**
 * Pagina di scelta multipla dei canali, usata sia per aggiungere sia per
 * togliere.
 *
 * Struttura identica a quella dei Contenuti protetti, così il gesto si impara
 * una volta sola:
 * - in cima le **categorie**, ognuna con i suoi canali sotto;
 * - OK su una categoria **entra** nel gruppo (il focus va al primo canale, la
 *   categoria resta al suo posto: niente pagine annidate da aprire e chiudere);
 * - **pressione lunga** su una categoria spunta o toglie tutto il gruppo, e
 *   l'intestazione mostra la spunta piena (✓) o parziale (•);
 * - OK su un canale spunta o toglie il singolo canale;
 * - in fondo il tasto di conferma con il numero di canali scelti: c'è solo con
 *   almeno una scelta.
 *
 * La selezione vive nel chiamante ([checkedIds], con le funzioni di
 * `MyChannelSelection`): questa pagina disegna e inoltra i gesti, senza stato
 * proprio. Indietro torna alla schermata di prima senza salvare nulla.
 */
@Composable
fun MyChannelPickerPage(
    adding: Boolean,
    groups: List<MyChannelPickerGroup>,
    checkedIds: List<String>,
    scale: UiScale,
    onToggleStream: (streamId: String) -> Unit,
    onToggleGroup: (group: MyChannelPickerGroup) -> Unit,
    onToggleAll: () -> Unit,
    onConfirm: () -> Unit,
    onBack: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val selected = remember(checkedIds) { checkedIds.toSet() }
    val allStreamIds = remember(groups) { groups.flatMap { it.streamIds } }
    val listState = rememberLazyListState()
    val focusRequesters = remember(groups) {
        groups.associate { it.categoryId to FocusRequester() }
    }
    val streamRequesters = remember(groups) {
        groups.flatMap { group -> group.streams.map { it.streamId } }
            .distinct()
            .associateWith { FocusRequester() }
    }
    // La riga "Tutti i canali" compare solo quando c'è più di un gruppo: con un
    // gruppo solo coinciderebbe con l'intestazione già presente.
    val allRowVisible = groups.size > 1
    val totalChannels = remember(groups) { groups.sumOf { it.total } }
    LaunchedEffect(groups) {
        withFrameNanos { }
        // Focus d'apertura: la prima categoria, cioè la prima riga sotto
        // "Tutti i canali" quando c'è. Se non ci sono categorie il focus resta
        // libero e lo prende la LazyColumn dall'alto.
        val first = groups.firstOrNull()?.categoryId
        if (first != null) {
            runCatching { focusRequesters[first]?.requestFocus() }
        }
    }

    Column(
        modifier = modifier
            .fillMaxSize()
            .testTag(MY_CHANNEL_PICKER_TAG),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
            Text(
                text = if (adding) MyChannelPickerTexts.ADD_TITLE else MyChannelPickerTexts.REMOVE_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
            )
            FvpCompactButton(
                text = MyChannelPickerTexts.BACK,
                onClick = onBack,
                scale = scale,
                modifier = Modifier.testTag(MY_CHANNEL_PICKER_BACK_TAG),
            )
        }
        if (totalChannels == 0) {
            Text(
                text = MyChannelPickerTexts.EMPTY,
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag(MY_CHANNEL_PICKER_EMPTY_TAG),
            )
        } else LazyColumn(
            state = listState,
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f),
            verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
            contentPadding = PaddingValues(scale.focusSafePadding),
        ) {
            if (allRowVisible) {
                item(key = PICKER_ALL_KEY) {
                    // Tutto o niente: pressione lunga e OK fanno la stessa
                    // cosa, perché qui non c'è un "dentro" dove entrare.
                    PickerRow(
                        headline = (
                            if (allStreamIds.isNotEmpty() && allStreamIds.all { it in selected }) {
                                MyChannelPickerTexts.CHECK
                            } else {
                                ""
                            }
                            ) + MyChannelPickerTexts.ALL_CHANNELS,
                        scale = scale,
                        modifier = Modifier
                            .fvpLongPress(onToggleAll)
                            .testTag(MY_CHANNEL_PICKER_ALL_TAG),
                        onClick = onToggleAll,
                    )
                }
            }
            groups.forEach { group ->
                item(key = "cat_${group.categoryId ?: "others"}") {
                    val checkedInGroup = group.checkedCount(selected)
                    val prefix = when {
                        group.allChecked(selected) -> MyChannelPickerTexts.CHECK
                        group.someChecked(selected) -> MyChannelPickerTexts.PARTIAL
                        else -> ""
                    }
                    PickerRow(
                        headline = prefix + group.name,
                        trailing = "$checkedInGroup/${group.total}",
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(focusRequesters.getValue(group.categoryId))
                            .fvpLongPress { onToggleGroup(group) }
                            .testTag(myChannelPickerCategoryTag(group.categoryId)),
                        // OK non spunta: entra nei canali del gruppo. Se il
                        // gruppo non ha canali (riga "Altri canali" vuota, che
                        // comunque non viene disegnata) non c'è dove entrare.
                        onClick = {
                            val first = group.streams.firstOrNull()?.streamId
                            if (first != null) {
                                runCatching { streamRequesters[first]?.requestFocus() }
                            }
                        },
                    )
                }
                items(group.streams, key = { "stream_${it.streamId}" }) { stream ->
                    val isChecked = stream.streamId in selected
                    PickerRow(
                        headline = (if (isChecked) MyChannelPickerTexts.CHECK else "") + stream.name,
                        scale = scale,
                        modifier = Modifier
                            .then(
                                streamRequesters[stream.streamId]
                                    ?.let { Modifier.focusRequester(it) }
                                    ?: Modifier
                            )
                            .testTag(myChannelPickerStreamTag(stream.streamId)),
                        onClick = { onToggleStream(stream.streamId) },
                    )
                }
            }
        }
        if (checkedIds.isNotEmpty()) {
            FvpCompactButton(
                text = MyChannelPickerTexts.confirmLabel(adding, checkedIds.size),
                onClick = onConfirm,
                scale = scale,
                modifier = Modifier.testTag(MY_CHANNEL_PICKER_CONFIRM_TAG),
            )
        }
    }
}

/**
 * Riga dell'elenco: stesso stile delle liste dell'app (fondo scuro, bordo
 * verde sul focus), come le righe dei Contenuti protetti.
 */
@Composable
private fun PickerRow(
    headline: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
    trailing: String? = null,
) {
    DenseListItem(
        selected = false,
        onClick = onClick,
        headlineContent = {
            Text(
                text = headline,
                color = FvpColors.TextPrimary,
                fontSize = scale.rowText,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        },
        trailingContent = {
            if (trailing != null) {
                Text(
                    text = trailing,
                    color = FvpColors.TextSecondary,
                    fontSize = scale.settingsRowText,
                    maxLines = 1,
                )
            }
        },
        modifier = modifier.fillMaxWidth(),
        colors = ListItemDefaults.colors(
            containerColor = FvpColors.SurfaceElevated,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.SurfaceElevated,
            focusedContentColor = FvpColors.TextPrimary,
        ),
        scale = ListItemDefaults.scale(focusedScale = 1.03f),
        border = ListItemDefaults.border(
            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
        ),
        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
    )
}
