package it.felixvision.mobile.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.remember
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.access.AccessScreen
import it.felixvision.mobile.ui.access.AccessViewModel
import it.felixvision.mobile.ui.access.BootingScreen
import it.felixvision.mobile.ui.access.Screen
import it.felixvision.mobile.ui.main.HomeScreen

/**
 * Radice dell'app: osserva [AccessViewModel] e mostra la schermata corrente
 * (avvio, accesso, oppure la schermata principale con cataloghi e sezioni).
 * La schermata provvisoria del PR1 ([ui.access.AccountScreen]) è stata
 * sostituita da [HomeScreen] nel PR2.
 */
@androidx.media3.common.util.UnstableApi
@Composable
fun FvpApp(container: AppContainer) {
    val factory = remember(container) {
        viewModelFactory {
            initializer { AccessViewModel(container) }
        }
    }
    val viewModel: AccessViewModel = viewModel(factory = factory)
    val state by viewModel.ui.collectAsStateWithLifecycle()

    when (val screen = state.screen) {
        Screen.Booting -> BootingScreen()

        Screen.Access -> AccessScreen(
            state = state,
            onSubmit = viewModel::submit,
            onServerChange = viewModel::onServerChange,
            onUsernameChange = viewModel::onUsernameChange,
            onPasswordChange = viewModel::onPasswordChange,
            onTogglePasswordVisible = viewModel::togglePasswordVisible,
            onPairingVisible = viewModel::onPairingVisible,
            onPairingHidden = viewModel::onPairingHidden,
            onRenewCode = viewModel::onRenewPairingCode,
        )

        is Screen.Account -> key(screen.sessionId) {
            HomeScreen(
                container = container,
                summary = screen.summary,
                sessionId = screen.sessionId,
                // La password resta solo nel modello di sessione in memoria.
                password = viewModel.getCurrentCredentials()?.password.orEmpty(),
                banner = screen.banner,
                onSignOut = {
                    container.protectedSession.lock()
                    viewModel.signOut()
                },
                // Riquadro "Configura da remoto" delle Impostazioni: le credenziali
                // ricevute aggiornano la sessione dell'app come nella TV.
                onRemoteCredentials = { newServer, newUsername, newPassword, account ->
                    container.protectedSession.lock()
                    viewModel.updateCredentialsFromRemote(
                        server = newServer,
                        username = newUsername,
                        password = newPassword,
                        account = account,
                        storedUsername = newUsername,
                    )
                },
                channelScheduleLoader = container.channelScheduleLoader,
                imageLoader = container.imageLoader,
            )
        }
    }
}
