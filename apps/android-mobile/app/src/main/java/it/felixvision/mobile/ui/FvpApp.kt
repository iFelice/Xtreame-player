package it.felixvision.mobile.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.access.AccessScreen
import it.felixvision.mobile.ui.access.AccessViewModel
import it.felixvision.mobile.ui.access.AccountScreen
import it.felixvision.mobile.ui.access.BootingScreen
import it.felixvision.mobile.ui.access.Screen

/**
 * Radice dell'app: osserva [AccessViewModel] e mostra la schermata corrente
 * (avvio, accesso, riepilogo account). I cataloghi arrivano nel PR2.
 */
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

        is Screen.Account -> AccountScreen(
            summary = screen.summary,
            banner = screen.banner,
            onSignOut = viewModel::signOut,
        )
    }
}
