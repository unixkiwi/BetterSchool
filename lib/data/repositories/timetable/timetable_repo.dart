import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/domain/models/group.dart';
import 'package:betterschool/domain/models/journal_note.dart';
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
import 'package:remote_caching/remote_caching.dart';

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
          id: lesson.id ?? Lesson.empty().id,
          nr: lesson.nr ?? Lesson.empty().nr,
          status: lesson.status ?? Lesson.empty().status,
          subject: Subject(
            id: lesson.subject?.id ?? Subject.empty().id,
            local_id: lesson.subject?.local_id ?? Subject.empty().local_id,
            name: lesson.subject?.name ?? Subject.empty().name,
          ),
          rooms: lesson.rooms != null && lesson.rooms!.isNotEmpty
              ? lesson.rooms!
                    .map(
                      (room) => Room(name: room.local_id ?? Room.empty().name),
                    )
                    .toList()
              : roomsIfNull,
          teachers: lesson.teachers != null && lesson.teachers!.isNotEmpty
              ? lesson.teachers!
                    .map(
                      (teacher) => Teacher(
                        id: teacher.id ?? Teacher.empty().id,
                        shortName:
                            teacher.local_id ?? Teacher.empty().shortName,
                        forename: teacher.forename ?? Teacher.empty().forename,
                        name: teacher.name ?? Teacher.empty().name,
                      ),
                    )
                    .toList()
              : [Teacher.empty()],
          group: Group(
            name: lesson.group.name ?? Group.empty().name,
            shortName: lesson.group.local_id ?? Group.empty().shortName,
            isMeta: lesson.group.meta == null
                ? Group.empty().isMeta
                : lesson.group.meta! > 0,
          ),
          notes: lesson.notes
              .map(
                (note) => Note(
                  desc: note.description ?? Note.empty().desc,
                  type: note.type?.name ?? Note.empty().type,
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
          id: day.id ?? SchoolDay.empty().id,
          date: day.date ?? SchoolDay.empty().date,
          lessons: _getLessons(day.lessons ?? []),
          notes:
              day.notes
                  ?.map(
                    (note) => JournalNote(
                      desc: note.description ?? Note.empty().desc,
                    ),
                  )
                  .toList() ??
              [],
        ),
      );
    }

    return result;
  }

  Future<BesteSchuleApiResponse<SchoolWeekModel>> getWeekWithLogging(
    String weekId, {
    bool forceRefresh = false,
  }) async {
    final cacheKey = "timetableWeek-${weekId.toString()}";
    logger.d('🔍 Cache key: $cacheKey');
    logger.d('🔄 Force refresh: $forceRefresh');

    try {
      final result = await RemoteCaching.instance
          .call<BesteSchuleApiResponse<SchoolWeekModel>>(
            cacheKey,
            cacheDuration: Duration(hours: 12),
            forceRefresh: forceRefresh,
            remote: () async {
              logger.i(
                '🌐 CACHE MISS - Making network request for week: $weekId',
              );
              final response = await _apiClient.getWeek(
                weekId: weekId.toString(),
              );
              logger.d('✅ Network request completed');
              return response;
            },
            fromJson: (json) {
              logger.i('📦 CACHE HIT - Deserializing from cache');
              return BesteSchuleApiResponse<SchoolWeekModel>.fromJson(
                json as Map<String, dynamic>,
                (json) =>
                    SchoolWeekModel.fromJson(json as Map<String, dynamic>),
              );
            },
          );

      logger.d('✅ (Cache-)Request completed successfully');
      return result;
    } catch (e) {
      logger.e('❌ Error in cached request: $e');
      rethrow;
    }
  }

  Future<Result<SchoolWeek>> getWeek(
    WeekString weekId, {
    bool forceRefresh = false,
  }) async {
    try {
      BesteSchuleApiResponse<SchoolWeekModel> response =
          await getWeekWithLogging(
            weekId.toString(),
            forceRefresh: forceRefresh,
          );

      if (response.data != null && response.data!.days != null) {
        SchoolWeekModel data = response.data!;

        SchoolWeek result = SchoolWeek(
          days: _getDays(data.days ?? []),
          nr: int.tryParse(data.nr ?? "-1") ?? SchoolWeek.empty().nr,
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
