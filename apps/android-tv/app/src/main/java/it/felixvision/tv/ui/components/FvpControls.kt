package it.felixvision.tv.ui.components

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicSecureTextField
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.text.input.TextFieldDecorator
import androidx.compose.foundation.text.input.TextFieldLineLimits
import androidx.compose.foundation.text.input.TextFieldState
import androidx.compose.foundation.text.input.TextObfuscationMode
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
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
) {
    Column(modifier = modifier) {
        FvpFieldLabel(text = label, scale = scale)
        Spacer(Modifier.height(scale.dp(6f)))
        FieldContainer(scale = scale, enabled = enabled) { interactionSource ->
            BasicTextField(
                state = state,
                modifier = Modifier
                    .fillMaxWidth()
                    .then(
                        if (focusRequester != null) {
                            Modifier.focusRequester(focusRequester)
                        } else {
                            Modifier
                        },
                    ),
                enabled = enabled,
                textStyle = TextStyle(color = FvpColors.TextPrimary, fontSize = scale.sp(18f)),
                keyboardOptions = keyboardOptions,
                cursorBrush = SolidColor(FvpColors.Green),
                lineLimits = TextFieldLineLimits.SingleLine,
                interactionSource = interactionSource,
                decorator = placeholderDecorator(placeholder, scale) { state.text.isEmpty() },
            )
        }
    }
}

/** Variante per la password: può essere oscurata oppure mostrata in chiaro. */
@Composable
fun FvpPasswordField(
    label: String,
    state: TextFieldState,
    placeholder: String,
    visible: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    Column(modifier = modifier) {
        FvpFieldLabel(text = label, scale = scale)
        Spacer(Modifier.height(scale.dp(6f)))
        FieldContainer(scale = scale, enabled = enabled) { interactionSource ->
            BasicSecureTextField(
                state = state,
                modifier = Modifier.fillMaxWidth(),
                enabled = enabled,
                textStyle = TextStyle(color = FvpColors.TextPrimary, fontSize = scale.sp(18f)),
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
 */
@Composable
private fun FieldContainer(
    scale: UiScale,
    enabled: Boolean,
    content: @Composable (MutableInteractionSource) -> Unit,
) {
    val interactionSource = remember { MutableInteractionSource() }
    val focused by interactionSource.collectIsFocusedAsState()
    val scaleFactor by animateFloatAsState(
        targetValue = if (focused) 1.02f else 1f,
        label = "campoFocus",
    )
    val shape = RoundedCornerShape(scale.dp(14f))

    Box(
        modifier = Modifier
            .fillMaxWidth()
            .graphicsLayer {
                scaleX = scaleFactor
                scaleY = scaleFactor
            }
            .clip(shape)
            .background(FvpColors.SurfaceElevated.copy(alpha = if (enabled) 1f else 0.45f))
            .border(
                width = if (focused) scale.dp(2f) else scale.dp(1f),
                color = if (focused) FvpColors.GreenFocus else FvpColors.Surface,
                shape = shape,
            )
            .padding(horizontal = scale.dp(16f), vertical = scale.dp(14f)),
    ) {
        content(interactionSource)
    }
}

/** Pulsante principale: a riposo grigio scuro, solo con focus verde pieno. */
@Composable
fun FvpPrimaryButton(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        scale = ButtonDefaults.scale(focusedScale = 1.05f),
        colors = ButtonDefaults.colors(
            containerColor = FvpColors.SurfaceElevated,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.Green,
            focusedContentColor = FvpColors.OnGreen,
            pressedContainerColor = FvpColors.Green,
            pressedContentColor = FvpColors.OnGreen,
            disabledContainerColor = FvpColors.SurfaceElevated,
            disabledContentColor = FvpColors.TextSecondary,
        ),
        border = ButtonDefaults.border(
            border = Border.None,
            focusedBorder = Border(
                border = BorderStroke(scale.dp(3f), FvpColors.GreenFocus),
                inset = scale.dp(3f),
                shape = RoundedCornerShape(scale.dp(26f)),
            ),
        ),
        contentPadding = PaddingValues(
            horizontal = scale.dp(26f),
            vertical = scale.dp(14f),
        ),
    ) {
        Text(text = text, fontSize = scale.sp(18f), fontWeight = FontWeight.SemiBold)
    }
}

/** Pulsante secondario: stessi colori, peso testo diverso. */
@Composable
fun FvpSecondaryButton(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        scale = ButtonDefaults.scale(focusedScale = 1.05f),
        colors = ButtonDefaults.colors(
            containerColor = FvpColors.SurfaceElevated,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.Green,
            focusedContentColor = FvpColors.OnGreen,
            pressedContainerColor = FvpColors.Green,
            pressedContentColor = FvpColors.OnGreen,
            disabledContainerColor = FvpColors.Surface,
            disabledContentColor = FvpColors.TextSecondary,
        ),
        contentPadding = PaddingValues(
            horizontal = scale.dp(20f),
            vertical = scale.dp(14f),
        ),
    ) {
        Text(text = text, fontSize = scale.sp(16f), fontWeight = FontWeight.Medium)
    }
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
    Button(
        onClick = { onCheckedChange(!checked) },
        modifier = modifier,
        enabled = enabled,
        scale = ButtonDefaults.scale(focusedScale = 1.03f),
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
                shape = RoundedCornerShape(scale.dp(26f)),
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
