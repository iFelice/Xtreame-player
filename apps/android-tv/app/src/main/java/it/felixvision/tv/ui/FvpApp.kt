package it.felixvision.tv.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import androidx.tv.material3.Text
import it.felixvision.tv.AppContainer
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.access.AccountScreen
import it.felixvision.tv.ui.access.LoginScreen
import it.felixvision.tv.ui.access.Screen
import it.felixvision.tv.ui.components.FvpScreen
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

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
            )

            is Screen.Account -> AccountScreen(
                summary = screen.summary,
                banner = screen.banner,
                scale = scale,
                onSignOut = viewModel::signOut,
            )
        }
    }
}

/** Schermata di avvio: verifica delle credenziali salvate. */
@Composable
private fun BootingScreen(scale: UiScale) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(scale.dp(38f)),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(
            text = "FelixVision",
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(34f),
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = "Player",
            color = FvpColors.Green,
            fontSize = scale.sp(34f),
            fontWeight = FontWeight.Bold,
        )
        Text(
            text = "Verifica delle credenziali salvate…",
            color = FvpColors.TextSecondary,
            fontSize = scale.sp(16f),
            modifier = Modifier.padding(top = scale.dp(18f)),
        )
    }
}
