import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/room.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/domain/models/teacher.dart';
import 'package:betterschool/domain/models/week.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:dio/dio.dart';

class TimetableRepo {
  final BesteSchuleApiClientImpl _apiClient;

  TimetableRepo(this._apiClient);

  List<Lesson> _getLessons(List<LessonModel> lessons) {
    List<Lesson> result = [];

    for (final LessonModel lesson in lessons) {
      List<Room> roomsIfNull = [Room(name: "---")];

      result.add(
        Lesson(
          id: lesson.id ?? -1,
          nr: 0,
          status: lesson.status ?? LessonStatus.initial,
          subject: Subject(
            id: lesson.subject!.id ?? -1,
            local_id: lesson.subject!.local_id ?? "---",
            name: lesson.subject!.name ?? "Unknown subject",
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
        ),
      );
    }

    return result;
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
          nr: data.nr,
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
      return Result.error(e);
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
