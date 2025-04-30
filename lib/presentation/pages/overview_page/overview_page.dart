import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/overview_page/page_select_menu.dart';
import 'package:school_app/presentation/pages/overview_page/todays_lessons_section.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  void initState() {
    super.initState();
    // trigger fetch when page was opened
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("Fetching lessons...");
      context.read<OverviewPageViewmodel>().fetchTodaysLessons();
      print("Done fetching lessons.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SchoolApp"), elevation: 1),
      body: ListView(
        children: [
          // menu to select where to go
          PageSelectMenu(),

          // today's lessons
          TodaysLessonsSection(),
        ],
      ),
    );
  }
}
