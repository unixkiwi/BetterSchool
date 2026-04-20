package de.unixkiwi.betterschool.ui

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import de.unixkiwi.betterschool.core.navigation.Screen
import de.unixkiwi.betterschool.ui.auth.AuthScreen

@Composable
fun RootNavigation(navController: NavHostController) {
    NavHost(navController = navController, startDestination = Screen.Auth.route) {
        composable(Screen.Auth.route) {
            AuthScreen(onSuccessfulLogin = {
                navController.navigate(Screen.NavbarContainer.route) {
                    popUpTo(Screen.Auth.route) { inclusive = true }
                }
            })
        }
        composable(Screen.NavbarContainer.route) {
            Scaffold {
                Surface(Modifier.padding(it)) { Text("lol") }
            }
        }
    }
}