import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/time_utils.dart';

class OverviewPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;

  OverviewPageViewmodel({required this.repo});

  List<Lesson>? _lessons = [];
  List<SchoolDay?> _schoolDays = [];
  bool _isLoading = false;
  bool _dataFetched = false;

  List<Lesson>? get lessons => _lessons;
  List<SchoolDay?> get schoolDays => _schoolDays;
  SchoolDay? get today =>
      _schoolDays.length >= DateTime.now().weekday
          ? _schoolDays[DateTime.now().weekday - 1]
          : null;

  bool get isLoading => _isLoading;
  bool get dataFetched => _dataFetched;

  Future<void> fetchData() async {
    if (_isLoading) return;

    // await the lessons of the current week from the repo
    _isLoading = true;
    final int weekOfYear = DateTime.now().weekOfYear;
    List<SchoolDay?>? days = await repo.getWeek(nr: weekOfYear);

    // return when an error occurred while fetching the api,
    // (getWeek() returns null when an error occurred)
    if (days == null) {
      return;
    }

    // set data
    _schoolDays = days;

    // just get the lessons of today
    final int weekday = DateTime.now().weekday - 1;
    List<Lesson>? lessonsFetched = days[weekday]?.lessons;

    // assign fiels
    _lessons = lessonsFetched;
    _isLoading = false;
    _dataFetched = true;

    // relaod after fetching data
    notifyListeners();
  }
}
