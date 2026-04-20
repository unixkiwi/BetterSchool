package de.unixkiwi.betterschool.core.navigation

import de.unixkiwi.betterschool.R

sealed class Screen(val route: String) {
    object Auth : Screen("auth")
    object NavbarContainer : Screen("navbar_container")
    object Timetable : Screen("timetable")
    object Grades : Screen("grades")
    object Settings : Screen("settings")
}

sealed class MainNavItem(
    val screen: Screen,
    val navIndex: Int,
    val label: String,
    val selectedIcon: Int,
    val unselectedIcon: Int = selectedIcon
) {
    object Timetable : MainNavItem(
        Screen.Timetable,
        0,
        "Timetable",
        R.drawable.calendar_month_filled,
        R.drawable.calendar_month
    )

    object Grades :
        MainNavItem(Screen.Grades, 1, "Grades", R.drawable.analytics_filled, R.drawable.analytics)

    object Settings :
        MainNavItem(Screen.Settings, 2, "Settings", R.drawable.settings_filled, R.drawable.settings)
}