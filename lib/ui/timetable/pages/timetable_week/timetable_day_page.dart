import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_lesson_tile.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimetableDayPage extends StatelessWidget {
  final SchoolDay day;

  const TimetableDayPage({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
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
      child: day.lessons.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                return TimetableLessonTile(
                  lesson: day.lessons[index],
                  index: index,
                  length: day.lessons.length,
                );
              },
              itemCount: day.lessons.length,
            )
          : CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SvgPicture.asset(
                            freetimeSvg,
                            width: MediaQuery.of(context).size.width * 3 / 5,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Lucky you, you have the day off today.",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
