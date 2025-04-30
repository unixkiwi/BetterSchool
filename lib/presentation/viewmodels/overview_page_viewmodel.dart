import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';

class OverviewPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;

  OverviewPageViewmodel({required this.repo});

  List<Lesson> _lessons = [];
  bool _isLoading = false;

  List<Lesson> get lessons => _lessons;
  bool get isLoading => _isLoading;

  Future<void> fetchTodaysLessons() async {
    // await the lessons of the current week from the repo
    //TODO: implement automatic getWeekNumber
    _isLoading = true;
    List<SchoolDay>? days = await repo.getWeek(nr: 19);

    // return when an error occurred while fetching the api,
    // (getWeek() returns null when an error occurred)
    if (days == null) return;

    print(days);

    // just get the lessons of today
    List<Lesson> lessonsFetched = days[DateTime.now().weekday].lessons;

    _lessons = lessonsFetched;
    _isLoading = false;
  }
}
