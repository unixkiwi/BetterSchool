import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/login_page/auth_checker.dart';
import 'package:school_app/presentation/pages/grades_page/grades_page.dart';
import 'package:school_app/presentation/pages/timetable_page/lessons_week_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  // Create and initialize the repo, loading cache before runApp
  final repo = BesteSchuleRepoImpl();
  await repo.loadCacheOnStartup();

  runApp(SchoolApp(repo: repo));
}

class SchoolApp extends StatelessWidget {
  final BesteSchuleRepo repo;
  const SchoolApp({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    logger.d("[UI] Called main build method.");

    // dynamically style page by system color such as material you
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return Provider<BesteSchuleRepo>(
          create: (_) => repo,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: lightDynamic ?? ColorScheme.light(),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: darkDynamic ?? ColorScheme.dark(),
              useMaterial3: true,
            ),

            // auth check page to check wether the token is in storage
            home:  MainNavBar() //const AuthChecker(),
          ),
        );
      },
    );
  }
}

// New main navigation widget
class MainNavBar extends StatefulWidget {
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
