package it.felixvision.tv.ui.settings.protection

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
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
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentRules
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedEntryKey
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedPageAccess
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpPasswordField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.focusSafePadding
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.rowSpacing
import it.felixvision.tv.ui.theme.rowText
import it.felixvision.tv.ui.theme.settingsRowText
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/** Etichetta breve di un tipo di contenuto negli elenchi. */
internal fun protectedKindLabel(kind: ProtectedKind): String = when (kind) {
    ProtectedKind.LIVE -> "Live"
    ProtectedKind.VOD -> "Film"
    ProtectedKind.SERIES -> "Serie"
}

/** Tipo a partire dalla chiave salvata negli elenchi; null se sconosciuta. */
internal fun protectedKindFromStorageKey(key: String): ProtectedKind? =
    ProtectedKind.entries.firstOrNull { it.storageKey == key }

/** Tag del pulsante di rimozione multipla e della sua finestra di conferma. */
internal const val PROTECTED_REMOVE_SELECTED_TAG = "protected_remove_selected"
internal const val PROTECTED_REMOVE_DIALOG_TAG = "protected_remove_dialog"
internal const val PROTECTED_REMOVE_TEXT_TAG = "protected_remove_dialog_text"
internal const val PROTECTED_REMOVE_YES_TAG = "protected_remove_yes"
internal const val PROTECTED_REMOVE_NO_TAG = "protected_remove_no"

/** Testo del pulsante e della domanda di conferma, con il numero di voci. */
internal fun removeSelectedLabel(count: Int): String = "Rimuovi selezionati ($count)"
internal fun removeConfirmationText(count: Int): String =
    "Rimuovere $count elementi dai contenuti protetti?"

/**
 * Decisione dell'interruttore Mostra/Nascondi: [onUnlock] è il solo punto in
 * cui la pagina chiama `session.unlock()`, ed è raggiungibile SOLO con
 * un'autorizzazione valida. Senza autorizzazione si torna alla verifica del
 * PIN: il riblocco della sessione (ON_STOP, ACTION_SCREEN_OFF) non può essere
 * aggirato premendo "Mostra". [onLock] ("Nascondi") non revoca l'autorizzazione.
 */
internal fun handleProtectedVisibilityToggle(
    authorized: Boolean,
    unlocked: Boolean,
    onUnlock: () -> Unit,
    onLock: () -> Unit,
    onUnauthorized: () -> Unit,
) {
    when {
        !authorized -> onUnauthorized()
        unlocked -> onLock()
        else -> onUnlock()
    }
}

/** Pagine della schermata; la prima della pila è la radice. */
internal sealed interface ProtectedPage {
    data object Main : ProtectedPage
    data object CreatePin : ProtectedPage
    data object ConfirmPin : ProtectedPage
    data object VerifyPin : ProtectedPage
    data object ForgotPin : ProtectedPage
    data object AddKind : ProtectedPage
    data class AddCategories(val kind: ProtectedKind) : ProtectedPage
    data class AddItems(
        val kind: ProtectedKind,
        val categoryId: String,
        val categoryName: String,
    ) : ProtectedPage
}

/** Da quale flusso arriva la creazione del PIN: decide dove si torna dopo il salvataggio. */
internal enum class CreateOrigin { Initial, Change, ForgotBackToVerify, ForgotBackToMain }

/**
 * Pagina "Contenuti protetti" delle Impostazioni: sostituisce il contenuto
 * delle Impostazioni finché è aperta.
 *
 * Livelli: CREA PIN (se il PIN non esiste, con conferma e "I PIN non
 * coincidono"), VERIFICA PIN (se il PIN esiste e la sessione è bloccata;
 * errore "PIN errato", blocco di 30 s dopo 5 tentativi sbagliati consecutivi
 * con tastierino spento e messaggio "Troppi tentativi: riprova tra N s",
 * pulsante "PIN dimenticato" sotto il tastierino), PIN DIMENTICATO (password
 * del provider per scegliere un nuovo PIN, elenchi nascosti conservati) e
 * pagina principale con interruttore "Mostra/Nascondi contenuti protetti",
 * "Aggiungi", "Cambia PIN" ed elenco "Nascosti".
 *
 * L'interruttore cambia SOLO lo stato di sessione [ProtectedSession]: non
 * sblocca mai i contenuti senza un'autorizzazione valida ([ProtectedPageAccess]
 * concessa dal PIN per la sola visita in corso). Entrare nella pagina non
 * sblocca i contenuti. Indietro torna al livello precedente; con una selezione
 * attiva azzera la selezione senza uscire; dalla radice torna alle
 * Impostazioni ([onExit]) e revoca l'autorizzazione. PIN e password non sono
 * mai mostrati né scritti nei log.
 *
 * Nell'elenco "Nascosti" OK seleziona/deseleziona una riga: la rimozione
 * avviene solo dopo l'unica conferma "Rimuovere N elementi..." e con una sola
 * scrittura sull'archivio. La selezione non è persistita e si azzera uscendo
 * dalla pagina o quando l'autorizzazione viene revocata (ON_STOP,
 * ACTION_SCREEN_OFF).
 *
 * Nel flusso "Aggiungi" l'ultima voce aperta resta memorizzata per tutta la
 * durata della schermata: tornando indietro da una categoria, l'elenco delle
 * categorie riparte da quella riga (scorrimento compreso) e la scelta del tipo
 * dal tipo usato, invece che dall'inizio.
 */
@Composable
fun ProtectedContentScreen(
    store: ProtectedContentStore,
    session: ProtectedSession,
    access: ProtectedPageAccess,
    credentialStore: CredentialStore,
    clock: Clock,
    server: String,
    username: String,
    catalog: Catalog?,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onExit: () -> Unit = {},
) {
    val scope = rememberCoroutineScope()
    val revision by store.revision.collectAsState()
    var data by remember { mutableStateOf<ProtectedContentData?>(null) }
    LaunchedEffect(revision, server, username) {
        data = store.get(server, username)
    }

    val unlocked by session.unlocked.collectAsState()
    val authorized by access.authorized.collectAsState()

    val stack = remember { mutableStateListOf<ProtectedPage>() }
    // Selezione solo della schermata: non salvata, azzerata all'uscita.
    val selected = remember { mutableStateListOf<ProtectedEntryKey>() }
    var showRemoveConfirm by remember { mutableStateOf(false) }
    var firstPin by remember { mutableStateOf<String?>(null) }
    var pinError by remember { mutableStateOf<String?>(null) }
    var createOrigin by remember { mutableStateOf(CreateOrigin.Initial) }

    // Ultima voce aperta nel flusso "Aggiungi", conservata per tutta la durata
    // della schermata: tornando indietro da una categoria si riparte dal tipo
    // scelto e da quella riga, non dall'inizio dell'elenco.
    var lastKind by remember { mutableStateOf<ProtectedKind?>(null) }
    // Per ogni tipo, l'ultima categoria aperta e lo scorrimento della sua lista.
    // Le mappe sono di stato: il focus e la posizione letti in composizione
    // seguono l'aggiornamento.
    val lastCategoryByKind = remember { mutableStateMapOf<ProtectedKind, String>() }
    val categoryListStates = remember {
        mutableStateMapOf<ProtectedKind, LazyListState>()
    }

    fun replaceTop(pageToSelect: ProtectedPage) {
        if (stack.isEmpty()) stack.add(pageToSelect) else stack[stack.lastIndex] = pageToSelect
    }
    fun goToRoot(pageToSelect: ProtectedPage) {
        stack.clear()
        stack.add(pageToSelect)
    }
    fun toggleSelection(key: ProtectedEntryKey) {
        val index = selected.indexOf(key)
        if (index >= 0) selected.removeAt(index) else selected.add(key)
    }
    fun clearSelection() {
        selected.clear()
        showRemoveConfirm = false
    }
    fun returnToPinPage() {
        clearSelection()
        goToRoot(if (data?.hasPin == true) ProtectedPage.VerifyPin else ProtectedPage.CreatePin)
    }

    val page = stack.lastOrNull()

    // La pagina iniziale dipende dall'archivio E dall'autorizzazione: senza PIN
    // si crea, con PIN ma senza autorizzazione si verifica (a ogni nuova visita,
    // anche se la sessione è ancora sbloccata), altrimenti si apre la pagina
    // principale.
    LaunchedEffect(data) {
        val current = data ?: return@LaunchedEffect
        if (stack.isEmpty()) {
            stack.add(
                when {
                    !current.hasPin -> {
                        createOrigin = CreateOrigin.Initial
                        ProtectedPage.CreatePin
                    }
                    !authorized -> ProtectedPage.VerifyPin
                    else -> ProtectedPage.Main
                },
            )
        }
    }

    // Solo una REVOCA mentre la pagina è aperta (ON_STOP / ACTION_SCREEN_OFF,
    // gli stessi eventi che ribloccano la sessione) riporta alla verifica del
    // PIN e azzera la selezione: vale per la pagina principale, il flusso
    // Aggiungi, la selezione e la finestra di conferma. Il semplice stato
    // iniziale "non autorizzato" non è una revoca e non disturba la creazione
    // del PIN.
    var previousAuthorized by remember { mutableStateOf<Boolean?>(null) }
    LaunchedEffect(authorized) {
        val previous = previousAuthorized
        previousAuthorized = authorized
        if (previous == true && !authorized && stack.isNotEmpty()) {
            clearSelection()
            goToRoot(if (data?.hasPin == true) ProtectedPage.VerifyPin else ProtectedPage.CreatePin)
        }
    }

    // Uscire dalla pagina (in qualunque modo) chiude la visita autorizzata:
    // al rientro serve di nuovo il PIN. ON_STOP e ACTION_SCREEN_OFF revocano
    // lo stesso stato in FvpMainScreen.
    DisposableEffect(Unit) {
        onDispose { access.revoke() }
    }

    BackHandler {
        when {
            // Indietro nella conferma: si chiude senza modifiche, selezione
            // conservata (il dialog ha anche onPreviewKeyEvent + BackHandler).
            showRemoveConfirm -> showRemoveConfirm = false
            // Indietro sulla pagina principale con una selezione: si azzera e
            // non si esce.
            page == ProtectedPage.Main && selected.isNotEmpty() -> selected.clear()
            stack.size > 1 -> stack.removeAt(stack.lastIndex)
            else -> {
                clearSelection()
                access.revoke()
                onExit()
            }
        }
    }

    // Il focus iniziale della pagina principale va sul primo pulsante; le
    // pagine PIN ricevono il focus sul "1" dentro [PinEntry].
    val mainFirstFocus = remember { FocusRequester() }
    LaunchedEffect(page) {
        if (page == ProtectedPage.Main) {
            withFrameNanos { }
            runCatching { mainFirstFocus.requestFocus() }
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(16f)),
    ) {
        when (page) {
            null -> Unit

            ProtectedPage.Main -> ProtectedMainPage(
                data = data,
                unlocked = unlocked,
                scale = scale,
                firstFocus = mainFirstFocus,
                selected = selected,
                onToggleSelection = { key -> toggleSelection(key) },
                onRemoveSelected = { showRemoveConfirm = true },
                onToggleVisibility = {
                    // L'interruttore non può MAI sbloccare senza autorizzazione:
                    // onUnlock è l'unico punto che chiama session.unlock().
                    // "Nascondi" (onLock) non revoca l'autorizzazione.
                    handleProtectedVisibilityToggle(
                        authorized = authorized,
                        unlocked = unlocked,
                        onUnlock = { session.unlock() },
                        onLock = { session.lock() },
                        onUnauthorized = { returnToPinPage() },
                    )
                },
                onAdd = {
                    pinError = null
                    stack.add(ProtectedPage.AddKind)
                },
                onChangePin = {
                    pinError = null
                    stack.add(ProtectedPage.VerifyPin)
                },
            )

            ProtectedPage.CreatePin -> PinEntry(
                title = "Crea il PIN",
                scale = scale,
                errorMessage = pinError,
                modifier = Modifier.align(Alignment.TopCenter),
                onConfirm = { pin ->
                    firstPin = pin
                    pinError = null
                    replaceTop(ProtectedPage.ConfirmPin)
                },
            )

            ProtectedPage.ConfirmPin -> PinEntry(
                title = "Conferma il PIN",
                scale = scale,
                errorMessage = pinError,
                modifier = Modifier.align(Alignment.TopCenter),
                onConfirm = { pin ->
                    if (pin != firstPin) {
                        pinError = "I PIN non coincidono"
                        firstPin = null
                        replaceTop(ProtectedPage.CreatePin)
                    } else {
                        val returnTo = when (createOrigin) {
                            CreateOrigin.ForgotBackToVerify -> ProtectedPage.VerifyPin
                            else -> ProtectedPage.Main
                        }
                        scope.launch {
                            store.setPin(server, username, pin)
                            firstPin = null
                            pinError = null
                            // Il PIN appena creato autorizza la visita corrente,
                            // salvo il recupero che rimanda alla verifica del
                            // nuovo PIN: lì autorizza onVerified.
                            if (returnTo == ProtectedPage.Main) access.grant()
                            goToRoot(returnTo)
                        }
                    }
                },
            )

            ProtectedPage.VerifyPin -> ProtectedVerifyPage(
                store = store,
                session = session,
                clock = clock,
                server = server,
                username = username,
                scope = scope,
                scale = scale,
                errorMessage = pinError,
                onMessage = { pinError = it },
                onVerified = {
                    pinError = null
                    // Il PIN verificato autorizza SOLO la visita in corso.
                    access.grant()
                    if (stack.size > 1) {
                        // Verifica richiesta da "Cambia PIN": si crea il nuovo PIN.
                        createOrigin = CreateOrigin.Change
                        replaceTop(ProtectedPage.CreatePin)
                    } else {
                        goToRoot(ProtectedPage.Main)
                    }
                },
                onForgot = {
                    pinError = null
                    stack.add(ProtectedPage.ForgotPin)
                },
            )

            ProtectedPage.ForgotPin -> ProtectedForgotPage(
                credentialStore = credentialStore,
                scope = scope,
                scale = scale,
                errorMessage = pinError,
                onError = { pinError = it },
                onPasswordAccepted = {
                    pinError = null
                    // Se la radice della pila è ancora la verifica (pila corta)
                    // dopo il reset serve il nuovo PIN; dalla pagina principale
                    // si torna alla pagina principale.
                    createOrigin = if (stack.size == 2) {
                        CreateOrigin.ForgotBackToVerify
                    } else {
                        CreateOrigin.ForgotBackToMain
                    }
                    replaceTop(ProtectedPage.CreatePin)
                },
            )

            ProtectedPage.AddKind -> ProtectedAddKindPage(
                scale = scale,
                restoreKind = lastKind,
                onSelectKind = { kind ->
                    pinError = null
                    lastKind = kind
                    stack.add(ProtectedPage.AddCategories(kind))
                },
            )

            is ProtectedPage.AddCategories -> ProtectedAddCategoriesPage(
                catalog = catalog,
                data = data ?: ProtectedContentData(),
                kind = page.kind,
                scale = scale,
                restoreCategoryId = lastCategoryByKind[page.kind],
                listState = categoryListStates.getOrPut(page.kind) { LazyListState() },
                onOpenCategory = { categoryId, categoryName ->
                    lastCategoryByKind[page.kind] = categoryId
                    stack.add(ProtectedPage.AddItems(page.kind, categoryId, categoryName))
                },
            )

            is ProtectedPage.AddItems -> ProtectedAddItemsPage(
                catalog = catalog,
                data = data ?: ProtectedContentData(),
                kind = page.kind,
                categoryId = page.categoryId,
                categoryName = page.categoryName,
                scale = scale,
                onToggleCategory = {
                    scope.launch {
                        store.toggleCategory(
                            server = server,
                            username = username,
                            kind = page.kind,
                            categoryId = page.categoryId,
                            name = page.categoryName,
                        )
                    }
                },
                onToggleItem = { itemId, name ->
                    scope.launch {
                        store.toggleItem(
                            server = server,
                            username = username,
                            kind = page.kind,
                            itemId = itemId,
                            categoryId = page.categoryId,
                            name = name,
                        )
                    }
                },
            )
        }

        // Una sola finestra di conferma per l'intera selezione: "Sì" scrive
        // l'archivio una sola volta, "No" e Indietro non modificano nulla.
        if (showRemoveConfirm && authorized && page == ProtectedPage.Main && selected.isNotEmpty()) {
            ProtectedRemoveConfirmDialog(
                count = selected.size,
                scale = scale,
                onYes = {
                    val keys = selected.toList()
                    clearSelection()
                    scope.launch { store.removeSelected(server, username, keys) }
                },
                onNo = { showRemoveConfirm = false },
            )
        }
    }
}

/**
 * Unica finestra di conferma della rimozione multipla: focus iniziale su "No".
 * Indietro chiude senza modifiche: `onPreviewKeyEvent(Key.Back)` sulla radice
 * consuma KeyDown e agisce su KeyUp, con [BackHandler] come riserva quando il
 * focus è uscito dalla finestra.
 */
@Composable
private fun ProtectedRemoveConfirmDialog(
    count: Int,
    scale: UiScale,
    onYes: () -> Unit,
    onNo: () -> Unit,
) {
    // FocusRequester sempre dentro remember: focus iniziale sul "No" (sicuro).
    // Nessun withFrameNanos qui: dentro un Dialog la sotto-composizione non
    // riceve un frame in una schermata statica e la richiesta resterebbe
    // sospesa. Come nelle altre finestre dell'app si chiede il focus subito.
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
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .onPreviewKeyEvent { event ->
                    if (event.key != Key.Back) return@onPreviewKeyEvent false
                    when (event.type) {
                        KeyEventType.KeyDown -> true
                        KeyEventType.KeyUp -> {
                            onNo()
                            true
                        }
                        else -> false
                    }
                }
                .testTag(PROTECTED_REMOVE_DIALOG_TAG),
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
                    text = removeConfirmationText(count),
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(18f),
                    fontWeight = FontWeight.SemiBold,
                    modifier = Modifier.testTag(PROTECTED_REMOVE_TEXT_TAG),
                )
                // "No" è il primo pulsante: è la scelta sicura e riceve il
                // focus iniziale anche quando la finestra lo assegna da sola.
                Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                    FvpCompactButton(
                        text = "No",
                        onClick = onNo,
                        scale = scale,
                        modifier = Modifier
                            .focusRequester(noFocus)
                            .testTag(PROTECTED_REMOVE_NO_TAG),
                    )
                    FvpCompactButton(
                        text = "Sì",
                        onClick = onYes,
                        scale = scale,
                        modifier = Modifier.testTag(PROTECTED_REMOVE_YES_TAG),
                    )
                }
            }
        }
    }
}

/**
 * Pagina principale: interruttore di visibilità, gestione PIN, pulsante di
 * rimozione multipla (solo con una selezione) ed elenco "Nascosti". OK su una
 * riga la seleziona o la deseleziona con il segno di spunta: NON rimuove nulla.
 */
@Composable
private fun ProtectedMainPage(
    data: ProtectedContentData?,
    unlocked: Boolean,
    scale: UiScale,
    firstFocus: FocusRequester,
    selected: List<ProtectedEntryKey>,
    onToggleSelection: (ProtectedEntryKey) -> Unit,
    onRemoveSelected: () -> Unit,
    onToggleVisibility: () -> Unit,
    onAdd: () -> Unit,
    onChangePin: () -> Unit,
) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text(
            text = "Contenuti protetti",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(22f),
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag("protected_title"),
        )
        Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(8f))) {
            FvpCompactButton(
                text = if (unlocked) "Nascondi contenuti protetti" else "Mostra contenuti protetti",
                onClick = onToggleVisibility,
                scale = scale,
                modifier = Modifier
                    .focusRequester(firstFocus)
                    .testTag("protected_toggle_visibility"),
            )
            FvpCompactButton(
                text = "Aggiungi",
                onClick = onAdd,
                scale = scale,
                modifier = Modifier.testTag("protected_add"),
            )
            FvpCompactButton(
                text = "Cambia PIN",
                onClick = onChangePin,
                scale = scale,
                modifier = Modifier.testTag("protected_change_pin"),
            )
            // Compare solo con almeno una riga selezionata: una sola finestra
            // di conferma per tutte le voci.
            if (selected.isNotEmpty()) {
                FvpCompactButton(
                    text = removeSelectedLabel(selected.size),
                    onClick = onRemoveSelected,
                    scale = scale,
                    modifier = Modifier.testTag(PROTECTED_REMOVE_SELECTED_TAG),
                )
            }
        }
        Text(
            text = "Nascosti",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(16f),
            fontWeight = FontWeight.SemiBold,
        )
        val hiddenCategories = data?.hiddenCategories.orEmpty()
        val hiddenItems = data?.hiddenItems.orEmpty()
        if (hiddenCategories.isEmpty() && hiddenItems.isEmpty()) {
            Text(
                text = "Nessun contenuto nascosto",
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag("protected_hidden_empty"),
            )
        } else {
            LazyColumn(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                contentPadding = PaddingValues(scale.focusSafePadding),
            ) {
                items(hiddenCategories, key = { "hidden_cat_${it.kind}_${it.categoryId}" }) { hidden ->
                    val kind = protectedKindFromStorageKey(hidden.kind)
                    if (kind != null) {
                        val key = ProtectedEntryKey(kind, hidden.categoryId, isCategory = true)
                        val checked = key in selected
                        ProtectionRow(
                            headline = (if (checked) CHECK_PREFIX else "") +
                                "Categoria · ${protectedKindLabel(kind)} · ${hidden.name}",
                            onClick = { onToggleSelection(key) },
                            scale = scale,
                            modifier = Modifier.testTag(
                                "protected_hidden_cat_${hidden.kind}_${hidden.categoryId}",
                            ),
                        )
                    }
                }
                items(hiddenItems, key = { "hidden_item_${it.kind}_${it.itemId}" }) { hidden ->
                    val kind = protectedKindFromStorageKey(hidden.kind)
                    if (kind != null) {
                        val key = ProtectedEntryKey(kind, hidden.itemId, isCategory = false)
                        val checked = key in selected
                        ProtectionRow(
                            headline = (if (checked) CHECK_PREFIX else "") +
                                "${protectedKindLabel(kind)} · ${hidden.name}",
                            onClick = { onToggleSelection(key) },
                            scale = scale,
                            modifier = Modifier.testTag(
                                "protected_hidden_item_${hidden.kind}_${hidden.itemId}",
                            ),
                        )
                    }
                }
            }
        }
    }
}

/** VERIFICA PIN: tastierino, blocco con conto alla rovescia dopo 5 errori, "PIN dimenticato". */
@Composable
private fun ProtectedVerifyPage(
    store: ProtectedContentStore,
    session: ProtectedSession,
    clock: Clock,
    server: String,
    username: String,
    scope: CoroutineScope,
    scale: UiScale,
    errorMessage: String?,
    onMessage: (String?) -> Unit,
    onVerified: () -> Unit,
    onForgot: () -> Unit,
) {
    var lockSecondsLeft by remember { mutableLongStateOf(0L) }
    var lockTick by remember { mutableIntStateOf(0) }
    LaunchedEffect(lockTick) {
        while (true) {
            val until = session.lockedUntilMillis() ?: break
            lockSecondsLeft = ((until - clock.nowMillis() + 999L) / 1000L).coerceAtLeast(1L)
            delay(1_000)
        }
        if (session.lockedUntilMillis() == null) lockSecondsLeft = 0L
    }
    val locked = lockSecondsLeft > 0L || session.isLocked()

    Column(
        modifier = Modifier.fillMaxWidth(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
    ) {
        PinEntry(
            title = "Inserisci il PIN",
            scale = scale,
            enabled = !locked,
            errorMessage = if (locked) "Troppi tentativi: riprova tra $lockSecondsLeft s" else errorMessage,
            onConfirm = { pin ->
                if (!session.isLocked()) {
                    scope.launch {
                        // La verifica apre la pagina di gestione: NON sblocca
                        // i contenuti, che restano comandati dall'interruttore.
                        val ok = store.verifyPin(server, username, pin)
                        if (ok) {
                            session.registerSuccess()
                            onVerified()
                        } else {
                            session.registerFailure()
                            lockTick += 1
                            onMessage("PIN errato")
                        }
                    }
                }
            },
        )
        FvpCompactButton(
            text = "PIN dimenticato",
            onClick = onForgot,
            scale = scale,
            modifier = Modifier.testTag("protected_forgot_pin"),
        )
    }
}

/**
 * PIN DIMENTICATO: la password del provider (mai mostrata né scritta nei log)
 * permette di scegliere un nuovo PIN conservando gli elenchi nascosti. Un solo
 * campo, con le stesse convenzioni del login: tastiera aperta da OK, "Fine"
 * che la chiude, focus iniziale sul campo.
 */
@Composable
private fun ProtectedForgotPage(
    credentialStore: CredentialStore,
    scope: CoroutineScope,
    scale: UiScale,
    errorMessage: String?,
    onError: (String) -> Unit,
    onPasswordAccepted: () -> Unit,
) {
    val passwordState = rememberTextFieldState()
    val passwordFieldFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { passwordFieldFocus.requestFocus() }
    }
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text(
            text = "PIN dimenticato",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = "Inserisci la password del provider per scegliere un nuovo PIN.",
            color = FvpColors.TextSecondary,
            fontSize = scale.settingsRowText,
        )
        FvpPasswordField(
            label = "Password del provider",
            state = passwordState,
            placeholder = "Password",
            visible = false,
            scale = scale,
            focusRequester = passwordFieldFocus,
            // "Fine" chiude la tastiera e lascia il focus sulla password.
            imeAction = ImeAction.Done,
            openKeyboardOnOk = true,
            fieldTag = "forgot_password_field",
        )
        if (errorMessage != null) {
            Text(
                text = errorMessage,
                color = FvpColors.Error,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag(PIN_ERROR_TAG),
            )
        }
        FvpCompactButton(
            text = "Conferma",
            onClick = {
                val password = passwordState.text.toString()
                if (password.isBlank()) {
                    onError("Password errata")
                } else {
                    scope.launch {
                        val stored = runCatching { credentialStore.load() }.getOrNull()
                        if (stored != null && stored.password == password) {
                            onPasswordAccepted()
                        } else {
                            onError("Password errata")
                        }
                    }
                }
            },
            scale = scale,
            modifier = Modifier.testTag("forgot_submit"),
        )
    }
}

/**
 * AGGIUNGI · scelta del tipo di catalogo (Live, Film, Serie).
 *
 * [restoreKind] è il tipo scelto l'ultima volta: al ritorno da un elenco il
 * focus va su quella riga, altrimenti sulla prima. Ogni riga ha il proprio
 * [FocusRequester], creato una volta per tipo con [remember].
 */
@Composable
private fun ProtectedAddKindPage(
    scale: UiScale,
    restoreKind: ProtectedKind?,
    onSelectKind: (ProtectedKind) -> Unit,
) {
    val kindFocuses = remember {
        ProtectedKind.entries.associateWith { FocusRequester() }
    }
    val focusTarget = restoreKind ?: ProtectedKind.entries.first()
    LaunchedEffect(focusTarget) {
        withFrameNanos { }
        runCatching { kindFocuses[focusTarget]?.requestFocus() }
    }
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
    ) {
        Text(
            text = "Aggiungi · cosa vuoi nascondere?",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
        )
        ProtectedKind.entries.forEach { kind ->
            val kindFocus = kindFocuses[kind]
            ProtectionRow(
                headline = protectedKindLabel(kind),
                onClick = { onSelectKind(kind) },
                scale = scale,
                modifier = Modifier
                    .then(if (kindFocus != null) Modifier.focusRequester(kindFocus) else Modifier)
                    .testTag("protected_kind_${kind.storageKey}"),
            )
        }
    }
}

/**
 * AGGIUNGI · categorie del tipo scelto, con "nascosta" o "N nascosti" a destra.
 *
 * [restoreCategoryId] è la categoria aperta l'ultima volta e [listState] lo
 * scorrimento conservato per il tipo: all'apertura la lista torna sulla riga
 * e il focus va lì; se la categoria non è più nel catalogo si riparte dalla
 * prima riga. Ogni riga ha il proprio [FocusRequester], creato per categoria
 * con [remember] sulla lista corrente.
 */
@Composable
internal fun ProtectedAddCategoriesPage(
    catalog: Catalog?,
    data: ProtectedContentData,
    kind: ProtectedKind,
    scale: UiScale,
    restoreCategoryId: String?,
    listState: LazyListState,
    onOpenCategory: (categoryId: String, categoryName: String) -> Unit,
) {
    val categories = categoriesForKind(catalog, kind)
    val categoryFocuses = remember(categories) {
        categories.associate { it.categoryId to FocusRequester() }
    }
    val restoreIndex = categories.indexOfFirst { it.categoryId == restoreCategoryId }
    val restoreAvailable = restoreIndex >= 0
    val focusTarget = if (restoreAvailable) restoreCategoryId else categories.firstOrNull()?.categoryId
    LaunchedEffect(focusTarget, categories, restoreAvailable) {
        if (focusTarget == null) return@LaunchedEffect
        // Riga di partenza: quella aperta l'ultima volta se è ancora nel
        // catalogo, altrimenti la cima dell'elenco come all'apertura. Lo
        // scorrimento viene prima del focus: senza, una riga lontana non
        // sarebbe composta e il focus non potrebbe andarci.
        listState.scrollToItem(if (restoreAvailable) restoreIndex else 0)
        withFrameNanos { }
        runCatching { categoryFocuses[focusTarget]?.requestFocus() }
    }
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        Text(
            text = "Aggiungi · ${protectedKindLabel(kind)}",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
        )
        if (categories.isEmpty()) {
            Text(
                text = "Nessuna categoria disponibile",
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag("protected_no_categories"),
            )
        } else {
            LazyColumn(
                state = listState,
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
                contentPadding = PaddingValues(scale.focusSafePadding),
            ) {
                itemsIndexed(
                    categories,
                    key = { _, category -> "cat_${category.categoryId}" },
                ) { _, category ->
                    val categoryId = category.categoryId
                    val categoryName = category.categoryName ?: "Senza nome"
                    val hidden = ProtectedContentRules.isCategoryHidden(data, kind, categoryId)
                    val hiddenItems = ProtectedContentRules.hiddenCountInCategory(data, kind, categoryId)
                    val categoryFocus = categoryFocuses[categoryId]
                    ProtectionRow(
                        headline = categoryName,
                        trailing = when {
                            hidden -> "nascosta"
                            hiddenItems > 0 -> "$hiddenItems nascosti"
                            else -> null
                        },
                        onClick = { onOpenCategory(categoryId, categoryName) },
                        scale = scale,
                        modifier = Modifier
                            .then(
                                if (categoryFocus != null) {
                                    Modifier.focusRequester(categoryFocus)
                                } else {
                                    Modifier
                                },
                            )
                            .testTag("protected_catrow_${kind.storageKey}_$categoryId"),
                    )
                }
            }
        }
    }
}

/**
 * AGGIUNGI · categoria aperta: prima riga "Tutta la categoria" (con "✓ " se
 * nascosta), poi i contenuti della categoria nell'ordine del catalogo, ognuno
 * con "✓ " se nascosto. OK cambia subito lo stato e il focus resta sulla riga.
 */
@Composable
private fun ProtectedAddItemsPage(
    catalog: Catalog?,
    data: ProtectedContentData,
    kind: ProtectedKind,
    categoryId: String,
    categoryName: String,
    scale: UiScale,
    onToggleCategory: () -> Unit,
    onToggleItem: (itemId: String, name: String) -> Unit,
) {
    val protectableItems = itemsForCategory(catalog, kind, categoryId)
    val firstFocus = remember { FocusRequester() }
    LaunchedEffect(kind, categoryId) {
        withFrameNanos { }
        runCatching { firstFocus.requestFocus() }
    }
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
    ) {
        Text(
            text = "${protectedKindLabel(kind)} · $categoryName",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        LazyColumn(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f),
            verticalArrangement = Arrangement.spacedBy(scale.rowSpacing),
            contentPadding = PaddingValues(scale.focusSafePadding),
        ) {
            item(key = "all_category") {
                val categoryHidden = ProtectedContentRules.isCategoryHidden(data, kind, categoryId)
                ProtectionRow(
                    headline = if (categoryHidden) {
                        "$CHECK_PREFIX$ALL_CATEGORY_LABEL"
                    } else {
                        ALL_CATEGORY_LABEL
                    },
                    onClick = onToggleCategory,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(firstFocus)
                        .testTag("protected_all_category"),
                )
            }
            items(protectableItems, key = { "item_${it.itemId}" }) { item ->
                val itemHidden = data.hiddenItems.any {
                    it.kind == kind.storageKey && it.itemId == item.itemId
                }
                ProtectionRow(
                    headline = if (itemHidden) "$CHECK_PREFIX${item.name}" else item.name,
                    onClick = { onToggleItem(item.itemId, item.name) },
                    scale = scale,
                    modifier = Modifier.testTag("protected_itemrow_${kind.storageKey}_${item.itemId}"),
                )
            }
        }
    }
}

private const val ALL_CATEGORY_LABEL = "Tutta la categoria"
private const val CHECK_PREFIX = "✓ "

/** Una riga degli elenchi, come le liste dell'app: DenseListItem con bordo GreenFocus. */
@Composable
private fun ProtectionRow(
    headline: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
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
            focusedSelectedContainerColor = FvpColors.SurfaceElevated,
            focusedSelectedContentColor = FvpColors.TextPrimary,
        ),
        scale = ListItemDefaults.scale(focusedScale = 1.03f),
        border = ListItemDefaults.border(
            focusedBorder = Border(BorderStroke(2.dp, FvpColors.GreenFocus)),
        ),
        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
    )
}

/** Id e nome di un contenuto nascondibile, nell'ordine del catalogo. */
internal class ProtectableItem(val itemId: String, val name: String)

/**
 * Categorie del tipo scelto senza doppioni: un `category_id` ripetuto dal
 * provider resterebbe una chiave duplicata nella LazyColumn e la farrebbe
 * crashare. Vale la prima comparsa, l'ordine del catalogo è conservato.
 */
internal fun categoriesForKind(catalog: Catalog?, kind: ProtectedKind): List<Category> =
    when (kind) {
        ProtectedKind.LIVE -> catalog?.liveCategories
        ProtectedKind.VOD -> catalog?.vodCategories
        ProtectedKind.SERIES -> catalog?.seriesCategories
    }.orEmpty().distinctBy { it.categoryId }

/**
 * Contenuti di una categoria nell'ordine del catalogo, senza doppioni sul
 * loro id (stesso motivo della lista categorie: chiavi lazy uniche).
 *
 * Vale l'appartenenza (`category_id` + `category_ids`): un contenuto che il
 * provider assegna a più categorie compare nell'elenco di ognuna, così lo si
 * può nascondere partendo da quella che si sta guardando. `distinctBy` tiene
 * una sola voce anche quando lo stesso id è raggiunto da più categorie.
 */
internal fun itemsForCategory(
    catalog: Catalog?,
    kind: ProtectedKind,
    categoryId: String,
): List<ProtectableItem> = when (kind) {
    ProtectedKind.LIVE -> catalog?.liveStreams.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { ProtectableItem(itemId = it.streamId, name = it.name) }
    ProtectedKind.VOD -> catalog?.vodStreams.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { ProtectableItem(itemId = it.streamId, name = it.name) }
    ProtectedKind.SERIES -> catalog?.series.orEmpty()
        .filter { categoryId in it.allCategoryIds }
        .map { ProtectableItem(itemId = it.seriesId, name = it.name) }
}.distinctBy { it.itemId }
