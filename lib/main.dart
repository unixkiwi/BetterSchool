import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/login_page/auth_checker.dart';
import 'package:school_app/domain/settings/theme_provider.dart';
import 'package:school_app/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // load cache before app starts
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
        return ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
          child: Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) {
              return Provider<BesteSchuleRepo>(
                create: (_) => repo,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme:
                        lightDynamic ??
                        ColorScheme.fromSeed(
                          seedColor: Colors.green,
                          brightness: Brightness.light,
                        ),
                    useMaterial3: true,
                  ),
                  darkTheme: ThemeData(
                    colorScheme:
                        darkDynamic ??
                        ColorScheme.fromSeed(
                          seedColor: Colors.green,
                          brightness: Brightness.light,
                        ),
                    useMaterial3: true,
                  ),
                  themeMode: themeProvider.themeMode,
                  // auth check page to check wether the token is in storage
                  home: const AuthChecker(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
