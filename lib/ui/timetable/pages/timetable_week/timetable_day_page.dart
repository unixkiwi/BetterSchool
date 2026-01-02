import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/ui/core/widgets/material_3_expressive_list.dart';
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
      child: (day.lessons.isNotEmpty || day.notes.isNotEmpty)
          ? ListView.builder(
              itemCount:
                  day.lessons.length +
                  (day.notes.isNotEmpty ? 1 + day.notes.length : 0),
              itemBuilder: (context, index) {
                // Lessons come first
                if (index < day.lessons.length) {
                  return TimetableLessonTile(
                    lesson: day.lessons[index],
                    index: index,
                    length: day.lessons.length,
                  );
                }

                // After lessons, if notes exist, show a header then notes
                final notesStartIndex = day.lessons.length;
                if (index == notesStartIndex) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                    child: Text(
                      'Notes',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                // Note items
                final noteIndex = index - notesStartIndex - 1;
                final note = day.notes[noteIndex];

                return Material3ExpressiveListTile(
                  index: noteIndex,
                  listLength: day.notes.length,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    leading: Icon(
                      Icons.note_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      note.desc,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                );
              },
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
