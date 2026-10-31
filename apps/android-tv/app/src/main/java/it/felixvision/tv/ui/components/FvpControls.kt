package it.felixvision.tv.ui.components

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.focusable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicSecureTextField
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.text.input.KeyboardActionHandler
import androidx.compose.foundation.text.input.TextFieldDecorator
import androidx.compose.foundation.text.input.TextFieldLineLimits
import androidx.compose.foundation.text.input.TextFieldState
import androidx.compose.foundation.text.input.TextObfuscationMode
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusDirection
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusProperties
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreInterceptKeyBeforeSoftKeyboard
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.SemanticsPropertyReceiver
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.tv.material3.Border
import androidx.tv.material3.Button
import androidx.tv.material3.ButtonDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.ui.theme.FvpColors

/** Etichetta di un campo, discreta e leggibile a distanza. */
@Composable
fun FvpFieldLabel(text: String, scale: UiScale, modifier: Modifier = Modifier) {
    Text(
        text = text,
        modifier = modifier,
        color = FvpColors.TextSecondary,
        fontSize = scale.sp(15f),
        fontWeight = FontWeight.Medium,
    )
}

/**
 * Campo di testo per telecomando: bordo verde e leggero ingrandimento quando ha
 * il focus, cursore verde, placeholder nel colore secondario.
 *
 * Con [openKeyboardOnOk] il focus arriva sul campo senza aprire la tastiera,
 * che si apre solo con OK; con la tastiera aperta "Avanti" passa al campo
 * successivo, "Fine" o Indietro la chiudono restando sul campo. Senza (valore
 * predefinito) tutto resta come prima: la tastiera si apre appena il campo
 * riceve il focus.
 *
 * @param fieldTag tag di test dell'elemento che riceve il focus; con
 *   [openKeyboardOnOk] il testo modificabile ha il tag [fvpFieldEditorTag].
 */
@Composable
fun FvpTextField(
    label: String,
    state: TextFieldState,
    placeholder: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
    focusRequester: FocusRequester? = null,
    keyboardOptions: KeyboardOptions = KeyboardOptions.Default,
    enabled: Boolean = true,
    openKeyboardOnOk: Boolean = false,
    fieldTag: String? = null,
) {
    Column(modifier = modifier) {
        FvpFieldLabel(text = label, scale = scale)
        Spacer(Modifier.height(scale.dp(6f)))
        EditableFieldContainer(
            scale = scale,
            enabled = enabled,
            focusRequester = focusRequester,
            openKeyboardOnOk = openKeyboardOnOk,
            nextFieldOnKeyboardAction = keyboardOptions.imeAction == ImeAction.Next,
            fieldTag = fieldTag,
        ) { editorModifier, interactionSource, onKeyboardAction ->
            BasicTextField(
                state = state,
                modifier = Modifier
                    .fillMaxWidth()
                    .then(editorModifier),
                enabled = enabled,
                textStyle = TextStyle(color = FvpColors.TextPrimary, fontSize = scale.sp(18f)),
                keyboardOptions = keyboardOptions,
                onKeyboardAction = onKeyboardAction,
                cursorBrush = SolidColor(FvpColors.Green),
                lineLimits = TextFieldLineLimits.SingleLine,
                interactionSource = interactionSource,
                decorator = placeholderDecorator(placeholder, scale) { state.text.isEmpty() },
            )
        }
    }
}

/**
 * Variante per la password: può essere oscurata oppure mostrata in chiaro.
 * [imeAction] è l'azione del tasto della tastiera; [openKeyboardOnOk] e
 * [fieldTag] funzionano come in [FvpTextField].
 */
@Composable
fun FvpPasswordField(
    label: String,
    state: TextFieldState,
    placeholder: String,
    visible: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    imeAction: ImeAction = ImeAction.Unspecified,
    openKeyboardOnOk: Boolean = false,
    fieldTag: String? = null,
) {
    Column(modifier = modifier) {
        FvpFieldLabel(text = label, scale = scale)
        Spacer(Modifier.height(scale.dp(6f)))
        EditableFieldContainer(
            scale = scale,
            enabled = enabled,
            focusRequester = null,
            openKeyboardOnOk = openKeyboardOnOk,
            nextFieldOnKeyboardAction = imeAction == ImeAction.Next,
            fieldTag = fieldTag,
        ) { editorModifier, interactionSource, onKeyboardAction ->
            BasicSecureTextField(
                state = state,
                modifier = Modifier
                    .fillMaxWidth()
                    .then(editorModifier),
                enabled = enabled,
                textStyle = TextStyle(color = FvpColors.TextPrimary, fontSize = scale.sp(18f)),
                // Le stesse opzioni predefinite di BasicSecureTextField, più l'azione scelta.
                keyboardOptions = KeyboardOptions(
                    autoCorrectEnabled = false,
                    keyboardType = KeyboardType.Password,
                    imeAction = imeAction,
                ),
                onKeyboardAction = onKeyboardAction,
                cursorBrush = SolidColor(FvpColors.Green),
                interactionSource = interactionSource,
                decorator = placeholderDecorator(placeholder, scale) { state.text.isEmpty() },
                textObfuscationMode = if (visible) {
                    TextObfuscationMode.Visible
                } else {
                    TextObfuscationMode.Hidden
                },
            )
        }
    }
}

/**
 * Proprietà semantica dei campi con `openKeyboardOnOk`: `true` quando il campo
 * ha chiesto la tastiera (dopo OK) ed è in modifica, `false` quando ha solo il
 * focus. Rende verificabile il comportamento senza la tastiera reale.
 */
val FvpKeyboardRequestedKey = SemanticsPropertyKey<Boolean>("FvpKeyboardRequested")

private var SemanticsPropertyReceiver.fvpKeyboardRequested by FvpKeyboardRequestedKey

/** Tag di test del testo modificabile di un campo `openKeyboardOnOk` con tag [fieldTag]. */
fun fvpFieldEditorTag(fieldTag: String): String = "${fieldTag}_editor"

/** Tasti del telecomando che valgono come OK su un campo di testo. */
internal fun isFieldOkKey(key: Key): Boolean =
    key == Key.DirectionCenter || key == Key.Enter || key == Key.NumPadEnter

/**
 * Pressione completa di un tasto sullo stesso campo: la pressione viene
 * consumata e l'azione scatta al rilascio, così il rilascio non arriva alla
 * tastiera appena aperta. Un rilascio senza pressione (tasto premuto prima,
 * su un altro elemento o su un'altra schermata) viene ignorato.
 */
internal class KeyPressGate(private val matches: (Key) -> Boolean) {

    private var pressed = false

    /** Restituisce `true` se l'evento va consumato; [onPress] scatta al rilascio. */
    fun onKeyEvent(key: Key, type: KeyEventType, onPress: () -> Unit): Boolean {
        if (!matches(key)) return false
        return when (type) {
            KeyEventType.KeyDown -> {
                pressed = true
                true
            }
            KeyEventType.KeyUp -> {
                val complete = pressed
                pressed = false
                if (complete) onPress()
                complete
            }
            else -> false
        }
    }

    fun reset() {
        pressed = false
    }
}

/**
 * Contenitore del testo modificabile. Senza [openKeyboardOnOk] il testo riceve
 * direttamente il focus, come sempre; altrimenti vedi [OkKeyboardFieldContainer].
 */
@Composable
private fun EditableFieldContainer(
    scale: UiScale,
    enabled: Boolean,
    focusRequester: FocusRequester?,
    openKeyboardOnOk: Boolean,
    nextFieldOnKeyboardAction: Boolean,
    fieldTag: String?,
    editor: @Composable (Modifier, MutableInteractionSource, KeyboardActionHandler?) -> Unit,
) {
    if (openKeyboardOnOk) {
        OkKeyboardFieldContainer(
            scale = scale,
            enabled = enabled,
            focusRequester = focusRequester,
            nextFieldOnKeyboardAction = nextFieldOnKeyboardAction,
            fieldTag = fieldTag,
            editor = editor,
        )
    } else {
        FieldContainer(scale = scale, enabled = enabled) { interactionSource ->
            editor(
                Modifier
                    .optionalFocusRequester(focusRequester)
                    .optionalTestTag(fieldTag),
                interactionSource,
                null,
            )
        }
    }
}

/**
 * Campo "tastiera su OK". Il contenitore riceve il focus (bordo verde, nessuna
 * tastiera) e Su/Giù lo spostano come per gli altri elementi. OK rende
 * focalizzabile il testo e gli passa il focus: da lì la tastiera si apre come
 * in un campo normale. Con la tastiera aperta "Avanti" la chiude e porta il
 * focus al campo successivo, che aspetta di nuovo OK; "Fine" o Indietro la
 * chiudono e il focus torna al contenitore dello stesso campo. Se il testo
 * perde il focus in altro modo, il campo torna comunque in attesa di OK.
 */
@Composable
private fun OkKeyboardFieldContainer(
    scale: UiScale,
    enabled: Boolean,
    focusRequester: FocusRequester?,
    nextFieldOnKeyboardAction: Boolean,
    fieldTag: String?,
    editor: @Composable (Modifier, MutableInteractionSource, KeyboardActionHandler?) -> Unit,
) {
    val ownFieldFocus = remember { FocusRequester() }
    val fieldFocus = focusRequester ?: ownFieldFocus
    val editorFocus = remember { FocusRequester() }
    val okPress = remember { KeyPressGate(::isFieldOkKey) }
    val backPress = remember { KeyPressGate { it == Key.Back } }
    val focusOwner = remember { OkFieldFocusOwner() }
    // Vero da OK finché il testo ha il focus: rende il testo focalizzabile.
    var editing by remember { mutableStateOf(false) }
    // Contenitore o testo con il focus: bordo verde senza scatti nel passaggio.
    var fieldHasFocus by remember { mutableStateOf(false) }
    val keyboard = LocalSoftwareKeyboardController.current
    val focusManager = LocalFocusManager.current

    // Campo disattivato (accesso in corso): si torna in attesa di OK.
    LaunchedEffect(enabled) {
        if (!enabled) editing = false
    }

    fun startEditing() {
        if (!enabled) return
        if (focusOwner.editor) {
            keyboard?.show()
            return
        }
        // Prima si rende focalizzabile il testo, poi gli si passa il focus.
        editing = true
        if (!editorFocus.requestFocus(FocusDirection.Enter)) editing = false
    }

    fun stopEditing(moveToNextField: Boolean) {
        keyboard?.hide()
        backPress.reset()
        // Il focus si sposta prima di rendere di nuovo non focalizzabile il testo.
        val moved = moveToNextField && focusManager.moveFocus(FocusDirection.Next)
        if (!moved) fieldFocus.requestFocus()
        editing = false
    }

    val fieldModifier = Modifier
        .optionalTestTag(fieldTag)
        .semantics {
            fvpKeyboardRequested = editing
            if (enabled) {
                onClick {
                    startEditing()
                    true
                }
            }
        }
        // Indietro mentre si scrive: intercettato prima della tastiera, la
        // chiude e lascia il focus sullo stesso campo, in attesa di OK.
        .onPreInterceptKeyBeforeSoftKeyboard { event ->
            focusOwner.editor &&
                backPress.onKeyEvent(event.key, event.type) { stopEditing(moveToNextField = false) }
        }
        // Sul contenitore OK apre la tastiera; mentre si scrive i tasti vanno al testo.
        .onPreviewKeyEvent { event ->
            focusOwner.container && okPress.onKeyEvent(event.key, event.type) { startEditing() }
        }
        .focusRequester(fieldFocus)
        .onFocusChanged { focusState ->
            focusOwner.container = focusState.isFocused
            fieldHasFocus = focusState.hasFocus
            if (!focusState.isFocused) okPress.reset()
        }
        .focusable(enabled = enabled)

    val editorModifier = Modifier
        .optionalTestTag(fieldTag?.let(::fvpFieldEditorTag))
        .focusRequester(editorFocus)
        .focusProperties { canFocus = editing }
        .onFocusChanged { focusState ->
            focusOwner.editor = focusState.isFocused
            if (!focusState.isFocused) {
                editing = false
                backPress.reset()
            }
        }

    val onKeyboardAction = KeyboardActionHandler {
        stopEditing(moveToNextField = nextFieldOnKeyboardAction)
    }

    FieldContainer(
        scale = scale,
        enabled = enabled,
        modifier = fieldModifier,
        focused = fieldHasFocus,
    ) { interactionSource ->
        editor(editorModifier, interactionSource, onKeyboardAction)
    }
}

/** Chi ha il focus in un campo "tastiera su OK": il contenitore oppure il testo. */
private class OkFieldFocusOwner {
    var container = false
    var editor = false
}

private fun Modifier.optionalFocusRequester(requester: FocusRequester?): Modifier =
    if (requester != null) focusRequester(requester) else this

private fun Modifier.optionalTestTag(tag: String?): Modifier =
    if (tag != null) testTag(tag) else this

@Composable
private fun placeholderDecorator(
    placeholder: String,
    scale: UiScale,
    isEmpty: () -> Boolean,
): TextFieldDecorator = remember(placeholder, scale) {
    TextFieldDecorator { innerTextField ->
        val showPlaceholder by rememberUpdatedState(isEmpty)
        Box {
            if (showPlaceholder.invoke()) {
                Text(
                    text = placeholder,
                    color = FvpColors.TextSecondary.copy(alpha = 0.7f),
                    fontSize = scale.sp(18f),
                )
            }
            innerTextField()
        }
    }
}

/**
 * Contenitore comune dei campi: sfondo elevato e bordo verde quando il campo ha
 * il focus, con un ingrandimento minimo per renderlo evidente a distanza.
 *
 * Il focus è quello del testo (tramite l'interactionSource passata a
 * [content]) oppure, se indicato, [focused].
 */
@Composable
private fun FieldContainer(
    scale: UiScale,
    enabled: Boolean,
    modifier: Modifier = Modifier,
    focused: Boolean? = null,
    content: @Composable (MutableInteractionSource) -> Unit,
) {
    val interactionSource = remember { MutableInteractionSource() }
    val textFocused by interactionSource.collectIsFocusedAsState()
    val showFocus = focused ?: textFocused
    val scaleFactor by animateFloatAsState(
        targetValue = if (showFocus) 1.02f else 1f,
        label = "campoFocus",
    )
    val shape = RoundedCornerShape(scale.dp(14f))

    Box(
        modifier = modifier
            .fillMaxWidth()
            .graphicsLayer {
                scaleX = scaleFactor
                scaleY = scaleFactor
            }
            .clip(shape)
            .background(FvpColors.SurfaceElevated.copy(alpha = if (enabled) 1f else 0.45f))
            .border(
                width = if (showFocus) scale.dp(2f) else scale.dp(1f),
                color = if (showFocus) FvpColors.GreenFocus else FvpColors.Surface,
                shape = shape,
            )
            .padding(horizontal = scale.dp(16f), vertical = scale.dp(14f)),
    ) {
        content(interactionSource)
    }
}

/**
 * Misure e colori dell'unico pulsante compatto ([FvpCompactButton]): stanno qui
 * una volta sola, così le verifiche automatiche controllano i valori veri e non
 * una copia.
 */
object FvpCompactButtonStyle {

    /** Fondo a riposo: trasparente, sotto si vede il riquadro o il video. */
    val restContainer: Color = Color.Transparent

    /** Testo a riposo. */
    val restContent: Color = FvpColors.TextPrimary

    /** Fondo con il focus: verde pieno. */
    val focusContainer: Color = FvpColors.Green

    /** Testo con il focus: scuro, leggibile sul verde. */
    val focusContent: Color = FvpColors.OnGreen

    /** Fondo da disabilitato: trasparente come a riposo. */
    val disabledContainer: Color = Color.Transparent

    /** Testo da disabilitato: colore secondario. */
    val disabledContent: Color = FvpColors.TextSecondary

    /** Bordo a riposo: la linea sottile dei contenitori a vetro. */
    val restBorderColor: Color = FvpColors.GlassBorder

    /** Bordo con il focus. */
    val focusBorderColor: Color = FvpColors.GreenFocus

    /** Spessore del bordo a riposo, in unità di progetto. */
    const val REST_BORDER_BASE = 1f

    /** Spessore del bordo con il focus, in unità di progetto. */
    const val FOCUS_BORDER_BASE = 2f

    /**
     * Unica forma del pulsante, condivisa da fondo e bordi: su un rettangolo
     * [CircleShape] dà la pillola con gli estremi semicircolari.
     */
    val shape: Shape = CircleShape

    /** Ingrandimento con il focus. */
    const val FOCUSED_SCALE = 1.05f

    /** Testo, in unità di progetto. */
    const val TEXT_BASE = 14f

    /** Margine orizzontale interno, in unità di progetto. */
    const val HORIZONTAL_PADDING_BASE = 14f

    /** Margine verticale interno, in unità di progetto. */
    const val VERTICAL_PADDING_BASE = 6f

    /** Peso del testo del pulsante primario. */
    val PRIMARY_WEIGHT: FontWeight = FontWeight.SemiBold

    /** Peso del testo del pulsante secondario: unica differenza dal primario. */
    val SECONDARY_WEIGHT: FontWeight = FontWeight.Medium
}

/**
 * Unico stile di pulsante compatto dell'app (barra comandi del player, riquadro
 * "Prossimo episodio", controlli delle Impostazioni e, tramite
 * [FvpPrimaryButton] e [FvpSecondaryButton], tutti gli altri pulsanti).
 *
 * A riposo il fondo è trasparente con un bordo sottile [FvpColors.GlassBorder];
 * con il focus diventa verde pieno con il bordo [FvpColors.GreenFocus] e un
 * leggero ingrandimento. Il peso del testo distingue il primario
 * ([FontWeight.SemiBold]) dal secondario ([FontWeight.Medium]).
 *
 * @param fontWeight peso del testo: l'unica differenza tra primario e secondario.
 */
@Composable
fun FvpCompactButton(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    fontWeight: FontWeight = FvpCompactButtonStyle.PRIMARY_WEIGHT,
) {
    val shape = FvpCompactButtonStyle.shape
    val restBorder = Border(
        border = BorderStroke(
            width = scale.dp(FvpCompactButtonStyle.REST_BORDER_BASE),
            color = FvpCompactButtonStyle.restBorderColor,
        ),
        shape = shape,
    )
    val focusBorder = Border(
        border = BorderStroke(
            width = scale.dp(FvpCompactButtonStyle.FOCUS_BORDER_BASE),
            color = FvpCompactButtonStyle.focusBorderColor,
        ),
        shape = shape,
    )
    Button(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        scale = ButtonDefaults.scale(focusedScale = FvpCompactButtonStyle.FOCUSED_SCALE),
        shape = ButtonDefaults.shape(
            shape = shape,
            focusedShape = shape,
            pressedShape = shape,
            disabledShape = shape,
            focusedDisabledShape = shape,
        ),
        colors = ButtonDefaults.colors(
            containerColor = FvpCompactButtonStyle.restContainer,
            contentColor = FvpCompactButtonStyle.restContent,
            focusedContainerColor = FvpCompactButtonStyle.focusContainer,
            focusedContentColor = FvpCompactButtonStyle.focusContent,
            pressedContainerColor = FvpCompactButtonStyle.focusContainer,
            pressedContentColor = FvpCompactButtonStyle.focusContent,
            disabledContainerColor = FvpCompactButtonStyle.disabledContainer,
            disabledContentColor = FvpCompactButtonStyle.disabledContent,
        ),
        border = ButtonDefaults.border(
            border = restBorder,
            focusedBorder = focusBorder,
            pressedBorder = focusBorder,
        ),
        contentPadding = PaddingValues(
            horizontal = scale.dp(FvpCompactButtonStyle.HORIZONTAL_PADDING_BASE),
            vertical = scale.dp(FvpCompactButtonStyle.VERTICAL_PADDING_BASE),
        ),
    ) {
        Text(
            text = text,
            fontSize = scale.sp(FvpCompactButtonStyle.TEXT_BASE),
            fontWeight = fontWeight,
        )
    }
}

/** Pulsante principale: fondo trasparente a riposo, verde con il focus, testo SemiBold. */
@Composable
fun FvpPrimaryButton(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    FvpCompactButton(
        text = text,
        onClick = onClick,
        scale = scale,
        modifier = modifier,
        enabled = enabled,
        fontWeight = FvpCompactButtonStyle.PRIMARY_WEIGHT,
    )
}

/** Pulsante secondario: lo stesso stile del primario, testo Medium. */
@Composable
fun FvpSecondaryButton(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    FvpCompactButton(
        text = text,
        onClick = onClick,
        scale = scale,
        modifier = modifier,
        enabled = enabled,
        fontWeight = FvpCompactButtonStyle.SECONDARY_WEIGHT,
    )
}

/** Casella di spunta per telecomando: raggiungibile con le frecce, OK la attiva/disattiva. */
@Composable
fun FvpCheckboxButton(
    text: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    val boxShape = RoundedCornerShape(scale.dp(5f))
    // Fondo e bordo con il focus devono avere la stessa forma, altrimenti la
    // cornice verde non segue il contorno ai lati. Su un rettangolo CircleShape
    // dà la pillola con gli estremi semicircolari.
    val shape = CircleShape
    Button(
        onClick = { onCheckedChange(!checked) },
        modifier = modifier,
        enabled = enabled,
        scale = ButtonDefaults.scale(focusedScale = 1.03f),
        shape = ButtonDefaults.shape(
            shape = shape,
            focusedShape = shape,
            pressedShape = shape,
            disabledShape = shape,
            focusedDisabledShape = shape,
        ),
        colors = ButtonDefaults.colors(
            containerColor = FvpColors.SurfaceElevated,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.SurfaceElevated,
            focusedContentColor = FvpColors.TextPrimary,
            pressedContainerColor = FvpColors.SurfaceElevated,
            pressedContentColor = FvpColors.TextPrimary,
            disabledContainerColor = FvpColors.Surface,
            disabledContentColor = FvpColors.TextSecondary,
        ),
        border = ButtonDefaults.border(
            border = Border.None,
            focusedBorder = Border(
                border = BorderStroke(scale.dp(2.5f), FvpColors.GreenFocus),
                inset = scale.dp(2f),
                shape = shape,
            ),
        ),
        contentPadding = PaddingValues(
            horizontal = scale.dp(18f),
            vertical = scale.dp(12f),
        ),
    ) {
        Box(
            modifier = Modifier
                .size(scale.dp(20f))
                .clip(boxShape)
                .background(if (checked) FvpColors.Green else FvpColors.Surface)
                .border(
                    width = scale.dp(1.5f),
                    color = if (checked) FvpColors.Green else FvpColors.TextSecondary,
                    shape = boxShape,
                )
                .testTag(if (checked) "fvp_checkbox_on" else "fvp_checkbox_off"),
            contentAlignment = Alignment.Center,
        ) {
            if (checked) {
                Canvas(modifier = Modifier.size(scale.dp(12f))) {
                    val stroke = size.minDimension * 0.2f
                    drawLine(
                        color = FvpColors.OnGreen,
                        start = Offset(size.width * 0.15f, size.height * 0.55f),
                        end = Offset(size.width * 0.42f, size.height * 0.82f),
                        strokeWidth = stroke,
                    )
                    drawLine(
                        color = FvpColors.OnGreen,
                        start = Offset(size.width * 0.40f, size.height * 0.82f),
                        end = Offset(size.width * 0.86f, size.height * 0.22f),
                        strokeWidth = stroke,
                    )
                }
            }
        }
        Spacer(Modifier.width(scale.dp(10f)))
        Text(text = text, fontSize = scale.sp(15f), fontWeight = FontWeight.Medium)
    }
}

/** Testo di errore: il rosso è riservato agli errori. */
@Composable
fun FvpErrorText(message: String, scale: UiScale, modifier: Modifier = Modifier) {
    Text(
        text = message,
        modifier = modifier,
        color = FvpColors.Error,
        fontSize = scale.sp(16f),
        lineHeight = scale.sp(22f),
    )
}

@Composable
fun FvpStatusText(message: String, scale: UiScale, modifier: Modifier = Modifier) {
    Text(
        text = message,
        modifier = modifier,
        color = FvpColors.TextSecondary,
        fontSize = scale.sp(16f),
        lineHeight = scale.sp(22f),
    )
}

/** Riga etichetta/valore, usata dalle schermate informative. */
@Composable
fun FvpInfoRow(label: String, value: String, scale: UiScale) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(text = label, color = FvpColors.TextSecondary, fontSize = scale.sp(16f))
        Text(text = value, color = FvpColors.TextPrimary, fontSize = scale.sp(18f))
    }
}
