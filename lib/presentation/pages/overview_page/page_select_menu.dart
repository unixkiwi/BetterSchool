import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/grades_page/grades_page.dart';
import 'package:school_app/presentation/pages/timetable_page/lessons_week_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/overview_page/page_select_menu_button.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class PageSelectMenu extends StatelessWidget {
  const PageSelectMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Column(
        spacing: 25,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageSelectMenuButton(
                ctx: context,
                title: "Timetable",
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => ChangeNotifierProvider(
                            create:
                                (context) => TimetablePageViewmodel(
                                  repo: context.read<BesteSchuleRepo>(),
                                ),
                            child: const TimetablePage(),
                          ),
                    ),
                  );
                },
              ),
              PageSelectMenuButton(
                ctx: context,
                title: "ToDo's",
                onClick: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageSelectMenuButton(
                ctx: context,
                title: "Grades",
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => ChangeNotifierProvider(
                            create:
                                (context) => GradesPageViewmodel(
                                  repo: context.read<BesteSchuleRepo>(),
                                ),
                            child: const GradesPage(),
                          ),
                    ),
                  );
                },
              ),
              PageSelectMenuButton(
                ctx: context,
                title: "Settings",
                onClick: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
