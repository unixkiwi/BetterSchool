import 'package:betterschool/ui/login/bloc/login_cubit.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginCubit())],
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}
