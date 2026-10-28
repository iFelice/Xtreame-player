package it.felixvision.mobile.ui.access

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.LifecycleStartEffect
import it.felixvision.mobile.ui.components.FvpStatusText
import it.felixvision.mobile.ui.components.LoadingOverlay
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Schermata di accesso: modulo di login e pannello di abbinamento remoto.
 *
 * Il layout dipende dalla LARGHEZZA DELLA FINESTRA (non dal tipo di
 * dispositivo): da 840dp in su login e abbinamento sono affiancati, sotto
 * uno sopra l'altro. Lo stato dei campi vive nel [AccessViewModel], quindi
 * sopravvive alla rotazione. Il polling dell'abbinamento è attivo solo
 * mentre la schermata è visibile (LifecycleStartEffect).
 */
@Composable
fun AccessScreen(
    state: AccessUiState,
    onSubmit: () -> Unit,
    onServerChange: (String) -> Unit,
    onUsernameChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onTogglePasswordVisible: () -> Unit,
    onPairingVisible: () -> Unit,
    onPairingHidden: () -> Unit,
    onRenewCode: () -> Unit,
) {
    // Il pannello interroga il servizio solo mentre la schermata è in primo piano.
    LifecycleStartEffect(Unit) {
        onPairingVisible()
        onStopOrDispose { onPairingHidden() }
    }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .padding(horizontal = 32.dp, vertical = 24.dp),
    ) {
        val sideBySide = maxWidth >= 840.dp

        Column(modifier = Modifier.fillMaxSize()) {
            BrandHeader()
            Spacer(Modifier.height(20.dp))

            if (sideBySide) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .verticalScroll(rememberScrollState()),
                    verticalAlignment = Alignment.Top,
                ) {
                    LoginForm(
                        state = state,
                        onSubmit = onSubmit,
                        onServerChange = onServerChange,
                        onUsernameChange = onUsernameChange,
                        onPasswordChange = onPasswordChange,
                        onTogglePasswordVisible = onTogglePasswordVisible,
                        modifier = Modifier.weight(1f),
                    )
                    Spacer(Modifier.width(24.dp))
                    PairingPanel(
                        state = state.pairing,
                        onRenewCode = onRenewCode,
                        modifier = Modifier.width(360.dp),
                    )
                }
            } else {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .verticalScroll(rememberScrollState()),
                    verticalArrangement = Arrangement.spacedBy(20.dp),
                ) {
                    LoginForm(
                        state = state,
                        onSubmit = onSubmit,
                        onServerChange = onServerChange,
                        onUsernameChange = onUsernameChange,
                        onPasswordChange = onPasswordChange,
                        onTogglePasswordVisible = onTogglePasswordVisible,
                        modifier = Modifier.fillMaxWidth(),
                    )
                    PairingPanel(
                        state = state.pairing,
                        onRenewCode = onRenewCode,
                        modifier = Modifier.fillMaxWidth(),
                    )
                }
            }
        }

        // Attesa a schermo intero durante l'accesso e la verifica delle
        // credenziali ricevute dal telefono (stesso comportamento della TV).
        if (state.busy) {
            LoadingOverlay(message = state.statusMessage ?: "Accesso in corso…")
        }
    }
}

/** Intestazione a marchio, con font di sistema. */
@Composable
fun BrandHeader(modifier: Modifier = Modifier) {
    Row(
        modifier = modifier,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = "FelixVision",
            color = FvpColors.TextPrimary,
            fontSize = 28.sp,
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = "Player",
            color = FvpColors.Green,
            fontSize = 28.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.padding(start = 8.dp),
        )
        Spacer(Modifier.width(16.dp))
        Text(
            text = "Accesso al tuo catalogo",
            color = FvpColors.TextSecondary,
            fontSize = 15.sp,
        )
    }
}

/** Stato di avvio: verifica iniziale delle credenziali salvate. */
@Composable
fun BootingScreen(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background),
        contentAlignment = Alignment.Center,
    ) {
        FvpStatusText(message = "Verifica delle credenziali salvate…")
    }
}
