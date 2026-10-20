package it.felixvision.tv.ui.access

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.text.input.TextFieldState
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.foundation.text.input.setTextAndPlaceCursorAtEnd
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.lifecycle.compose.LifecycleStartEffect
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.FvpErrorText
import it.felixvision.tv.ui.components.FvpPasswordField
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.FvpStatusText
import it.felixvision.tv.ui.components.FvpTextField
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.flow.distinctUntilChanged

/**
 * Schermata di accesso: modulo a sinistra, abbinamento remoto a destra.
 *
 * Navigazione solo con il telecomando: ogni elemento interattivo è focalizzabile
 * e mostra il focus con bordo verde e leggero ingrandimento. Il pannello di
 * abbinamento vive solo finché la schermata è in primo piano.
 */
@Composable
fun LoginScreen(
    state: AccessUiState,
    scale: UiScale,
    onSubmit: () -> Unit,
    onServerChange: (String) -> Unit,
    onUsernameChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onTogglePasswordVisible: () -> Unit,
    onPairingVisible: () -> Unit,
    onPairingHidden: () -> Unit,
) {
    val serverState = rememberTextFieldState(state.server)
    val usernameState = rememberTextFieldState(state.username)
    val passwordState = rememberTextFieldState(state.password)
    val serverFocus = remember { FocusRequester() }

    // Il testo vive nei campi; il ViewModel ne riceve una copia per validare e
    // inviare. Il flusso si interrompe quando la schermata viene chiusa.
    LaunchedEffect(serverState) {
        snapshotFlow { serverState.text.toString() }
            .distinctUntilChanged()
            .collect { value -> onServerChange(value) }
    }
    LaunchedEffect(usernameState) {
        snapshotFlow { usernameState.text.toString() }
            .distinctUntilChanged()
            .collect { value -> onUsernameChange(value) }
    }
    LaunchedEffect(passwordState) {
        snapshotFlow { passwordState.text.toString() }
            .distinctUntilChanged()
            .collect { value -> onPasswordChange(value) }
    }

    // Credenziali ricevute dal telefono e rifiutate: si riportano nei campi.
    LaunchedEffect(state.prefill?.id) {
        val prefill = state.prefill ?: return@LaunchedEffect
        serverState.setTextAndPlaceCursorAtEnd(prefill.server)
        usernameState.setTextAndPlaceCursorAtEnd(prefill.username)
        passwordState.setTextAndPlaceCursorAtEnd(prefill.password)
    }

    LaunchedEffect(Unit) {
        runCatching { serverFocus.requestFocus() }
    }

    // Il pannello interroga il servizio solo mentre la schermata è visibile.
    LifecycleStartEffect(Unit) {
        onPairingVisible()
        onStopOrDispose { onPairingHidden() }
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .fillMaxHeight()
            .padding(horizontal = scale.dp(38f), vertical = scale.dp(26f)),
    ) {
        BrandHeader(scale = scale)
        Spacer(Modifier.height(scale.dp(20f)))
        Row(modifier = Modifier.fillMaxWidth()) {
            LoginForm(
                state = state,
                scale = scale,
                serverState = serverState,
                usernameState = usernameState,
                passwordState = passwordState,
                serverFocus = serverFocus,
                onSubmit = onSubmit,
                onTogglePasswordVisible = onTogglePasswordVisible,
                modifier = Modifier.weight(1f),
            )
            Spacer(Modifier.width(scale.dp(26f)))
            PairingPanel(
                state = state.pairing,
                scale = scale,
                modifier = Modifier.width(scale.dp(340f)),
            )
        }
    }
}

@Composable
private fun BrandHeader(scale: UiScale) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Text(
            text = "FelixVision",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(30f),
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = "Player",
            color = FvpColors.Green,
            fontSize = scale.sp(30f),
            fontWeight = FontWeight.Bold,
            modifier = Modifier.padding(start = scale.dp(8f)),
        )
        Spacer(Modifier.width(scale.dp(16f)))
        Text(
            text = "Accesso al tuo catalogo",
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(15f),
        )
    }
}

@Composable
private fun LoginForm(
    state: AccessUiState,
    scale: UiScale,
    serverState: TextFieldState,
    usernameState: TextFieldState,
    passwordState: TextFieldState,
    serverFocus: FocusRequester,
    onSubmit: () -> Unit,
    onTogglePasswordVisible: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .clip(RoundedCornerShape(scale.dp(20f)))
            .background(FvpColors.Surface)
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(22f)),
        verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
    ) {
        FvpTextField(
            label = "Server o codice",
            state = serverState,
            placeholder = "http://server.esempio:8080  oppure  codice rubrica",
            scale = scale,
            focusRequester = serverFocus,
            enabled = !state.busy,
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Uri,
                imeAction = ImeAction.Next,
            ),
        )
        FvpTextField(
            label = "Utente",
            state = usernameState,
            placeholder = "Nome utente",
            scale = scale,
            enabled = !state.busy,
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Text,
                imeAction = ImeAction.Next,
            ),
        )
        Row(verticalAlignment = Alignment.Bottom) {
            FvpPasswordField(
                label = "Password",
                state = passwordState,
                placeholder = "Password",
                visible = state.passwordVisible,
                scale = scale,
                enabled = !state.busy,
                modifier = Modifier.weight(1f),
            )
            Spacer(Modifier.width(scale.dp(10f)))
            FvpSecondaryButton(
                text = if (state.passwordVisible) "Nascondi" else "Mostra",
                onClick = onTogglePasswordVisible,
                scale = scale,
            )
        }

        // Spazio riservato ai messaggi: evita che il modulo "salti" quando
        // compare un errore, e tiene il pulsante sempre nella stessa posizione.
        Box(modifier = Modifier.height(scale.dp(42f))) {
            val error = state.errorMessage
            val status = state.statusMessage
            if (error != null) {
                FvpErrorText(message = error, scale = scale)
            } else if (status != null) {
                FvpStatusText(message = status, scale = scale)
            }
        }

        FvpPrimaryButton(
            text = if (state.busy) "Accesso in corso…" else "Accedi",
            onClick = onSubmit,
            scale = scale,
            enabled = !state.busy,
            modifier = Modifier.fillMaxWidth(),
        )
    }
}
