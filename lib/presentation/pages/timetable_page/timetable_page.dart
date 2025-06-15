import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/pages/timetable_page/day_lessons_list.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';
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
  int _index = DateTime.now().weekday - 1;

  @override
  void initState() {
    super.initState();
    //TODO weekend -> show next Week
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

    String getFormattedDay(int index) {
      if (index < 0 || index >= allDays.length) return "";
      final day = allDays[index];
      if (day == null) return "No date available!";
      // Format: Monday, 12 June 2024
      final date = day.date;
      return "${_weekdayName(date.weekday)}, ${date.day} ${_monthName(date.month)} ${date.year}";
    }

    return Scaffold(
      appBar: AppBar(title: Text("Timetable"), elevation: 1),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Custom day bar below the appbar
          Material(
            color: Theme.of(context).colorScheme.surfaceContainer,
            elevation: 1,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  getFormattedDay(_index),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Main content
          Expanded(
            child: Consumer<TimetablePageViewmodel>(
              builder: (context, viewModel, child) {
                if (viewModel.isLoading &&
                    !viewModel.dataFetched &&
                    _weeks.isEmpty) {
                  return Center(child: CircularProgressIndicator());
                }

                List<Widget> days = [];
                for (SchoolDay? day in allDays) {
                  if (day == null) {
                    days.add(
                      Center(
                        child: Text("No Lessons for this day. (day is null)"),
                      ),
                    );
                  } else {
                    days.add(
                      DayLessonsList(
                        viewmodel: viewModel,
                        lessons: day.lessons,
                      ),
                    );
                  }
                }

                return PageView.builder(
                  controller: _controller,
                  pageSnapping: true,
                  physics: PageScrollPhysics(),
                  itemCount: days.length + 1, // one more for loading
                  onPageChanged: (index) async {
                    setState(() {
                      _index = index;
                    });

                    if (index == days.length) {
                      setState(() {
                        _loading = true;
                      });
                      _currentWeek += 1;
                      await _fetchAndAddWeek(_currentWeek);
                      setState(() {
                        _loading = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) {
                    if (index < days.length) {
                      return days[index];
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _weekdayName(int weekday) {
    const names = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ];
    return names[(weekday - 1).clamp(0, 6)];
  }

  String _monthName(int month) {
    const names = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    return names[(month - 1).clamp(0, 11)];
  }
}
