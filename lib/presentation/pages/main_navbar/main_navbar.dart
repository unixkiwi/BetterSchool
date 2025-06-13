import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/grades_page/grades_page.dart';
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

  static final List<Widget> _pages = [
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
    // Settings page is not implemented, show a placeholder
    Center(child: Text('Settings page coming soon')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calendar_today),
            label: 'Timetable',
          ),
          NavigationDestination(icon: Icon(Icons.grade), label: 'Grades'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
