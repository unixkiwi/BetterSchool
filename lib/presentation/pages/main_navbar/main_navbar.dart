import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/presentation/pages/grades_page/grades_page.dart';
import 'package:school_app/presentation/pages/settings_page/settings_page.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      ChangeNotifierProvider(
        create:
            (context) => TimetablePageViewmodel(
              repo: Provider.of<BesteSchuleRepo>(context, listen: false),
            ),
        child: TimetablePage(),
      ),
      ChangeNotifierProvider(
        create:
            (context) => GradesPageViewmodel(
              repo: Provider.of<BesteSchuleRepo>(context, listen: false),
            ),
        child: GradesPage(),
      ),
      SettingsPage(),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calendar_today),
            label: 'Timetable',
          ),
          NavigationDestination(
            icon: Icon(Icons.leaderboard_rounded),
            label: 'Grades',
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
