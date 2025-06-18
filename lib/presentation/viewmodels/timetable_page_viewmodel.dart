import 'package:flutter/material.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/lessons_with_cancelled.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/lesson_tile_timetable.dart';
import 'package:school_app/utils/logger.dart';
import 'package:school_app/utils/time_utils.dart';

class TimetablePageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;

  TimetablePageViewmodel({required this.repo});

  List<SchoolDay?> _schoolDays = [];
  bool _isLoading = false;
  bool _dataFetched = false;
  int? _currentWeekNumber;

  List<SchoolDay?> get schoolDays => _schoolDays;
  SchoolDay? get today =>
      _schoolDays.length >= DateTime.now().weekday
          ? _schoolDays[DateTime.now().weekday - 1]
          : null;

  bool get isLoading => _isLoading;
  bool get dataFetched => _dataFetched;

  int? get weekNr => _currentWeekNumber;

  Future<void> fetchData({int? weekNr, bool force = false}) async {
    if (_isLoading) return;

    // await the lessons of the current week from the repo
    _isLoading = true;
    final int weekOfYear = DateTime.now().weekOfYear;

    _currentWeekNumber = weekNr ?? (_currentWeekNumber ?? weekOfYear);

    List<SchoolDay?>? days = await repo.getWeek(nr: _currentWeekNumber!, force: force);

    // return when an error occurred while fetching the api,
    if (days == null) {
      logger.i("[Timetable Viewmodel] Fetched days were null!");
      return;
    }

    // remove saturday and sunday
    days.removeRange(days.length-2, days.length);

    // set data
    _schoolDays = days;

    // assign fiels
    _isLoading = false;
    _dataFetched = true;

    // relaod after fetching data
    notifyListeners();
  }
  

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

          // skip t the next lesson with the same nr
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
}
