import 'package:flutter/material.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/lessons_with_cancelled.dart';
import 'package:school_app/domain/models/note.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/day_lessons_list.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/day_note_tile.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/lesson_tile_timetable.dart';
import 'package:school_app/utils/logger.dart';
import 'package:school_app/utils/time_utils.dart';

class TimetablePageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;

  TimetablePageViewmodel({required this.repo});

  List<SchoolDay?> _schoolDays = [];
  bool _isLoading = false;
  bool _dataFetched = false;
  DateString _currentDateString = DateString.now();

  // TIMETABLE PAGE LOGIC
  int _selectedIndex = DateTime.now().weekday > 5
      ? 1
      : DateTime.now().weekday - 1;

  List<Widget> _pages = [];

  PageController _controller = PageController(
    initialPage: DateTime.now().weekday > 5 ? 1 : DateTime.now().weekday - 1,
  );

  List<Widget> get pages => _pages;
  int get index => _selectedIndex;
  SchoolDay? get currentSchoolDay {
    // -1 because selected index is +1 because of the loading page in the front
    final dayIndex = _selectedIndex - 1;
    if (dayIndex < 0 || dayIndex >= _schoolDays.length) return null;
    return _schoolDays[dayIndex];
  }

  PageController get controller => _controller;
  // TIMETABLE PAGE LOGIC END

  List<SchoolDay?> get schoolDays => _schoolDays;
  SchoolDay? get today => _schoolDays.length >= DateTime.now().weekday
      ? _schoolDays[DateTime.now().weekday - 1]
      : null;

  bool get isLoading => _isLoading;
  bool get dataFetched => _dataFetched;

  DateString? get dateString => _currentDateString;

  int getInitialPageIndex({DateTime? dateArg}) {
    // Monday = 1, ..., Friday = 5
    DateTime date = dateArg ?? DateTime.now();

    final weekday = date.weekday;
    return (weekday > 5) ? 1 : weekday;
  }

  int getWeekOfYear() {
    // Monday = 1, ..., Friday = 5
    final weekday = DateTime.now().weekday;
    final week = DateTime.now().weekOfYear;
    return weekday > 5 ? week + 1 : week;
  }

  Future<bool> fetchData({DateString? dateString, bool force = false}) async {
    if (_isLoading) return false;

    // await the lessons of the current week from the repo
    _isLoading = true;

    if (dateString != null) {
      _currentDateString = dateString;
    }

    List<SchoolDay?>? days = await repo.getWeek(
      dateString: _currentDateString,
      force: force,
    );

    // return when an error occurred while fetching the api,
    // TODO return error when error occured -> network error
    if (days == null) {
      logger.i("[Timetable Viewmodel] Fetched days were null!");
      return false;
    }

    // remove saturday and sunday
    days.removeRange(days.length - 2, days.length);

    // set data
    _schoolDays = days;

    // assign fiels
    _isLoading = false;
    _dataFetched = true;

    // Generate pages and reset controller to correct day
    getSelectedWeekPages();

    // reset controller to it's right position
    if (_controller.hasClients) {
      _controller.jumpToPage(_selectedIndex);
    } else {
      _controller = PageController(initialPage: _selectedIndex);
    }

    notifyListeners();

    return true;
  }

  // TIMETABLE PAGE
  List<Widget> getSelectedWeekPages() {
    List<Widget> pages = [];

    // add loading page at the start
    pages.add(Center(child: CircularProgressIndicator()));

    // add school day pages to the pages
    for (SchoolDay? day in _schoolDays) {
      List<Widget> listWidgets = getLessonWidgets(day);

      if (day != null && day.notes.isNotEmpty) {
        listWidgets.add(Divider(height: 5));
        listWidgets.add(SizedBox(height: 5));

        for (Note note in day.notes) {
          listWidgets.add(DayNoteTile(note: note));
        }
      }

      Widget content = ListView(children: listWidgets);

      pages.add(DayLessonsList(viewmodel: this, child: content));
    }

    // add loading page at the end
    pages.add(Center(child: CircularProgressIndicator()));

    _pages = pages;

    notifyListeners();

    return pages;
  }

  Future<void> loadDay(DateTime date) async {
    _selectedIndex = getInitialPageIndex(dateArg: date);

    await fetchData(dateString: DateString.fromDate(date));

    getSelectedWeekPages();

    if (_controller.hasClients) {
      _controller.animateToPage(
        _selectedIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_controller.hasClients) {
          _controller.jumpToPage(_selectedIndex);
        }
      });
    }
  }

  Future<void> loadCurrentDay() async {
    await loadDay(DateTime.now());
  }

  Future<void> onPageChange(int index) async {
    _selectedIndex = index;

    if (_selectedIndex == 0) {
      // Animate to loading page (if not already there)
      if (_controller.hasClients && _controller.page != 0) {
        await _controller.animateToPage(
          0,
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      }
      // sets _schoolDays for prev week
      _currentDateString = _currentDateString.prevWeek();

      bool requestResult = await fetchData(dateString: _currentDateString);
      // when fetched and set it can generate pages
      getSelectedWeekPages();

      // Instantly jump to Friday (index 5) after loading prev week
      _selectedIndex = 5;
      if (_controller.hasClients) {
        _controller.jumpToPage(_selectedIndex);
      }
    } else if (_selectedIndex == _pages.length - 1) {
      // Animate to loading page (if not already there)
      if (_controller.hasClients && _controller.page != _pages.length - 1) {
        await _controller.animateToPage(
          _pages.length - 1,
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      }
      // sets _schoolDays for next week
      _currentDateString = _currentDateString.nextWeek();

      bool requestResult = await fetchData(dateString: _currentDateString);
      // when fetched and set it can generate pages
      getSelectedWeekPages();
      // Instantly jump to Monday (index 1) after loading next week
      _selectedIndex = 1;
      if (_controller.hasClients) {
        _controller.jumpToPage(_selectedIndex);
      }
    } else {
      // nothing since the page just switched in one week -> no new week
    }

    notifyListeners();
  }
  // TIMETABLE PAGE END

  // LESSON LIST
  List<Lesson?> getSortedLessons(List<Lesson?> lessons) {
    final sortedLessons = List<Lesson?>.from(lessons)
      ..sort((a, b) {
        if (a == null && b == null) return 0;
        if (a == null) return 1;
        if (b == null) return -1;
        return a.nr.compareTo(b.nr);
      });
    return sortedLessons;
  }

  List<Widget> getLessonWidgets(SchoolDay? day) {
    if (day == null) {
      return [Center(child: Text("No lessons for today."))];
    }

    // filter and sort lessons
    final sortedLessons = getSortedLessons(day.lessons);

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
      final Lesson? second = (idx + 1 < processedLessons.length)
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

  // LESSON LIST END
}
