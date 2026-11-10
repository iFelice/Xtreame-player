package it.felixvision.tv.ui.catalog

import androidx.activity.compose.BackHandler
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
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
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
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.channels.MyChannelPickerGroup
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import it.felixvision.tv.ui.theme.settingsRowText

/** Testi della pagina di scelta multipla dei canali. */
object MyChannelPickerTexts {
    const val ADD_TITLE = "Aggiungi canali"
    const val REMOVE_TITLE = "Rimuovi canali"
    const val BACK = "Indietro"
    const val EMPTY = "Nessun canale disponibile"
    const val ALL_CHANNELS = "Tutti i canali"
    const val ALL_CATEGORY = "Tutta la categoria"
    const val CHECK = "✓ "
    const val PARTIAL = "• "

    /** Etichetta del tasto di conferma: "Aggiungi (12)" oppure "Rimuovi (3)". */
    fun confirmLabel(adding: Boolean, count: Int): String =
        (if (adding) ADD_TITLE else REMOVE_TITLE) + " ($count)"

    /** Sottotitolo del livello 2: nome della categoria aperta. */
    fun categorySubtitle(name: String, total: Int): String =
        "$name · $total canali"
}

/** Test tag stabili, usati dai test Compose. */
const val MY_CHANNEL_PICKER_TAG = "my_channel_picker"
const val MY_CHANNEL_PICKER_CONFIRM_TAG = "my_channel_picker_confirm"
const val MY_CHANNEL_PICKER_EMPTY_TAG = "my_channel_picker_empty"
const val MY_CHANNEL_PICKER_BACK_TAG = "my_channel_picker_back"
const val MY_CHANNEL_PICKER_ALL_TAG = "my_channel_picker_all"

private const val PICKER_ALL_KEY = "all"
private const val NO_CATEGORY_KEY = "others"

/** Chiave stabile di un gruppo: la categoria, oppure "others" per gli orfani. */
private val MyChannelPickerGroup.key: String get() = categoryId ?: NO_CATEGORY_KEY

fun myChannelPickerCategoryTag(categoryId: String?): String =
    "my_channel_picker_cat_${categoryId ?: NO_CATEGORY_KEY}"

fun myChannelPickerStreamTag(streamId: String): String =
    "my_channel_picker_stream_$streamId"

/** Riga "Tutta la categoria" dentro la categoria aperta. */
fun myChannelPickerWholeCategoryTag(categoryId: String?): String =
    "my_channel_picker_whole_${categoryId ?: NO_CATEGORY_KEY}"

/**
 * Pagina di scelta multipla dei canali, usata sia per aggiungere sia per
 * togliere.
 *
 * Due livelli, come i Contenuti protetti, per non dover attraversare centinaia
 * di canali con le frecce:
 *
 * **Livello 1 — categorie** (quello che si vede aprendo):
 * - **pressione breve** su una categoria: si **entra** in quella categoria;
 * - **pressione lunga**: si spunta o si toglie **tutta** la categoria, senza
 *   entrare (la riga mostra ✓ piena, oppure • e "3/12" quando è parziale);
 * - "Tutti i canali" in cima: tutto o niente su tutte le categorie.
 *
 * **Livello 2 — canali della categoria aperta**:
 * - la prima riga è "Tutta la categoria" (✓ se è tutta scelta): equivale alla
 *   pressione lunga del livello 1;
 * - OK su un canale spunta o toglie quel canale;
 * - Indietro (o "Indietro") torna all'elenco delle categorie, con il focus
 *   sulla categoria da cui si è usciti. Da lì Indietro chiude la pagina.
 *
 * La selezione vive nel chiamante ([checkedIds], con le funzioni di
 * `MyChannelSelection`): questa pagina disegna e inoltra i gesti. Solo la
 * categoria aperta è stato suo, perché è navigazione e non selezione.
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
    // Categoria aperta (null = elenco delle categorie). È navigazione, non
    // selezione: si azzera uscendo dalla pagina insieme alla selezione.
    var openKey by remember { mutableStateOf<String?>(null) }
    // Categoria su cui rimettere il focus tornando indietro.
    var focusOnReturn by remember { mutableStateOf<String?>(null) }
    // La categoria aperta può sparire (catalogo aggiornato): in quel caso si
    // torna all'elenco invece di restare su una pagina vuota.
    val openGroup = groups.firstOrNull { it.key == openKey }

    if (openGroup == null) {
        PickerCategoriesLevel(
            adding = adding,
            groups = groups,
            selected = selected,
            checkedCount = checkedIds.size,
            focusOnReturn = focusOnReturn,
            onFocusRestored = { focusOnReturn = null },
            onOpenGroup = { group -> openKey = group.key },
            onToggleGroup = onToggleGroup,
            onToggleAll = onToggleAll,
            onConfirm = onConfirm,
            onBack = onBack,
            scale = scale,
            modifier = modifier,
        )
    } else {
        // Indietro dentro una categoria non chiude la pagina: torna all'elenco.
        // `BackHandler` è annidato dentro quello della finestra che ospita la
        // pagina, quindi questo vince: il primo Indietro esce dalla categoria,
        // il secondo chiude la pagina (gestito dal chiamante).
        BackHandler { focusOnReturn = openGroup.key; openKey = null }
        PickerChannelsLevel(
            adding = adding,
            group = openGroup,
            selected = selected,
            checkedCount = checkedIds.size,
            onToggleStream = onToggleStream,
            onToggleGroup = { onToggleGroup(openGroup) },
            onConfirm = onConfirm,
            onBack = { focusOnReturn = openGroup.key; openKey = null },
            scale = scale,
            modifier = modifier,
        )
    }
}

/** Livello 1: elenco delle categorie. */
@Composable
private fun PickerCategoriesLevel(
    adding: Boolean,
    groups: List<MyChannelPickerGroup>,
    selected: Set<String>,
    checkedCount: Int,
    focusOnReturn: String?,
    onFocusRestored: () -> Unit,
    onOpenGroup: (MyChannelPickerGroup) -> Unit,
    onToggleGroup: (MyChannelPickerGroup) -> Unit,
    onToggleAll: () -> Unit,
    onConfirm: () -> Unit,
    onBack: () -> Unit,
    scale: UiScale,
    modifier: Modifier,
) {
    val listState = rememberLazyListState()
    val focusRequesters = remember(groups) {
        groups.associate { it.key to FocusRequester() }
    }
    val allStreamIds = remember(groups) { groups.flatMap { it.streamIds } }
    val totalChannels = remember(groups) { groups.sumOf { it.total } }
    // "Tutti i canali" solo con più di un gruppo: con uno solo coinciderebbe
    // con l'unica categoria presente.
    val allRowVisible = groups.size > 1

    LaunchedEffect(groups, focusOnReturn) {
        withFrameNanos { }
        // Si torna da una categoria: il focus va lì. All'apertura, sulla prima.
        val target = focusOnReturn ?: groups.firstOrNull()?.key
        if (target != null) {
            runCatching { focusRequesters[target]?.requestFocus() }
            if (focusOnReturn != null) onFocusRestored()
        }
    }

    Column(
        modifier = modifier.fillMaxSize().testTag(MY_CHANNEL_PICKER_TAG),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        PickerHeader(
            title = if (adding) MyChannelPickerTexts.ADD_TITLE else MyChannelPickerTexts.REMOVE_TITLE,
            subtitle = if (totalChannels > 0) "$totalChannels canali in ${groups.size} categorie" else null,
            onBack = onBack,
            scale = scale,
        )
        if (totalChannels == 0) {
            Text(
                text = MyChannelPickerTexts.EMPTY,
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag(MY_CHANNEL_PICKER_EMPTY_TAG),
            )
        } else LazyColumn(
            state = listState,
            modifier = Modifier.fillMaxWidth().weight(1f),
            verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
            contentPadding = PaddingValues(scale.focusSafePadding),
        ) {
            if (allRowVisible) {
                item(key = PICKER_ALL_KEY) {
                    val allChecked = allStreamIds.isNotEmpty() &&
                        allStreamIds.all { it in selected }
                    PickerRow(
                        headline = (if (allChecked) MyChannelPickerTexts.CHECK else "") +
                            MyChannelPickerTexts.ALL_CHANNELS,
                        scale = scale,
                        modifier = Modifier
                            .fvpLongPress(onToggleAll)
                            .testTag(MY_CHANNEL_PICKER_ALL_TAG),
                        onClick = onToggleAll,
                    )
                }
            }
            items(groups, key = { "cat_${it.key}" }) { group ->
                val checkedInGroup = group.checkedCount(selected)
                val prefix = when {
                    group.allChecked(selected) -> MyChannelPickerTexts.CHECK
                    group.someChecked(selected) -> MyChannelPickerTexts.PARTIAL
                    else -> ""
                }
                PickerRow(
                    headline = prefix + group.name,
                    // Conteggio sempre visibile: dice quanto è già scelto senza
                    // dover entrare.
                    trailing = if (checkedInGroup > 0) "$checkedInGroup/${group.total}" else "${group.total}",
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(focusRequesters.getValue(group.key))
                        .fvpLongPress { onToggleGroup(group) }
                        .testTag(myChannelPickerCategoryTag(group.categoryId)),
                    // Pressione breve: si entra nella categoria.
                    onClick = { onOpenGroup(group) },
                )
            }
        }
        PickerConfirmButton(
            adding = adding,
            checkedCount = checkedCount,
            onConfirm = onConfirm,
            scale = scale,
        )
    }
}

/** Livello 2: i canali della categoria aperta, con "Tutta la categoria" in cima. */
@Composable
private fun PickerChannelsLevel(
    adding: Boolean,
    group: MyChannelPickerGroup,
    selected: Set<String>,
    checkedCount: Int,
    onToggleStream: (streamId: String) -> Unit,
    onToggleGroup: () -> Unit,
    onConfirm: () -> Unit,
    onBack: () -> Unit,
    scale: UiScale,
    modifier: Modifier,
) {
    val listState = rememberLazyListState()
    val streamRequesters = remember(group) {
        group.streams.map { it.streamId }.distinct().associateWith { FocusRequester() }
    }
    val wholeCategoryFocus = remember(group) { FocusRequester() }

    LaunchedEffect(group) {
        withFrameNanos { }
        // Appena entrati, il focus è sulla prima riga: "Tutta la categoria".
        // Così una pressione lunga lì ripete il gesto del livello 1.
        runCatching { wholeCategoryFocus.requestFocus() }
    }

    Column(
        modifier = modifier.fillMaxSize().testTag(MY_CHANNEL_PICKER_TAG),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        PickerHeader(
            title = if (adding) MyChannelPickerTexts.ADD_TITLE else MyChannelPickerTexts.REMOVE_TITLE,
            subtitle = MyChannelPickerTexts.categorySubtitle(group.name, group.total),
            onBack = onBack,
            scale = scale,
            backLabel = MyChannelPickerTexts.BACK,
        )
        LazyColumn(
            state = listState,
            modifier = Modifier.fillMaxWidth().weight(1f),
            verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
            contentPadding = PaddingValues(scale.focusSafePadding),
        ) {
            item(key = "whole") {
                val allChecked = group.allChecked(selected)
                PickerRow(
                    headline = (if (allChecked) MyChannelPickerTexts.CHECK else "") +
                        MyChannelPickerTexts.ALL_CATEGORY,
                    trailing = "${group.checkedCount(selected)}/${group.total}",
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(wholeCategoryFocus)
                        .fvpLongPress { onToggleGroup() }
                        .testTag(myChannelPickerWholeCategoryTag(group.categoryId)),
                    // Pressione breve spunta tutta la categoria: è l'azione più
                    // richiesta qui dentro, e la pressione lunga fa lo stesso.
                    onClick = { onToggleGroup() },
                )
            }
            items(group.streams, key = { "stream_${it.streamId}" }) { stream ->
                PickerStreamRow(
                    stream = stream,
                    checked = stream.streamId in selected,
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
        PickerConfirmButton(
            adding = adding,
            checkedCount = checkedCount,
            onConfirm = onConfirm,
            scale = scale,
        )
    }
}

/** Titolo, sottotitolo e "Indietro": uguale nei due livelli. */
@Composable
private fun PickerHeader(
    title: String,
    subtitle: String?,
    onBack: () -> Unit,
    scale: UiScale,
    backLabel: String = MyChannelPickerTexts.BACK,
) {
    Row(
        horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(verticalArrangement = Arrangement.spacedBy(scale.dp(2f))) {
            Text(
                text = title,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
            )
            if (subtitle != null) {
                Text(
                    text = subtitle,
                    color = FvpColors.TextSecondary,
                    fontSize = scale.settingsRowText,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
        FvpCompactButton(
            text = backLabel,
            onClick = onBack,
            scale = scale,
            modifier = Modifier.testTag(MY_CHANNEL_PICKER_BACK_TAG),
        )
    }
}

/** Tasto di conferma: c'è solo con almeno una scelta. */
@Composable
private fun PickerConfirmButton(
    adding: Boolean,
    checkedCount: Int,
    onConfirm: () -> Unit,
    scale: UiScale,
) {
    if (checkedCount <= 0) return
    FvpCompactButton(
        text = MyChannelPickerTexts.confirmLabel(adding, checkedCount),
        onClick = onConfirm,
        scale = scale,
        modifier = Modifier.testTag(MY_CHANNEL_PICKER_CONFIRM_TAG),
    )
}

/** Riga di un canale: spunta piena quando è scelto. */
@Composable
private fun PickerStreamRow(
    stream: LiveStream,
    checked: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
) {
    PickerRow(
        headline = (if (checked) MyChannelPickerTexts.CHECK else "") + stream.name,
        scale = scale,
        modifier = modifier,
        onClick = onClick,
    )
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
