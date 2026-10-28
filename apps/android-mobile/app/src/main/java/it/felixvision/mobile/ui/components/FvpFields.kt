package it.felixvision.mobile.ui.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusDirection
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.SolidColor
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
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Tag di test del testo modificabile di un campo con tag [testTag]:
 * su questo nodo vivono le azioni IME (Avanti/Fatto) e l'inserimento testo.
 */
fun fvpFieldEditorTag(fieldTag: String): String = "${fieldTag}_editor"

/**
 * Proprietà semantica del campo password: `true` quando la password è
 * mostrata in chiaro, `false` quando è oscurata. Rende verificabile
 * mostra/nascondi nei test senza affidarsi al testo trasformato.
 */
val FvpPasswordVisibleKey = SemanticsPropertyKey<Boolean>("FvpPasswordVisible")

private var SemanticsPropertyReceiver.fvpPasswordVisible by FvpPasswordVisibleKey

/**
 * Campo di testo touch: etichetta sopra, contenitore con bordo verde quando ha
 * il focus, placeholder, target del contenitore ≥48dp. La tastiera si apre
 * appena il testo riceve focus; "Avanti" sposta il focus al campo successivo,
 * "Fatto" esegue [onImeAction] (nel login: invio).
 *
 * @param testTag tag del contenitore (trovabile nei test); il testo
 *   modificabile usa [fvpFieldEditorTag].
 * @param passwordVisible se impostato, aggiunge la proprietà semantica
 *   [FvpPasswordVisibleKey] al contenitore.
 */
@Composable
fun FvpTextField(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    placeholder: String,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    keyboardType: KeyboardType = KeyboardType.Text,
    imeAction: ImeAction = ImeAction.Next,
    onImeAction: (() -> Unit)? = null,
    testTag: String? = null,
    passwordVisible: Boolean? = null,
    visualTransformation: VisualTransformation = VisualTransformation.None,
) {
    val focusManager = LocalFocusManager.current
    val keyboard = LocalSoftwareKeyboardController.current
    val editorFocus = remember { FocusRequester() }
    var editorFocused by remember { mutableStateOf(false) }

    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = label,
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
        )
        Spacer(Modifier.height(6.dp))
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(12.dp))
                .background(if (enabled) FvpColors.SurfaceElevated else FvpColors.Surface)
                .border(
                    width = if (editorFocused) 2.dp else 1.dp,
                    color = if (editorFocused) FvpColors.GreenFocus else FvpColors.Surface,
                    shape = RoundedCornerShape(12.dp),
                )
                .padding(horizontal = 14.dp, vertical = 12.dp)
                .then(if (testTag != null) Modifier.testTag(testTag) else Modifier)
                .then(
                    if (passwordVisible != null) {
                        Modifier.semantics { fvpPasswordVisible = passwordVisible }
                    } else {
                        Modifier
                    },
                )
                // Tocco sul contenitore (e OnClick nei test): il focus va al testo.
                .semantics {
                    onClick {
                        if (enabled) {
                            editorFocus.requestFocus()
                            true
                        } else {
                            false
                        }
                    }
                },
        ) {
            BasicTextField(
                value = value,
                onValueChange = onValueChange,
                modifier = Modifier
                    .fillMaxWidth()
                    .then(
                        if (testTag != null) {
                            Modifier.testTag(fvpFieldEditorTag(testTag))
                        } else {
                            Modifier
                        },
                    )
                    .focusRequester(editorFocus)
                    .onFocusChanged { state -> editorFocused = state.isFocused },
                enabled = enabled,
                textStyle = TextStyle(
                    color = if (enabled) FvpColors.TextPrimary else FvpColors.TextSecondary,
                    fontSize = 16.sp,
                ),
                cursorBrush = SolidColor(FvpColors.Green),
                singleLine = true,
                keyboardOptions = KeyboardOptions(
                    keyboardType = keyboardType,
                    imeAction = imeAction,
                ),
                keyboardActions = KeyboardActions(
                    onNext = {
                        if (!focusManager.moveFocus(FocusDirection.Next)) {
                            keyboard?.hide()
                        }
                    },
                    onDone = { onImeAction?.invoke() ?: keyboard?.hide() },
                ),
                visualTransformation = visualTransformation,
                decorationBox = { innerTextField ->
                    Box {
                        if (value.isEmpty()) {
                            Text(
                                text = placeholder,
                                color = FvpColors.TextSecondary.copy(alpha = 0.7f),
                                fontSize = 16.sp,
                            )
                        }
                        innerTextField()
                    }
                },
            )
        }
    }
}

/** Variante password: oscurata o in chiaro secondo [visible]. */
@Composable
fun FvpPasswordTextField(
    value: String,
    onValueChange: (String) -> Unit,
    visible: Boolean,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    imeAction: ImeAction = ImeAction.Done,
    onImeAction: (() -> Unit)? = null,
    testTag: String? = null,
) {
    FvpTextField(
        label = "Password",
        value = value,
        onValueChange = onValueChange,
        placeholder = "Password",
        modifier = modifier,
        enabled = enabled,
        keyboardType = KeyboardType.Password,
        imeAction = imeAction,
        onImeAction = onImeAction,
        testTag = testTag,
        passwordVisible = visible,
        visualTransformation = if (visible) {
            VisualTransformation.None
        } else {
            PasswordVisualTransformation()
        },
    )
}

/**
 * Pulsante "mostra/nascondi" accanto al campo password (target touch ≥48dp).
 * Il testo cambia con lo stato: "Mostra" quando è oscurata, "Nascondi" quando
 * è in chiaro.
 */
@Composable
fun PasswordToggleButton(
    visible: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    TextButton(
        onClick = onClick,
        modifier = modifier.heightIn(min = 48.dp),
        contentPadding = PaddingValues(horizontal = 12.dp),
    ) {
        Text(
            text = if (visible) "Nascondi" else "Mostra",
            color = FvpColors.Green,
            fontSize = 15.sp,
            fontWeight = FontWeight.Medium,
        )
    }
}

/** Pulsante primario: fondo verde del brand, altezza ≥48dp. */
@Composable
fun FvpPrimaryButton(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    testTag: String? = null,
) {
    Button(
        onClick = onClick,
        modifier = modifier
            .heightIn(min = 48.dp)
            .then(if (testTag != null) Modifier.testTag(testTag) else Modifier),
        enabled = enabled,
        shape = RoundedCornerShape(24.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = FvpColors.Green,
            contentColor = FvpColors.OnGreen,
            disabledContainerColor = FvpColors.SurfaceElevated,
            disabledContentColor = FvpColors.TextSecondary,
        ),
        contentPadding = PaddingValues(horizontal = 24.dp, vertical = 12.dp),
    ) {
        Text(
            text = text,
            fontSize = 16.sp,
            fontWeight = FontWeight.SemiBold,
        )
    }
}

/** Pulsante secondario: bordo sottile, stesso minimo touch di 48dp. */
@Composable
fun FvpSecondaryButton(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    testTag: String? = null,
) {
    OutlinedButton(
        onClick = onClick,
        modifier = modifier
            .heightIn(min = 48.dp)
            .then(if (testTag != null) Modifier.testTag(testTag) else Modifier),
        enabled = enabled,
        shape = RoundedCornerShape(24.dp),
        colors = ButtonDefaults.outlinedButtonColors(contentColor = FvpColors.TextPrimary),
        border = BorderStroke(1.dp, FvpColors.SurfaceElevated),
        contentPadding = PaddingValues(horizontal = 20.dp, vertical = 12.dp),
    ) {
        Text(
            text = text,
            fontSize = 15.sp,
            fontWeight = FontWeight.Medium,
        )
    }
}

/** Testo di errore: il rosso è riservato agli errori. */
@Composable
fun FvpErrorText(
    message: String,
    modifier: Modifier = Modifier,
    testTag: String? = null,
) {
    Text(
        text = message,
        modifier = modifier.then(if (testTag != null) Modifier.testTag(testTag) else Modifier),
        color = FvpColors.Error,
        fontSize = 14.sp,
        lineHeight = 20.sp,
    )
}

/** Testo di stato: grigio secondario, mai rosso. */
@Composable
fun FvpStatusText(
    message: String,
    modifier: Modifier = Modifier,
    testTag: String? = null,
) {
    Text(
        text = message,
        modifier = modifier.then(if (testTag != null) Modifier.testTag(testTag) else Modifier),
        color = FvpColors.TextSecondary,
        fontSize = 14.sp,
        lineHeight = 20.sp,
    )
}

/** Attesa a schermo intero con indicatore di caricamento (accesso in corso). */
@Composable
fun LoadingOverlay(
    message: String,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background.copy(alpha = 0.96f)),
        contentAlignment = Alignment.Center,
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(
                color = FvpColors.Green,
                modifier = Modifier.size(48.dp),
            )
            Spacer(Modifier.height(16.dp))
            Text(
                text = message,
                color = FvpColors.TextSecondary,
                fontSize = 16.sp,
            )
        }
    }
}
