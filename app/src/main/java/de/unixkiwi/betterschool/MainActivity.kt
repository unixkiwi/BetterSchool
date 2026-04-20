package de.unixkiwi.betterschool

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.navigation.compose.rememberNavController
import dagger.hilt.android.AndroidEntryPoint
import de.unixkiwi.betterschool.ui.RootNavigation
import de.unixkiwi.betterschool.ui.theme.BetterSchoolTheme


@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        setContent {
            BetterSchoolTheme {
                val navController = rememberNavController()

                RootNavigation(navController)
            }
        }
    }
}