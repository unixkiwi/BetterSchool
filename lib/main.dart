import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/login_page/auth_checker.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
import 'package:school_app/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // load cache before app starts
  final repo = BesteSchuleRepoImpl();
  await repo.loadCacheOnStartup();

  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingsProvider(),
      child: SchoolApp(repo: repo),
    ),
  );
}

class SchoolApp extends StatelessWidget {
  final BesteSchuleRepo repo;
  const SchoolApp({super.key, required this.repo});

  final Color defaultFallbackColor = Colors.green;

  ThemeData getLightTheme(
    ColorScheme? lightDynamic,
    SettingsProvider settingsProvider,
  ) {
    return ThemeData(
      colorScheme: settingsProvider.themeColor == null
          ? lightDynamic ??
                ColorScheme.fromSeed(
                  seedColor: defaultFallbackColor,
                  brightness: Brightness.light,
                )
          : ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor!,
              brightness: Brightness.light,
            ),
      useMaterial3: true,
    );
  }

  ThemeData getDarkTheme(
    ColorScheme? darkDynamic,
    SettingsProvider settingsProvider,
  ) {
    return ThemeData(
      colorScheme: settingsProvider.themeColor == null
          ? darkDynamic ??
                ColorScheme.fromSeed(
                  seedColor: defaultFallbackColor,
                  brightness: Brightness.dark,
                )
          : ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor!,
              brightness: Brightness.dark,
            ),
      useMaterial3: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    logger.d("[UI] Called main build method.");

    // dynamically style page by system color such as material you
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        final settingsProvider = Provider.of<SettingsProvider>(context);
        return Provider<BesteSchuleRepo>(
          create: (_) => repo,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: getLightTheme(lightDynamic, settingsProvider),
            darkTheme: getDarkTheme(darkDynamic, settingsProvider),
            themeMode: settingsProvider.themeMode,
            // auth check page to check wether the token is in storage
            home: const AuthChecker(),
          ),
        );
      },
    );
  }
}
