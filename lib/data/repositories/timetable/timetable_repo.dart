import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/domain/models/group.dart';
import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/note.dart';
import 'package:betterschool/domain/models/room.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/domain/models/teacher.dart';
import 'package:betterschool/domain/models/week.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class TimetableRepo {
  final BesteSchuleApiClientImpl _apiClient;

  TimetableRepo(this._apiClient);

  List<Lesson> _getLessons(List<LessonModel> lessons) {
    List<Lesson> lessonsConverted = [];

    // generate lessons (domain layer classes)
    for (final LessonModel lesson in lessons) {
      List<Room> roomsIfNull = [Room(name: "---")];

      lessonsConverted.add(
        Lesson(
          id: lesson.id ?? -1,
          nr: lesson.nr ?? 0,
          status: lesson.status ?? LessonStatus.initial,
          subject: Subject(
            id: lesson.subject?.id ?? -1,
            local_id: lesson.subject?.local_id ?? "---",
            name: lesson.subject?.name ?? "Unknown subject",
          ),
          rooms: lesson.rooms != null && lesson.rooms!.isNotEmpty
              ? lesson.rooms!
                    .map((room) => Room(name: room.local_id ?? "---"))
                    .toList()
              : roomsIfNull,
          teachers: lesson.teachers != null && lesson.teachers!.isNotEmpty
              ? lesson.teachers!
                    .map(
                      (teacher) => Teacher(
                        id: teacher.id ?? -1,
                        shortName: teacher.local_id ?? "---",
                        forename: teacher.forename ?? "Unknown",
                        name: teacher.name ?? "Teacher",
                      ),
                    )
                    .toList()
              : [
                  Teacher(
                    id: -1,
                    shortName: "---",
                    forename: "Unknown",
                    name: "Teacher",
                  ),
                ],
          group: Group(
            name: lesson.group.name ?? "Unknown group",
            shortName: lesson.group.local_id ?? "UNK",
            isMeta: lesson.group.meta == null ? false : lesson.group.meta! > 0,
          ),
          notes: lesson.notes
              .map(
                (note) => Note(
                  desc: note.description ?? "No description provided",
                  type: note.type?.name ?? "",
                ),
              )
              .toList(),
        ),
      );
    }

    lessonsConverted.sort((a, b) => a.nr.compareTo(b.nr));

    // group lessons by nr
    Map<int, List<Lesson>> lessonsByNr = {};

    for (final Lesson lesson in lessonsConverted) {
      if (lessonsByNr[lesson.nr] == null) lessonsByNr[lesson.nr] = [];
      lessonsByNr[lesson.nr]?.add(lesson);
    }

    // create lessons with sublessons and group them
    // 1. group lessons from one nr (e.g. cancelled -> take not cancelled if exists else just take cancelled)
    final Map<int, Lesson> lessonsByNrGrouped = {};

    for (final MapEntry<int, List<Lesson>> sortedByNr in lessonsByNr.entries) {
      final List<Lesson> lessons = sortedByNr.value;

      if (lessons.isEmpty) {
        continue;
      } else if (lessons.length == 1) {
        lessonsByNrGrouped[sortedByNr.key] = lessons.first;
      } else if (lessons.every((lesson) => lesson == lessons.first)) {
        // Check whether all lessons are the same
        lessonsByNrGrouped[sortedByNr.key] = lessons.first;
      } else {
        // sort lessons by subject name so the sorting is constant across nrs
        lessons.sort((a, b) => a.subject.name.compareTo(b.subject.name));

        // find main lesson (first try hold then planned then initial)
        Lesson mainLesson = lessons.firstWhere(
          (lesson) => lesson.status == LessonStatus.hold,
          orElse: () => lessons.firstWhere(
            (lesson) => lesson.status == LessonStatus.planned,
            orElse: () => lessons.firstWhere(
              (lesson) => lesson.status == LessonStatus.initial,
              orElse: () => lessons.first,
            ),
          ),
        );

        // add remaining lessons to the main lesson as sub lessons
        lessonsByNrGrouped[sortedByNr.key] = mainLesson.copyWith(
          subLessons: lessons
              .where((lesson) => lesson.id != mainLesson.id)
              .toList(),
        );
      }
    }

    // 2. group by nr (always combine two)
    List<Lesson> finalLessons = [];

    for (int i = 0; i < lessonsByNrGrouped.length; i += 2) {
      if (i + 1 >= lessonsByNrGrouped.length) break;

      Lesson firstLesson = lessonsByNrGrouped.entries.elementAtOrNull(i)!.value;
      Lesson secondLesson = lessonsByNrGrouped.entries
          .elementAtOrNull(i + 1)!
          .value;

      if (firstLesson.group == secondLesson.group &&
          listEquals(firstLesson.notes, secondLesson.notes) &&
          listEquals(firstLesson.rooms, secondLesson.rooms) &&
          listEquals(firstLesson.teachers, secondLesson.teachers) &&
          firstLesson.subject == secondLesson.subject &&
          firstLesson.status == secondLesson.status) {
        finalLessons.add(
          firstLesson.copyWith(
            subLessons: [...firstLesson.subLessons, ...secondLesson.subLessons],
          ),
        );
      } else {
        finalLessons.add(firstLesson.copyWith(subLessons: [secondLesson]));
      }
    }

    // add last lesson if the number of lessons is odd
    if (lessonsByNrGrouped.length % 2 != 0) {
      finalLessons.add(lessonsByNrGrouped.entries.last.value);
    }

    return finalLessons;
  }

  List<SchoolDay> _getDays(List<SchoolDayModel> days) {
    List<SchoolDay> result = [];

    for (final SchoolDayModel day in days) {
      result.add(
        SchoolDay(
          id: day.id ?? "No ID",
          date: day.date ?? DateTime.now(),
          lessons: _getLessons(day.lessons ?? []),
        ),
      );
    }

    return result;
  }

  Future<Result<SchoolWeek>> getWeek(WeekString weekId) async {
    try {
      BesteSchuleApiResponse<SchoolWeekModel> response = await _apiClient
          .getWeek(weekId: weekId.toString());

      if (response.data != null && response.data!.days != null) {
        SchoolWeekModel data = response.data!;

        SchoolWeek result = SchoolWeek(
          days: _getDays(data.days ?? []),
          nr: int.tryParse(data.nr ?? "-1") ?? -1,
        );

        return Result.success(result);
      } else {
        return Result.error(
          Exception(
            "Received data from the API is null!\nresponse.data = ${(response.data == null).toString()}\nresponse.data.days = ${(response.data?.days == null).toString()}",
          ),
        );
      }
    } on DioException catch (dioException) {
      return Result.error(dioException);
    } on Exception catch (e) {
      logger.e(e.runtimeType.toString());
      return Result.error(e);
    } catch (e) {
      logger.e(e.runtimeType.toString());
      return Result.error(Exception(e.toString()));
    }
  }
}
