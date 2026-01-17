import 'package:betterschool/data/client/models/grade.dart' as client;
import 'package:betterschool/data/client/models/get_grades_response.dart';
import 'package:betterschool/data/client/rest_client.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:remote_caching/remote_caching.dart';

class GradeRepo {
  final RestClient _apiClient;

  GradeRepo(this._apiClient);

  int _getGrade(String? grade) =>
      grade == null ? -1 : int.tryParse(grade[0]) ?? -1;

  double _getGradeWithModifiers(String? value) {
    if (value == null) {
      return -1;
    } else if (value.length == 1) {
      return _getGrade(value) * 1.0;
    } else {
      if (value == "1+") return 1.0;
      if (value == "6-") return 6.0;

      if (value.endsWith('+')) {
        return double.parse(value[0]) - 0.3;
      } else if (value.endsWith('-')) {
        return double.parse(value[0]) + 0.3;
      } else {
        return double.parse(value);
      }
    }
  }

  List<Grade> _getGradesFromModel(List<client.Grade> grades) {
    List<Grade> result = [];

    for (client.Grade grade in grades) {
      result.add(
        Grade(
          value: _getGrade(grade.value.trim()),
          valueWithModifiers: _getGradeWithModifiers(grade.value.trim()),
          valueString: grade.value,
          title: grade.collection?.name ?? Grade.empty().title,
          type: grade.collection?.type ?? Grade.empty().type,
          subject: Subject(
            id: grade.subject?.id ?? Subject.empty().id,
            local_id: grade.subject?.localId ?? Subject.empty().local_id,
            name: grade.subject?.name ?? Subject.empty().name,
          ),
          date: DateTime.tryParse(grade.givenAt) ?? Grade.empty().date,
        ),
      );
    }

    return result;
  }

  Future<GetGradesResponse> getGradesWithLogging({
    bool forceRefresh = false,
  }) async {
    final cacheKey = "grades";
    logger.d('🔍 Cache key: $cacheKey');
    logger.d('🔄 Force refresh: $forceRefresh');

    try {
      final result = await RemoteCaching.instance.call<GetGradesResponse>(
        cacheKey,
        cacheDuration: Duration(hours: 12),
        forceRefresh: forceRefresh,
        remote: () async {
          logger.i('🌐 CACHE MISS - Making network request for grades');
          final response = await _apiClient.grade.gradesIndex(include: 'collection.subject');
          logger.d('✅ Network request completed');
          for (var grade in response.data) {
            logger.w('Grade: ${grade.collection ?? "no collection"}');
          }
          return response;
        },
        fromJson: (json) {
          logger.i('📦 CACHE HIT - Deserializing from cache');
          return GetGradesResponse.fromJson(json as Map<String, dynamic>);
        },
      );

      logger.d('✅ (Cache-)Request completed successfully');
      return result;
    } catch (e) {
      logger.e('❌ Error in cached request: $e');
      rethrow;
    }
  }

  Future<Result<List<Grade>>> getGrades({bool forceRefresh = false}) async {
    try {
      GetGradesResponse response = await getGradesWithLogging(
        forceRefresh: forceRefresh,
      );

      return Success(_getGradesFromModel(response.data));
    } on DioException catch (dioException) {
      return Result.error(dioException);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
