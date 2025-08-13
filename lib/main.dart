import 'package:betterschool/config/di.dart';
import 'package:betterschool/routing/routes.dart';
import 'package:betterschool/ui/home_navbar/bloc/home_bloc.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      initialRoute: loginRoute,
      routes: routes,
      home: const LoginPage(),
    );
  }
}
