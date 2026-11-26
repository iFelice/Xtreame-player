package it.felixvision.tv.ui.settings

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
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
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.Sources
import it.felixvision.tv.ui.components.FvpCheckboxButton
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.fvpLongPress
import it.felixvision.tv.ui.components.ignoreHeldOkUntilReleased
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsRowSpacing
import it.felixvision.tv.ui.theme.settingsRowText

/** Tag di test della pagina "Liste M3U". */
const val SETTINGS_PAGE_M3U_LISTS_TAG = "settings_page_m3u_lists"

/** Titolo della pagina e delle finestre di riordino. */
const val SETTINGS_M3U_LISTS_TITLE = "Liste M3U"
const val SETTINGS_M3U_MOVE_UP = "Sposta su"
const val SETTINGS_M3U_MOVE_DOWN = "Sposta giù"
const val SETTINGS_M3U_CLOSE = "Chiudi"

/**
 * Pagina **Impostazioni › Account › Liste M3U**: l'elenco completo delle liste,
 * nell'ordine in cui compaiono nel catalogo.
 *
 * - una riga per lista: posizione (`M1`, `M2`, …), nome del file e interruttore
 *   "Mostra" (OK accende o spegne la singola lista);
 * - **pressione lunga** sull'interruttore: menu "Sposta su" / "Sposta giù", lo
 *   stesso comportamento di "I miei canali". Ai bordi del gruppo la voce è
 *   disattivata;
 * - la posizione è il numero dell'etichetta: le liste accese stanno davanti,
 *   quelle spente in coda, e dopo ogni spostamento i numeri si ricompattano da
 *   1 a n ([Sources.moveM3u], [Sources.normalizeM3uPositions]);
 * - Indietro torna alla pagina Account.
 *
 * Con molte liste (anche cento) l'elenco è pigro: compone solo le righe visibili.
 * L'indirizzo della lista non compare mai.
 */
@Composable
internal fun M3uListsPage(
    sources: List<Source>,
    listsVisible: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onBack: () -> Unit = {},
    onToggle: (String, Boolean) -> Unit = { _, _ -> },
    onMoveUp: (String) -> Unit = {},
    onMoveDown: (String) -> Unit = {},
) {
    BackHandler { onBack() }

    val lists = Sources.m3uPageOrder(sources)
    val names = Sources.displayNames(sources)
    // Un requester per riga: dopo uno spostamento il focus torna sulla lista
    // spostata, così due "Sposta giù" di fila muovono la stessa lista.
    val rowRequesters = remember { mutableMapOf<String, FocusRequester>() }
    // Ultima riga toccata dall'utente: dopo lo spostamento (o l'accensione, che
    // può spostarla in coda) il focus torna lì. Non si tocca il focus quando è
    // il catalogo a cambiare.
    var lastInteractedId by remember { mutableStateOf<String?>(null) }
    var entryFocused by remember { mutableStateOf(false) }
    var menuFor by remember { mutableStateOf<String?>(null) }

    // Focus d'ingresso, una volta sola: l'interruttore della prima lista (o
    // "Chiudi" se non c'è nessuna lista, così Indietro non esce dalla pagina).
    val emptyFocus = remember { FocusRequester() }
    LaunchedEffect(lists.firstOrNull()?.id) {
        if (entryFocused) return@LaunchedEffect
        withFrameNanos { }
        val target = lists.firstOrNull()?.let { rowRequesters[it.id] } ?: emptyFocus
        if (runCatching { target.requestFocus() }.isSuccess) entryFocused = true
    }

    // Dopo uno spostamento o un interruttore le posizioni cambiano: il focus
    // resta sulla riga toccata, così due "Sposta giù" di fila muovono la stessa
    // lista (e spegnendola la si ritrova in fondo, dove è finita).
    LaunchedEffect(lists.map { it.id }) {
        val id = lastInteractedId ?: return@LaunchedEffect
        withFrameNanos { }
        runCatching { rowRequesters[id]?.requestFocus() }
    }

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(16f))
            .testTag(SETTINGS_PAGE_M3U_LISTS_TAG),
        verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
    ) {
        item(key = "header") {
            Column(verticalArrangement = Arrangement.spacedBy(scale.dp(6f))) {
                Text(
                    text = SETTINGS_M3U_LISTS_TITLE,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(22f),
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.testTag(SETTINGS_PAGE_TITLE_TAG),
                )
                Text(
                    text = "La posizione è il numero: le liste accese stanno davanti, quelle spente in coda. " +
                        "OK accende o spegne la lista, la pressione lunga apre \"Sposta su\" e \"Sposta giù\".",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.settingsRowText,
                )
                Text(
                    text = if (listsVisible) {
                        "Le liste compaiono nel catalogo secondo l'ordine di questa pagina."
                    } else {
                        "Le liste sono nascoste dal catalogo (interruttore generale spento): le scelte qui restano salvate."
                    },
                    color = FvpColors.TextSecondary,
                    fontSize = scale.settingsRowText,
                    modifier = Modifier.testTag("settings_m3u_lists_summary"),
                )
            }
        }

        if (lists.isEmpty()) {
            item(key = "empty") {
                FvpPrimaryButton(
                    text = SETTINGS_M3U_CLOSE,
                    onClick = onBack,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(emptyFocus)
                        .testTag("settings_m3u_lists_empty_close"),
                )
            }
        }

        items(lists, key = { it.id }) { source ->
            val rowFocus = remember(source.id) { FocusRequester() }
            SideEffect { rowRequesters[source.id] = rowFocus }
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                    .padding(horizontal = scale.dp(16f), vertical = scale.dp(10f))
                    .testTag("settings_m3u_row_${source.id}"),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Column(verticalArrangement = Arrangement.spacedBy(scale.dp(2f))) {
                    Text(
                        text = "${source.label} · ${names[source.id] ?: Sources.typeName(source.type)}",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag("settings_m3u_title_${source.id}"),
                    )
                    Text(
                        text = Sources.statusLabel(source),
                        color = FvpColors.TextSecondary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag("settings_m3u_status_${source.id}"),
                    )
                }
                FvpCheckboxButton(
                    text = SETTINGS_SOURCE_TOGGLE_LABEL,
                    checked = source.enabled,
                    onCheckedChange = { enabled ->
                        lastInteractedId = source.id
                        onToggle(source.id, enabled)
                    },
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(rowFocus)
                        .fvpLongPress { menuFor = source.id }
                        .testTag("settings_m3u_toggle_${source.id}"),
                )
            }
        }
    }

    val menuSource = menuFor?.let { id -> lists.firstOrNull { it.id == id } }
    if (menuSource != null) {
        M3uMoveDialog(
            source = menuSource,
            name = names[menuSource.id] ?: Sources.typeName(menuSource.type),
            canMoveUp = Sources.canMoveM3u(sources, menuSource.id, up = true),
            canMoveDown = Sources.canMoveM3u(sources, menuSource.id, up = false),
            scale = scale,
            onMoveUp = {
                onMoveUp(menuSource.id)
                lastInteractedId = menuSource.id
                menuFor = null
            },
            onMoveDown = {
                onMoveDown(menuSource.id)
                lastInteractedId = menuSource.id
                menuFor = null
            },
            onDismiss = { menuFor = null },
        )
    }
}

/**
 * Menu della pressione lunga: "Sposta su" / "Sposta giù" e "Chiudi". Le voci di
 * spostamento sono disattivate ai bordi del gruppo (prime accese, ultime
 * spente); il focus parte dalla prima voce disponibile.
 */
@Composable
private fun M3uMoveDialog(
    source: Source,
    name: String,
    canMoveUp: Boolean,
    canMoveDown: Boolean,
    scale: UiScale,
    onMoveUp: () -> Unit,
    onMoveDown: () -> Unit,
    onDismiss: () -> Unit,
) {
    val upFocus = remember(source.id) { FocusRequester() }
    val downFocus = remember(source.id) { FocusRequester() }
    val closeFocus = remember(source.id) { FocusRequester() }
    LaunchedEffect(source.id) {
        withFrameNanos { }
        val target = when {
            canMoveUp -> upFocus
            canMoveDown -> downFocus
            else -> closeFocus
        }
        runCatching { target.requestFocus() }
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                // Aperta dalla pressione lunga di OK: il rilascio del tasto ancora
                // premuto non deve attivare la prima voce.
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
                    .testTag("settings_m3u_move_dialog"),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
            ) {
                Text(
                    text = "${source.label} · $name",
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(18f),
                    fontWeight = FontWeight.Bold,
                )
                FvpSecondaryButton(
                    text = SETTINGS_M3U_MOVE_UP,
                    onClick = onMoveUp,
                    scale = scale,
                    enabled = canMoveUp,
                    modifier = Modifier
                        .focusRequester(upFocus)
                        .testTag("settings_m3u_move_up"),
                )
                FvpSecondaryButton(
                    text = SETTINGS_M3U_MOVE_DOWN,
                    onClick = onMoveDown,
                    scale = scale,
                    enabled = canMoveDown,
                    modifier = Modifier
                        .focusRequester(downFocus)
                        .testTag("settings_m3u_move_down"),
                )
                FvpPrimaryButton(
                    text = SETTINGS_M3U_CLOSE,
                    onClick = onDismiss,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(closeFocus)
                        .testTag("settings_m3u_move_close"),
                )
            }
        }
    }
}
