import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/grades_page/grades_page.dart';
import 'package:school_app/presentation/pages/login_page/auth_checker.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_page.dart';
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
            home:  const AuthChecker(),
          ),
        );
      },
    );
  }
}
