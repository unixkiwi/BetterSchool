import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/presentation/pages/lessons_week_page/lessons_week_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

void main() async {
  // load .env file for env variables
  await dotenv.load(fileName: ".env");

  // run app
  runApp(SchoolApp());
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    // dynamically style page by system color such as material you
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: lightDynamic ?? ColorScheme.light(),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic ?? ColorScheme.dark(),
            useMaterial3: true,
          ),
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create:
                    (ctx) => GradesPageViewmodel(repo: BesteSchuleRepoImpl()),
              ),
            ],
            child: GradesPage(),
          ),
        );
      },
    );
  }
}
