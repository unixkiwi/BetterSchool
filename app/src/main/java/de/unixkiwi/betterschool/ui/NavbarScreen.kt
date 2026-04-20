package de.unixkiwi.betterschool.ui

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Icon
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarDefaults
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import de.unixkiwi.betterschool.core.navigation.MainNavItem
import de.unixkiwi.betterschool.core.navigation.Screen
import de.unixkiwi.betterschool.ui.grades.GradesScreen
import de.unixkiwi.betterschool.ui.settings.SettingsScreen
import de.unixkiwi.betterschool.ui.timetable.TimetableScreen

@Composable
fun NavbarScreen(modifier: Modifier = Modifier) {
    val navItems = listOf(
        MainNavItem.Timetable,
        MainNavItem.Grades,
        MainNavItem.Settings
    )
    val navController = rememberNavController()
    var selectedDestination by rememberSaveable { mutableIntStateOf(MainNavItem.Timetable.navIndex) }

    Scaffold(
        modifier = modifier,
        bottomBar = {
            NavigationBar(windowInsets = NavigationBarDefaults.windowInsets) {

                navItems.forEachIndexed { index, destination ->
                    NavigationBarItem(
                        selected = selectedDestination == index,
                        onClick = {
                            navController.navigate(route = destination.screen.route)
                            selectedDestination = index
                        },
                        icon = {
                            Icon(
                                painter = painterResource(id = if (selectedDestination == index) destination.selectedIcon else destination.unselectedIcon),
                                contentDescription = destination.label
                            )
                        },
                        label = {
                            Text(destination.label)
                        }
                    )
                }
            }

        }
    ) { innerPadding ->
        NavHost(
            navController = navController,
            startDestination = Screen.Timetable.route,
            modifier = Modifier.padding(innerPadding)
        ) {
            composable(Screen.Timetable.route) { TimetableScreen() }
            composable(Screen.Grades.route) { GradesScreen() }
            composable(Screen.Settings.route) { SettingsScreen() }
        }
    }
}