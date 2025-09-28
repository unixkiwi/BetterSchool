import 'dart:io';

import 'package:betterschool/config/di.dart';
import 'package:betterschool/routing/routes.dart';
import 'package:betterschool/ui/home_navbar/bloc/home_bloc.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:remote_caching/remote_caching.dart';

Future<void> initializeRemoteCaching() async {
  final directory = await getApplicationSupportDirectory();
  final dbPath = join(directory.path, 'cache');

  // Ensure directory exists
  await Directory(directory.path).create(recursive: true);

  await RemoteCaching.instance.init(databasePath: dbPath);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // maybe add some error stuff
  await initializeRemoteCaching();

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
