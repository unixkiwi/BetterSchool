import 'dart:io';

import 'package:betterschool/config/di.dart';
import 'package:betterschool/routing/routes.dart';
import 'package:betterschool/ui/home_navbar/bloc/home_bloc.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:remote_caching/remote_caching.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<void> initializeRemoteCaching() async {
  final directory = await getApplicationSupportDirectory();
  final dbPath = join(directory.path, 'cache');

  // Ensure directory exists
  await Directory(directory.path).create(recursive: true);

  await RemoteCaching.instance.init(databasePath: dbPath);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeRemoteCaching();
  // try {
  //   await RemoteCaching.instance.init(
  //     // defaultCacheDuration: Duration(days: 1),
  //     verboseMode: true,
  //     databasePath: join(await getDatabasesPath(), 'cache.db'),
  //   );
  // } catch (e) {
  //   // imagine you got error handling
  //   logger.e(e.toString());
  // }

  initDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(sl())..add(AppStartedEvent()),
        ),
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: const BetterSchoolApp(),
    ),
  );
}

class BetterSchoolApp extends StatelessWidget {
  const BetterSchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          },
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: loginRoute,
      routes: routes,
      home: const LoginPage(),
    );
  }
}
