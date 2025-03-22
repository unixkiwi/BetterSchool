import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/overview_page.dart';

void main() async {
  // load .env file for env variables
  await dotenv.load(fileName: ".env");

  // run app
  runApp(const SchoolApp());
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    // dynamically style page by system color such as material you
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BesteSchuleRepo()),
          ],
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
            home: Homepage(),
          ),
        );
      },
    );
  }
}
