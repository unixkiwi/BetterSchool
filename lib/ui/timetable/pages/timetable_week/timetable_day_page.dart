import 'dart:async';

import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_day_empty_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_lesson_tile.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimetableDayPage extends StatelessWidget {
  final SchoolDay day;

  const TimetableDayPage({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    if (day.lessons.isEmpty) {
      return TimetableDayEmptyPage();
    }

    return RefreshIndicator(
      onRefresh: () async {
        final completer = Completer<void>();

        context.read<TimetableBloc>().add(
          TimetableRefreshEvent(
            weekString: WeekString.fromDate(day.date),
            completer: completer,
          ),
        );

        try {
          await completer.future.timeout(const Duration(seconds: 30));
        } catch (_) {}
      },
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TimetableLessonTile(
            lesson: day.lessons[index],
            index: index,
            length: day.lessons.length,
          );
        },
        itemCount: day.lessons.length,
      ),
    );
  }
}
