package it.felixvision.mobile.ui.settings.protection

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpPasswordTextField
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.components.FvpSecondaryButton
import it.felixvision.mobile.ui.components.PasswordToggleButton
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentRules
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Larghezza massima della pagina in orizzontale: oltre, resta centrata. */
val PROTECTED_PAGE_MAX_WIDTH = 720.dp

/** Tag della pagina intera. */
const val PROTECTED_PAGE_TAG = "protected_page"

/** Tag della colonna che contiene il livello corrente (massimo 720dp). */
const val PROTECTED_PAGE_COLUMN_TAG = "protected_page_column"

/** Tag del tasto "Indietro" a schermo delle pagine di selezione. */
const val PROTECTED_BACK_TAG = "protected_back"

/** Etichetta del tasto "Indietro" a schermo. */
const val PROTECTED_BACK_LABEL = "Indietro"

/** Tag e testi dei livelli. */
const val PROTECTED_TITLE = "Contenuti protetti"
const val PROTECTED_PIN_MISMATCH = "I PIN non coincidono"
const val PROTECTED_PIN_WRONG = "PIN errato"
const val PROTECTED_PASSWORD_WRONG = "Password errata"
const val PROTECTED_EMPTY_HIDDEN = "Nessun contenuto nascosto"
const val PROTECTED_CATALOG_MISSING = "Catalogo non disponibile"
const val PROTECTED_ALL_CATEGORY = "Tutta la categoria"
const val PROTECTED_SHOW_LABEL = "Mostra contenuti protetti"
const val PROTECTED_HIDE_LABEL = "Nascondi contenuti protetti"

/** "Troppi tentativi: riprova tra N s" con i secondi residui. */
fun tooManyAttemptsMessage(secondsLeft: Long): String =
    "Troppi tentativi: riprova tra ${secondsLeft.coerceAtLeast(0L)} s"

/** Etichetta breve di un tipo di contenuto negli elenchi (come sulla TV). */
internal fun protectedKindLabel(kind: ProtectedKind): String = when (kind) {
    ProtectedKind.LIVE -> "Live"
    ProtectedKind.VOD -> "Film"
    ProtectedKind.SERIES -> "Serie"
}

/** Tipo a partire dalla chiave salvata negli elenchi; null se sconosciuta. */
internal fun protectedKindFromStorageKey(key: String): ProtectedKind? =
    ProtectedKind.entries.firstOrNull { it.storageKey == key }

/** Pagine della schermata; la radice dipende dallo stato del PIN. */
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

/** Da dove nasce la creazione del PIN: decide dove si torna dopo il salvataggio. */
internal enum class CreateOrigin { Initial, Change, Forgot }

/**
 * Pagina "Contenuti protetti" del tablet, con i livelli della pagina della TV
 * e un'interfaccia interamente touch.
 *
 * Livelli:
 * - CREA PIN (se il PIN non esiste): inserimento e conferma, con errore
 *   "I PIN non coincidono";
 * - VERIFICA PIN (se il PIN esiste e la sessione è bloccata): errore "PIN
 *   errato", dopo 5 tentativi sbagliati consecutivi blocco di 30 s con
 *   tastierino spento e "Troppi tentativi: riprova tra N s" aggiornato ogni
 *   secondo, pulsante "PIN dimenticato";
 * - PIN DIMENTICATO: la password del provider dell'account corrente (confronto
 *   con le credenziali salvate) permette di scegliere un nuovo PIN conservando
 *   gli elenchi nascosti;
 * - PAGINA PRINCIPALE: interruttore "Mostra/Nascondi contenuti protetti",
 *   "Aggiungi", "Cambia PIN" ed elenco "Nascosti" con il pulsante di rimozione
 *   di ogni voce;
 * - AGGIUNGI: tipo, categorie del tipo dal catalogo reale con "nascosta" o
 *   "N nascosti" a destra, e contenuti della categoria con "Tutta la
 *   categoria" in testa e la spunta per riga. Ogni tocco salva subito.
 *
 * L'interruttore cambia SOLO lo stato di [ProtectedSession]: entrare nella
 * pagina non sblocca nulla, e il filtro delle sezioni arriva nel passo 3.
 *
 * Il PIN non compare mai in chiaro, né nei log né nei messaggi: il tastierino
 * mostra pallini e il campo password usa la tastiera di sistema con
 * mostra/nascondi. Indietro torna al livello precedente e, dalla radice,
 * alle Impostazioni ([onExit]).
 */
@Composable
fun ProtectedContentScreen(
    store: ProtectedContentStore,
    session: ProtectedSession,
    credentialStore: CredentialStore,
    clock: Clock,
    server: String,
    username: String,
    catalog: Catalog?,
    modifier: Modifier = Modifier,
    onRefreshCatalog: () -> Unit = {},
    onExit: () -> Unit = {},
) {
    val scope = rememberCoroutineScope()
    val revision by store.revision.collectAsState()
    var data by remember { mutableStateOf<ProtectedContentData?>(null) }
    LaunchedEffect(revision, server, username) {
        data = store.get(server, username)
    }

    val unlocked by session.unlocked.collectAsState()

    val stack = remember { mutableStateListOf<ProtectedPage>() }
    var pinError by remember { mutableStateOf<String?>(null) }
    var firstPin by remember { mutableStateOf<String?>(null) }
    var createOrigin by remember { mutableStateOf(CreateOrigin.Initial) }

    // Nel flusso "Aggiungi", per ogni tipo resta memorizzata l'ultima categoria
    // aperta con la sua posizione di scorrimento: tornando indietro si riparte
    // da lì.
    val lastCategoryByKind = remember { mutableStateMapOf<ProtectedKind, String>() }
    val categoryListStates = remember { mutableStateMapOf<ProtectedKind, LazyListState>() }
    /**
     * Scorrimento della lista dei contenuti, uno per "tipo|categoria": la
     * stessa istanza di stato torna riaprendo la categoria, quindi la lista
     * riparte dalla posizione lasciata.
     */
    val itemListStates = remember { mutableStateMapOf<String, LazyListState>() }

    fun replaceTop(target: ProtectedPage) {
        if (stack.isEmpty()) stack.add(target) else stack[stack.lastIndex] = target
    }
    fun goToRoot(target: ProtectedPage) {
        stack.clear()
        stack.add(target)
    }

    val page = stack.lastOrNull()

    // La pagina iniziale dipende dall'archivio: senza PIN si crea, con il PIN
    // e la sessione bloccata si verifica, altrimenti si apre la pagina
    // principale. Se il PIN esiste ma la sessione è già sbloccata non serve
    // verificarlo di nuovo per gestire gli elenchi.
    LaunchedEffect(data) {
        val current = data ?: return@LaunchedEffect
        if (stack.isNotEmpty()) return@LaunchedEffect
        stack.add(
            when {
                !current.hasPin -> {
                    createOrigin = CreateOrigin.Initial
                    ProtectedPage.CreatePin
                }

                !session.unlocked.value -> ProtectedPage.VerifyPin
                else -> ProtectedPage.Main
            },
        )
    }

    /**
     * Indietro: una pagina alla volta; dalla radice si torna alle
     * Impostazioni. È lo stesso percorso per il tasto di sistema ([BackHandler])
     * e per il tasto "Indietro" a schermo delle pagine di selezione.
     */
    fun goBack() {
        pinError = null
        when {
            stack.size > 1 -> stack.removeAt(stack.lastIndex)
            else -> onExit()
        }
    }

    BackHandler(enabled = true) { goBack() }

    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .windowInsetsPadding(WindowInsets.safeDrawing)
            .testTag(PROTECTED_PAGE_TAG),
    ) {
        // In orizzontale la pagina resta leggibile: massimo 720dp, centrata.
        val pageModifier = Modifier
            .width(PROTECTED_PAGE_MAX_WIDTH.coerceAtMost(maxWidth))
            .fillMaxHeight()
            .align(Alignment.TopCenter)
            .padding(horizontal = 16.dp, vertical = 12.dp)

        Column(modifier = pageModifier.testTag(PROTECTED_PAGE_COLUMN_TAG)) {
            when (val current = page) {
                null -> Unit

                ProtectedPage.CreatePin -> PinPage(onBack = { goBack() }) {
                    PinKeypad(
                        title = "Crea il PIN",
                        errorMessage = pinError,
                        onConfirm = { pin ->
                            firstPin = pin
                            pinError = null
                            replaceTop(ProtectedPage.ConfirmPin)
                        },
                    )
                }

                ProtectedPage.ConfirmPin -> PinPage(onBack = { goBack() }) {
                    PinKeypad(
                        title = "Conferma il PIN",
                        errorMessage = pinError,
                        onConfirm = { pin ->
                            if (pin != firstPin) {
                                pinError = PROTECTED_PIN_MISMATCH
                                firstPin = null
                                replaceTop(ProtectedPage.CreatePin)
                            } else {
                                scope.launch {
                                    store.setPin(server, username, pin)
                                    // PIN nuovo: i tentativi sbagliati del PIN
                                    // precedente non contano più; la sessione
                                    // resta com'è (l'interruttore è l'unico
                                    // sblocco dei contenuti).
                                    session.registerSuccess()
                                    firstPin = null
                                    pinError = null
                                    createOrigin = CreateOrigin.Initial
                                    goToRoot(ProtectedPage.Main)
                                }
                            }
                        },
                    )
                }

                ProtectedPage.VerifyPin -> ProtectedVerifyPage(
                    store = store,
                    session = session,
                    clock = clock,
                    server = server,
                    username = username,
                    scope = scope,
                    errorMessage = pinError,
                    onBack = { goBack() },
                    onMessage = { pinError = it },
                    onVerified = {
                        pinError = null
                        if (createOrigin == CreateOrigin.Change || stack.size > 1) {
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
                    server = server,
                    username = username,
                    scope = scope,
                    errorMessage = pinError,
                    onError = { pinError = it },
                    onPasswordAccepted = {
                        pinError = null
                        firstPin = null
                        createOrigin = CreateOrigin.Forgot
                        replaceTop(ProtectedPage.CreatePin)
                    },
                )

                ProtectedPage.Main -> ProtectedMainPage(
                    data = data,
                    onBack = { goBack() },
                    unlocked = unlocked,
                    onToggleVisibility = {
                        // Solo lo stato di sessione: nessun filtro in questo passo.
                        if (unlocked) session.lock() else session.unlock()
                    },
                    onAdd = {
                        pinError = null
                        stack.add(ProtectedPage.AddKind)
                    },
                    onChangePin = {
                        pinError = null
                        createOrigin = CreateOrigin.Change
                        stack.add(ProtectedPage.VerifyPin)
                    },
                    onRemoveCategory = { kind, categoryId ->
                        scope.launch {
                            store.removeCategory(server, username, kind, categoryId)
                        }
                    },
                    onRemoveItem = { kind, itemId ->
                        scope.launch { store.removeItem(server, username, kind, itemId) }
                    },
                )

                ProtectedPage.AddKind -> ProtectedAddKindPage(
                    onBack = { goBack() },
                    onSelectKind = { kind ->
                        stack.add(ProtectedPage.AddCategories(kind))
                    },
                )

                is ProtectedPage.AddCategories -> ProtectedAddCategoriesPage(
                    catalog = catalog,
                    data = data ?: ProtectedContentData(),
                    kind = current.kind,
                    restoreCategoryId = lastCategoryByKind[current.kind],
                    listState = categoryListStates.getOrPut(current.kind) { LazyListState() },
                    onRefreshCatalog = onRefreshCatalog,
                    // Tasto "Indietro" a schermo: si torna alla scelta del tipo.
                    onBack = { goBack() },
                    onOpenCategory = { categoryId, categoryName ->
                        lastCategoryByKind[current.kind] = categoryId
                        stack.add(
                            ProtectedPage.AddItems(current.kind, categoryId, categoryName),
                        )
                    },
                )

                is ProtectedPage.AddItems -> ProtectedAddItemsPage(
                    catalog = catalog,
                    data = data ?: ProtectedContentData(),
                    kind = current.kind,
                    categoryId = current.categoryId,
                    categoryName = current.categoryName,
                    listState = itemListStates.getOrPut(
                        "${current.kind.storageKey}|${current.categoryId}",
                    ) { LazyListState() },
                    onRefreshCatalog = onRefreshCatalog,
                    // Tasto "Indietro" a schermo: si torna alle categorie per
                    // sceglierne un'altra.
                    onBack = { goBack() },
                    onToggleCategory = {
                        scope.launch {
                            store.toggleCategory(
                                server = server,
                                username = username,
                                kind = current.kind,
                                categoryId = current.categoryId,
                                name = current.categoryName,
                            )
                        }
                    },
                    onToggleItem = { itemId, name ->
                        scope.launch {
                            store.toggleItem(
                                server = server,
                                username = username,
                                kind = current.kind,
                                itemId = itemId,
                                categoryId = current.categoryId,
                                name = name,
                            )
                        }
                    },
                )
            }
        }
    }
}

/**
 * Contenitore scorrevole delle pagine con il tastierino: su un tablet basso o
 * in orizzontale il tastierino e il pulsante restano raggiungibili.
 */
@Composable
private fun PinPage(onBack: () -> Unit, content: @Composable ColumnScope.() -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        ProtectedBackBar(onBack = onBack) {
            Text(
                text = "Contenuti protetti",
                color = FvpColors.TextPrimary,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
            )
        }
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState()),
            horizontalAlignment = Alignment.CenterHorizontally,
            // Su un tablet largo il tastierino resta raccolto al centro.
            content = content,
        )
    }
}

// --- Pagina principale ---

/**
 * Pagina principale: interruttore di visibilità, gestione del PIN, elenco
 * "Nascosti" con il pulsante di rimozione di ogni voce.
 */
@Composable
internal fun ProtectedMainPage(
    data: ProtectedContentData?,
    onBack: () -> Unit = {},
    unlocked: Boolean,
    onToggleVisibility: () -> Unit,
    onAdd: () -> Unit,
    onChangePin: () -> Unit,
    onRemoveCategory: (ProtectedKind, String) -> Unit,
    onRemoveItem: (ProtectedKind, String) -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        ProtectedBackBar(onBack = onBack) {
            Text(
                text = PROTECTED_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = 22.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.testTag("protected_title"),
            )
        }
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(12.dp))
                .background(FvpColors.Surface)
                .padding(horizontal = 12.dp, vertical = 6.dp)
                .testTag("protected_visibility_row"),
        ) {
            Text(
                text = if (unlocked) PROTECTED_HIDE_LABEL else PROTECTED_SHOW_LABEL,
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                modifier = Modifier.weight(1f),
            )
            Switch(
                checked = unlocked,
                onCheckedChange = { onToggleVisibility() },
                colors = SwitchDefaults.colors(
                    checkedThumbColor = FvpColors.OnGreen,
                    checkedTrackColor = FvpColors.Green,
                    uncheckedThumbColor = FvpColors.TextSecondary,
                    uncheckedTrackColor = FvpColors.SurfaceElevated,
                ),
                modifier = Modifier.testTag("protected_visibility_switch"),
            )
        }
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.fillMaxWidth()) {
            FvpPrimaryButton(
                text = "Aggiungi",
                onClick = onAdd,
                modifier = Modifier.weight(1f),
                testTag = "protected_add",
            )
            FvpSecondaryButton(
                text = "Cambia PIN",
                onClick = onChangePin,
                modifier = Modifier.weight(1f),
                testTag = "protected_change_pin",
            )
        }
        Text(
            text = "Nascosti",
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.testTag("protected_hidden_title"),
        )
        val hiddenCategories = data?.hiddenCategories.orEmpty()
        val hiddenItems = data?.hiddenItems.orEmpty()
        if (hiddenCategories.isEmpty() && hiddenItems.isEmpty()) {
            Text(
                text = PROTECTED_EMPTY_HIDDEN,
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                modifier = Modifier.testTag("protected_hidden_empty"),
            )
        } else {
            // Nessuna LazyColumn qui: la pagina scorre già come colonna, così
            // anche l'elenco lungo resta raggiungibile con un solo scorrimento.
            hiddenCategories.forEach { hidden ->
                val kind = protectedKindFromStorageKey(hidden.kind) ?: return@forEach
                HiddenRow(
                    text = "Categoria · ${protectedKindLabel(kind)} · ${hidden.name}",
                    testTag = "protected_hidden_cat_${hidden.kind}_${hidden.categoryId}",
                    removeTag = "protected_remove_cat_${hidden.kind}_${hidden.categoryId}",
                    onRemove = { onRemoveCategory(kind, hidden.categoryId) },
                )
            }
            hiddenItems.forEach { hidden ->
                val kind = protectedKindFromStorageKey(hidden.kind) ?: return@forEach
                HiddenRow(
                    text = "${protectedKindLabel(kind)} · ${hidden.name}",
                    testTag = "protected_hidden_item_${hidden.kind}_${hidden.itemId}",
                    removeTag = "protected_remove_item_${hidden.kind}_${hidden.itemId}",
                    onRemove = { onRemoveItem(kind, hidden.itemId) },
                )
            }
        }
    }
}

/** Riga dell'elenco "Nascosti": tipo e nome, con il pulsante di rimozione. */
@Composable
private fun HiddenRow(
    text: String,
    testTag: String,
    removeTag: String,
    onRemove: () -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.SurfaceElevated)
            // La riga è letta come una voce sola (tipo e nome insieme).
            .semantics(mergeDescendants = true) {}
            .padding(horizontal = 12.dp, vertical = 6.dp)
            .testTag(testTag),
    ) {
        Text(
            text = text,
            color = FvpColors.TextPrimary,
            fontSize = 15.sp,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f),
        )
        FvpSecondaryButton(
            text = "Rimuovi",
            onClick = onRemove,
            testTag = removeTag,
        )
    }
}

// --- Verifica del PIN ---

/**
 * VERIFICA PIN: tastierino touch, blocco con conto alla rovescia dopo 5 errori
 * consecutivi (regole di [ProtectedSession]) e pulsante "PIN dimenticato".
 *
 * Il conto alla rovescia si rilegge ogni secondo dall'orologio iniettato,
 * quindi nei test segue il tempo virtuale.
 */
@Composable
internal fun ProtectedVerifyPage(
    store: ProtectedContentStore,
    session: ProtectedSession,
    clock: Clock,
    server: String,
    username: String,
    scope: CoroutineScope,
    errorMessage: String?,
    onBack: () -> Unit = {},
    onMessage: (String?) -> Unit,
    onVerified: () -> Unit,
    onForgot: () -> Unit,
) {
    var secondsLeft by remember { mutableLongStateOf(lockSecondsLeft(session, clock)) }
    LaunchedEffect(Unit) {
        while (true) {
            secondsLeft = lockSecondsLeft(session, clock)
            // Un battito al secondo su Dispatchers.Main: lo stato della UI
            // cambia solo lì, e nei test il tempo è quello virtuale del
            // dispatcher di Main (l'orologio iniettato legge lo stesso tempo).
            withContext(Dispatchers.Main) { delay(1_000L) }
        }
    }
    val locked = secondsLeft > 0L

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .verticalScroll(rememberScrollState()),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        PinKeypad(
            title = "Inserisci il PIN",
            enabled = !locked,
            errorMessage = if (locked) tooManyAttemptsMessage(secondsLeft) else errorMessage,
            onConfirm = { pin ->
                if (!locked) {
                    scope.launch {
                        val ok = store.verifyPin(server, username, pin)
                        if (ok) {
                            session.registerSuccess()
                            secondsLeft = 0L
                            onVerified()
                        } else {
                            session.registerFailure()
                            secondsLeft = lockSecondsLeft(session, clock)
                            onMessage(PROTECTED_PIN_WRONG)
                        }
                    }
                }
            },
        )
        Spacer(Modifier.height(4.dp))
        FvpSecondaryButton(
            text = "PIN dimenticato",
            onClick = onForgot,
            modifier = Modifier.fillMaxWidth(),
            testTag = "protected_forgot_pin",
        )
        FvpSecondaryButton(
            text = PROTECTED_BACK_LABEL,
            onClick = onBack,
            modifier = Modifier.width(180.dp),
            testTag = PROTECTED_BACK_TAG,
        )
    }
}

// --- PIN dimenticato ---

/**
 * PIN DIMENTICATO: la password del provider dell'account corrente, confrontata
 * con le credenziali salvate, permette di scegliere un nuovo PIN conservando
 * gli elenchi nascosti. Campo con la tastiera di sistema e mostra/nascondi; la
 * password non viene mai mostrata in chiaro nei messaggi né nei log.
 */
@Composable
internal fun ProtectedForgotPage(
    credentialStore: CredentialStore,
    server: String,
    username: String,
    scope: CoroutineScope,
    errorMessage: String?,
    onError: (String) -> Unit,
    onPasswordAccepted: () -> Unit,
) {
    var password by remember { mutableStateOf("") }
    var visible by remember { mutableStateOf(false) }
    var busy by remember { mutableStateOf(false) }

    fun submit() {
        if (busy) return
        if (password.isBlank()) {
            onError(PROTECTED_PASSWORD_WRONG)
            return
        }
        busy = true
        scope.launch {
            val stored = runCatching { credentialStore.load() }.getOrNull()
            val matches = stored != null &&
                stored.server == server &&
                stored.username == username &&
                stored.password == password
            busy = false
            if (matches) {
                password = ""
                onPasswordAccepted()
            } else {
                onError(PROTECTED_PASSWORD_WRONG)
            }
        }
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(
            text = "PIN dimenticato",
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag("protected_forgot_title"),
        )
        Text(
            text = "Inserisci la password del provider per scegliere un nuovo PIN.",
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
        )
        Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
            FvpPasswordTextField(
                value = password,
                onValueChange = { password = it },
                visible = visible,
                enabled = !busy,
                imeAction = ImeAction.Done,
                onImeAction = { submit() },
                testTag = "forgot_password_field",
                modifier = Modifier.weight(1f),
            )
            Spacer(Modifier.width(8.dp))
            PasswordToggleButton(
                visible = visible,
                onClick = { visible = !visible },
                modifier = Modifier.testTag("forgot_password_toggle"),
            )
        }
        if (errorMessage != null) {
            Text(
                text = errorMessage,
                color = FvpColors.Error,
                fontSize = 14.sp,
                modifier = Modifier.testTag(MOBILE_PIN_ERROR_TAG),
            )
        }
        FvpPrimaryButton(
            text = "Conferma",
            onClick = { submit() },
            enabled = !busy,
            modifier = Modifier.fillMaxWidth(),
            testTag = "forgot_submit",
        )
    }
}

// --- Aggiungi · tipo ---

/** AGGIUNGI: scelta del tipo di catalogo (Live, Film, Serie). */
@Composable
internal fun ProtectedAddKindPage(
    onSelectKind: (ProtectedKind) -> Unit,
    onBack: () -> Unit = {},
) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        ProtectedBackBar(onBack = onBack) {
            Text(
                text = "Contenuti protetti",
                color = FvpColors.TextPrimary,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
            )
        }
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
        Text(
            text = "Aggiungi · cosa vuoi nascondere?",
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
        )
            ProtectedKind.entries.forEach { kind ->
                SelectionRow(
                    title = protectedKindLabel(kind),
                    testTag = "protected_kind_${kind.storageKey}",
                    onClick = { onSelectKind(kind) },
                )
            }
        }
    }
}

// --- Aggiungi · categorie ---

/**
 * AGGIUNGI · categorie del tipo scelto, con "nascosta" o "N nascosti" a
 * destra. [restoreCategoryId] è la categoria aperta l'ultima volta e
 * [listState] lo scorrimento conservato per il tipo: all'apertura la lista
 * torna su quella riga; se la categoria non è più nel catalogo si riparte
 * dalla cima.
 *
 * Con il catalogo non ancora caricato la pagina mostra "Catalogo non
 * disponibile" e il pulsante "Aggiorna catalogo".
 */
@Composable
internal fun ProtectedAddCategoriesPage(
    catalog: Catalog?,
    data: ProtectedContentData,
    kind: ProtectedKind,
    restoreCategoryId: String?,
    listState: LazyListState,
    onOpenCategory: (categoryId: String, categoryName: String) -> Unit,
    onRefreshCatalog: () -> Unit = {},
    onBack: () -> Unit = {},
) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        SelectedKindHeader(kind = kind, onBack = onBack)
        if (catalog == null) {
            CatalogMissing(
                onRefreshCatalog = onRefreshCatalog,
                testTag = "protected_catalog_missing",
            )
            return@Column
        }
        val categories = categoriesForKind(catalog, kind)
        val restoreIndex = categories.indexOfFirst { it.categoryId == restoreCategoryId }
        LaunchedEffect(restoreCategoryId, categories.size, catalog.updatedAtMillis) {
            if (restoreIndex >= 0) listState.scrollToItem(restoreIndex)
        }
        if (categories.isEmpty()) {
            Text(
                text = "Nessuna categoria disponibile",
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                modifier = Modifier.testTag("protected_no_categories"),
            )
        } else {
            LazyColumn(
                state = listState,
                modifier = Modifier
                    .fillMaxSize()
                    .testTag("protected_categories_list"),
                contentPadding = PaddingValues(bottom = 16.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                itemsIndexed(
                    categories,
                    key = { _, category -> "cat_${category.categoryId}" },
                ) { _, category ->
                    val categoryId = category.categoryId
                    val categoryName = category.categoryName ?: "Senza nome"
                    val hidden = ProtectedContentRules.isCategoryHidden(data, kind, categoryId)
                    val hiddenItems = ProtectedContentRules.hiddenCountInCategory(
                        data,
                        kind,
                        categoryId,
                    )
                    SelectionRow(
                        title = categoryName,
                        trailing = when {
                            hidden -> "nascosta"
                            hiddenItems > 0 -> "$hiddenItems nascosti"
                            else -> null
                        },
                        testTag = "protected_catrow_${kind.storageKey}_$categoryId",
                        onClick = { onOpenCategory(categoryId, categoryName) },
                    )
                }
            }
        }
    }
}

// --- Aggiungi · contenuti della categoria ---

/**
 * AGGIUNGI · categoria aperta: prima riga "Tutta la categoria", poi i
 * contenuti della categoria nell'ordine del catalogo, ognuno con la spunta
 * quando è nascosto. Un tocco cambia subito lo stato (il salvataggio lo fa il
 * chiamante) e la posizione di scorrimento è quella conservata.
 */
@Composable
internal fun ProtectedAddItemsPage(
    catalog: Catalog?,
    data: ProtectedContentData,
    kind: ProtectedKind,
    categoryId: String,
    categoryName: String,
    listState: LazyListState,
    onToggleCategory: () -> Unit,
    onToggleItem: (itemId: String, name: String) -> Unit,
    onRefreshCatalog: () -> Unit = {},
    onBack: () -> Unit = {},
) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        // Tasto "Indietro" a schermo: si torna all'elenco delle categorie per
        // sceglierne un'altra, senza dover usare il tasto di sistema.
        SelectedItemsHeader(
            kind = kind,
            categoryName = categoryName,
            onBack = onBack,
        )
        if (catalog == null) {
            CatalogMissing(
                onRefreshCatalog = onRefreshCatalog,
                testTag = "protected_catalog_missing",
            )
            return@Column
        }
        val protectable = itemsForCategory(catalog, kind, categoryId)
        LazyColumn(
            state = listState,
            modifier = Modifier
                .fillMaxSize()
                .testTag("protected_items_list"),
            contentPadding = PaddingValues(bottom = 16.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            item(key = "all_category") {
                CheckRow(
                    title = PROTECTED_ALL_CATEGORY,
                    checked = ProtectedContentRules.isCategoryHidden(data, kind, categoryId),
                    testTag = "protected_all_category",
                    onToggle = onToggleCategory,
                )
            }
            items(protectable, key = { "item_${it.itemId}" }) { item ->
                CheckRow(
                    title = item.name,
                    checked = data.hiddenItems.any {
                        it.kind == kind.storageKey && it.itemId == item.itemId
                    },
                    testTag = "protected_itemrow_${kind.storageKey}_${item.itemId}",
                    onToggle = { onToggleItem(item.itemId, item.name) },
                )
            }
        }
    }
}

// --- Intestazioni con il tasto Indietro ---

/**
 * Intestazione delle pagine di selezione: tasto "Indietro" a schermo e titolo.
 *
 * Il tasto fa la stessa cosa del tasto Indietro di sistema (una pagina alla
 * volta), così anche chi usa solo il touch torna all'elenco delle categorie e
 * può sceglierne un'altra.
 */
@Composable
private fun ProtectedBackBar(
    onBack: () -> Unit,
    title: @Composable () -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        modifier = Modifier.fillMaxWidth(),
    ) {
        FvpSecondaryButton(
            text = PROTECTED_BACK_LABEL,
            onClick = onBack,
            modifier = Modifier.heightIn(min = 48.dp),
            testTag = PROTECTED_BACK_TAG,
        )
        Box(modifier = Modifier.weight(1f)) {
            title()
        }
    }
}

/** Intestazione di "Aggiungi · <tipo>" con il tasto Indietro. */
@Composable
private fun SelectedKindHeader(
    kind: ProtectedKind,
    onBack: () -> Unit,
) {
    ProtectedBackBar(onBack = onBack) {
        Text(
            text = "Aggiungi · ${protectedKindLabel(kind)}",
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

/** Intestazione di "<tipo> · <categoria>" con il tasto Indietro. */
@Composable
private fun SelectedItemsHeader(
    kind: ProtectedKind,
    categoryName: String,
    onBack: () -> Unit,
) {
    ProtectedBackBar(onBack = onBack) {
        Text(
            text = "${protectedKindLabel(kind)} · $categoryName",
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

// --- Componenti comuni ---

/** Riga toccabile con titolo e, a destra, un'etichetta facoltativa. */
@Composable
internal fun SelectionRow(
    title: String,
    testTag: String,
    onClick: () -> Unit,
    trailing: String? = null,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.SurfaceElevated)
            .clickable(onClick = onClick)
            // Nome e stato a destra sono una voce sola per chi legge lo schermo.
            .semantics(mergeDescendants = true) {}
            .padding(horizontal = 12.dp, vertical = 8.dp)
            .testTag(testTag),
    ) {
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f),
        )
        if (trailing != null) {
            Text(
                text = trailing,
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                maxLines = 1,
            )
        }
    }
}

/**
 * Riga con la casella di spunta: l'intera riga è toccabile e cambia subito lo
 * stato. La casella è decorativa (il tocco passa dalla riga).
 */
@Composable
private fun CheckRow(
    title: String,
    checked: Boolean,
    testTag: String,
    onToggle: () -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .clip(RoundedCornerShape(10.dp))
            .background(FvpColors.SurfaceElevated)
            .clickable(onClick = onToggle)
            // Lo stato della spunta è leggibile dalle verifiche anche quando
            // la casella non è interattiva.
            .semantics { selected = checked }
            .padding(horizontal = 8.dp, vertical = 4.dp)
            .testTag(testTag),
    ) {
        Checkbox(
            checked = checked,
            onCheckedChange = null,
            colors = CheckboxDefaults.colors(
                checkedColor = FvpColors.Green,
                uncheckedColor = FvpColors.TextSecondary,
            ),
        )
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f),
        )
    }
}

/** Stato "catalogo assente": messaggio e pulsante di aggiornamento. */
@Composable
private fun CatalogMissing(
    onRefreshCatalog: () -> Unit,
    testTag: String,
) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(
            text = PROTECTED_CATALOG_MISSING,
            color = FvpColors.TextSecondary,
            fontSize = 15.sp,
            modifier = Modifier.testTag(testTag),
        )
        FvpSecondaryButton(
            text = "Aggiorna catalogo",
            onClick = onRefreshCatalog,
            modifier = Modifier.fillMaxWidth(),
            testTag = "protected_catalog_refresh",
        )
    }
}
