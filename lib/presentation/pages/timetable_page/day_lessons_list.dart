import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/lessons_with_cancelled.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_tile_timetable.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class DayLessonsList extends StatelessWidget {
  final TimetablePageViewmodel viewmodel;
  final List<Lesson?> lessons;

  const DayLessonsList({
    super.key,
    required this.viewmodel,
    required this.lessons,
  });

  List<Lesson?> getSortedLessons(List<Lesson?> lessons) {
    final sortedLessons = List<Lesson?>.from(lessons)..sort((a, b) {
      if (a == null && b == null) return 0;
      if (a == null) return 1;
      if (b == null) return -1;
      return a.nr.compareTo(b.nr);
    });
    return sortedLessons;
  }

  List<Widget> getLessonWidgets(List<Lesson?> lessons) {
    // filter and sort lessons
    final sortedLessons = getSortedLessons(lessons);

    // group lessons by nr
    final Map<int, List<Lesson>> lessonsByNr = {};
    for (final lesson in sortedLessons) {
      if (lesson != null) {
        lessonsByNr.putIfAbsent(lesson.nr, () => []).add(lesson);
      }
    }

    // build a new list that preserves nulls and replaces duplicates with LessonWithCancelled
    List<Lesson?> processedLessons = [];
    int i = 0;
    while (i < sortedLessons.length) {
      final Lesson? current = sortedLessons[i];
      if (current == null) {
        processedLessons.add(null);
        i++;
        continue;
      }
      // check for duplicate with same nr
      final group = lessonsByNr[current.nr];
      if (group != null && group.length == 2) {
        final l1 = group[0];
        final l2 = group[1];
        // one cancelled, one not
        if ((l1.status == LessonStatus.CANCELLED &&
                l2.status != LessonStatus.CANCELLED) ||
            (l2.status == LessonStatus.CANCELLED &&
                l1.status != LessonStatus.CANCELLED)) {
          final cancelled = l1.status == LessonStatus.CANCELLED ? l1 : l2;
          final real = l1.status == LessonStatus.CANCELLED ? l2 : l1;
          processedLessons.add(
            LessonWithCancelled(
              cancelled: cancelled,
              nr: real.nr,
              status: real.status,
              subject: real.subject,
              rooms: real.rooms,
              teachers: real.teachers,
              notes: real.notes,
              wasPresent: real.wasPresent,
            ),
          );

          // skip to the next lesson with the same nr
          int skipCount = 1;
          for (int j = i + 1; j < sortedLessons.length; j++) {
            if (sortedLessons[j] == null) continue;
            if (sortedLessons[j]!.nr == current.nr) {
              skipCount++;
            } else {
              break;
            }
          }
          i += skipCount;
          continue;
        }
      }
      // No duplicate or not a cancelled/real pair
      processedLessons.add(current);
      i++;
    }

    // build widgets
    List<Widget> widgets = [];
    int idx = 0;
    while (idx < processedLessons.length) {
      final Lesson? first = processedLessons[idx];
      final Lesson? second =
          (idx + 1 < processedLessons.length)
              ? processedLessons[idx + 1]
              : null;

      if (first == null && second == null) {
        widgets.add(ListTile(title: Text("No data")));
        idx += 2;
        continue;
      }

      if (first != null && second == null) {
        widgets.add(
          Row(
            children: [
              Expanded(child: TimetableLessonTile(lesson: first)),
              Expanded(child: ListTile(title: Text("No data"))),
            ],
          ),
        );
        idx += 2;
        continue;
      }

      if (first == null && second != null) {
        widgets.add(
          Row(
            children: [
              Expanded(child: ListTile(title: Text("No data"))),
              Expanded(child: TimetableLessonTile(lesson: second)),
            ],
          ),
        );
        idx += 2;
        continue;
      }

      // Both present
      if (first != null && second != null) {
        // same subjects
        if (first.subject.id == second.subject.id) {
          widgets.add(TimetableLessonTile(lesson: first));
          idx += 2;
        } else {
          // different subjects
          widgets.add(
            Row(
              children: [
                Expanded(child: TimetableLessonTile(lesson: first)),
                Expanded(child: TimetableLessonTile(lesson: second)),
              ],
            ),
          );
          idx += 2;
        }
        continue;
      }

      // Fallback
      idx += 2;
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await viewmodel.fetchData(force: true);
        SnackBar refreshMsg = SnackBar(content: Text('Updated timetable!'));
        ScaffoldMessenger.of(context).showSnackBar(refreshMsg);
      },
      child: ListView(children: getLessonWidgets(lessons)),
    );
  }
}
