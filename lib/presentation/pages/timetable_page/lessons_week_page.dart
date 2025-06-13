import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/presentation/pages/timetable_page/day_lessons_list.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/time_utils.dart';

class TimetablePage extends StatefulWidget {
  const TimetablePage({super.key});

  @override
  State<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  bool _loading = true;
  late PageController _controller;
  late int _currentWeek;
  List<List<SchoolDay?>> _weeks = [];

  @override
  void initState() {
    super.initState();
    _currentWeek = DateTime.now().weekOfYear;
    _controller = PageController(initialPage: DateTime.now().weekday - 1);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _fetchAndAddWeek(_currentWeek);
      if (mounted) setState(() => _loading = false);
    });
  }

  Future<void> _fetchAndAddWeek(int weekNr) async {
    setState(() => _loading = true);
    final viewModel = context.read<TimetablePageViewmodel>();
    await viewModel.fetchData(weekNr: weekNr);
    if (viewModel.schoolDays.isNotEmpty) {
      _weeks.add(List<SchoolDay?>.from(viewModel.schoolDays));
    }
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    if (_loading && _weeks.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text("Timetable")),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Flatten all loaded weeks into a single list for the PageView
    final List<SchoolDay?> allDays = _weeks.expand((w) => w).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Timetable")),
      body: Consumer<TimetablePageViewmodel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading && !viewModel.dataFetched && _weeks.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          List<Widget> days = [];
          for (SchoolDay? day in allDays) {
            if (day == null) {
              days.add(
                Center(child: Text("No Lessons for this day. (day is null)")),
              );
            } else {
              days.add(
                DayLessonsList(viewmodel: viewModel, lessons: day.lessons),
              );
            }
          }

          return PageView.builder(
            controller: _controller,
            pageSnapping: true,
            physics: PageScrollPhysics(),
            itemCount: allDays.length,
            onPageChanged: (index) async {

              //TODO current week added two times
              //TODO check if is valid week -> year change
              if (index == allDays.length - 1) {
                _currentWeek += 1;
                await _fetchAndAddWeek(_currentWeek);
              }
            },
            itemBuilder: (context, index) {
              return days[index];
            },
          );
        },
      ),
    );
  }
}
