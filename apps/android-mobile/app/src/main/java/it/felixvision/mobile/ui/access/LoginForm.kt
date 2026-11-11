package it.felixvision.mobile.ui.access

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import it.felixvision.mobile.ui.components.FvpErrorText
import it.felixvision.mobile.ui.components.FvpPasswordTextField
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.components.FvpStatusText
import it.felixvision.mobile.ui.components.FvpTextField
import it.felixvision.mobile.ui.components.PasswordToggleButton
import it.felixvision.mobile.ui.theme.FvpColors

/** Tag di test dei campi del modulo di accesso (contenitore) e dei pulsanti. */
const val LOGIN_SERVER_FIELD_TAG = "login_server_field"
const val LOGIN_USERNAME_FIELD_TAG = "login_username_field"
const val LOGIN_PASSWORD_FIELD_TAG = "login_password_field"
const val LOGIN_SUBMIT_BUTTON_TAG = "login_submit_button"
const val LOGIN_ERROR_TAG = "login_error_message"
const val LOGIN_STATUS_TAG = "login_status_message"

/**
 * Modulo di accesso touch: server (indirizzo o codice rubrica), utente,
 * password con mostra/nascondi, pulsante Accedi con indicatore di caricamento
 * ed errori in italiano (stessi stati e messaggi della TV).
 *
 * Tastiera: "Avanti" sui campi Server/Utente passa al successivo, "Fatto"
 * sulla password invia il modulo ([onSubmit]).
 */
@Composable
fun LoginForm(
    state: AccessUiState,
    onSubmit: () -> Unit,
    onServerChange: (String) -> Unit,
    onUsernameChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onTogglePasswordVisible: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .clip(RoundedCornerShape(16.dp))
            .background(FvpColors.Surface)
            .padding(24.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        FvpTextField(
            label = "Server o codice",
            value = state.server,
            onValueChange = onServerChange,
            placeholder = "http://server.esempio:8080  oppure  codice rubrica",
            enabled = !state.busy,
            keyboardType = KeyboardType.Uri,
            imeAction = ImeAction.Next,
            testTag = LOGIN_SERVER_FIELD_TAG,
        )
        FvpTextField(
            label = "Utente",
            value = state.username,
            onValueChange = onUsernameChange,
            placeholder = "Nome utente",
            enabled = !state.busy,
            keyboardType = KeyboardType.Text,
            imeAction = ImeAction.Next,
            testTag = LOGIN_USERNAME_FIELD_TAG,
        )
        Row(verticalAlignment = Alignment.CenterVertically) {
            FvpPasswordTextField(
                value = state.password,
                onValueChange = onPasswordChange,
                visible = state.passwordVisible,
                enabled = !state.busy,
                imeAction = ImeAction.Done,
                // "Fatto" invia il modulo.
                onImeAction = onSubmit,
                testTag = LOGIN_PASSWORD_FIELD_TAG,
                modifier = Modifier.weight(1f),
            )
            Spacer(Modifier.width(8.dp))
            PasswordToggleButton(
                visible = state.passwordVisible,
                onClick = onTogglePasswordVisible,
            )
        }

        val error = state.errorMessage
        val status = state.statusMessage
        if (error != null) {
            FvpErrorText(message = error, testTag = LOGIN_ERROR_TAG)
        } else if (status != null) {
            FvpStatusText(message = status, testTag = LOGIN_STATUS_TAG)
        }

        FvpPrimaryButton(
            text = if (state.busy) "Accesso in corso…" else "Accedi",
            onClick = onSubmit,
            enabled = !state.busy,
            testTag = LOGIN_SUBMIT_BUTTON_TAG,
            modifier = Modifier.fillMaxWidth(),
        )
    }
}
