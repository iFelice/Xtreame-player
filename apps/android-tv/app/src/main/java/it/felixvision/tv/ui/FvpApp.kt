package it.felixvision.tv.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import it.felixvision.tv.AppContainer
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.access.LoginScreen
import it.felixvision.tv.ui.access.Screen
import it.felixvision.tv.ui.access.statusLabel
import it.felixvision.tv.ui.components.BrandBackdrop
import it.felixvision.tv.ui.components.FvpScreen
import it.felixvision.tv.ui.components.LoadingState
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.main.FvpMainScreen

@Composable
fun FvpApp(container: AppContainer) {
    val factory = remember(container) {
        viewModelFactory {
            initializer { AccessViewModel(container) }
        }
    }
    val viewModel: AccessViewModel = viewModel(factory = factory)
    val state by viewModel.ui.collectAsStateWithLifecycle()

    FvpScreen { scale ->
        when (val screen = state.screen) {
            Screen.Booting -> BootingScreen(scale = scale)

            Screen.Access -> LoginScreen(
                state = state,
                scale = scale,
                onSubmit = viewModel::submit,
                onServerChange = viewModel::onServerChange,
                onUsernameChange = viewModel::onUsernameChange,
                onPasswordChange = viewModel::onPasswordChange,
                onTogglePasswordVisible = viewModel::togglePasswordVisible,
                onPairingVisible = viewModel::onPairingVisible,
                onPairingHidden = viewModel::onPairingHidden,
                onRenewCode = viewModel::onRenewPairingCode,
            )

            is Screen.Account -> {
                val creds = viewModel.getCurrentCredentials()
                if (creds != null) {
                    FvpMainScreen(
                        container = container,
                        server = creds.server,
                        username = creds.username,
                        password = creds.password,
                        serverCode = creds.serverCode,
                        accountStatus = statusLabel(screen.summary.status),
                        expiresAtEpochSeconds = screen.summary.expiresAtEpochSeconds,
                        maxConnections = screen.summary.maxConnections,
                        activeConnections = screen.summary.activeConnections,
                        allowedOutputFormats = screen.summary.allowedOutputFormats,
                        scale = scale,
                        accessViewModel = viewModel,
                        onSignOut = viewModel::signOut,
                    )
                } else {
                    LoginScreen(
                        state = state,
                        scale = scale,
                        onSubmit = viewModel::submit,
                        onServerChange = viewModel::onServerChange,
                        onUsernameChange = viewModel::onUsernameChange,
                        onPasswordChange = viewModel::onPasswordChange,
                        onTogglePasswordVisible = viewModel::togglePasswordVisible,
                        onPairingVisible = viewModel::onPairingVisible,
                        onPairingHidden = viewModel::onPairingHidden,
                        onRenewCode = viewModel::onRenewPairingCode,
                    )
                }
            }
        }
    }
}

/**
 * Schermata di avvio: verifica delle credenziali salvate, sullo stesso sfondo a
 * marchio usato per ogni attesa a schermo intero.
 */
@Composable
private fun BootingScreen(scale: UiScale) {
    BrandBackdrop(scale = scale) {
        LoadingState(message = "Verifica delle credenziali salvate…", scale = scale)
    }
}
