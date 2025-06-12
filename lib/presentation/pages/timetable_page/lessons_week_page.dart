import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/presentation/pages/timetable_page/day_lessons_list.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class TimetablePage extends StatefulWidget {
  const TimetablePage({super.key});

  @override
  State<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    // trigger fetch when page was opened
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      log("Fetching grades data...");
      setState(() => _loading = true);
      await context.read<TimetablePageViewmodel>().fetchData();
      log("Done fetching grades data.");
      if (mounted) setState(() => _loading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: DateTime.now().weekday - 1,
    );

    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text("Timetable")),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    //TODO refresh for force reload
    return Scaffold(
      appBar: AppBar(title: Text("Timetable")),
      body: Consumer<TimetablePageViewmodel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading && !viewModel.dataFetched) {
            return Center(child: CircularProgressIndicator());
          }

          List<Widget> days = [];

          for (SchoolDay? day in viewModel.schoolDays) {
            if (day == null) {
              days.add(
                Center(child: Text("No Lessons for this day. (day is null)")),
              );
            } else {
              days.add(DayLessonsList(lessons: day.lessons));
            }
          }

          return PageView.builder(
            controller: controller,
            pageSnapping: true,
            physics: PageScrollPhysics(),
            itemCount: days.length,
            itemBuilder: (context, index) {
              return days[index];
            },
          );
        },
      ),
    );
  }
}
