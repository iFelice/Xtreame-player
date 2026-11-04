package it.felixvision.tv.ui.settings.vpn

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.*
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.*
import it.felixvision.tv.ui.settings.SettingsCardDimens
import it.felixvision.tv.ui.settings.vpnStatusLine
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.vpn.*

const val VPN_GUIDE_URL = "https://account.protonvpn.com"

/** TV-only server management. Configuration/crypto/backend work stays in the controller. */
@Composable
internal fun VpnServersPage(
    controller: VpnController,
    scale: UiScale,
    onToggle: () -> Unit,
    onSetup: () -> Unit,
    modifier: Modifier = Modifier,
    configureFocus: FocusRequester? = null,
    entryFocus: FocusRequester? = null,
) {
    val localFocus = remember { FocusRequester() }
    val addFocus = configureFocus ?: localFocus
    LaunchedEffect(Unit) {
        withFrameNanos { }
        (entryFocus ?: addFocus).requestFocus()
    }
    val servers by controller.servers.collectAsState()
    val active by controller.activeId.collectAsState()
    val state by controller.state.collectAsState()
    val trying by controller.tryingServer.collectAsState()
    var removing by remember { mutableStateOf(false) }
    var selected by remember { mutableStateOf(setOf<String>()) }
    var confirm by remember { mutableStateOf(false) }
    var menu by remember { mutableStateOf<VpnServer?>(null) }
    var renaming by remember { mutableStateOf<VpnServer?>(null) }
    var guide by remember { mutableStateOf(false) }
    var limit by remember { mutableStateOf(false) }
    var guideOpened by remember { mutableStateOf(controller.guideShown) }
    fun add() {
        if (servers.size >= VpnStore.MAX_SERVERS) limit = true
        else if (!guideOpened) { guideOpened = true; controller.markGuideShown(); guide = true }
        else onSetup()
    }
    fun backSelection() {
        if (selected.isNotEmpty()) selected = emptySet() else removing = false
    }
    BackHandler(removing) { backSelection() }
    Column(
        modifier.fillMaxSize().onPreviewKeyEvent {
            if (removing && it.key == Key.Back) {
                if (it.type == KeyEventType.KeyUp) backSelection()
                true
            } else false
        }.verticalScroll(rememberScrollState()).padding(scale.dp(24f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text("VPN", color = FvpColors.TextPrimary, fontSize = scale.sp(22f))
        if (servers.isEmpty()) Text("Nessuna configurazione", color = FvpColors.TextSecondary)
        else VpnPageCard(
            text = if (state == VpnState.Off) "Accendi" else "Spegni",
            onClick = onToggle,
            scale = scale,
        )
        servers.forEach { server ->
            var held by remember(server.id) { mutableStateOf(false) }
            val status = if (server.id == active) " · Attivo · ${vpnStatusLine(state)}" else ""
            val attempt = if (state == VpnState.Connecting && trying != null) " · $trying" else ""
            VpnPageCard(
                text = (if (server.id in selected) "✓ " else "") + server.name + status +
                    (if (server.id == active) attempt else ""),
                onClick = {
                    if (!held) {
                        if (removing) selected = if (server.id in selected) selected - server.id else selected + server.id
                        else if (server.id != active) controller.activateServer(server.id)
                    }
                },
                scale = scale,
                modifier = Modifier.onPreviewKeyEvent { event ->
                    val ok = event.key == Key.DirectionCenter || event.key == Key.Enter || event.key == Key.NumPadEnter
                    if (!ok || removing) false
                    else if (event.type == KeyEventType.KeyDown && event.nativeKeyEvent.repeatCount > 0) {
                        if (!held) { held = true; menu = server }
                        true
                    } else if (event.type == KeyEventType.KeyUp && held) { held = false; true }
                    else { if (event.type == KeyEventType.KeyDown) held = false; false }
                },
            )
        }
        VpnPageCard(
            text = "Aggiungi server",
            onClick = { add() },
            scale = scale,
            modifier = Modifier
                .focusRequester(addFocus)
                .then(if (entryFocus != null) Modifier.focusRequester(entryFocus) else Modifier),
        )
        if (servers.isNotEmpty() && !removing) VpnPageCard("Rimuovi server", { removing = true }, scale)
        if (selected.isNotEmpty()) VpnPageCard("Rimuovi selezionati (${selected.size})", { confirm = true }, scale)
        VpnPageCard("Guida", { guideOpened = true; controller.markGuideShown(); guide = true }, scale)
    }
    if (limit) VpnDialog(scale, { limit = false }) { focus ->
        Text(VpnStore.LIMIT_MESSAGE, color = FvpColors.TextPrimary)
        VpnPageCard("Chiudi", { limit = false }, scale, Modifier.focusRequester(focus))
    }
    if (confirm) VpnDialog(scale, { confirm = false }) { focus ->
        Text("Rimuovere ${selected.size} server?", color = FvpColors.TextPrimary)
        VpnPageCard("No", { confirm = false }, scale, Modifier.focusRequester(focus))
        VpnPageCard("Sì", {
            controller.removeServers(selected)
            selected = emptySet(); removing = false; confirm = false
        }, scale)
    }
    menu?.let { server ->
        VpnDialog(scale, { menu = null }) { focus ->
            Text(server.name, color = FvpColors.TextPrimary)
            VpnPageCard("Attiva", { controller.activateServer(server.id); menu = null }, scale, Modifier.focusRequester(focus))
            VpnPageCard("Rinomina", { renaming = server; menu = null }, scale)
        }
    }
    renaming?.let { server ->
        VpnRenameDialog(server.name, scale, { renaming = null }) { name ->
            controller.renameServer(server.id, name)
            renaming = null
        }
    }
    if (guide) VpnGuide(scale, onContinue = {
        guide = false
        if (servers.size >= VpnStore.MAX_SERVERS) limit = true else onSetup()
    }, onClose = { guide = false })
}

/**
 * Tutte le azioni della pagina VPN hanno l'aspetto delle card della griglia
 * Impostazioni: l'interruttore, le righe dei server, Aggiungi/Rimuovi, Guida e
 * i pulsanti dei dialoghi. Le righe dei server sono generate da una lista
 * dinamica, ma usano questo stesso composable: anche i server aggiunti dopo
 * nascono già con l'aspetto a card, senza casi speciali.
 *
 * Solo la grafica cambia: testi, callback, focus, selezione e stato [enabled]
 * restano quelli del chiamante. L'altezza e la larghezza seguono le misure
 * [SettingsCardDimens] usate dalla griglia, passando sempre da [UiScale].
 */
@Composable
private fun VpnPageCard(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    VpnActionCard(
        text = text,
        onClick = onClick,
        scale = scale,
        enabled = enabled,
        modifier = modifier
            .fillMaxWidth()
            .height(scale.dp(SettingsCardDimens.HEIGHT_BASE)),
    )
}

@Composable
internal fun VpnRenameDialog(initialName: String, scale: UiScale, onClose: () -> Unit, onSave: (String) -> Unit) {
    val name = rememberTextFieldState(initialName)
    VpnDialog(scale, onClose) { focus ->
        FvpTextField("Nome server", name, "Nome server", scale, focusRequester = focus, openKeyboardOnOk = true,
            fieldTag = "vpn_server_name")
        VpnPageCard("Salva", { onSave(name.text.toString().trim()) }, scale,
            enabled = name.text.toString().trim().length in 1..30)
    }
}

@Composable
private fun VpnDialog(scale: UiScale, onClose: () -> Unit, content: @Composable ColumnScope.(FocusRequester) -> Unit) {
    val focus = remember { FocusRequester() }
    Dialog(onDismissRequest = onClose, properties = DialogProperties(usePlatformDefaultWidth = false)) {
        BackHandler { onClose() }
        LaunchedEffect(Unit) { withFrameNanos { }; focus.requestFocus() }
        Column(Modifier.fillMaxWidth(0.9f).ignoreHeldOkUntilReleased().onPreviewKeyEvent {
            if (it.key == Key.Back) {
                if (it.type == KeyEventType.KeyUp) onClose()
                true
            } else false
        }.background(FvpColors.Surface, RoundedCornerShape(scale.dp(12f))).padding(scale.dp(24f)),
            verticalArrangement = Arrangement.spacedBy(scale.dp(12f))) { content(focus) }
    }
}

@Composable
internal fun VpnGuide(scale: UiScale, onContinue: () -> Unit, onClose: () -> Unit) {
    VpnDialog(scale, onClose) { focus ->
        Text("Come aggiungere un server VPN", color = FvpColors.TextPrimary, fontSize = scale.sp(22f))
        Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(20f))) {
            Column(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(scale.dp(10f))) {
                listOf(
                    "Sul telefono inquadra il QR qui a destra e accedi al tuo account Proton VPN (va bene anche quello gratuito).",
                    "Apri Downloads, poi WireGuard configuration.",
                    "Dai un nome alla configurazione, scegli Android come piattaforma e un server, se il tuo piano lo consente. Premi Create, poi Download: il telefono salva un file .conf.",
                    "Premi Continua: sulla TV compare un secondo QR. Inquadralo con il telefono e scegli il file .conf appena scaricato.",
                ).forEachIndexed { i, text -> Text("${i + 1}. $text", color = FvpColors.TextPrimary, fontSize = scale.sp(15f)) }
                Text("Il piano gratuito di Proton consente una connessione alla volta: se la VPN è accesa anche su un altro dispositivo con lo stesso account, una delle due si interrompe.", color = FvpColors.TextSecondary, fontSize = scale.sp(14f))
            }
            VpnQrImage(VPN_GUIDE_URL, scale)
        }
        VpnPageCard("Continua", onContinue, scale, Modifier.focusRequester(focus))
        VpnPageCard("Chiudi", onClose, scale)
    }
}
